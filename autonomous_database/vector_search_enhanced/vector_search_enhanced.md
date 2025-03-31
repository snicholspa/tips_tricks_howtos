# Vector Search and Generative AI for Oracle Database Developers Enhanced

## Introduction

Vector Search and Generative AI for Oracle Database Developers

Explore Oracle's groundbreaking Database 23ai release, focusing on AI innovations like Vector Search, which provides a new approach to searching, analyzing, and interpreting text, image, audio, and video data. Vector Search, together with OCI Large Language Models (LLM) open up new possibilities for applications to access internal corporate data and provide perspectives using external LLM knowledge.

This webinar is tailored for database developers and DBAs interested in integrating AI directly into their applications using SQL and PL/SQL.

We'll show you

* Introduction to Oracle Vector Search Technology
* Vector Search V.S. Traditional search methods
* Review of Related Technologies (Select AI, Generative AI)
* End to End Walk through of a Generative AI Pipeline Using SQL
* Building a Vector Search Application with APEX

[Boost Developer Productivity with Oracle Autonomous Database and Generative AI](youtube:i2gOczXYoMo)

## New to the OCI Generative AI Service

Please reference the below links for more information on Oracle's Artificial Intelligence (AI) and Generative AI Offerings.

* [Artificial Intelligence (AI)](https://www.oracle.com/artificial-intelligence/)

* [Generative AI capabilities](https://www.oracle.com/artificial-intelligence/generative-ai/)

* [Generative AI Service](https://www.oracle.com/artificial-intelligence/generative-ai/generative-ai-service/)

* [Pretrained Foundational Models](https://docs.oracle.com/en-us/iaas/Content/generative-ai/pretrained-models.htm)


## Documentation Links

* [Oracle AI Vector Search User's Guide](https://docs.oracle.com/en/database/oracle/oracle-database/23/vecse/index.html)

* [Oracle Database 23ai](https://docs.oracle.com/en/database/oracle/oracle-database/23/index.html)

* [Oracle Autonomous Database Serverless](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/index.html)

## Cloud Coaching Webinar Playlist and Notable Past Webinars

1. Cloud Coaching YouTube Playlist

	* [Code Innovate Cloud Coaching Playlist](https://www.youtube.com/playlist?list=PLPIzp-E1msrZMCfSHbKgLK3KWsNM9JB9a)

2. JSON Data Manipulation using JSON_TABLE

	* [Extracting value and managing the lifecycle of JSON data with Oracle Cloud Infrastructure](https://youtu.be/BHNz2lEq2IA?si=TEK1UeHONj_XFI0z)
	
3. APEX and Gen AI

	* [Unlocking Oracle APEX Potential: Integrating Generative AI and Streamlining Workflows](https://youtu.be/ZJ491y7oils?si=jH4h5VHZ9WfC_o-U)

4. Digital Assistant and Gen AI

	* [Integrating Large Language Models with Oracle Digital Assistant](https://youtu.be/JO4BDWdW6OE?si=rW8sMTLreU5jgmhL)

	* [Conversational AI: Harnessing Generative AI with Oracle Digital Assistant](https://youtu.be/LvL-Omki8xo?si=lQEwoTtrJrI6QC54)

5. Introduction to Select AI

	* [Introducing Select AI - A new way to talk to and converse with your Oracle Autonomous Database](https://youtu.be/19Ms3I7TaAU?si=iIQ8kFxgm-IBX5kJ)

6. PL/SQL SDK for OCI

	* [Connecting Cloud and Database: Unleashing Possibilities with PL/SQL SDK](https://youtu.be/1mye241dtUo?si=WtzGpo9hoMhdBkKQ)

7. REST in the Autonomous Database

	* [Master REST APIs: The Universal Integration Tool in AI and Beyond](https://youtu.be/Ukm8LwYdMnQ?si=Dj2Ak1WrtAlI15Ko)

## Prerequisites: 

1.  Autonomous Database Version 23ai

2.  Access to the OCI GenAI Services in a Supported Region (see Task 0 for Details)

3.  Access to OCI Object Storage (see Task 0 for Details)

## Task 0: PLEASE READ - Verify Access to OCI Gen AI Service and Object Storage

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

5. Setup IAM Policies to Access the OCI Object Storage

	* [Using Object Storage](https://docs.oracle.com/en-us/iaas/Content/Object/Concepts/objectstorageoverview.htm#using)

	* [Managing Access to Object Storage](https://docs.oracle.com/en-us/iaas/Content/Identity/policyreference/objectstoragepolicyreference.htm)

## Task 1: Create Database User with Grants

As the user **ADMIN**, issue the below SQL Statements

1. Create Database User and Initial Grants

    ```
    <copy>
	create user vector identified by "{password}";
	grant dwrole to vector;
	grant unlimited tablespace to vector;
	grant create job to vector;
    </copy>
    ```

2. Grant Database User Access to DBMS Packages

    ```
    <copy>
    grant execute on DBMS_CLOUD to vector;
    grant execute on DBMS_VECTOR to vector;
	grant execute on dbms_cloud_ai to vector;	
    </copy>
    ```

3.  Grant Database User Access to Database Actions - SQL Developer Web 

    ```
    <copy>
	BEGIN
	 ords_admin.enable_schema(
	 p_enabled => TRUE,
	 p_schema => 'VECTOR',
	 p_url_mapping_type => 'BASE_PATH',
	 p_url_mapping_pattern => 'VECTOR',
	 p_auto_rest_auth => NULL
	 );
	 commit;
	END;
	/
    </copy>
    ```

## Task 2: Update Access Control List

As the user **ADMIN**, issue the following PL/SQL Code

1. Grant Non-Admin User Permission to Access OCI Gen AI Provider

    ```
    <copy>
	BEGIN
	DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
	  HOST         => 'inference.generativeai.{region}.oci.oraclecloud.com',
	  ACE          => xs$ace_type(
		  PRIVILEGE_LIST => xs$name_list('http'),
		  PRINCIPAL_NAME => 'vector',
		  PRINCIPAL_TYPE => xs_acl.ptype_db));
	END;
	/	
    </copy>
    ```

2. Grant Non-Admin User Permission to Access Cohere AI Provider

    ```
    <copy>
	BEGIN
	DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
	  HOST         => 'api.cohere.com',
	  LOWER_PORT   => 443,
	  UPPER_PORT   => 443,
	  ACE          => xs$ace_type(
		  PRIVILEGE_LIST => xs$name_list('http'),
		  PRINCIPAL_NAME => 'VECTOR',
		  PRINCIPAL_TYPE => xs_acl.ptype_db));
	END;
	/
    </copy>
    ```

3. View Existing ACL Priviledges 

    ```
    <copy>
	select a.host, b.principal, b.privilege, b.is_grant 
    from dba_network_acls a, dba_network_acl_privileges b
    where a.acl = b.acl;     
    </copy>
    ```


## Task 3: Create and Test Credentials

As the user **VECTOR**, issue the below PL/SQL Code.

1. Create API Credential to Access OCI Gen AI Service

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

    For more details, see the [`DBMS_CLOUD.CREATE_CREDENTIAL` Procedure](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A) documentation.  

	For more details on API Signing Keys, see the [Required Keys and OCIDs](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm) documentation.

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
	SELECT * FROM DBMS_CLOUD.LIST_OBJECTS('{oci_api_cred_from_Task_3_1}','https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/');
    </copy>
    ```

	This test connectivity to OCI Gen AI Service.

    ```
    <copy>
	set serveroutput on;
	DECLARE
		-- https://docs.oracle.com/en-us/iaas/Content/generative-ai/pretrained-models.htm
		gen_ai_endpoint 	varchar2(500) := 'https://inference.generativeai.{region}.oci.oraclecloud.com';
		gen_ai_model 		varchar2(500) := 'cohere.command-r-08-2024'; --cohere.command-r-plus-08-2024
		compartment_ocid	varchar2(500) := 'ocid1.compartment.oc1..aaa';
		api_cred_name 		varchar2(500) := '{oci_api_cred_from_Task_3_1}';
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

3. Create Vector Credential to Perform Vector Tasks

	For more details, see the [`DBMS_VECTOR.CREATE_CREDENTIAL` Procedure](https://docs.oracle.com/en/database//oracle/oracle-database/23/arpls/dbms_vector1.html#GUID-4BBCBF46-3903-4EBB-8BE8-A7690151CF25) documentation.

	**Note** - You pass the <private key string> value (excluding the BEGIN and END lines in the key file), either as a single line or as multiple lines.

    ```
    <copy>
	declare
	  jo json_object_t;
	begin
	  jo := json_object_t();
	  jo.put('user_ocid','ocid1.user.oc1......');
	  jo.put('tenancy_ocid','ocid1.tenancy.oc1......');
	  jo.put('compartment_ocid','ocid1.compartment.oc1.......');
	  jo.put('private_key','M------------------');
	  jo.put('fingerprint','3e:...............:ee');
	  dbms_output.put_line(jo.to_string);
	  dbms_vector.create_credential(
		credential_name   => '{enter_credential_name}',
		params            => json(jo.to_string));
	end;
	/	
    </copy>
    ```

4. Test Vector Credential

    ```
    <copy>
	select dbms_vector_chain.utl_to_embedding('embed some text', json('{
	  "provider": "OCIGenAI",
	  "credential_name": "{oci_vector_cred_from_Task_3_3}",
	  "url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
	  "model": "cohere.embed-english-v3.0",
	  "batch_size":10
	}')) embed_vector
	from dual;	
    </copy>
    ```

5. Create Cohere Credential (used in re-ranking later on)

   ```
    <copy>
	BEGIN
	  DBMS_CLOUD.CREATE_CREDENTIAL(
		credential_name => 'COHERE_CRED',
		username => '<cohere username>',
		password => '<cohere password>');
	END;
	/
    </copy>
    ```

	**Note** - The **username** is the email address you used to log into https://cohere.com/.  The **password** represents a trial key accessible from the **API Keys** section.

## Task 4: Create Database Objects

As the user **VECTOR**, issue the below SQL Code.

**Note** - Be sure to update the SQL Code accordingly where you see **{....}**

1. Create Documents Tables

    ```
    <copy>
	Create table documents 
	   (id number(*,0) generated by default on null as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder  nocycle  nokeep  noscale  not null enable, 
		file_name varchar2(900 byte), 
		file_size number(*,0), 
		file_type varchar2(100 byte), 
		file_content blob, 
		first_page_image blob, 
		mimetype varchar2(50 byte),
		domain varchar2(100) default 'Default',
		file_content_clob clob, 
		 primary key (id)
	  );
    </copy>
    ```
2. Create Documents Vector Table

    ```
    <copy>
	create table document_vector 
	   (id number(*,0) not null enable, 
		chunk_id number, 
		chunk_pos number, 
		chunk_size number, 
		chunk_txt varchar2(4000 byte), 
		embed_vector vector
	   );
    </copy>
    ```

3. Create Conversations Table

    ```
    <copy>
	create table conversations 
	   (id number, 
		username varchar2(100 char), 
		started_on timestamp (6), 
		app_session number, 
		 constraint conversations_id_pk primary key (id));
    </copy>
    ```

4. Create Prompts Table

    ```
    <copy>
	create table prompts
	   (id number, 
		conv_id number not null enable, 
		prompt varchar2(32767 byte), 
		response varchar2(32767 byte), 
		asked_on timestamp (6), 
		chathistory varchar2(32767 byte),
		references varchar2(32767 byte), 
		request varchar2(32767 byte), 
		output varchar2(32767 byte), 
		citations varchar2(32767 byte), 
		documents varchar2(32767 byte), 
		documents4rerank varchar2(32767 byte), 
		documentsreranked varchar2(32767 byte),
		constraint prompts_id_pk2 primary key (id),
		foreign key (conv_id) references conversations (id)
	   );
    </copy>
    ```

5. Create Prompt_Doc Table

    ```
    <copy>
	create table prompt_docs 
	   (document_id number, 
		conv_id number, 
		prompt_id number, 
		chunk_id number, 
		index_id number, 
		chunk varchar2(32767 byte)
	   );
    </copy>
    ```
6. Create Prompt Instructions Table and Seed Data

    ```
    <copy>
	create table prompt_instructions
	   (id number(*,0) generated by default on null as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder  nocycle  nokeep  noscale  not null enable, 
		instruction varchar2(32767), 
		active char(1),
		primary key (id));
		
	insert into prompt_instructions values(1,'Question: ','Y');
	commit;		
    </copy>
    ```

7. Create AI Configuration Table and Seed Data

    ```
    <copy>
	create table ai_configuration(
		id						number,
		llm_max_tokens          number,
		llm_temperature         number,
		llm_frequencypenalty    number,
		llm_presencepenalty     number,
		llm_topp                number,
		llm_topk                number,
		vector_by               varchar2(100),
		vector_max              number,
		vector_overlap          number,
		vector_split            varchar2(100),
		vector_language         varchar2(100),
		vector_normalize        varchar2(100),
		top_doc_chunks          number);

	insert into ai_configuration values(1,2000,0.1,0,0,1,0,'words',50,0,'sentence','american','all',5);
	commit;	
    </copy>
    ```

8. Create Sequences

    ```
    <copy>
	create sequence conv_seq;
	create sequence prompt_seq;
    </copy>
    ```

9. Create Document Vector Trigger

    ```
    <copy>
	-- kick off job to create vectors for new documents, updates document size, creates text from pdfs and populates clob column
	create or replace trigger trg_document_vector_ocigenai 
	before insert on documents
	for each row
	declare
	my_job number;
	begin
	dbms_job.submit(job => my_job, what => 'chathistory_pkg.prc_cr_doc_vectors;');
	:new.file_size := dbms_lob.getlength(:new.file_content);
	:new.file_content_clob := dbms_vector_chain.utl_to_text (:new.file_content, json('{"plaintext":"true","charset":"utf8"}'));
	end;    
    </copy>
    ```

10. Create Chat History Package and Package Body

    ```
    <copy>
	-- Create Package
	create or replace package chathistory_pkg is
	procedure prc_add_conversation(p_username varchar2, p_started_on timestamp, p_app_session number);
	procedure prc_rebuild_vectors;
	procedure prc_add_prompt_doc(
		p_doc_id number
		, p_conv_id number
		, p_prompt_id number
		, p_chunk_id number
		, p_index_id number
		, p_chunk varchar2);
	procedure prc_add_prompt(
		p_id number
		, p_conv_id number
		, p_prompt varchar2
		, p_response varchar2
		, p_asked_on timestamp
		, p_chathistory varchar2
		, p_references varchar2
		, p_request varchar2
		, p_output varchar2
		, p_citations varchar2
		, p_documents varchar2
		, p_documents4rerank varchar2
		, p_documentsreranked json);
	procedure prc_cr_doc_vectors;
	end;
	/
	-- Create Package Body
	-- replace credential name below with your credential
	create or replace package body chathistory_pkg is
	---------
	procedure prc_rebuild_vectors is
	begin
	update document_vector set embed_vector = null;
	commit;
	for c in 1..100 loop
	for i in (select * from document_vector where rownum<100 and embed_vector is null)
	loop
	update document_vector
	set embed_vector = dbms_vector.utl_to_embedding(chunk_txt, json('{
	  "provider": "OCIGenAI",
	  "credential_name": "{update with oci_vector_cred from Task 3.3}",
	  "url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
	  "model": "cohere.embed-english-v3.0",
	  "batch_size":10
	}'))
	where i.id = id
	and i.chunk_id = chunk_id;
	commit;
	end loop;
	end loop;
	end;
	--------
	procedure prc_add_conversation(p_username varchar2, p_started_on timestamp, p_app_session number) is
		pragma autonomous_transaction;
		begin
		insert into conversations values(conv_seq.nextval, p_username, p_started_on, p_app_session); 
		commit;
		end;
	---------
	procedure prc_add_prompt_doc (
		p_doc_id number
		, p_conv_id number
		, p_prompt_id number
		, p_chunk_id number
		, p_index_id number
		, p_chunk varchar2) is
		pragma autonomous_transaction;
		begin
		insert into prompt_docs values(p_doc_id, p_conv_id, p_prompt_id, p_chunk_id, p_index_id, p_chunk);
		commit;
		end;
	---------
	procedure prc_add_prompt(
		p_id number
		, p_conv_id number
		, p_prompt varchar2
		, p_response varchar2
		, p_asked_on timestamp
		, p_chathistory varchar2
		, p_references varchar2
		, p_request varchar2
		, p_output varchar2
		, p_citations varchar2
		, p_documents varchar2
		, p_documents4rerank varchar2
		, p_documentsreranked json) is
		pragma autonomous_transaction;
		begin
		insert into prompts (id, conv_id, prompt, response, asked_on, chathistory, references, request, output, citations, documents, documents4rerank, documentsreranked)
			values(p_id, p_conv_id, p_prompt, p_response, p_asked_on, p_chathistory, p_references, p_request, p_output, p_citations, p_documents, p_documents4rerank, p_documentsreranked);
		commit;
		end;
	---------   
	procedure prc_cr_doc_vectors is
		v_vector_by             varchar2(100);
		v_vector_max            number;
		v_vector_overlap        number;
		v_vector_split          varchar2(100);
		v_vector_language       varchar2(100);
		v_vector_normalize      varchar2(100);
		--
		begin
		--
		select vector_by, vector_max, vector_overlap, vector_split, vector_language, vector_normalize
		into v_vector_by, v_vector_max, v_vector_overlap, v_vector_split, v_vector_language, v_vector_normalize
		from ai_configuration;
		--
		insert into document_vector
		select l.id
			, json_value(c.column_value, '$.chunk_id' returning number) as chunk_id
			, json_value(c.column_value, '$.chunk_offset' returning number) as chunk_pos
			, json_value(c.column_value, '$.chunk_length' returning number) as chunk_size
			, replace(json_value(c.column_value, '$.chunk_data'),chr(10),'') as chunk_txt
			, dbms_vector_chain.utl_to_embedding(json_value(c.column_value, '$.chunk_data'), json('{
				"provider": "OCIGenAI",
				"credential_name": "{update with oci_vector_cred from Task 3.3}",
				"url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
				"model": "cohere.embed-english-v3.0",
				"batch_size":10
				}')) embed_vector 
		from 
		------- base table ---------
		(select id from documents where id not in (select id from document_vector)) l,
		------- doc to text query ---------
		(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from documents l where id=l.id) t,
		------- chunking ---------
		dbms_vector_chain.utl_to_chunks(t.file_text,
		json('{ "by":"'||v_vector_by||'",
			   "max":"'||v_vector_max||'",
			   "overlap":"'||v_vector_overlap||'0",
			   "split":"'||v_vector_split||'",
			   "language":"'||v_vector_language||'",
			   "normalize":"'||v_vector_normalize||'" }')) c
		where l.id=t.id;
		commit;
	 end;
	end;	
    </copy>
    ```

11. Create Gen AI Chat With Documents Function

    ```
    <copy>
	-- vector search (replace credentials and compartement ID below)
	---------------------------------------------------------------------------------
	create or replace function gen_ai_chat_documents (
		p_ai_message in varchar2
		, p_domain in varchar2 default 'Default'
		, p_session_id in number default sys_context('userenv','sessionid')
		) return clob as
		----
		v_gen_ai_endpoint   varchar2(500)   := 'https://inference.generativeai.{region}.oci.oraclecloud.com';
		v_compartment_id    varchar2(4000)  := '{update with your compartment ocid}';
		v_vector_credential varchar2(100)   := '{update with oci_vector_cred from Task 3.3}';
		v_ociapi_credential varchar2(100)   := '{update with oci_api_cred from Task 3.1}';
		v_provider          varchar2(100)   := 'OCIGenAI';
		v_text_endpoint     varchar2(100)   := '/20231130/actions/embedText';
		v_chat_endpoint     varchar2(100)   := '/20231130/actions/chat';
		v_model_embed       varchar2(100)   := 'cohere.embed-english-v3.0';
		v_model_query       varchar2(100)   := 'cohere.command-r-plus-08-2024';
		----
		v_resp              dbms_cloud_types.resp;
		v_messages          varchar2(32767);
		v_output            varchar2(32767);
		v_ai_message_vec    vector;
		v_search_query      varchar2(32767);
		v_chunks            varchar2(32767);
		v_response          varchar2(32767);
		v_chathistory_after varchar2(32767);
		v_chathistory_before varchar2(32767);
		v_last_question     varchar2(32767) := ' ';
		v_top_doc_chunks    number;
		v_session           number;
		v_conv_id           number;
		v_prompt_id         number;
		v_next_prompt_id    number;
		v_prompt_instruction varchar2(32767);
		v_citations         varchar2(32767);
		v_documents         varchar2(32767);
		v_documents4rerank  varchar2(32767);
		v_documentsreranked json;
		v_cohere_params     varchar2(32767);
		v_reranked_output   json;
		v_index_id          number;
		----
		v_ai_max_tokens     number;
		v_ai_temperature    number;
		v_ai_freqpenalty    number;
		v_ai_prespenalty    number;
		v_ai_topp           number;
		v_ai_topk           number;
		v_ai_vectorby       varchar2(100);
		v_ai_vectormax      number;
		v_ai_vectoroverlap  number;
		v_ai_split          varchar2(100);
		v_ai_language       varchar2(100);
		v_ai_normalize      varchar2(100);

	begin

	--------------------------
	-- Set conv_id and prompt_id
	--------------------------

	select count(*) into v_session from conversations where app_session = p_session_id; 
	if v_session = 0 then
	chathistory_pkg.prc_add_conversation(user, systimestamp, p_session_id); 
	end if;

	select prompt_seq.nextval into v_next_prompt_id;

	-- locate latest chat and prompt sessions and set current chat history
	select max(id) into v_conv_id from conversations where app_session = p_session_id;

	--
	begin
	select max(id) into v_prompt_id from prompts where conv_id = v_conv_id;
	exception
	when others then null;
	end;

	--------------------------------
	-- retrieve configuration
	--------------------------------

	select llm_max_tokens, llm_temperature, llm_frequencypenalty, llm_presencepenalty, llm_topp, llm_topk, top_doc_chunks
	into v_ai_max_tokens, v_ai_temperature, v_ai_freqpenalty, v_ai_prespenalty, v_ai_topp, v_ai_topk, v_top_doc_chunks
	from ai_configuration;

	--------------------------------
	-- Retrieve previous question and answer to prepend to the current question.  can go back further if need be
	--------------------------------

	begin
	select p.prompt||' '||p.response||'.  ' into v_last_question 
	from    prompts p
			, conversations c
	where   p.conv_id = c.id
	and     p.id = (select max(id) from prompts where p.conv_id = c.id)
	and     c.app_session = p_session_id
	and     c.id = (select max(id) from conversations where p.conv_id = c.id);
	exception when others then null;
	end;

	--------------------------------
	-- vectorize user question
	--------------------------------

	select dbms_vector.utl_to_embedding(v_last_question||p_ai_message
		, json('{
			"provider":"'||v_provider||
			'","credential_name":"'||v_vector_credential||
			'","url":"'||v_gen_ai_endpoint||v_text_endpoint||
			'","model":"'||v_model_embed||'"}'))
	into v_ai_message_vec;

	v_documents := '{"documents":[';
	v_messages := '{"message": "';
	v_index_id := 0;

	-----------------------------------------------
	-- retrieve chunks based on vector distance 
	-- from input message and append to each other
	-----------------------------------------------
	for i in (select l.id, l.file_name, lv.chunk_id, replace(lv.chunk_txt,'"','') chunk_txt 
			  from document_vector lv, documents l
			  where l.id = lv.id  and rownum < 9999999999
			  and l.domain = p_domain
			  order by vector_distance(embed_vector, v_ai_message_vec, cosine) fetch first v_top_doc_chunks rows only)
	loop
		v_documents := v_documents||'"'||i.chunk_txt||'",';
		v_chunks := v_chunks||'Doc Id: '||to_char(i.id)||', Doc Name: '||to_char(i.file_name)||', chunk_id:'||to_char(i.chunk_id)||'; ';
		chathistory_pkg.prc_add_prompt_doc(i.id, v_conv_id, v_next_prompt_id, i.chunk_id, v_index_id, i.chunk_txt);
		v_index_id := v_index_id + 1;
	end loop;

	-- add the prompt instructions
	select instruction into v_prompt_instruction from prompt_instructions
	where active = 'Y';

	v_messages := '{"'||v_prompt_instruction||p_ai_message||'"}';

	-- remove the trailing comma and newline character
	v_messages := rtrim(v_messages, ',');
	v_chunks := rtrim(v_chunks,',');
	v_documents := rtrim(v_documents,',')||']}';
	--
	begin
	select chathistory into v_chathistory_before from prompts where id = v_prompt_id;
	exception
	when others then null;
	end;

	--------------------------------
	-- Rank the chunks for 
	--------------------------------

	v_cohere_params := '
	{ "provider": "cohere",
	  "credential_name": "{update with cohere_cred from Task 3.5}",
	  "url": "https://api.cohere.com/v2/rerank",
	  "model": "rerank-english-v3.0",
	  "return_documents": true,
	  "top_n": '||v_top_doc_chunks||'}';

	-- v_documentsreranked := dbms_vector.rerank(p_ai_message, json(v_documents), json(v_cohere_params));

	select json_arrayagg(json_object("index" , "score" , "content" ))
	into v_documentsreranked
	from json_table (json(dbms_vector.rerank(p_ai_message, json(v_documents), json(v_cohere_params))),
		'$[*]' columns("index", "score", "content" ));

	--------------------------------
	-- process response
	--------------------------------

	v_resp := dbms_cloud.send_request(
	credential_name => v_ociapi_credential,
	uri => v_gen_ai_endpoint || v_chat_endpoint,
	method => dbms_cloud.method_post,
	body => utl_raw.cast_to_raw(json_object(
		'compartmentId'     value v_compartment_id,
		'servingMode'       value
			(json_object(
				'modelId'               value v_model_query,
				'servingType'           value 'ON_DEMAND'
				)),
				'chatRequest'           value 
				(json_object(
					'message'           value v_messages,
					'chatHistory'       value json(v_chathistory_before),
					'apiFormat'         value 'COHERE',
					'maxTokens'         value v_ai_max_tokens,
					'temperature'       value v_ai_temperature,
					'frequencyPenalty'  value v_ai_freqpenalty,
					'presencePenalty'   value v_ai_prespenalty,
					'topP'              value v_ai_topp,
					'topK'              value v_ai_topk,
					'documents'         value v_documentsreranked,
					---- defaults
					'citationQuality'   value 'ACCURATE',
					'isEcho'            value false,
					'isForceSingleStep' value false,
					'isRawPrompting'    value false,
					'isSearchQueriesOnly' value false,
					'isStream'          value false,
					'promptTruncation'  value 'OFF'
					))
				))
			);

	v_output            := dbms_cloud.get_response_text(v_resp);
	v_response          := json_value(v_output, '$.chatResponse.text' returning varchar2);
	v_chathistory_after := json_query(v_output, '$.chatResponse.chatHistory' returning varchar2);
	v_citations         := json_query(v_output, '$.chatResponse.citations' returning varchar2);
	v_documents         := json_query(v_output, '$.chatResponse.documents' returning varchar2);

	--------------------------------
	-- save prompts
	--------------------------------
	chathistory_pkg.prc_add_prompt(
		v_next_prompt_id
		, v_conv_id
		, p_ai_message
		, v_response
		, systimestamp
		, v_chathistory_after
		, v_chunks
		, v_messages
		, v_output
		, v_citations
		, v_documents
		, v_documents4rerank
		, v_documentsreranked);

	-- show me what you got
	return v_response;

	end;
    </copy>
    ```

12. Create Gen AI Chat With Documents Single Function

    ```
    <copy>
	-- document search - (replace credentials and compartement ID below)
	create or replace function gen_ai_chat_documents_single (
		p_file_name in varchar2
		, p_ai_message in varchar2
		, p_session_id in number default sys_context('userenv','sessionid')
		) return clob as
		----
		v_gen_ai_endpoint   varchar2(500)   := 'https://inference.generativeai.{region}.oci.oraclecloud.com';
		v_compartment_id    varchar2(4000)  := '{update with your compartment ocid}';
		v_vector_credential varchar2(100)   := '{update with oci_vector_cred from Task 3.3}';
		v_ociapi_credential varchar2(100)   := '{update with oci_api_cred from Task 3.1}';
		v_provider          varchar2(100)   := 'OCIGenAI';
		v_text_endpoint     varchar2(100)   := '/20231130/actions/embedText';
		v_chat_endpoint     varchar2(100)   := '/20231130/actions/chat';
		v_model_query       varchar2(100)   := 'meta.llama-3.2-90b-vision-instruct';
		----
		v_resp              dbms_cloud_types.resp;
		v_messages          clob;
		v_output            clob;
		v_response          clob;
		v_session           number;
		v_conv_id           number;
		v_prompt_id         number;
		v_next_prompt_id    number;
		----
		v_ai_prompt_document_contents clob;
		v_prompt_instruction varchar2(32767);
		v_request_body      blob;
		v_request_json_part1 clob;
		v_request_json_part2 clob;
		----
		v_ai_max_tokens     number;
		v_ai_temperature    number;
		v_ai_freqpenalty    number;
		v_ai_prespenalty    number;
		v_ai_topp           number;
		v_ai_topk           number;

	begin

	--------------------------
	-- retrieve document
	--------------------------

	dbms_lob.createtemporary(v_request_body, false);

	select p_ai_message || ': ' || REGEXP_REPLACE(file_content_clob, '[^a-zA-Z ,.]') 
	into v_ai_prompt_document_contents 
	from documents where file_name = p_file_name;

	--------------------------
	-- Set conv_id and prompt_id
	--------------------------

	select count(*) into v_session from conversations where app_session = p_session_id; 
	if v_session = 0 then
	chathistory_pkg.prc_add_conversation(user, systimestamp, p_session_id); 
	end if;

	select prompt_seq.nextval into v_next_prompt_id;

	-- locate latest chat and prompt sessions and set current chat history
	select max(id) into v_conv_id from conversations where app_session = p_session_id;

	--
	begin
	select max(id) into v_prompt_id from prompts where conv_id = v_conv_id;
	exception
	when others then null;
	end;

	--------------------------------
	-- retrieve configuration
	--------------------------------

	select llm_max_tokens, llm_temperature, llm_frequencypenalty, llm_presencepenalty, llm_topp, llm_topk
	into v_ai_max_tokens, v_ai_temperature, v_ai_freqpenalty, v_ai_prespenalty, v_ai_topp, v_ai_topk
	from ai_configuration;

	-- add the prompt instructions
	select instruction into v_prompt_instruction from prompt_instructions
	where active = 'Y';

	v_request_json_part1 := to_clob(
		 '{
			"compartmentId": "{update with your compartment ocid}",
			"servingMode": 
				{
					"modelId": "meta.llama-3.2-90b-vision-instruct",
					"servingType": "ON_DEMAND"
				}
			,
			"chatRequest": {
				"apiFormat": "GENERIC",	
				"messages": [
					{
						"role": "USER",				
						"content": [
							{
								"type": "TEXT",
								"text": "');

	v_request_json_part2 := to_clob('"
							}
						]
					}
				],
				"maxTokens":         2000,
				"temperature":       0.75,
				"numGenerations":    1,
				"topK":              -1,
				"isStream":          false			
			}
		}');

	-- append part1 json to request blob
	dbms_lob.append(v_request_body, apex_util.clob_to_blob(p_clob => v_request_json_part1,p_charset => 'AL32UTF8'));
		
	-- append base64 image to request blob
	dbms_lob.append(v_request_body, apex_util.clob_to_blob(p_clob => v_ai_prompt_document_contents,p_charset => 'AL32UTF8'));

	-- append part2 json to request blob
	dbms_lob.append(v_request_body, apex_util.clob_to_blob(p_clob => v_request_json_part2,p_charset => 'AL32UTF8'));

	v_resp := dbms_cloud.send_request(
	credential_name => v_ociapi_credential,
	uri => v_gen_ai_endpoint || v_chat_endpoint,
	method => dbms_cloud.method_post,
	body => v_request_body);

	v_output            := dbms_cloud.get_response_text(v_resp);
	v_response          := json_query(v_output, '$.chatResponse.choices.message.content.text' returning clob);

	chathistory_pkg.prc_add_prompt(
		v_next_prompt_id
		, v_conv_id
		, p_ai_message
		, v_response
		, systimestamp
		, null
		, null
		, null
		, v_output
		, null
		, p_file_name
		, null
		, null);
		
	-- show me what you got
	return v_response;

	end;
    </copy>
    ```

13. Create Vector CONVERSATION_V View

    ```
    <copy>
	-- conversation_v - used in APEX app to view conversation prompts
	CREATE OR REPLACE FORCE EDITIONABLE VIEW "CONVERSATION_V" ("CONVERSATION_ID", "USERNAME", "STARTED_ON", "APP_SESSION", "PROMPT_ID", "PROMPT", "RESPONSE", "ASKED_ON", "CHATHISTORY", "REFERENCES", "REQUEST", "OUTPUT", "CITATIONS", "DOCUMENTS", "DOCUMENTS4RERANK", "DOCUMENTSRERANKED") AS 
	  select
		c.id conversation_id
		, c.username
		, c.started_on
		, c.app_session
		, p.id prompt_id
		, p.prompt
		, p.response
		, p.asked_on
		, p.chathistory
		, p.references
		, p.request
		, p.output
		, p.citations
		, p.documents
		, p.documents4rerank
		, p.documentsreranked
	from conversations c, prompts p
	where p.conv_id = c.id;	
    </copy>
    ```

14. Create Vector DOCUMENT_RANKING_V View

    ```
    <copy>
	-- document_ranking_v - used in APEX to provide flattened JSON view of document ranking
	CREATE OR REPLACE FORCE EDITIONABLE VIEW "DOCUMENT_RANKING_V" ("FILE_NAME", "PROMPT_ID", "CONV_ID", "PROMPT", "RESPONSE", "DOCUMENTID", "INDEX_ID", "SCORE", "CONTENT") AS 
	  select l.file_name
		, p.id prompt_id
		, p.conv_id
		, p.prompt
		, p.response
		, jt.documentid
		, jt.index_id
		, jt.score
		, jt.content
	from prompts p
		, json_table(p.output, '$.chatResponse.documents[*]' columns
			nested path '$[*]' columns (
				documentid varchar2(1000) path '$.id',
				index_id number path '$.index',
				score number path '$.score',
				content varchar2(1000) path '$.content'
					)
			) jt
		, prompt_docs d
		, documents l
	where p.conv_id = d.conv_id
	and p.id = d.prompt_id
	and jt.index_id = d.index_id
	and d.document_id = l.id;	
    </copy>
    ```

15. Create Vector DOC_CITATIONS_V View

    ```
    <copy>
	-- doc_citations_v - used in APEX to provide flattened JSON view of citiations
	CREATE OR REPLACE FORCE EDITIONABLE VIEW "DOC_CITATIONS_V" ("FILE_NAME", "PROMPT_ID", "CONV_ID", "ASKED_ON", "PROMPT", "RESPONSE", "CITATION_STARTPOINT", "CITATION_ENDPOINT", "CITATION_TEXT", "DOCUMENTIDS") AS 
	  select  d.file_name
		, p.id prompt_id
		, p.conv_id
		, p.asked_on
		, p.prompt
		, p.response
		, jt.citation_startpoint
		, jt.citation_endpoint
		, jt.citation_text
		, jt.documentids
	from prompts p, document_ranking_v d
		, json_table(p.output, '$.chatResponse.citations[*]' columns
			nested path '$[*]' columns (
				citation_startpoint number path '$.start',
				citation_endpoint number path '$.end',
				citation_text varchar2(100) path '$.text',
				nested path '$.documentIds[*]' columns (
					documentIds varchar2(100) path '$')
					)
			) jt
	where p.conv_id = d.conv_id
	and p.id = d.prompt_id
	and jt.documentids = d.documentid;	
    </copy>
    ```

## Task 5: Load Documents

Load your own PDFs into an Object Storage Bucket.  

To access the documents used in this example, you can download them from the following link

* [Sample PDFs](https://github.com/snicholspa/tips_tricks_howtos/blob/main/autonomous_database/vector_search_enhanced/files/sample_pdfs.zip)

1. Load PDF Files from OCI Object Storage

    ```
    <copy>
	declare
	   l_blob blob := null;
	   l_bucket varchar2(4000) := 'https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/';
	begin
	for i in (select * from dbms_cloud.list_objects('{oci_api_cred_from Task 3.1}',l_bucket) where object_name like '%.pdf')
	loop
	   l_blob := dbms_cloud.get_object(
		 credential_name => '{update with oci_api_cred from Task 3.1}',
		 object_uri => l_bucket||i.object_name);
	insert into documents (file_name, file_size, file_type, file_content)
				values(i.object_name, i.bytes, 'mime/pdf',l_blob);
	commit;
	end loop;
	end;
	/	
    </copy>
    ```
	
## Task 6: Load ONXX Models (optional)

More details on how-to leverage ONXX Models can be found below.

* [Import Pretrained Models in ONNX Format for Vector Generation Within the Database](https://docs.oracle.com/en/database/oracle/oracle-database/23/vecse/import-pretrained-models-onnx-format-vector-generation-database.html)

Oracle is providing a Hugging Face **all-MiniLM-L12-v2** model in ONNX format, available to download directly to the database using DBMS\_VECTOR.LOAD\_ONNX\_MODEL.  Please reference the below link to download the **all-MiniLM-L12-v2** model.

* [Convert Pretrained Models to ONNX Format](https://docs.oracle.com/en/database/oracle/oracle-database/23/vecse/convert-trained-models-onnx-format.html
)


1. Copy ONXX Models from OCI Object Storage to Oracle Database Directory

    ```
    <copy>
	begin
	dbms_cloud.get_object(
		credential_name => '{update with oci_api_cred from Task 3.1}',
		object_uri => 'https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/all-MiniLM-L6-v2.onnx',
		directory_name => 'data_pump_dir'
		);
	end;
	/	
    </copy>
    ```

2. Load ONXX Models into Oracle Database

    ```
    <copy>
	exec DBMS_VECTOR.LOAD_ONNX_MODEL('data_pump_dir','all-MiniLM-L6-v2.onnx','All_MINILM_L6V2MODEL',JSON('{"function" : "embedding",'||'"input":{"input":["DATA"]}}'));	
    </copy>
    ```

3. Chunks to Vectors (embeddings) using an ONXX Model 

    ```
    <copy>
	-- embedding query using ONXX model
	select chunk_txt, dbms_vector_chain.utl_to_embedding(l.chunk_txt, json('{
	  "provider": "database",
      "model": "All_MINILM_L6V2MODEL"
	}')) embed_vector
	from document_vector l
	where rownum < 11;	
    </copy>
    ```

## Task 7: Vector Text, Chunking, Embedding Steps

1. Document to text

    ```
    <copy>
	-- just extract text
	select id, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
	from documents l;
    </copy>
    ```

2. Document to Text to Chunks

    ```
    <copy>
	-- chunking from text
	select l.id
			, l.file_name
			, l.file_size
			, json_value(c.column_value, '$.chunk_id' returning number) as chunk_id
			, json_value(c.column_value, '$.chunk_offset' returning number) as chunk_pos
			, json_value(c.column_value, '$.chunk_length' returning number) as chunk_size
			, replace(json_value(c.column_value, '$.chunk_data'),chr(10),'') as chunk_txt
	from 
	-- base table
	documents l,
	-- doc to text
	(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from documents l) t,
	-- text to chunck
	dbms_vector_chain.utl_to_chunks(t.file_text,
	   json('{ "by":"words",
			   "max":"50",
			   "overlap":"0",
			   "split":"sentence",
			   "language":"american",
			   "normalize":"all"}')) c
	-- joins
	where l.id = t.id;
    </copy>
    ```

    ```
    <copy>
	insert into document_vector
	select l.id
			, json_value(c.column_value, '$.chunk_id' returning number) as chunk_id
			, json_value(c.column_value, '$.chunk_offset' returning number) as chunk_pos
			, json_value(c.column_value, '$.chunk_length' returning number) as chunk_size
			, replace(json_value(c.column_value, '$.chunk_data'),chr(10),'') as chunk_txt
			, null -- this is the vector column, we'll populate it later
	from 
	------- base table ---------
	documents l,
	------- doc to text query ---------
	(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from documents l) t,
	------- chunking ---------
	dbms_vector_chain.utl_to_chunks(t.file_text,
	   json('{ "by":"words",
			   "max":"50",
			   "overlap":"0",
			   "split":"sentence",
			   "language":"american",
			   "normalize":"all" }')) c
	------- joins ---------
	where l.id = t.id;
	commit;
	</copy>
    ```

3. Chunks to Vectors (embeddings)

	This example leverages the **OCIGenAI** provider and the **Cohere** embedding model

    ```
    <copy>
	-- embedding query
	select chunk_txt, dbms_vector_chain.utl_to_embedding(l.chunk_txt, json('{
	  "provider": "OCIGenAI",
	  "credential_name": "{update with oci_vector_cred from Task 3.3}",
	  "url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
	  "model": "cohere.embed-english-v3.0",
	  "batch_size":10
	}')) embed_vector
	from document_vector l
	where rownum < 11;
    </copy>
    ```

	This example leverages the **database** provider and the ONXX **All\_MINILM\_L6V2MODEL** embedding model loaded in the **Task 6**

    ```
    <copy>
	-- embedding query using ONXX model
	select chunk_txt, dbms_vector_chain.utl_to_embedding(l.chunk_txt, json('{
	  "provider": "database",
      "model": "All_MINILM_L6V2MODEL"
	}')) embed_vector
	from document_vector l
	where rownum < 11;
    </copy>
    ```

    ```
    <copy>
	-- update vectors in micro batches, looping through rows that don't have vectors
	begin
	for c in 1..100 loop
	for i in (select * from document_vector where rownum<100 and embed_vector is null)
	loop
	update document_vector
	set embed_vector = dbms_vector.utl_to_embedding(chunk_txt, json('{
	  "provider": "OCIGenAI",
	  "credential_name": "{update with oci_vector_cred from Task 3.3}",
	  "url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
	  "model": "cohere.embed-english-v3.0",
	  "batch_size":10
	}'))
	where i.id = id
	and i.chunk_id = chunk_id;
	commit;
	end loop;
	end loop;
	end;
	/
    </copy>
    ```

4. Document to Text to Chunks to Vectors in One Flow (** MAY Fails base on Service Limits **)

    ```
    <copy>
	-- combine all the steps in one flow
	select l.id
			, l.file_name
			, l.file_size
			, json_value(c.column_value, '$.chunk_id' returning number) as chunk_id
			, json_value(c.column_value, '$.chunk_offset' returning number) as chunk_pos
			, json_value(c.column_value, '$.chunk_length' returning number) as chunk_size
			, replace(json_value(c.column_value, '$.chunk_data'),chr(10),'') as chunk_txt
			, dbms_vector_chain.utl_to_embedding(json_value(c.column_value, '$.chunk_data'), json('{
				"provider": "OCIGenAI",
				"credential_name": "{update with oci_vector_cred from Task 3.3}",
				"url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
				"model": "cohere.embed-english-v3.0",
				"batch_size":50
				}')) embed_vector
	from 
	-- base table
	documents l,
	-- doc to text
	(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from documents l) t,
	-- text to chunks
	dbms_vector_chain.utl_to_chunks(t.file_text,
	   json('{ "by":"words",
			   "max":"50",
			   "overlap":"0",
			   "split":"recursively",
			   "language":"american",
			   "normalize":"all" }')) c
	-- joins
	where l.id = t.id
	and rownum < 11;	
    </copy>
    ```

## Task 8: Queries

1. SQL Statements Using Database Function Created in Task 4, Step 11

    ```
    <copy>
	set serveroutput on
	select gen_ai_chat_documents('what is the broadband infraxtetructure fund outlined in house bill 9?','Default');
	select gen_ai_chat_documents('are there any financial implications if it is passed?','Default');
    </copy>
    ```
	
2. SQL Statements Using Vector Distance 

    ```
    <copy>
	select  l.id, l.file_name, lv.chunk_id, 
			vector_distance(lv.embed_vector, (select dbms_vector.utl_to_embedding('what is the broadband infrastructure fund outlined in house bill 9?', json('{
				  "provider": "OCIGenAI",
				  "credential_name": "{update with oci_vector_cred from Task 3.3}",
				  "url": "https://inference.generativeai.{region}.oci.oraclecloud.com/20231130/actions/embedText",
				  "model": "cohere.embed-english-v3.0",
				  "batch_size":10}')) from dual),cosine) as score,
			lv.chunk_txt 
	from    document_vector lv, documents l
	where   l.id = lv.id and l.domain = 'Default'
			order by score
	fetch first 5 rows only;
    </copy>
    ```

2. Sample Response from above SQL Statements

	```
	<copy>
	-- response to above prompts
	{
		"modelId": "cohere.command-r-plus",
		"modelVersion": "1.2",
		"chatResponse": {
			"apiFormat": "COHERE",
			"text": "Yes, there are financial implications associated with the passage of this bill. The bill mentions cost savings accruing to the state and an estimate of the total amount of funding as part of the reporting requirements. It also mentions a financial contribution from parents, which the commissioner and grant recipients are prohibited from requiring. However, the specific financial implications would depend on various factors, including the program's scope, the number of grant recipients, and the allocation of funds.",
			"chatHistory": [
				{
					"role": "USER",
					"message": "1, 2024, if theconstitutional amendment proposed by the 88th Legislature, RegularSession, 2023, creating the broadband infrastructure fund to expandhigh-speed broadband access and assist in the financing ofconnectivity projects in the state takes effect. AA If that amendment88(R) HB 9 - Enrolled versionH.B. ANo. A9AN ACTrelating to the development and funding of broadband andtelecommunications services.BE IT ENACTED BY THE LEGISLATURE OF THE STATE OF TEXAS:SECTION A1. AA ChapterSec. A403.603. AA BROADBAND INFRASTRUCTURE FUND. (a) Thebroadband infrastructure fund is a special fund in the statetreasury outside the general revenue fund. The fund consists of:(1) AA money transferred or deposited to the credit offund is in furtherance of the publicpurpose of expanding and ensuring access to reliable, high-speed1234567891011121314151617181920212223241broadband and telecommunications connectivity.one-timetransfer in the amount of $75 million from the broadbandinfrastructure fund established under Section 49-d-16, ArticleIII, Texas Constitution, to the broadband pole replacement fundestablished under Section 403.502, Government Code, as added by Question: what is the broadband infraxtetructure fund outlined in house bill 9?"
				},
				{
					"role": "CHATBOT",
					"message": "The broadband infrastructure fund outlined in House Bill 9 is a special fund in the state treasury of Texas, established to expand and ensure access to reliable, high-speed broadband and improve telecommunications services."
				},
				{
					"role": "USER",
					"message": "of cost savings accruing to the state asa result of the program;(6) AA in a report submitted in an even-numbered yearonly, an estimate of the total amount of fundingcommissioner and any grant recipientselected under this section may not require any financialcontribution from parents to implement and administer the grant.(h) AA AthisAct does not receive the vote necessary for immediate effect, thisAct takes effect September 1, 2023.1234567891011121314151617181920this sectionmay, subject to available funding and the requirements of thissubchapter, participate in the program until the earliest of thefollowing dates:(1) AA thewith Section 29.357(2);(4) AA the effect of the program on public and privateschool capacity, availability, and quality;(5) AA the amount of cost savings accruing to Question: are there any financial implications if it is passed?"
				},
				{
					"role": "CHATBOT",
					"message": "Yes, there are financial implications associated with the passage of this bill. The bill mentions cost savings accruing to the state and an estimate of the total amount of funding as part of the reporting requirements. It also mentions a financial contribution from parents, which the commissioner and grant recipients are prohibited from requiring. However, the specific financial implications would depend on various factors, including the program's scope, the number of grant recipients, and the allocation of funds."
				}
			],
			"finishReason": "COMPLETE"
		}
	}		
	</copy>
	```

3. Perform Search or instruction of specific document

*** NOTE CHANGE THE DOCUMENT NAME TO MATCH ONE THAT IS IN YOUR DOCUMENTS TABLE ***

    ```
    <copy>
	set serveroutput on
	select gen_ai_chat_documents_single('Nutritian.txt','prepare a typical menu for the day based in the following nutritianal guidelines that specify a minimum of 160g of protein')	
    </copy>
    ```

    ```
    <copy>
	"A typical menu for the day based on the nutritional guidelines that specify a minimum of 160g of protein could include:\n\n* Breakfast: 3 large eggs (18g protein), 2 cups mixed berries (2g protein), 1 cup Greek yogurt (20g protein), and 1 scoop whey protein powder (30g protein) - Total: 70g protein\n* Snack: 1 cup cottage cheese (28g protein) and 1 cup sliced peaches (2g protein) - Total: 30g protein\n* Lunch: 6 oz grilled chicken breast (42g protein), 1 cup cooked quinoa (8g protein), and 1 cup steamed broccoli (4g protein) - Total: 54g protein\n* Snack: 1 cup Greek yogurt (20g protein) and 1/2 cup mixed nuts (10g protein) - Total: 30g protein\n* Dinner: 6 oz grilled salmon (40g protein), 1 cup cooked brown rice (5g protein), and 1 cup sautéed spinach (3g protein) - Total: 48g protein\n\nTotal daily protein intake: 192g\n\nThis menu provides a balanced mix of protein, healthy fats, and complex carbohydrates, and stays within the recommended daily intake of protein. However, the specific nutritional needs of an individual may vary depending on factors such as age, sex, weight, and activity level. It's always best to consult with a healthcare professional or registered dietitian to determine the best meal plan for your individual needs."
    </copy>
    ```

## Task 9: APEX Application

1.  Create New APEX Workspace

2.  Import Application into APEX Workspace

	The APEX Application is available from the below links.  You can import the app into an existing APEX Workspace based off of the **vector** schema/user.

	* [APEX Application](https://github.com/snicholspa/tips_tricks_howtos/blob/main/autonomous_database/vector_search_enhanced/files/apex_vectorapp.zip)

3.  Access and Log Into APEX Application

4.  Update APEX Application to View PDFs

	Refer to the following YouTube Recording to re-configure (ORDS Setup and Change ORDS URL) the PDF Viewer option in the APEX Application hosted in your environment.

	[PDF Viewer in Oracle APEX](youtube:PoAl_TA0TxA)

    ```
    <copy>
	--- pdf viewer code snippets

	<div id="pdfViewer" style="width: 100%; height: 500px">
		<iframe src="" style="border: none;" type="application/pdf"
		width="100%" height="100%"></iframe>
	</div>


	let id = this.data.id;async function getData(){
	let afetch = await fetch('PLACEHOLDER' + id );
	let blob = await afetch.blob();
	let blobUrl = URL.createObjectURL(blob);
	let pdfContainer = document.getElementById('pdfViewer');

	pdfContainer.getElementsByTagName('iframe')[0].src = blobUrl;}

	getData();

	javascript:apex.event.trigger(document, 'PDFViewer',[{id:'#ID#'}]);
	void(0);
    </copy>
    ```

5.  General APEX Links

	Below are a couple links covering the new AI Powered APEX Assistant.

	* [Using APEX Assistant](https://docs.oracle.com/en/database/oracle/apex/24.1/htmdb/using-apex-assistant.html)

	* [Coding with the AI Powered APEX Assistant](https://blogs.oracle.com/apex/post/coding-with-the-ai-powered-apex-assistant-on-oracle-apex)

## Acknowledgements
  * **Authors:** Derrick Cameron and Steven Nichols, Master Principal Cloud Architects
  * **Last Updated By/Date:** Steven Nichols, March 31, 2025

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)