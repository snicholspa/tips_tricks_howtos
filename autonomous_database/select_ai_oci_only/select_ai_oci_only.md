# Oracle Autonomous Database Select AI using OCI Only

## Introduction

This information is intended to cover how to setup and use Select AI NL2SQL only using OCI Services and OCI hosted Generative AI LLMs.

For more details on Select AI NL2SQL, please reference this information

* [Oracle Autonomous Database Select AI](https://snicholspa.github.io/tips_tricks_howtos/autonomous_database/select_ai/)

## Documentation Links

* [Select AI for ADB](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html)

* [Using Oracle Autonomous Database Serverless](https://docs.oracle.com/en/cloud/paas/autonomous-database/adbsa/index.html)

## Task 1: Load MOVIESTREAM Demo Data

The Moviestream data leveraged for this Cloud Coaching event was sourced from the below Oracle LiveLabs Workshop listed in **item 1**.  The LiveLabs Workshop leverages an Oracle Resource Manager (ORM) Stack which deploys a new Autonomous Database Instance on Shared  Infrastructure (ADB-S).  If you prefer to load only the data into an existing ADB-S Shared Intance, reference **item 2** below.

1. Oracle LiveLabs Workshop - Lab 1 - [Chat with Your Data in Autonomous Database Using Generative AI](https://apexapps.oracle.com/pls/apex/f?p=133:180:8657447273761::::wid:3831)  

2.  The below PL/SQL Code will deploy only the Moviestream data.  The first code block should be executed as the user **ADMIN** in your ADB-S instance and will create the objects required for the second code block.  The second code block should be executed as the **MOVIESTREAM** user/schema.

    **STEP 1: Execute the below PL/SQL as the user ADMIN**

    ```
    <copy>
    -- **Copyright © 2023, Oracle and/or its affiliates.
    -- **All rights reserved. Licensed under the Universal Permissive License (UPL), Version 1.0 as shown at https://oss.oracle.com/licenses/upl.

    -- **Connect to ADB as ADMIN To install the database objects required for the demo.**

    -- This will create the following objects 
    --      Table:          WORKSHOP_LOG
    --      External Table: EXT_DATASETS
    --      View:           WORKSHOP_DATASETS
    --      Package:        WORKSHOP   

    declare 
        l_uri varchar2(500) := 'https://objectstorage.us-ashburn-1.oraclecloud.com/n/c4u04/b/building_blocks_utilities/o/setup/workshop-setup.sql';
    begin
        dbms_cloud_repo.install_sql(
            content => to_clob(dbms_cloud.get_object(object_uri => l_uri))
        );
    end;
    /

    -- ** ENTER THE DESIRED PASSWORD **
    -- Add the MOVIESTREAM  user
    begin
        workshop.write('Begin demo install');
        workshop.write('add user MOVIESTREAM', 1);
        workshop.add_adb_user('MOVIESTREAM','{enter_password}');
        
        ords_admin.enable_schema (
            p_enabled               => TRUE,
            p_schema                => 'MOVIESTREAM',
            p_url_mapping_type      => 'BASE_PATH',
            p_auto_rest_auth        => TRUE   
        );    
        
    end;
    /
    </copy>
    ```
    
    **STEP 2: Execute the below PL/SQL as the user MOVIESTREAM**
    
    ```
    <copy>
    -- **Copyright © 2023, Oracle and/or its affiliates.
    -- **All rights reserved. Licensed under the Universal Permissive License (UPL), Version 1.0 as shown at https://oss.oracle.com/licenses/upl.

        -- Tables will be installed in the current schema
        -- Connect as the MOVIESTREAM user

    begin
        workshop.add_dataset 
            (tag => 'gen-ai',
            run_post_load_procedures => true
            );   
    end;
    /
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
		  PRINCIPAL_NAME => 'moviestream',
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

As the user **moviestream**, issue the below PL/SQL Code.

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
		-- https://docs.oracle.com/en-us/iaas/Content/generative-ai/pretrained-models.htm
		gen_ai_endpoint 	varchar2(500) := 'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com';
		gen_ai_model 		varchar2(500) := 'cohere.command-r-16k'; --cohere.command-r-plus
		compartment_ocid 	varchar2(500) := 'ocid1.compartment.oc1..aaa';
		api_cred_name 		varchar2(500) := '{oci_cred_from_Task_3_1}';
		ai_prompt 			varchar2(4000) := 'who is Babe Ruth?';
		resp 				dbms_cloud_types.RESP;
	BEGIN
		resp := dbms_cloud.send_request(
			credential_name => api_cred_name,
			uri => gen_ai_endpoint || '/20231130/actions/chat',
			method => dbms_cloud.METHOD_POST,
			body => utl_raw.cast_to_raw(json_object(
				'compartmentId'     value compartment_ocid,
				'servingMode'       value
					(json_object(
						'modelId'               value gen_ai_model,
						'servingType'           value 'ON_DEMAND'
						)),
						'chatRequest'           value 
						(json_object(
							'message'           value ai_prompt,
							'apiFormat'         value 'COHERE',
							'maxTokens'         value 2000,
							'temperature'       value 0.75,
							'frequencyPenalty'  value 0,
							'presencePenalty'   value 0,
							'topP'              value 1.0,
							'topK'              value 0,
							'isStream'          value false
						))
			))
		);
		dbms_output.put_line(dbms_cloud.get_response_text(resp)); 
	END;
	/
	</copy>
    ```

## Task 4: Create Select AI NL2SQL Profile

For more details on creating a Profile and the associated attributes, see the following documentation

[`DBMS_CLOUD_AI` Package](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-000CBBD4-202B-4E9B-9FC2-B9F2FF20F246)

[Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-7B6A819E-AF51-445B-949D-E8E16A936CFE)

[Profile Attributes](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-12D91681-B51C-48E0-93FD-9ABC67B0F375)

As the user **moviestream**, issue the below PL/SQL Code. 

Note:  The OCI Generative AI Default Chat Model is curretly **meta.llama-3-70b-instruct**

1. Create Select AI for NL2SQL Profile

    ```
    <copy>
	BEGIN
		DBMS_CLOUD_AI.CREATE_PROFILE(
			profile_name => 'OCI_LLAMA_INSTRUCT_NL2SQL',
			attributes =>
				'{"provider": "oci",
				"credential_name": "{oci_cred_from_Task_3_1}",
				"comments":false,
				"conversation":false,
				"model":"meta.llama-3-70b-instruct",
				"object_list": [{"owner": "MOVIESTREAM", "name": "movies"},
								{"owner": "MOVIESTREAM", "name": "streams"},
								{"owner": "MOVIESTREAM", "name": "customer_extension"},
								{"owner": "MOVIESTREAM", "name": "pizza_shop"},
								{"owner": "MOVIESTREAM", "name": "actors"},
								{"owner": "MOVIESTREAM", "name": "genre"},
								{"owner": "MOVIESTREAM", "name": "customer_segment"},
								{"owner": "MOVIESTREAM", "name": "customer_contact"}]
				}'
		);
	END;
	/	
    </copy>
    ```

2.  To view the Profiles and their attributes, execute the following SQL Statement

    ```
    <copy>
    select a.profile_name, a.status, b.attribute_name, b.attribute_value 
    from user_CLOUD_AI_PROFILES a, user_cloud_ai_profile_attributes b
    where a.profile_id = b.profile_id;
    </copy>
    ```	

## Task 5: Set Select AI Profile

Use **AI** as the keyword in a **SELECT** statement for interacting with the database using natural language prompts.

The **AI** keyword in a **SELECT** statement instructs the SQL execution engine to use the LLM identified in the active AI profile to process natural language and to generate SQL.

You can use the **AI** keyword in a query with Oracle clients such as SQL Developer, OML Notebooks, and third-party tools, to interact with database in natural language.

For more details on running **Select AI** statements, see the following documentation

[Use Select AI for Natural Language Interaction with your Database](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-B3E0EE68-3B4C-4002-9B45-BBE258A2F15A)

1. Set Select AI Profile for Current Session

    ```
    <copy>
    BEGIN
        DBMS_CLOUD_AI.SET_PROFILE(
            profile_name => '<profile name from Task 4>'
        );
    END;
    /
    </copy>
    ```

2. To list what AI Profile is currently set for the user's session, execute the following SQL

    ```
    <copy>
	SELECT DBMS_CLOUD_AI.GET_PROFILE from DUAL;
    </copy>
    ```

    For more details on Setting the Profile, see the following documentation

    [Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-7B6A819E-AF51-445B-949D-E8E16A936CFE)

## Task 6: Execute Select AI for NL2SQL Actions

For more details on Select AI Actions , see the following documentation

[Use AI Keyword to Enter Prompts](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/select-ai-keyword-prompts.html#ADBSB-GUID-B3E0EE68-3B4C-4002-9B45-BBE258A2F15A)

1. runsql

    ```
    <copy>
	select ai runsql What movies are tom hanks in
    </copy>
    ```

    ```
    <copy>
	Apollo 13
	Splash
	Cast Away
	Forrest Gump
	Saving Private Ryan
	Angels & Demons
	The Da Vinci Code
	The Great Buck Howard
	Sleepless in Seattle
	Who Killed the Electric Car?
	Philadelphia
	Big
    </copy>
    ```

2. showsql

    ```
    <copy>
	select ai showsql What movies are tom hanks in
    </copy>
    ```

    ```
    <copy>
	SELECT m."TITLE"
	FROM "MOVIESTREAM"."MOVIES" m
	JOIN "MOVIESTREAM"."ACTORS" a ON m."MOVIE_ID" = a."MOVIE_ID"
	WHERE a."ACTOR" = 'Tom Hanks'
    </copy>
    ```

3. explainsql

    ```
    <copy>
	select ai explainsql What movies are tom hanks in
    </copy>
    ```

    ```
    <copy>
	Here is the Oracle SQL query to find the movies that Tom Hanks is in:
	
	SELECT m."TITLE"
	FROM "MOVIESTREAM"."MOVIES" m
	JOIN "MOVIESTREAM"."ACTORS" a ON m."MOVIE_ID" = a."MOVIE_ID"
	WHERE a."ACTOR" = 'Tom Hanks';
	
	Explanation:

	* We use table aliases `m` for the `MOVIES` table and `a` for the `ACTORS` table to make the query more readable.
	* We join the `MOVIES` table with the `ACTORS` table on the `MOVIE_ID` column, which is common to both tables.
	* We filter the results to only include movies where the actor is 'Tom Hanks' using the `WHERE` clause.
	* Finally, we select only the `TITLE` column from the `MOVIES` table, which gives us the list of movies that Tom Hanks is in.

	Note: In Oracle, table and column names are case-sensitive, so we enclose them in double quotes to ensure that the query is executed correctly.
    </copy>
    ```

4. narrate

    ```
    <copy>
	select ai narrate What movies are tom hanks in
    </copy>
    ```

    ```
    <copy>
	Tom Hanks is in the following movies:

	* Apollo 13
	* Splash
	* Cast Away
	* Forrest Gump
	* Saving Private Ryan
	* Angels & Demons
	* The Da Vinci Code
	* The Great Buck Howard
	* Sleepless in Seattle
	* Who Killed the Electric Car?
	* Philadelphia
	* Big
    </copy>
    ```


5. chat

    ```
    <copy>
	select ai chat What is Tom Hanks best known for
    </copy>
    ```

    ```
    <copy>
	Tom Hanks is a highly acclaimed American actor, producer, and director who has been active in the film industry for over four decades. He is best known for his versatility, range, and consistency in delivering outstanding performances in a wide variety of film genres. Here are some of the things Tom Hanks is best known for:

	1. **Iconic Movie Roles**: Hanks has played some of the most iconic roles in movie history, including Forrest Gump in "Forrest Gump" (1994), Chuck Noland in "Cast Away" (2000), Jim Lovell in "Apollo 13" (1995), and Woody in the "Toy Story" franchise (1995-2019).
	2. **Oscar Wins**: Hanks has won two Academy Awards (Oscars) for Best Actor, for his performances in "Philadelphia" (1993) and "Forrest Gump" (1994).
	3. **Dramatic Range**: Hanks has demonstrated his dramatic range by playing characters in films like "Saving Private Ryan" (1998), "Road to Perdition" (2002), and "Captain Phillips" (2013), showcasing his ability to portray complex, nuanced characters.
	4. **Comedic Timing**: Hanks has also shown his comedic chops in films like "The Money Pit" (1986), "Big" (1988), and "The 'Burbs" (1989), demonstrating his ability to play both comedic and dramatic roles with ease.
	5. **Everyman Quality**: Hanks is often referred to as "America's Dad" due to his relatable, down-to-earth persona, which has made him a beloved figure in American popular culture.
	6. **Collaborations with Ron Howard**: Hanks has collaborated with director Ron Howard on several films, including "Apollo 13," "Angels & Demons" (2009), and "Inferno" (2016).
	7. **TV Work**: Before becoming a film star, Hanks got his start in television, starring in the sitcom "Bosom Buddies" (1980-1982) and making guest appearances on shows like "Happy Days" and "Taxi."
	8. **Philanthropy**: Hanks is involved with several charitable organizations, including the Elizabeth Glaser Pediatric AIDS Foundation and the Space Foundation, and has supported various causes, such as veterans' rights and environmental conservation.

	Overall, Tom Hanks is widely regarded as one of the greatest actors of his generation, known for his incredible range, versatility, and dedication to his craft.
    </copy>
    ```

6. showprompt using the DBMS\_CLOUD\_AI.GENERATE Function

    For more details on Generate Function, see the following documentation

    [GENERATE Function](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-7B438E87-0E9A-4318-BA01-3BE1A5851229)

    ```
    <copy>
	select dbms_lob.substr(dbms_cloud_ai.generate(
		prompt => 'What movies are tom hanks in',
		action => 'showprompt',
		profile_name => 'OCI_LLAMA_INSTRUCT_NL2SQL'),4000,1) from dual;
    </copy>
    ```

    ```
    <copy>
	SELECT JSON_QUERY('[{"role":"SYSTEM","content":[{"type":"TEXT","text":"### Oracle SQL tables with their properties:"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"MOVIES\" (\"TITLE\" VARCHAR2(200), \"GROSS\" NUMBER, \"OPENING_DATE\" DATE, \"RUNTIME\" NUMBER, \"LIST_PRICE\" NUMBER, \"IMAGE_URL\" VARCHAR2(4000), \"MOVIE_ID\" NUMBER, \"BUDGET\" NUMBER, \"NOMINATIONS\" VARCHAR2(4000), \"AWARDS\" VARCHAR2(4000), \"CREW\" VARCHAR2(4000), \"SUMMARY\" CLOB, \"STUDIO\" VARCHAR2(4000), \"MAIN_SUBJECT\" VARCHAR2(4000), \"YEAR\" NUMBER)"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"STREAMS\" (\"DAY_ID\" TIMESTAMP(6), \"VIEWS\" NUMBER(1,0), \"SALES\" NUMBER(5,2), \"DISCOUNT_PERCENT\" NUMBER(5,2), \"DISCOUNT_TYPE\" VARCHAR2(100), \"LIST_PRICE\" NUMBER(5,2), \"PAYMENT_METHOD\" VARCHAR2(100), \"OS\" VARCHAR2(100), \"DEVICE\" VARCHAR2(100), \"APP\" VARCHAR2(100), \"CUST_ID\" NUMBER, \"MOVIE_ID\" NUMBER, \"GENRE_ID\" NUMBER(4,0))"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"CUSTOMER_EXTENSION\" (\"CUST_ID\" NUMBER, \"YRS_RESIDENCE\" NUMBER, \"YRS_CURRENT_EMPLOYER\" NUMBER, \"WORK_EXPERIENCE\" NUMBER, \"SEGMENT_ID\" NUMBER, \"RENT_OWN\" VARCHAR2(40), \"PET\" VARCHAR2(40), \"NUM_MORTGAGES\" NUMBER, \"NUM_CARS\" NUMBER, \"MORTGAGE_AMT\" NUMBER, \"MARITAL_STATUS\" VARCHAR2(8), \"LATE_MORT_RENT_PMTS\" NUMBER, \"JOB_TYPE\" VARCHAR2(200), \"INSUFF_FUNDS_INCIDENTS\" NUMBER, \"INCOME_LEVEL\" VARCHAR2(20), \"INCOME\" NUMBER, \"HOUSEHOLD_SIZE\" NUMBER, \"GENDER\" VARCHAR2(20), \"FULL_TIME\" VARCHAR2(40), \"EDUCATION\" VARCHAR2(40), \"CREDIT_BALANCE\" NUMBER, \"COMMUTE_DISTANCE\" NUMBER, \"AGE\" NUMBER, \"EMAIL\" VARCHAR2(500), \"FIRST_NAME\" VARCHAR2(200), \"LAST_NAME\" VARCHAR2(200))"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"PIZZA_SHOP\" (\"PIZZA_LOC_ID\" NUMBER, \"LOCATION\" SDO_GEOMETRY, \"COUNTY\" VARCHAR2(250), \"POSTAL_CODE\" VARCHAR2(38), \"STATE\" VARCHAR2(26), \"CITY\" VARCHAR2(250), \"ADDRESS\" VARCHAR2(250), \"CHAIN\" VARCHAR2(30), \"CHAIN_ID\" NUMBER, \"LON\" NUMBER, \"LAT\" NUMBER)"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"ACTORS\" (\"MOVIE_ID\" NUMBER, \"ACTOR\" VARCHAR2(4000))"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"GENRE\" (\"GENRE_ID\" NUMBER, \"NAME\" VARCHAR2(30))"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"CUSTOMER_SEGMENT\" (\"SEGMENT_ID\" NUMBER, \"SHORT_NAME\" VARCHAR2(100), \"NAME\" VARCHAR2(100))"}]},{"role":"SYSTEM","content":[{"type":"TEXT","text":"# CREATE TABLE \"MOVIESTREAM\".\"CUSTOMER_CONTACT\" (\"CUST_ID\" NUMBER, \"LOC_LONG\" NUMBER, \"LOC_LAT\" NUMBER, \"PROMOTION_RESPONSE\" NUMBER, \"YRS_CUSTOMER\" NUMBER, \"CONTINENT\" VARCHAR2(400), \"COUNTRY_CODE\" VARCHAR2(2), \"COUNTRY\" VARCHAR2(400), \"STATE_PROVINCE\" VARCHAR2(100), \"CITY\" VARCHAR2(100), \"POSTAL_CODE\" VARCHAR2(10), \"STREET_ADDRESS\" VARCHAR2(400), \"EMAIL\" VARCHAR2(500), \"FIRST_NAME\" VARCHAR2(200), \"LAST_NAME\" VARCHAR2(200))"}]},{"role":"USER","content":[{"type":"TEXT","text":"\n\nRead the above table description and write an Oracle SQL to answer the following question. Always use table alias and easy to read column names. Consider table name, schema name and column name to be case sensitive and enclose in double quotes Do not write anything else except the SQL query.\n\nQuestion:What movies are tom hanks in"}]}]', '$' returning clob pretty)  prompt FROM DUAL;
    </copy>
    ```

    ```
    <copy>
	SELECT JSON_QUERY('
	[
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "### Oracle SQL tables with their properties:"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"MOVIES\" (\"TITLE\" VARCHAR2(200), \"GROSS\" NUMBER, \"OPENING_DATE\" DATE, \"RUNTIME\" NUMBER, \"LIST_PRICE\" NUMBER, \"IMAGE_URL\" VARCHAR2(4000), \"MOVIE_ID\" NUMBER, \"BUDGET\" NUMBER, \"NOMINATIONS\" VARCHAR2(4000), \"AWARDS\" VARCHAR2(4000), \"CREW\" VARCHAR2(4000), \"SUMMARY\" CLOB, \"STUDIO\" VARCHAR2(4000), \"MAIN_SUBJECT\" VARCHAR2(4000), \"YEAR\" NUMBER)"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"STREAMS\" (\"DAY_ID\" TIMESTAMP(6), \"VIEWS\" NUMBER(1,0), \"SALES\" NUMBER(5,2), \"DISCOUNT_PERCENT\" NUMBER(5,2), \"DISCOUNT_TYPE\" VARCHAR2(100), \"LIST_PRICE\" NUMBER(5,2), \"PAYMENT_METHOD\" VARCHAR2(100), \"OS\" VARCHAR2(100), \"DEVICE\" VARCHAR2(100), \"APP\" VARCHAR2(100), \"CUST_ID\" NUMBER, \"MOVIE_ID\" NUMBER, \"GENRE_ID\" NUMBER(4,0))"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"CUSTOMER_EXTENSION\" (\"CUST_ID\" NUMBER, \"YRS_RESIDENCE\" NUMBER, \"YRS_CURRENT_EMPLOYER\" NUMBER, \"WORK_EXPERIENCE\" NUMBER, \"SEGMENT_ID\" NUMBER, \"RENT_OWN\" VARCHAR2(40), \"PET\" VARCHAR2(40), \"NUM_MORTGAGES\" NUMBER, \"NUM_CARS\" NUMBER, \"MORTGAGE_AMT\" NUMBER, \"MARITAL_STATUS\" VARCHAR2(8), \"LATE_MORT_RENT_PMTS\" NUMBER, \"JOB_TYPE\" VARCHAR2(200), \"INSUFF_FUNDS_INCIDENTS\" NUMBER, \"INCOME_LEVEL\" VARCHAR2(20), \"INCOME\" NUMBER, \"HOUSEHOLD_SIZE\" NUMBER, \"GENDER\" VARCHAR2(20), \"FULL_TIME\" VARCHAR2(40), \"EDUCATION\" VARCHAR2(40), \"CREDIT_BALANCE\" NUMBER, \"COMMUTE_DISTANCE\" NUMBER, \"AGE\" NUMBER, \"EMAIL\" VARCHAR2(500), \"FIRST_NAME\" VARCHAR2(200), \"LAST_NAME\" VARCHAR2(200))"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"PIZZA_SHOP\" (\"PIZZA_LOC_ID\" NUMBER, \"LOCATION\" SDO_GEOMETRY, \"COUNTY\" VARCHAR2(250), \"POSTAL_CODE\" VARCHAR2(38), \"STATE\" VARCHAR2(26), \"CITY\" VARCHAR2(250), \"ADDRESS\" VARCHAR2(250), \"CHAIN\" VARCHAR2(30), \"CHAIN_ID\" NUMBER, \"LON\" NUMBER, \"LAT\" NUMBER)"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"ACTORS\" (\"MOVIE_ID\" NUMBER, \"ACTOR\" VARCHAR2(4000))"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"GENRE\" (\"GENRE_ID\" NUMBER, \"NAME\" VARCHAR2(30))"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"CUSTOMER_SEGMENT\" (\"SEGMENT_ID\" NUMBER, \"SHORT_NAME\" VARCHAR2(100), \"NAME\" VARCHAR2(100))"
				}
			]
		},
		{
			"role": "SYSTEM",
			"content": [
				{
					"type": "TEXT",
					"text": "# CREATE TABLE \"MOVIESTREAM\".\"CUSTOMER_CONTACT\" (\"CUST_ID\" NUMBER, \"LOC_LONG\" NUMBER, \"LOC_LAT\" NUMBER, \"PROMOTION_RESPONSE\" NUMBER, \"YRS_CUSTOMER\" NUMBER, \"CONTINENT\" VARCHAR2(400), \"COUNTRY_CODE\" VARCHAR2(2), \"COUNTRY\" VARCHAR2(400), \"STATE_PROVINCE\" VARCHAR2(100), \"CITY\" VARCHAR2(100), \"POSTAL_CODE\" VARCHAR2(10), \"STREET_ADDRESS\" VARCHAR2(400), \"EMAIL\" VARCHAR2(500), \"FIRST_NAME\" VARCHAR2(200), \"LAST_NAME\" VARCHAR2(200))"
				}
			]
		},
		{
			"role": "USER",
			"content": [
				{
					"type": "TEXT",
					"text": "\n\nRead the above table description and write an Oracle SQL to answer the following question. Always use table alias and easy to read column names. Consider table name, schema name and column name to be case sensitive and enclose in double quotes Do not write anything else except the SQL query.\n\nQuestion:What movies are tom hanks in"
				}
			]
		}
	]'
	, '$' returning clob pretty)  prompt FROM DUAL;	
    </copy>
    ```

## Acknowledgements
  * **Authors:** Derrick Cameron and Steven Nichols, Master Principal Cloud Architects
  * **Contributors:** Marty Gubar and Mark Hornick, Product Management
  * **Last Updated By/Date:** Steven Nichols, October 10, 2024

Data about movies in this workshop were sourced from **Wikipedia**.

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)