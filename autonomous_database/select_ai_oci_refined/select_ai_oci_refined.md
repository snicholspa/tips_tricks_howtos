# Oracle Autonomous Database Select AI using OCI Refined

## Introduction

This information is intended to cover how to setup and use Select AI NL2SQL only using OCI Services and OCI hosted Generative AI LLMs.

[Boost Developer Productivity with Oracle Autonomous Database and Generative AI](youtube:i2gOczXYoMo)

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
		gen_ai_model 		varchar2(500) := 'cohere.command-r-08-2024'; --cohere.command-r-plus-08-2024
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

1. Create Select AI for NL2SQL Profile

    ```
    <copy>
	BEGIN
		DBMS_CLOUD_AI.CREATE_PROFILE(
			profile_name => 'OCI_LLAMA_INSTRUCT_NL2SQL',
			attributes =>
				'{"provider": "oci",
				"credential_name": "{oci_cred_from_Task_3_1}",
				"comments":true,
				"conversation":true,
				"model":"meta.llama-3.1-405b-instruct",
				"object_list": [{"owner": "MOVIESTREAM", "name": "movies"},
					{"owner": "MOVIESTREAM", "name": "streams"},
					{"owner": "MOVIESTREAM", "name": "pizza_shop"},
					{"owner": "MOVIESTREAM", "name": "actors"},
					{"owner": "MOVIESTREAM", "name": "genre"},
					{"owner": "MOVIESTREAM", "name": "customer"}
					]
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

3.  To drop an existing profile, execute the following SQL Statement

    ```
    <copy>
	exec dbms_cloud_ai.drop_profile(profile_name => 'OCI_LLAMA_INSTRUCT_NL2SQL')
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

## Task 6: Create Database Procedure to Refresh Profile (optional).

When testing the effectiveness of table and view metadata you often iterate through table and column names and comments.  Every change to the metadata requires an updated profile, which is cached.  To speed up the refresh process we will create a procedure that does the refresh in one step.  Replace the credential name below with your credential name that was created earlier.

1. Execute the following SQL

    ```
    <copy>
	create or replace procedure refresh_llama_profile is
	--
	begin
	--
	begin
		dbms_cloud_ai.drop_profile(profile_name => 'oci_llama_instruct_nl2sql');
	exception when others then null;
	end;
	--
	begin
		dbms_cloud_ai.create_profile(
			profile_name => 'oci_llama_instruct_nl2sql',
			attributes =>
				'{"provider": "oci",
				"credential_name": "oci_key_cred",
				"comments": true,
				"conversation": true,
				"model": "meta.llama-3.1-405b-instruct",
				"object_list": [{"owner": "moviestream", "name": "movies"},
					{"owner": "moviestream", "name": "streams"},
					{"owner": "moviestream", "name": "pizza_shop"},
					{"owner": "moviestream", "name": "actors"},
					{"owner": "moviestream", "name": "genre"},
					{"owner": "moviestream", "name": "customer"}
					]
				}'
		);
	end;
	--
	begin
		dbms_cloud_ai.set_profile(profile_name => 'oci_llama_instruct_nl2sql');
	end;

	end refresh_lama_profile;
    </copy>
    ```

## Task 7: Execute Select AI for NL2SQL Actions

For more details on Select AI Actions , see the following documentation

[Use AI Keyword to Enter Prompts](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/select-ai-keyword-prompts.html#ADBSB-GUID-B3E0EE68-3B4C-4002-9B45-BBE258A2F15A)

Use AI as the keyword in a SELECT statement for interacting with the database using natural language prompts.

The AI keyword in a SELECT statement instructs the SQL execution engine to use the LLM identified in the active AI profile to process natural language and to generate SQL.

You can use the AI keyword in a query with Oracle clients such as SQL Developer, OML Notebooks, and third-party tools, to interact with database in natural language.

For more details on running Select AI statements, see the following documentation

Use Select AI for Natural Language Interaction with your Database

Natural language to SQL supports five actions.  They are:
- runsql (default)
- showsql
- narrate
- chat (pose question to model based on internet data)
- explainsql

## Task 8: Lessons Learned from Real World Examples

1. Lessons Learned:
	- Avoid having data values the same as column names.
	- Deal with case.  Make all data upper case and specify in table comments the data is upper case.
	- Use comments to:
		- allow partial matches
		- specify aliases (ie: amount may also be called revenue, sales, or income).
		- Special characters may cause issues - might need to strip those out.
	- Changing comments requires a re-fresh of the profile due to caching.  Create a procedure to drop profile, create profile, enable profile.
	- If you are using OAC you can have similar capability with its built in AI assistant, but for data outside OAC, APEX is a good option.
	- Besides simple retrieval of metrics LLMs can generate sophisticated analysis.

2. Use of table and column comments on tables and views.

    ```
    <copy>
	-- Show existing comments
	select * from user_tab_comments where comments is not null;
	select * from user_col_comments where comments is not null;
    </copy>
    ```

    ```
    <copy>	
	-- Clear comments
	comment on column movies.studio is '';
	comment on column movie.year is '';
	comment on streams.day_id is '';
    </copy>
    ```
	
3. Predicate uses mixed case and searches for exact match. 

    ```
    <copy>
	select ai showsql show all movies produced by Universal Pictures
    </copy>
    ```

    ```
    <copy>
	SELECT T1."TITLE" AS "MOVIE_TITLE" FROM "MOVIESTREAM"."MOVIES" T1 WHERE T1."STUDIO" = 'Universal Pictures'
    </copy>
    ```

4. Add comment to specify to allow partial matches.

    ```
    <copy>
	comment on column movies.studio is 'All data is mixed case and queries should return partial matches.  For example if the user requests movies produced by universal studios you should search for %Universal Studios%';
    </copy>
    ```

    ```
    <copy>
	select ai showsql show all movies produced by Universal Pictures
	select ai show all movies produced by Universal Pictures
    </copy>
    ```

5. Be mindful there may be dates on different tables.  Add comments to clearify when and how these should be used.

    ```
    <copy>
	comment on movies.year is 'this is the year the movie was produced.  Do not use it for aggregating any movie stream calculations';
	comment on streams.day_id is 'use this date to establish various metrics by year/month/day etc. for movies that are streamed';
    </copy>
    ```

6. Explore more complex queries.  Select AI does a good job of generating more complex SQL.

    ```
    <copy>
	select ai what is the boxoffice sales trend by year?
    </copy>
    ```
    ```
    <copy>
	SELECT EXTRACT(YEAR FROM s."DAY_ID") AS sales_year, SUM(s."SALES") AS total_sales FROM "MOVIESTREAM"."STREAMS" s GROUP BY EXTRACT(YEAR FROM s."DAY_ID") ORDER BY sales_year
    </copy>
    ```

    ```
    <copy>
	select ai showsql what are the top 10 performing movies in terms of sales between january and march 2026
    </copy>
    ```
    ```
    <copy>
	SELECT m."TITLE" AS movie_title, SUM(s."SALES") AS total_sales FROM "MOVIESTREAM"."STREAMS" s JOIN "MOVIESTREAM"."MOVIES" m ON s."MOVIE_ID" = m."MOVIE_ID" WHERE EXTRACT(YEAR FROM s."DAY_ID") = 2026 AND EXTRACT(MONTH FROM s."DAY_ID") BETWEEN 1 AND 3 GROUP BY m."TITLE" ORDER BY total_sales DESC FETCH FIRST 10 ROWS ONLY
    </copy>
    ```

    ```
    <copy>
	select ai showsql what movies have boxoffice sales below the overall average
    </copy>
    ```
    ```
    <copy>
	SELECT m."TITLE" AS movie_title, SUM(s."SALES") AS total_sales FROM "MOVIESTREAM"."STREAMS" s JOIN "MOVIESTREAM"."MOVIES" m ON s."MOVIE_ID" = m."MOVIE_ID" GROUP BY m."TITLE" HAVING SUM(s."SALES") < (SELECT AVG("SALES") FROM "MOVIESTREAM"."STREAMS")
    </copy>
    ```

## Acknowledgements
  * **Authors:** Derrick Cameron and Steven Nichols, Master Principal Cloud Architects
  * **Contributors:** Marty Gubar and Mark Hornick, Product Management  
  * **Last Updated By/Date:** Steven Nichols, January 14, 2025

Data about movies in this workshop were sourced from **Wikipedia**.

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)