# Vector Search and Generative AI for Oracle Database Developers

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

[Vector Search and Generative AI](youtube:2fmoNZzqLOk)

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

## Task 1: Create Database User with Grants

As the user **ADMIN**, issue the below SQL Statements

1.  Create Database User and Initial Grants

    ```
    <copy>
	create user vector identified by "{password}";
	grant dwrole to vector;
	grant unlimited tablespace to vector;
	grant create job to vector;
    </copy>
    ```

2.  Grant Database User Access to DBMS Packages

    ```
    <copy>
    grant execute on DBMS_CLOUD to vector;
    grant execute on DBMS_VECTOR to vector;
    </copy>
    ```

## Task 2: Update Access Control List

As the user **ADMIN**, issue the following PL/SQL Code

1. Grant Non-Admin User Permission to Access OCI Gen AI Provider

    ```
    <copy>
	BEGIN
	DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
	  HOST         => 'inference.generativeai.us-chicago-1.oci.oraclecloud.com',
	  ACE          => xs$ace_type(
		  PRIVILEGE_LIST => xs$name_list('http'),
		  PRINCIPAL_NAME => 'vector',
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

## Task 3: Create Credentials

As the user **VECTOR**, issue the below PL/SQL Code.

1. Create Credential to Access OCI Gen AI Service

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

    If you would like to see what existing credentials exist, execute the following SQL Statement

    ```
    <copy>
    select * from user_credentials;  
    </copy>
    ```

2. Create Credential to Perform Vector Tasks

	For more details, see the [`DBMS_VECTOR.CREATE_CREDENTIAL` Procedure](https://docs.oracle.com/en/database//oracle/oracle-database/23/arpls/dbms_vector1.html#GUID-4BBCBF46-3903-4EBB-8BE8-A7690151CF25) documentation.

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

## Task 4: Create Tables and Triggers

As the user **VECTOR**, issue the below SQL Code.

1. Create Legislation Table and Trigger

    ```
    <copy>
	create table legislation 
	   (id number(*,0) generated by default on null as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder  nocycle  nokeep  noscale  not null enable, 
		file_name varchar2(900 byte), 
		file_size number(*,0), 
		file_type varchar2(100 byte), 
		file_content blob, 
		first_page_image blob, 
		mimetype varchar2(50 byte), 
		primary key (id)) ;

	create or replace editionable trigger trg_legislation_vector_ocigenai 
	after insert on legislation
	for each row
	declare
	my_job number;
	begin
	dbms_job.submit(job => my_job, what => 'chathistory_pkg.prc_cr_doc_vectors;');
	end;
	/
	
	alter trigger trg_legislation_vector_ocigenai disable;
    </copy>
    ```
2. Create Legislation Vector Table

    ```
    <copy>
	create table legislation_vector 
	   (id number(*,0) not null enable, 
		chunk_id number, 
		chunk_pos number, 
		chunk_size number, 
		chunk_txt varchar2(4000 byte), 
		embed_vector vector);	
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

4. Create Prompts (chat history) Table

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
		constraint prompts_id_pk2 primary key (id),
		foreign key (conv_id) references vector.conversations (id));	
    </copy>
    ```

## Task 5: Load Documents

You can load your own PDFs into Object Storage if you like.  If you would like to leveage the PDFs leveraged in this demonstration, below is the link to the **HB 9** PSFs from Texas Legislature.

[HB 9 PDFs](https://www.legis.texas.gov/BillLookup/Text.aspx?LegSess=872&Bill=HB9)

1. Load PDF Files from OCI Object Storage

    ```
    <copy>
	declare
	   l_blob blob := null;
	   l_bucket varchar2(4000) := 'https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/';
	begin
	for i in (select * from dbms_cloud.list_objects('{oci_cred_from Task 3.1}',l_bucket) where object_name like '%.pdf')
	loop
	   l_blob := dbms_cloud.get_object(
		 credential_name => '{oci_cred_from Task 3.1}',
		 object_uri => l_bucket||i.object_name);
	insert into legislation (file_name, file_size, file_type, file_content)
				values(i.object_name, i.bytes, 'mime/pdf',l_blob);
	commit;
	end loop;
	end;
	/	
    </copy>
    ```
	
## Task 6: Load ONXX Models (optional)

1. Copy ONXX Models from OCI Object Storage to Oracle Database Directory

    ```
    <copy>
	begin
	dbms_cloud.get_object(
		credential_name => '{oci_cred_from_Task_3_1}',
		object_uri => 'https://objectstorage.{region}.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/tinybert.onnx',
		directory_name => 'data_pump_dir'
		);
	end;
	/

	begin
	dbms_cloud.get_object(
		credential_name => '{oci_cred_from_Task_3_1}',
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
	exec DBMS_VECTOR.LOAD_ONNX_MODEL('data_pump_dir','tinybert.onnx','TINYBERT_MODEL',json('{"function":"embedding","embeddingOutput":"embedding",'||'"input":{"input":["DATA"]}}'));
	
	exec DBMS_VECTOR.LOAD_ONNX_MODEL('data_pump_dir','all-MiniLM-L6-v2.onnx','All_MINILM_L6V2MODEL',JSON('{"function" : "embedding",'||'"input":{"input":["DATA"]}}'));	
    </copy>
    ```

    ```
    <copy>
    </copy>
    ```

## Task 7: Vector Text, Chunking, Embedding Steps

1. Document to text

    ```
    <copy>
	-- just extract text
	select id, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
	from legislation l;
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
	legislation l,
	-- doc to text
	(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from legislation l) t,
	-- text to chunck
	dbms_vector_chain.utl_to_chunks(t.file_text,
	   json('{ "by":"words",
			   "max":"200",
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
	insert into legislation_vector
	select l.id
			, json_value(c.column_value, '$.chunk_id' returning number) as chunk_id
			, json_value(c.column_value, '$.chunk_offset' returning number) as chunk_pos
			, json_value(c.column_value, '$.chunk_length' returning number) as chunk_size
			, replace(json_value(c.column_value, '$.chunk_data'),chr(10),'') as chunk_txt
			, null -- this is the vector column, we'll populate it later
	from 
	------- base table ---------
	legislation l,
	------- doc to text query ---------
	(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from legislation l) t,
	------- chunking ---------
	dbms_vector_chain.utl_to_chunks(t.file_text,
	   json('{ "by":"words",
			   "max":"200",
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

    ```
    <copy>
	-- embedding query
	select chunk_txt, dbms_vector_chain.utl_to_embedding(l.chunk_txt, json('{
	  "provider": "OCIGenAI",
	  "credential_name": "{oci_cred_from_Task_3_2}",
	  "url": "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/embedText",
	  "model": "cohere.embed-english-v3.0",
	  "batch_size":10
	}')) embed_vector
	from legislation_vector l
	where rownum < 11;
    </copy>
    ```

    ```
    <copy>
	-- update vectors in micro batches, looping through rows that don't have vectors
	begin
	for c in 1..100 loop
	for i in (select * from legislation_vector where rownum<100 and embed_vector is null)
	loop
	update legislation_vector
	set embed_vector = dbms_vector.utl_to_embedding(chunk_txt, json('{
	  "provider": "OCIGenAI",
	  "credential_name": "{oci_cred_from_Task_3_2}",
	  "url": "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/embedText",
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
				"credential_name": "{oci_cred_from_Task_3_2}",
				"url": "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/embedText",
				"model": "cohere.embed-english-v3.0",
				"batch_size":50
				}')) embed_vector
	from 
	-- base table
	legislation l,
	-- doc to text
	(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from legislation l) t,
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

## Task 8: Process New Document and Capture Conversation and Chat History Setup

1. Create Sequences

    ```
    <copy>
	create sequence conv_seq;  
	create sequence prompt_seq;
    </copy>
    ```

2. Create Package 

    ```
    <copy>
	-- create package chathistory_pkg
	create or replace package chathistory_pkg is
	procedure prc_add_conversation(p_username varchar2, p_started_on timestamp, p_app_session number);
	procedure prc_add_prompt(
		p_id number
		, p_conv_id number
		, p_prompt varchar2
		, p_response varchar2
		, p_asked_on timestamp
		, p_chathistory varchar2
		, p_references varchar2);
	procedure prc_cr_doc_vectors;
	end;	
    </copy>
    ```

3. Create Package Body

    ```
    <copy>
	create or replace package body chathistory_pkg is
	---------
	procedure prc_add_conversation(p_username varchar2, p_started_on timestamp, p_app_session number) is
		pragma autonomous_transaction;
		begin
		insert into conversations values(conv_seq.nextval, p_username, p_started_on, p_app_session); 
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
		, p_references varchar2) is
		pragma autonomous_transaction;
		begin
		insert into prompts values(
			p_id
			, p_conv_id
			, p_prompt
			, p_response
			, p_asked_on
			, p_chathistory
			, p_references);
		commit;
		end;
	---------   
	procedure prc_cr_doc_vectors is
		begin
		insert into legislation_vector
		select l.id
			, json_value(c.column_value, '$.chunk_id' returning number) as chunk_id
			, json_value(c.column_value, '$.chunk_offset' returning number) as chunk_pos
			, json_value(c.column_value, '$.chunk_length' returning number) as chunk_size
			, replace(json_value(c.column_value, '$.chunk_data'),chr(10),'') as chunk_txt
			, dbms_vector_chain.utl_to_embedding(json_value(c.column_value, '$.chunk_data'), json('{
				"provider": "OCIGenAI",
				"credential_name": "{oci_cred_from_Task_3_2}",
				"url": "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/embedText",
				"model": "cohere.embed-english-v3.0",
				"batch_size":10
				}')) embed_vector 
		from 
		------- base table ---------
		(select id from legislation where id not in (select id from legislation_vector)) l,
		------- doc to text query ---------
		(select id
			, dbms_vector_chain.utl_to_text (l.file_content, json('{"plaintext":"true","charset":"utf8"}')) file_text
		from legislation l where id=l.id) t,
		------- chunking ---------
		dbms_vector_chain.utl_to_chunks(t.file_text,
		json('{ "by":"words",
			   "max":"200",
			   "overlap":"0",
			   "split":"sentence",
			   "language":"american",
			   "normalize":"all" }')) c
		where l.id=t.id;
		commit;
		end;
	end;
    </copy>
    ```

4. Enable Trigger to Populate Vectors for New Documents

    ```
    <copy>
	-- enable trigger for new documents loaded by application
	alter trigger vector.trg_legislation_vector_ocigenai enable;
    </copy>
    ```

5. Create Function for use in SQL Developer or SQLPLUS Client

    ```
    <copy>
	-- create function
	create or replace function gen_ai_chat_legislation_db (p_ai_message in varchar2) return clob as
		v_gen_ai_endpoint   varchar2(500)   := 'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com';
		v_compartment_id    varchar2(4000)  := '{compartment_OCID}';
		v_vector_credential varchar2(100)   := '{oci_cred_from_Task_3_2}';
		v_ociapi_credential varchar2(100)   := '{oci_cred_from_Task_3_1}';
		v_provider          varchar2(100)   := 'OCIGenAI';
		v_text_endpoint     varchar2(100)   := '/20231130/actions/embedText';
		v_chat_endpoint     varchar2(100)   := '/20231130/actions/chat';
		v_model_embed       varchar2(100)   := 'cohere.embed-english-v3.0';
		v_model_query       varchar2(100)   := 'cohere.command-r-plus';
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
		v_session           number;
		v_conv_id           number;
		v_prompt_id         number;

	begin

	--vectorize the user_question
	select dbms_vector.utl_to_embedding(p_ai_message
		, json('{
			"provider":"'||v_provider||
			'","credential_name":"'||v_vector_credential||
			'","url":"'||v_gen_ai_endpoint||v_text_endpoint||
			'","model":"'||v_model_embed||'"}'))
	into v_ai_message_vec;

	v_messages := '{"message": "';

	-- retrieve chunks based on vector distance from input message and append to each other
	for i in (select l.id, l.file_name, lv.chunk_id, lv.chunk_txt 
			  from legislation_vector lv, legislation l
			  where l.id = lv.id
			  order by vector_distance(embed_vector, v_ai_message_vec, cosine) fetch first 5 rows only)
	loop
		v_messages := v_messages||i.chunk_txt||' ';
		v_chunks := v_chunks||to_char(i.file_name)||', chunk_id:'||to_char(i.chunk_id)||',';
	end loop;
	-- add the user question
	v_messages := v_messages||' Question: '||p_ai_message||'"}';
	-- remove the trailing comma and newline character
	v_messages := rtrim(v_messages, ',');
	v_chunks := rtrim(v_chunks,',');

	-- if executing in sqldeveloper app_session is not set, otherwise it is set in APEX
	select count(*) into v_session from conversations where app_session=sys_context('userenv','sessionid'); 
	if v_session = 0 then
	chathistory_pkg.prc_add_conversation(user, systimestamp, sys_context('userenv','sessionid')); 
	end if;

	-- locate latest chat and prompt sessions and set current chat history
	select max(id) into v_conv_id from conversations where app_session = sys_context('userenv','sessionid');
	--
	begin
	select max(id) into v_prompt_id from prompts where conv_id = v_conv_id;
	exception
	when others then null;
	end;
	--
	begin
	select chathistory into v_chathistory_before from prompts where id = v_prompt_id;
	exception
	when others then null;
	end;

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

	v_output := dbms_cloud.get_response_text(v_resp);
	v_response := json_value(v_output, '$.chatResponse.text' returning varchar2);
	v_chathistory_after := json_query(v_output, '$.chatResponse.chatHistory' returning varchar2); 

	-- update prompts
	chathistory_pkg.prc_add_prompt(
		prompt_seq.nextval
		, v_conv_id
		, p_ai_message
		, v_response
		, systimestamp
		, v_chathistory_after
		, v_chunks);

	-- show me what you got
	return v_response;

	end;
    </copy>
    ```

6. Create Function for use in the APEX Application

    ```
    <copy>
	create or replace function gen_ai_chat_legislation (p_ai_message in varchar2) return clob as
		v_gen_ai_endpoint   varchar2(500)   := 'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com';
		v_compartment_id    varchar2(4000)  := '{compartment_OCID}';
		v_vector_credential varchar2(100)   := '{oci_cred_from_Task_3_2}';
		v_ociapi_credential varchar2(100)   := '{oci_cred_from_Task_3_1}';
		v_provider          varchar2(100)   := 'OCIGenAI';
		v_text_endpoint     varchar2(100)   := '/20231130/actions/embedText';
		v_chat_endpoint     varchar2(100)   := '/20231130/actions/chat';
		v_model_embed       varchar2(100)   := 'cohere.embed-english-v3.0';
		v_model_query       varchar2(100)   := 'cohere.command-r-plus';
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
		v_session           number;
		v_conv_id           number;
		v_prompt_id         number;
	begin
	--vectorize the user_question
	select dbms_vector.utl_to_embedding(p_ai_message
		, json('{
			"provider":"'||v_provider||
			'","credential_name":"'||v_vector_credential||
			'","url":"'||v_gen_ai_endpoint||v_text_endpoint||
			'","model":"'||v_model_embed||'"}'))
	into v_ai_message_vec;
	v_messages := '{"message": "';
	-- retrieve chunks based on vector distance from input message and append to each other
	for i in (select l.id, l.file_name, lv.chunk_id, lv.chunk_txt
			  from legislation_vector lv, legislation l
			  where l.id = lv.id
			  order by vector_distance(embed_vector, v_ai_message_vec, cosine) fetch first 5 rows only)
	loop
		v_messages := v_messages||i.chunk_txt||' ';
		v_chunks := v_chunks||to_char(i.file_name)||', chunk_id:'||to_char(i.chunk_id)||',';
	end loop;
	-- add the user question
	v_messages := v_messages||' Question: '||p_ai_message||'"}';
	-- remove the trailing comma and newline character
	v_messages := rtrim(v_messages, ',');
	v_chunks := rtrim(v_chunks,',');
	-- locate latest chat and prompt sessions and set current chat history
	select max(id) into v_conv_id from conversations;
	--
	begin
	select max(id) into v_prompt_id from prompts where conv_id = v_conv_id;
	exception
	when others then null;
	end;
	--
	begin
	select chathistory into v_chathistory_before from prompts where id = v_prompt_id;
	exception
	when others then null;
	end;
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
	v_output := dbms_cloud.get_response_text(v_resp);
	v_response := json_value(v_output, '$.chatResponse.text' returning varchar2);
	v_chathistory_after := json_query(v_output, '$.chatResponse.chatHistory' returning varchar2);
	-- update prompts
	chathistory_pkg.prc_add_prompt(
		prompt_seq.nextval
		, v_conv_id
		, p_ai_message
		, v_response
		, systimestamp
		, v_chathistory_after
		, v_chunks);
	-- show me what you got
	return v_response;
	end;	
    </copy>
    ```

## Task 9: Vector Queries

1. SQL Statements

    ```
    <copy>
	set serveroutput on
	select gen_ai_chat_legislation_db('what is the broadband infraxtetructure fund outlined in house bill 9?');
	select gen_ai_chat_legislation_db('are there any financial implications if it is passed?');	
    </copy>
    ```

2. Response from above SQL Statements

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

## Task 10: Demonstrate OCI Gen AI with APEX

The APEX Application is available from the below links.  You can import the app into an existing APEX Workspace based off of the **vector** schema/user.

* [APEX Application](https://github.com/snicholspa/tips_tricks_howtos/blob/main/autonomous_database/vector_search/files/apex_application.zip)

Below are a couple links covering the new AI Powered APEX Assistant.

* [Using APEX Assistant](https://docs.oracle.com/en/database/oracle/apex/24.1/htmdb/using-apex-assistant.html)

* [Coding with the AI Powered APEX Assistant](https://blogs.oracle.com/apex/post/coding-with-the-ai-powered-apex-assistant-on-oracle-apex)
    

## Acknowledgements
  * **Authors:** Derrick Cameron and Steven Nichols, Master Principal Cloud Architects
  * **Last Updated By/Date:** Steven Nichols, August 27, 2024

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)