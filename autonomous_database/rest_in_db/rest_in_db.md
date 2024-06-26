# Mastering REST APIs

## Introduction

Mastering REST APIs: The Universal Integration Tool in AI and Beyond

REST APIs are the backbone of app integration, a fundamental tool for developers worldwide. As more services increasingly rely on REST APIs for sharing data in the cloud, including new emerging AI services, understanding how to work with these APIs is key.

Here's what we'll dive into together.

We'll show you

* REST API fundamentals using Postman
* Command Line Execution of REST using curl
* Autonomous Database support for REST via utl_http and DBMS\_CLOUD.SEND\_REQUEST
* Leveraging REST for OCI Generative AI Services with LLMs
* REST Data Sources in OAC, Data Integration – An Example

[Mastering REST APIs](youtube:19Ms3I7TaAU)

## Documentation Links

* [OCI REST APIs](https://docs.oracle.com/en-us/iaas/api/)

* [UTL_HTTP](https://docs.oracle.com/en/database/oracle/oracle-database/19/arpls/UTL_HTTP.html)

* [DBMS_CLOUD](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-package.html)

* [DBMS_CLOUD.CREATE_CREDENTIAL](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A) 

* [Installing DBMS_CLOUD](https://support.oracle.com/epmos/faces/DocContentDisplay?id=2748362.1)

* [Using Oracle Autonomous Database Serverless](https://docs.oracle.com/en/cloud/paas/autonomous-database/adbsa/index.html)

## Task 1: Postman for OCI

1. Postman Collections, APIs and Workspaces for OCI

    For more details, see the [Postman for OCI](https://www.postman.com/oracledevs/).

2. Configure the Environments for your Tenancy

    Following the instructions detailed [here](https://www.postman.com/oracledevs/workspace/oracle-cloud-infrastructure-rest-apis/overview).


## Task 2: REST in Autonomous Database using UTL.HTTP


1. OAC REST Function and SQL Statement

    ```
    <copy>
	create or replace FUNCTION GET_OAC_ITEM_TYPES_HTTP(OAC_INST IN VARCHAR2,OAC_USER IN VARCHAR2,OAC_PWD IN VARCHAR2) RETURN CLOB AS 
		req         utl_http.req;
		resp        utl_http.resp; 
		resp_text 	VARCHAR2(32767);
		endpoint    varchar2(500) := 'https://' || OAC_INST || '.analytics.ocp.oraclecloud.com/api/20210901/catalog';
		encodeAuth  varchar2(300) := utl_raw.cast_to_varchar2(utl_encode.base64_encode(utl_raw.cast_to_raw(OAC_USER || ':' || OAC_PWD)));
	BEGIN
		req := utl_http.begin_request(endpoint, 'GET');
		UTL_HTTP.set_header (req,'Authorization', 'Basic ' || encodeAuth);    
		resp := utl_http.get_response(req);
		IF resp.status_code = 200 THEN
			BEGIN
				UTL_HTTP.READ_TEXT(resp,resp_text);
				UTL_HTTP.END_RESPONSE(resp);           
			EXCEPTION
				WHEN UTL_HTTP.END_OF_BODY THEN
					UTL_HTTP.END_RESPONSE(resp);        
			END;
		END IF;
		
		return resp_text;
	END GET_OAC_ITEM_TYPES_HTTP;
    </copy>
    ```

    ```
    <copy>
	select j.* from
		json_table(get_oac_item_types_http('{oac_instance_name}','{oac_username}','{oac_password}'), '$[*]' columns (type varchar)) j;
    </copy>
    ```

## Task 3: REST in Autonomous Database using DBMS CLOUD
 
1. OAC REST Function and SQL Statement 

    ```
    <copy>
	create or replace FUNCTION GET_OAC_ITEM_TYPES(OAC_INST IN VARCHAR2,OAC_USER IN VARCHAR2,OAC_PWD IN VARCHAR2) RETURN CLOB AS
		resp        dbms_cloud_types.resp;    
		endpoint    varchar2(500) := 'https://' || OAC_INST || '.analytics.ocp.oraclecloud.com/api/20210901/catalog';
		encodeAuth  varchar2(300) := utl_raw.cast_to_varchar2(utl_encode.base64_encode(utl_raw.cast_to_raw(OAC_USER || ':' || OAC_PWD)));
	BEGIN
		resp := dbms_cloud.send_request(
			headers         => JSON_OBJECT('Authorization' value 'Basic ' || encodeAuth),
			uri             => endpoint,
			method          => DBMS_CLOUD.METHOD_GET);
		RETURN dbms_cloud.get_response_text(resp);
	END GET_OAC_ITEM_TYPES;	
    </copy>
    ```

    ```
    <copy>
	select j.* from
		json_table(get_oac_item_types('{oac_instance_name}','{oac_username}','{oac_password}'), '$[*]' columns (type varchar)) j;
    </copy>
    ```

2. OCI Identity REST Function and SQL Statement 

    ```
    <copy>
	create or replace FUNCTION list_compartments (compartment_id IN VARCHAR2,region IN VARCHAR2,credential_name IN VARCHAR2) RETURN CLOB AS 
		identity_endpoint varchar2(500) := 'https://identity.' || region || '.oci.oraclecloud.com';
		resp dbms_cloud_types.RESP;
	BEGIN
		resp := dbms_cloud.send_request(
			credential_name => credential_name,
			uri => identity_endpoint || '/20160918/compartments/?compartmentIdInSubtree=true&compartmentId=' || compartment_id,
			method => dbms_cloud.METHOD_GET);
		RETURN dbms_cloud.get_response_text(resp);
	END list_compartments;
    </copy>
    ```

    ```
    <copy>
	select jt.*
	from json_table(
		list_compartments('{tenancy_ocid}','{tenancy_region}','{api_credential_name}')
		, '$[*]'
		COLUMNS(
			parocid VARCHAR2(500) PATH '$.compartmentId',
			ocid VARCHAR2(500) PATH '$.id',
			name VARCHAR2(500) PATH '$.name',
			decription VARCHAR2(500) PATH '$.description',
			time_created VARCHAR2(500) PATH '$.timeCreated',
			lifecycle_state VARCHAR2(500) PATH '$.lifecycleState'
		)
	) as jt;
    </copy>
    ```

3. OCI Gen AI REST Function and SQL Statement 

    ```
    <copy>
	create or replace FUNCTION gen_ai_generatetext (compartment_id IN VARCHAR2, credential_name IN VARCHAR2, ai_prompt IN VARCHAR2) RETURN CLOB AS 
		gen_ai_endpoint varchar2(500) := 'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com';
		resp dbms_cloud_types.RESP;
	BEGIN
		resp := dbms_cloud.send_request(
			credential_name => credential_name,
			uri => gen_ai_endpoint || '/20231130/actions/generateText',
			method => dbms_cloud.METHOD_POST,
			body => UTL_RAW.cast_to_raw(JSON_OBJECT(
										'compartmentId' value compartment_id,
										'servingMode' value
											(JSON_OBJECT(
												'modelId' 		value 'cohere.command',
												'servingType'	value 'ON_DEMAND'
											)),
										'inferenceRequest' value 
											(JSON_OBJECT(
												'prompt' 			value ai_prompt,
												'maxTokens' 		value 600,
												'temperature'		value 1,
												'frequencyPenalty'	value 0,
												'presencePenalty'	value 0,
												'topP'				value 0.75,
												'topK'				value 0,
												'returnLikelihoods'	value 'NONE',
												'isStream'			value false,
												'runtimeType'		value 'COHERE'
											))
									))
		);
		RETURN dbms_cloud.get_response_text(resp);
	END gen_ai_generatetext;	
    </copy>
    ```

    ```
    <copy>
	select jt.*
	from json_table(
		gen_ai_generatetext('{compartment_ocid}', '{api_credential_name}', 'Who is Willy Mays')
		, '$.inferenceResponse.generatedTexts[*]'
		COLUMNS(
			id VARCHAR2(500) PATH '$.id',
			text VARCHAR2(4000) PATH '$.text'
		)
	) as jt;	
    </copy>
    ```

4. AWS S3 Storage REST Function and SQL Statement 

    ```
    <copy>
	create or replace FUNCTION aws_list_objects(credential_name IN VARCHAR2,region IN CLOB,bucket_name in VARCHAR2) RETURN CLOB AS 
		resp dbms_cloud_types.RESP;
	BEGIN
		resp := dbms_cloud.send_request(
			credential_name => credential_name,
			uri => 'https://' || bucket_name || '.s3.' || region || '.amazonaws.com/',
			method => dbms_cloud.METHOD_GET
		);
		RETURN dbms_cloud.get_response_text(resp);
	END aws_list_objects;	
    </copy>
    ```

    ```
    <copy>
	SELECT xmltab.object_name, to_utc_timestamp_tz(xmltab.last_modified), xmltab.object_size, xmltab.storage_class
	FROM XMLTABLE(xmlnamespaces(default 'http://s3.amazonaws.com/doc/2006-03-01/'),'/ListBucketResult/Contents'
		PASSING XMLTYPE.createXML(aws_list_objects('{aws_cred}','{aws_region}','{aws_bucket_name}'))
		COLUMNS object_name VARCHAR2(50) PATH 'Key', 
				last_modified VARCHAR2(50) PATH 'LastModified', 
				object_size NUMBER PATH 'Size',
				storage_class VARCHAR2(50) PATH 'StorageClass') xmltab;	
    </copy>
    ```
	
    ```
    <copy>
	select object_name, bytes, DBMS_CLOUD.GET_OBJECT(
		 credential_name => '{aws_cred}',
		 object_uri => 'https://{aws_bucket_name}.s3.{aws_region}.amazonaws.com/' || object_name) as image
	from dbms_cloud.list_objects('AWSCRED', 'https://{aws_bucket_name}.s3.{aws_region}.amazonaws.com/');	
    </copy>
    ```	

5. OCI Generic, Public REST Function and SQL Statement 

    ```
    <copy>
	create or replace function nobel_prizes return clob is
		result_row      clob;
		resp            dbms_cloud_types.resp;    
		endpoint        varchar2(300) := 'https://api.nobelprize.org/2.1/nobelPrizes?limit=1000&nobelPrizeYear=2010&yearTo=2024&nobelPrizeCategory=med';
	begin        
		resp := dbms_cloud.send_request(
				credential_name => null,
				uri             => endpoint,
				method          => DBMS_CLOUD.METHOD_GET,
				cache           => true);
		result_row := dbms_cloud.get_response_text(resp);
		return result_row;
	end;	
    </copy>
    ```

    ```
    <copy>
	select j.* 
	from json_table(nobel_prizes(), 
					'$.nobelPrizes[*]' 
					columns (AWARD_YEAR VARCHAR PATH '$.awardYear',
							 PRIZE_AMOUNT NUMBER PATH '$.prizeAmount',
							 PRIZE_AMOUNT_ADJ NUMBER PATH '$.prizeAmountAdjusted')) j;
    </copy>
    ```

## Task 4: REST with OCI Services 

1. OAC REST Example

	* [REST API Connection](https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/create-connection-data-source-rest-endpoints.html)

	* [OAC REST APIs](https://docs.oracle.com/en/cloud/paas/analytics-cloud/acapi/quick-start.html)

2. APEX REST Example

	* [Managing REST Data Sources](https://docs.oracle.com/en/database/oracle/apex/23.1/htmdb/managing-REST-data-sources.html)

3. ODA REST Example

	* [Access Backends Using REST](https://docs.oracle.com/en/cloud/paas/digital-assistant/use-chatbot/access-backends-using-rest-service-component.html)

4. OCI Data Integration

	* [Generic REST Data Asset](https://docs.oracle.com/en-us/iaas/data-integration/using/createda-rest.htm#createda-rest)

	* [Working with REST Tasks](https://docs.oracle.com/en-us/iaas/data-integration/using/rest-tasks.htm)

## Acknowledgements
  * **Authors:** Steven Nichols and Derrick Cameron, Master Principal Cloud Architects
  * **Last Updated By/Date:** Steven Nichols, June 25, 2024

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)