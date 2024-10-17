# OCI Generative AI Agent using an Oracle 23ai Vector Store Knowledge Base

This Setup Leverages the 23ai Vector Store Created through this Webinar
	[Vector Search and Generative AI for Oracle Database Developers](https://youtu.be/2fmoNZzqLOk?si=SgGM283oaf8KL3Jf)

## Introduction

OCI Generative AI Agents is a fully managed service that combines the power of large language models (LLMs) with an intelligent retrieval system to create contextually relevant answers by searching your knowledge base, making your AI applications smart and efficient.

OCI Generative AI Agents supports several ways to on-board your data where you and your customers can interact with your data using a chat interface or API.

* Knowledge Base Data Types
	* Service-Managed Option
		- OCI Object Storage files where you can have up to 1,000 text and PDF files of 100 MB each. And you can request an increase through limit request.

	* Bring Your Own (BYO) Options
		- Oracle Database 23ai vector search
		- OCI Search with OpenSearch ingested and indexed data

**Getting Started**

To use OCI Generative AI Agents, create a knowledge base, add your data, create an agent, and set up endpoints for user interaction. OCI Generative AI Agents takes care of the rest, providing relevant answers to you and your customers' questions, and tracks the conversation context to enable more informed and helpful responses.

**Regions with Generative AI Agents**

Oracle hosts its OCI services in regions and availability domains. A region is a localized geographic area, and an availability domain is one or more data centers in that region. OCI Generative AI Agents is hosted in the following region:

	* Region name: US Midwest (Chicago)
	* Region identifier: us-chicago-1


The above introduction was sourced from [here](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/overview.htm)

## New to the OCI Generative AI Service

Please reference the below links for more information on Oracle's Artificial Intelligence (AI) and Generative AI Offerings.

* [Artificial Intelligence (AI)](https://www.oracle.com/artificial-intelligence/)

* [Generative AI capabilities](https://www.oracle.com/artificial-intelligence/generative-ai/)

* [Generative AI Service](https://www.oracle.com/artificial-intelligence/generative-ai/generative-ai-service/)

* [Pretrained Foundational Models](https://docs.oracle.com/en-us/iaas/Content/generative-ai/pretrained-models.htm)

## Documentation Links

* [Generative AI Agents](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/home.htm)

## Cloud Coaching Webinar Playlist and Notable Past Webinars

1. Cloud Coaching YouTube Playlist

	* [Code Innovate Cloud Coaching Playlist](https://www.youtube.com/playlist?list=PLPIzp-E1msrZMCfSHbKgLK3KWsNM9JB9a)

2. Introduction to Select AI for NL2SQL (Natural Language to SQL) using Only OCI Services

	* [Introducing Select AI using only OCI Services](https://snicholspa.github.io/tips_tricks_howtos/autonomous_database/select_ai_oci_only/)

3. Introduction to Select AI for NL2SQL (Natural Language to SQL)

	* [Introducing Select AI - A new way to talk to and converse with your Oracle Autonomous Database](https://youtu.be/19Ms3I7TaAU?si=iIQ8kFxgm-IBX5kJ)

4. Introduction to Select AI for RAG (Retrieval Augmented Retrieval) using Only OCI Services

	* [Introducing Select AI for RAG using only OCI Services](https://snicholspa.github.io/tips_tricks_howtos/autonomous_database/select_ai_rag/)

5. Vector Search and RAG

	* [Vector Search and Generative AI for Oracle Database Developers](https://youtu.be/2fmoNZzqLOk?si=SgGM283oaf8KL3Jf)

6. JSON Data Manipulation using JSON_TABLE

	* [Extracting value and managing the lifecycle of JSON data with Oracle Cloud Infrastructure](https://youtu.be/BHNz2lEq2IA?si=TEK1UeHONj_XFI0z)
	
7. APEX and Gen AI

	* [Unlocking Oracle APEX Potential: Integrating Generative AI and Streamlining Workflows](https://youtu.be/ZJ491y7oils?si=jH4h5VHZ9WfC_o-U)

8. Digital Assistant and Gen AI

	* [Integrating Large Language Models with Oracle Digital Assistant](https://youtu.be/JO4BDWdW6OE?si=rW8sMTLreU5jgmhL)

	* [Conversational AI: Harnessing Generative AI with Oracle Digital Assistant](https://youtu.be/LvL-Omki8xo?si=lQEwoTtrJrI6QC54)

9. PL/SQL SDK for OCI

	* [Connecting Cloud and Database: Unleashing Possibilities with PL/SQL SDK](https://youtu.be/1mye241dtUo?si=WtzGpo9hoMhdBkKQ)

10. REST in the Autonomous Database

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

## Task 1: Create OCI Policies to Access OCI GenAI Agents

For more details, see the [Getting Access to Generative AI Agents](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/iam-policies.htm) documentation.

1. Create Dynamic Group **oci\_genai\_agent\_dg** with a Matching Rule in Default domain in ROOT compartment

    ```
    <copy>
	ALL {resource.type='genaiagent'}
    </copy>
    ```

2. Add the following Policies to **oci\_genai\_agents\_policies** under your compartment

    ```
    <copy>
	allow dynamic-group oci_genai_agent_dg to read database-tools-family in compartment <your compartment>
	allow dynamic-group oci_genai_agent_dg to read secret-bundle in compartment <your compartment>
    </copy>
    ```

## Task 2: 23ai Vector Database Requirements and Setup

For more details, see the [Oracle Database Guidelines for Generative AI Agents](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/oracle-db-guidelines.htm) documentation.

1. Existing 23ai Vector Database Store in the same Region (**us-chicago-1**) as OCI Gen AI Agent Service

2. 23ai DB on Private Subnet of virtual cloud network (VCN) in OCI
	- Add ingress rule to private subnet 
		- Source Type: CIDR
		- Source CIDR: The VCN's IPv4 CIDR Block (such as 10.0.0.0/16)
		- IP Protocol: TCP
		- Source Port Range: All
		- Destination Port Range: 1521-1522

3. Create a Vault with a default encryption Key, create Secret for the vector database user password

4. Create Database Tools Connection with Private Endpoint
	-  Leverages Vault and Secret
	-  retry_count is manually changed in the Connection string to 3
	-  host is manually changed in the Connection string to private IP address
	
5. Develop 23ai Database Function to accept AI Prompt and return top K vector distance search results
	- be sure the cursor results return the required columns and the required column names are set
		- required column field names DOCID, BODY, SCORE
		- optional column field names CHUNKID, URL, TITLE
	- sample database function code

    ```
    <copy>
	create or replace FUNCTION RETRIEVAL_FUNC (p_query IN VARCHAR2,top_k IN NUMBER) RETURN SYS_REFCURSOR IS
		v_results SYS_REFCURSOR;
		query_vec VECTOR;
	BEGIN
		query_vec := dbms_vector.utl_to_embedding(
			p_query,
			json('{
				"provider": "OCIGenAI",
				"credential_name": "OCI_VECTOR_CREDENTIAL",
				"url": "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/embedText",
				"model": "cohere.embed-english-v3.0"
			}')
		);

		OPEN v_results FOR
			select l.id as DOCID, lv.chunk_id as CHUNKID, l.file_name as TITLE, 
			'https://objectstorage.us-chicago-1.oraclecloud.com/n/{namespace}/b/{bucket_name}/o/' || l.file_name as URL,
			lv.chunk_txt as BODY, vector_distance(embed_vector, query_vec) AS SCORE
			from legislation_vector lv, legislation l
			where l.id = lv.id
			order by SCORE 
			fetch first top_k rows only;
			
		RETURN v_results;
	END;	
    </copy>
    ```
	
## Task 3: Create Knowledge Base for Oracle AI Vector Search

[Creating a Knowledge Base in Generative AI Agents](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/create-knowledge-base.htm)

1. select Oracle AI Vector Search
2. select the Database Tools Connection and Test
3. select the Vector Search Function you created

## Task 4: Create Agent against the Oracle AI Vector Search Knowledge Base

[Creating an Agent in Generative AI Agents](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/create-agent.htm)

This can also create the OCI Gen AI Agent Endpoint as well.  If you select this, it will create an Endpoint with session Enabled

## Task 5: Chat with your OCI Gen AI Agent Knowledge Base using OCI Gen AI Chat Console

[Chatting with Agents in Generative AI Agents](https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/chatting.htm#chatting)
	
## Task 6: Chat with your OCI Gen AI Agent Knowledge Base using Python SDK

[Generative AI Agents Client API](https://docs.public.oneportal.content.oci.oraclecloud.com/en-us/iaas/api/#/EN/generative-ai-agents-client/latest/)

[Chat generativeAiAgentRuntime](https://docs.public.oneportal.content.oci.oraclecloud.com/en-us/iaas/api/#/EN/generative-ai-agents-client/latest/AgentEndpoint/Chat)

1. Service Endpoint is required 
	- oci.generative\_ai\_agent\_runtime.GenerativeAiAgentRuntimeClient

2. Session ID is a required attribute in the CHAT_DETAILS if the Endpoint was created with Session Enabled  
	- oci.generative\_ai\_agent\_runtime\_client.chat

3. Sample Python Code

    ```
    <copy>
	import oci

	config = oci.config.from_file(profile_name="CHICAGO")
	service_ep = "https://agent-runtime.generativeai.us-chicago-1.oci.oraclecloud.com"
	agent_ep_id = "ocid1.genaiagentendpoint.oc1.us-chicago-1.<*** NEEDS UPDATED ***>"

	chat_prompt = "what is the broadband infrastructure fund outlined in house bill 9"
	##chat_prompt = "what is the responsibilities of the vice president"

	# Initialize service client with default config file
	generative_ai_agent_runtime_client = oci.generative_ai_agent_runtime.GenerativeAiAgentRuntimeClient(config,service_endpoint=service_ep)

	# Create Session
	create_session_response = generative_ai_agent_runtime_client.create_session(
		create_session_details=oci.generative_ai_agent_runtime.models.CreateSessionDetails(
			display_name="USER_Session",
			description="User Session"),
		agent_endpoint_id=agent_ep_id)

	# Get the data from response
	print(create_session_response.data)
	sess_id = create_session_response.data.id

	# Send the request to service
	chat_response = generative_ai_agent_runtime_client.chat(
		agent_endpoint_id=agent_ep_id,
		chat_details=oci.generative_ai_agent_runtime.models.ChatDetails(
			user_message=chat_prompt,
			session_id=sess_id))

	# Get the data from response
	print(chat_response.data.message.content.text)
	print(chat_response.data)	
    </copy>
    ```

## Task 7: Chat with your OCI Gen AI Agent Knowledge Base using PL\/SQL

[SEND\_REQUEST Function and Procedure](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-B063870D-6C1F-4F33-B354-885B73C81D37)

1. Using a Database Function

 	```
    <copy>
	create or replace FUNCTION gen_ai_agent_chat (ai_prompt IN VARCHAR2) RETURN CLOB AS 
		gen_ai_agent_endpoint varchar2(500) := 'https://agent-runtime.generativeai.us-chicago-1.oci.oraclecloud.com';
		gen_ai_agent_endpoint_id varchar2(500) := 'ocid1.genaiagentendpoint.oc1.us-chicago-1.....{change ocid}'; 

		api_cred_name varchar2(500) := 'OCI_API_CRED';

		sess_resp dbms_cloud_types.RESP;
		sess_resp_json JSON_OBJECT_T;
		gen_ai_agent_session_id varchar2(500);

		chat_resp dbms_cloud_types.RESP;
		chat_resp_json JSON_OBJECT_T;
	BEGIN
		-- Create GenAI Agent Session
		sess_resp := dbms_cloud.send_request(
			credential_name => api_cred_name,
			uri => gen_ai_agent_endpoint || '/20240531/agentEndpoints/' || gen_ai_agent_endpoint_id || '/sessions',
			method => dbms_cloud.METHOD_POST,
			body => utl_raw.cast_to_raw(json_object(
				'displayName'   value 'PLSQL_AGENT_SESSION',
				'description'   value 'PLSQL AGENT SESSION'    
			))
		);
		dbms_output.put_line('Session Status Code: ' || dbms_cloud.get_response_status_code(sess_resp));
		sess_resp_json := JSON_OBJECT_T.parse(dbms_cloud.get_response_text(sess_resp));
		
		gen_ai_agent_session_id := sess_resp_json.get_String('id');
		dbms_output.put_line('Session Id: ' || gen_ai_agent_session_id);

		-- Create GenAI Chat using Session ID
		chat_resp := dbms_cloud.send_request(
			credential_name => api_cred_name,
			uri => gen_ai_agent_endpoint || '/20240531/agentEndpoints/' || gen_ai_agent_endpoint_id || '/actions/chat',
			method => dbms_cloud.METHOD_POST,
			body => utl_raw.cast_to_raw(json_object(
				'sessionId'   value gen_ai_agent_session_id,
				'userMessage'   value ai_prompt    
			))
		);
		dbms_output.put_line('Chat Status Code: ' || dbms_cloud.get_response_status_code(chat_resp));
		chat_resp_json := JSON_OBJECT_T.parse(dbms_cloud.get_response_text(chat_resp));

		dbms_output.put_line('Chat Text: ' || chat_resp_json.get_Object('message').get_Object('content').get_String('text'));

		RETURN dbms_cloud.get_response_text(chat_resp);
	END gen_ai_agent_chat;
    </copy>
    ```

## Task 8: Leverage a Vector Store Managed by Select AI for RAG (optional)

If your Oracle 23ai Vector Store is managed by **Select AI for RAG**, you can create an OCI GenAI Agent Knowledge base.  You first have to flatten the Select AI for RAG Vector Store by creating a View then leverage this view in your OCI GenAI Agent Database Function.

Details on [Select AI for RAG using only OCI Services](https://snicholspa.github.io/tips_tricks_howtos/autonomous_database/select_ai_rag/) can be found here.

1. Flatten the Select AI for RAG Vector Store

    ```
    <copy>
	create or replace view flattened_sairag_vectors as
	select j.*, d.content, d.embedding,
	row_number () OVER (PARTITION BY j.object_name ORDER BY j.start_offset) chunkid,
	j.object_name as docid
	from tx_house_bills_vectors d,  
		json_table(
			d.attributes, 
			'$[*]' columns (object_name varchar,
							start_offset number,
							end_offset number,
							location_uri varchar,
							object_size number,
							last_modified timestamp
							)
		) j;	
    </copy>
    ```
2. Create 23ai Database Function to return results to OCI GenAI Agent

    ```
    <copy>
	create or replace FUNCTION RETRIEVAL_FUNC_SAIRAG (p_query IN VARCHAR2,top_k IN NUMBER) RETURN SYS_REFCURSOR IS
		v_results SYS_REFCURSOR;
		query_vec VECTOR;
	BEGIN
		query_vec := dbms_vector.utl_to_embedding(
			p_query,
			json('{
				"provider": "OCIGenAI",
				"credential_name": "OCI_VECTOR_CREDENTIAL",
				"url": "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/embedText",
				"model": "cohere.embed-english-v3.0"
			}')
		);

		OPEN v_results FOR
			select DOCID, chunkid, object_name as TITLE, 
			location_uri || object_name as URL,
			content as BODY, vector_distance(embedding, query_vec) AS SCORE
			from flattened_sairag_vectors
			order by SCORE 
			fetch first top_k rows only;

		RETURN v_results;
	END;	
    </copy>
    ```

## Acknowledgements
  * **Authors:** Steven Nichols, Master Principal Cloud Architects
  * **Last Updated By/Date:** Steven Nichols, October 10, 2024

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)