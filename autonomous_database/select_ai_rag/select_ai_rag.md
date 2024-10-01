# Oracle Autonomous Database Select AI with RAG

## Introduction

Select AI with RAG augments your natural language prompt by retrieving content from your specified vector store using semantic similarity search. This reduces hallucinations by using your specific and up-to-date content and provides more relevant natural language responses to your prompts.

Select AI offers fully automated implementation of Retrieval Augmented Generation (RAG). This technique retrieves data from enterprise sources using AI vector search and augments user prompts for your specified large language model (LLM). By leveraging information from enterprise data stores, RAG reduces hallucinations and generates grounded responses.

RAG uses AI vector search on a vector index to find semantically similar data for the specified question. Vector store processes vector embeddings, which are mathematical representations of various data points like text, images, and sounds. These embeddings capture the meaning of the data, enabling efficient processing and analysis. For more details on vector embeddings and AI vector search, see Overview of AI Vector Search.

Select AI integrates with AI vector search available in Oracle Autonomous Database 23ai for similarity search using vector embeddings.

The above introduction was sourced from [here](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/select-ai-retrieval-augmented-generation-rag.html)

## New to the OCI Generative AI Service

Please reference the below links for more information on Oracle's Artificial Intelligence (AI) and Generative AI Offerings.

* [Artificial Intelligence (AI)](https://www.oracle.com/artificial-intelligence/)

* [Generative AI capabilities](https://www.oracle.com/artificial-intelligence/generative-ai/)

* [Generative AI Service](https://www.oracle.com/artificial-intelligence/generative-ai/generative-ai-service/)

* [Pretrained Foundational Models](https://docs.oracle.com/en-us/iaas/Content/generative-ai/pretrained-models.htm)

## Documentation Links

* [Select AI with Retrieval Augmented Generation (RAG)](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/select-ai-retrieval-augmented-generation-rag.html)

* [Examples of Using Select AI](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/examples-using-select-ai.html)

* [Example: Set Up and Use Select AI with RAG](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/examples-using-select-ai.html#ADBSB-GUID-2FBD7DDB-CAC3-47AF-AB66-17F44C2ADAA4)

* [Use Select AI for Natural Language Interaction with your Database](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html)

* [Oracle Database 23ai](https://docs.oracle.com/en/database/oracle/oracle-database/23/index.html)

* [Oracle Autonomous Database Serverless](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/index.html)

## Cloud Coaching Webinar Playlist and Notable Past Webinars

1. Cloud Coaching YouTube Playlist

	* [Code Innovate Cloud Coaching Playlist](https://www.youtube.com/playlist?list=PLPIzp-E1msrZMCfSHbKgLK3KWsNM9JB9a)

2. Introduction to Select AI for NL2SQL (Natural Language to SQL)

	* [Introducing Select AI - A new way to talk to and converse with your Oracle Autonomous Database](https://youtu.be/19Ms3I7TaAU?si=iIQ8kFxgm-IBX5kJ)

3. Vector Search and RAG

	* [Vector Search and Generative AI for Oracle Database Developers](https://youtu.be/2fmoNZzqLOk?si=SgGM283oaf8KL3Jf)

4. JSON Data Manipulation using JSON_TABLE

	* [Extracting value and managing the lifecycle of JSON data with Oracle Cloud Infrastructure](https://youtu.be/BHNz2lEq2IA?si=TEK1UeHONj_XFI0z)
	
5. APEX and Gen AI

	* [Unlocking Oracle APEX Potential: Integrating Generative AI and Streamlining Workflows](https://youtu.be/ZJ491y7oils?si=jH4h5VHZ9WfC_o-U)

6. Digital Assistant and Gen AI

	* [Integrating Large Language Models with Oracle Digital Assistant](https://youtu.be/JO4BDWdW6OE?si=rW8sMTLreU5jgmhL)

	* [Conversational AI: Harnessing Generative AI with Oracle Digital Assistant](https://youtu.be/LvL-Omki8xo?si=lQEwoTtrJrI6QC54)

7. PL/SQL SDK for OCI

	* [Connecting Cloud and Database: Unleashing Possibilities with PL/SQL SDK](https://youtu.be/1mye241dtUo?si=WtzGpo9hoMhdBkKQ)

8. REST in the Autonomous Database

	* [Master REST APIs: The Universal Integration Tool in AI and Beyond](https://youtu.be/Ukm8LwYdMnQ?si=Dj2Ak1WrtAlI15Ko)

## Task 0: PLEASE READ - Verify Access to OCI Gen AI Service

The OCI Gen AI Service is currenly available in specific OCI Regions.  If you currently are **NOT** subscribed to one of those regions, you must do so to access the OCI Gen AI Service and leverage the pretrained models hosted by the service.  You must also ensure the identity domain is being replicated to the region where you plan to access the OCI Gen AI Services.  Lastly, you will also need to setup IAM Policies so the users can access the OCI Gen AI Service.  Please see the links below for all those details.

1. OCI Gen AI Service availabilty

	* [Regions with Generative AI](https://docs.oracle.com/en-us/iaas/Content/generative-ai/overview.htm#regions)

2. Managing and Subscribing to a Region (optional)

	* [Managing Regions](https://docs.oracle.com/en-us/iaas/Content/Identity/regions/managingregions.htm)

	* [Subscribing to an Infrastructure Region](https://docs.oracle.com/en-us/iaas/Content/Identity/regions/To_subscribe_to_an_infrastructure_region.htm#subscribe)
	
3. Enable Replicating an Identity Domain to Multiple Regions (optional based on step 2)

	* [Replicating an Identity Domain to Multiple Regions](https://docs.oracle.com/en-us/iaas/Content/Identity/domains/to-manage-regions-for-domains.htm)

4. Setup IAM Policies to Access the OCI Gen AI resources

	* [Getting Access to Generative AI](https://docs.oracle.com/en-us/iaas/Content/generative-ai/iam-policies.htm)


## Task 1: Create Database User with Grants

As the user **ADMIN**, issue the below SQL Statements

1. Create Database User and Initial Grants

    ```
    <copy>
	create user sairag identified by "{password}";
	grant dwrole to sairag;
	grant unlimited tablespace to sairag;
    </copy>
    ```

2. Grant Database User Access to DBMS Packages

    ```
    <copy>
    grant execute on DBMS_CLOUD to sairag;
    grant execute on DBMS_CLOUD_AI to sairag;
    </copy>
    ```

## Task 2: Update Access Control List (optional)

This is only required if you plan to leverage an LLM Provider **OTHER** than OCI.

For more details, see the [`DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE` Procedure](https://docs.oracle.com/en/database/oracle/oracle-database/23/arpls/DBMS_NETWORK_ACL_ADMIN.html#GUID-254AE700-B355-4EBC-84B2-8EE32011E692) documentation.

As the user **ADMIN**, issue the following PL/SQL Code

1. Grant Non-Admin User Permission to Access AI Provider

    ```
    <copy>
	BEGIN
	DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
	  HOST         => 'api.openai.com',
	  ACE          => xs$ace_type(
		  PRIVILEGE_LIST => xs$name_list('http'),
		  PRINCIPAL_NAME => 'sairag',
		  PRINCIPAL_TYPE => xs_acl.ptype_db));
	END;
	/	
    </copy>
    ```

    If you would like to see what existing ACL Priviledges exist, execute the following SQL Statement

    ```
    <copy>
	select a.host, b.principal, b.privilege, b.is_grant 
    from dba_network_acls a, dba_network_acl_privileges b
    where a.acl = b.acl;     
    </copy>
    ```

## Task 3: Create and Test Credentials

For more details, see the [`DBMS_CLOUD.CREATE_CREDENTIAL` Procedure](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A) documentation.

As the user **sairag**, issue the below PL/SQL Code.

1. Create Credential to Access the OCI Gen AI Service and Object Storage

    ```
    <copy>
	BEGIN
	   DBMS_CLOUD.CREATE_CREDENTIAL (
		   credential_name => '{enter_credential_name}',
		   user_ocid       => 'ocid1.user.oc1......',
		   tenancy_ocid    => 'ocid1.tenancy.oc1......',
		   private_key     => '-----BEGIN PRIVATE KEY-----
							   M..................
							   -----END PRIVATE KEY-----',
		   fingerprint     => '3e:...............:ee');
	END;
	/
    </copy>
    ```

    If you would like to see what existing credentials exist, execute the following SQL Statement

    ```
    <copy>
    select * from user_credentials;  
    </copy>
    ```

2. Test OCI API Credential

	This test connectivity to OCI Object Storage.

    ```
    <copy>
	SELECT * FROM DBMS_CLOUD.LIST_OBJECTS('{oci_cred_from_Task_3_1}','https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/');
    </copy>
    ```

	This test connectivity to OCI Gen AI Service.

    ```
    <copy>
	set serveroutput on;
	DECLARE
		gen_ai_endpoint varchar2(500) := 'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com';
		v_compartment_id    varchar2(4000)  := 'ocid1.compartment.oc1......';
		v_vector_credential varchar2(100)   := '{oci_cred_from_Task_3_1}';
		v_ai_prompt varchar2(4000) := 'who is Babe Ruth?';
		resp dbms_cloud_types.RESP;
	BEGIN
		resp := dbms_cloud.send_request(
			credential_name => v_vector_credential,
			uri => gen_ai_endpoint || '/20231130/actions/generateText',
			method => dbms_cloud.METHOD_POST,
			body => UTL_RAW.cast_to_raw(JSON_OBJECT(
										'compartmentId' value v_compartment_id,
										'servingMode' value
											(JSON_OBJECT(
												'modelId'         value 'cohere.command',
												'servingType'    value 'ON_DEMAND'
											)),
										'inferenceRequest' value 
											(JSON_OBJECT(
												'prompt'             value v_ai_prompt,
												'maxTokens'         value 600,
												'temperature'        value 1,
												'frequencyPenalty'    value 0,
												'presencePenalty'    value 0,
												'topP'                value 0.75,
												'topK'                value 0,
												'returnLikelihoods'    value 'NONE',
												'isStream'            value false,
												'runtimeType'        value 'COHERE'
											))
									))
		);
		dbms_output.put_line(dbms_cloud.get_response_text(resp)); 
	END;
	/    
	</copy>
    ```

## Task 4: Create Select AI RAG Profile

For more details on creating a Profile and the associated attributes, see the following documentation

[`DBMS_CLOUD_AI` Package](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-000CBBD4-202B-4E9B-9FC2-B9F2FF20F246)

[Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-7B6A819E-AF51-445B-949D-E8E16A936CFE)

[Profile Attributes](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-12D91681-B51C-48E0-93FD-9ABC67B0F375)

As the user **sairag**, issue the below PL/SQL Code.

    ```
    <copy>
	BEGIN
		DBMS_CLOUD_AI.CREATE_PROFILE(
			profile_name => 'oci_selectai_rag',
			attributes =>
				'{"provider": "oci",
				"credential_name": "{oci_cred_from_Task_3_1}",
				"region":"us-chicago-1",
				"oci_compartment_id":"ocid1.compartment.oc1.......",
				"vector_index_name": "sairag_index_name",
				"embedding_model": "cohere.embed-english-v3.0",
				"model": "cohere.command-r-plus",
				"max_tokens": 2000,
				"temperature": 0.75
				}'
		);
	END;
	/
    </copy>
    ```

If you would like to see what Profiles exist and their attributes, execute the following SQL Statement

    ```
    <copy>
    select a.profile_name, a.status, b.attribute_name, b.attribute_value 
    from user_CLOUD_AI_PROFILES a, user_cloud_ai_profile_attributes b
    where a.profile_id = b.profile_id;
    </copy>
    ```	

## Task 5: Create Select AI RAG Vector Index

For more details on creating a Select AI with RAG Vector Index, see the following documentation

[CREATE_VECTOR_INDEX Procedure](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/dbms-cloud-ai-package.html#ADBSB-GUID-CB37AB86-B625-4798-A3F4-8DD6DBA8B491)

[Vector Index Attributes](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/dbms-cloud-ai-package.html#ADBSB-GUID-F6A65B2A-AE6D-4751-BDD7-137D49248160)

	As the user **sairag**, issue the below PL/SQL Code.

    ```
    <copy>
	begin
		   DBMS_CLOUD_AI.create_vector_index(
			 index_name  => 'sairag_index_name',
			 attributes  => '{"vector_db_provider": "oracle",
							  "vector_table_name": "sairag_table_name",
							  "object_storage_credential_name": "{oci_cred_from_Task_3_1}",
							  "location": "https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/",
							  "profile_name": "oci_selectai_rag",
							  "vector_dimension": 1024,
							  "vector_distance_metric": "cosine",
							  "chunk_overlap": 0,
							  "chunk_size": 1536,
							  "refresh_rate": 1440
		  }');
	end;
	/
    </copy>
    ```	

## Task 6: Set Select AI RAG Profile

For more details on Setting the Profile, see the following documentation

[Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#ADBSB-GUID-9CE75F94-7455-4C09-A3F3-118C08E82B7E)

1.  Set Select AI Profile for Current Session

    ```
    <copy>
	begin
	  dbms_cloud_ai.set_profile(
			profile_name => 'oci_selectai_rag'
		);
	end;
	/
    </copy>
    ```
	To list what AI Profile is currently set for the user's session, execute the following SQL Statement

    ```
    <copy>
	SELECT DBMS_CLOUD_AI.GET_PROFILE from DUAL;
    </copy>
    ```

## Task 7: Test/Use Select AI RAG

More details on using the **AI** Keyword with a corresponding **ACTION** can be found here

[Use AI Keyword to Enter Prompts](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/use-ai-keyword-enter-prompts.html#ADBSB-GUID-B3E0EE68-3B4C-4002-9B45-BBE258A2F15A)

1. Test NARRATE

    ```
    <copy>
	SELECT AI NARRATE what is the broadband infrastructure fund outlined in house bill 9 ;
    </copy>
    ```
	
2. Test RUNSQL

    ```
    <copy>
	SELECT AI runsql what is the broadband infrastructure fund outlined in house bill 9 ;
    </copy>
    ```
	
3. Test SHOWSQL

    ```
    <copy>
	SELECT AI showql what is the broadband infrastructure fund outlined in house bill 9 ;
    </copy>
    ```

## Related Information

1. Information on Autonomous Pipelines can be found here 

	[Using Data Pipelines for Continuous Load and Export](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/autonomous-pipelines.html)

    ```
    <copy>
	select * from user_cloud_pipelines;
	select * from user_cloud_pipeline_attributes;
	select * from user_cloud_pipeline_history;
    </copy>
    ```

## Acknowledgements
  * **Authors:** Steven Nichols, Master Principal Cloud Architects
  * **Last Updated By/Date:** Steven Nichols, October6, 2024

Data about movies in this workshop were sourced from **Wikipedia**.

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)