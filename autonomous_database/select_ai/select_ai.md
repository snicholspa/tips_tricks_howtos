# Oracle Autonomous Database Select AI

## Introduction

Select AI for Oracle Autonomous Database

## Webcast Replays

## Workshops and Additional Information

## Documentation Links

* [Select AI for ADB](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html)

* [Using Oracle Autonomous Database Serverless](https://docs.oracle.com/en/cloud/paas/autonomous-database/adbsa/index.html)

## Task 1: Configuration

1. Grant Non-Admin User Permission to Access AI Providers 

    As the user **ADMIN**, issue the following PL/SQL Code

    ```
    <copy>
    BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
      HOST         => 'api.cohere.ai',
      LOWER_PORT   => 443,
      UPPER_PORT   => 443,
      ACE          => xs$ace_type(
          PRIVILEGE_LIST => xs$name_list('http'),
          PRINCIPAL_NAME => 'MOVIESTREAM',
          PRINCIPAL_TYPE => xs_acl.ptype_db));
    END;
    /
    </copy>
    ```

    The valid **HOSTs** are below

    | PROVIDER | HOST |
    | --- | ----------- |
    | OpenAI | api.openai.com |
    | Cohere | api.cohere.ai |
    | Azure OpenAI | `<azure_resource_name>.openai.azure.com` |

    For more details, see the [`DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE` Procedure](https://docs.oracle.com/en/database/oracle/oracle-database/23/arpls/DBMS_NETWORK_ACL_ADMIN.html#GUID-254AE700-B355-4EBC-84B2-8EE32011E692) documentation.

    If you would like to see what existing ACL Priviledges exist, execute the following SQL Statement

    ```
    <copy>
    select a.host, b.principal, b.privilege, b.is_grant 
    from dba_network_acls a, dba_network_acl_privileges b
    where a.acl = b.acl; 
    </copy>
    ```

2. Grant Non-Admin User Permission to PL/SQL Packages

    As the user **ADMIN**, issue the following SQL Statements

    ```
    <copy>
    grant execute on DBMS_CLOUD to moviestream;
    grant execute on DBMS_CLOUD_AI to moviestream;
    </copy>
    ```

3. Create Credential to Access AI Providers

    As the user you granted access to the PL/SQL Packages in Step 2, issue the following PL/SQL Code.

    ```
    <copy>
    BEGIN
      DBMS_CLOUD.CREATE_CREDENTIAL(
        credential_name => 'WEBINAR_COHERE_CRED',
        username => '<cohere_user>',
        password => '<cohere_api_key>');
    END;
    /    
    </copy>
    ```

    For more details, see the [`DBMS_CLOUD.CREATE_CREDENTIAL` Procedure](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A) documentation.

    If you would like to see what existing ACL Priviledges exist, execute the following SQL Statement

    ```
    <copy>
    select * from user_credentials;  
    </copy>
    ```

4. Create Select AI Profile

    ```
    <copy>
    BEGIN
    DBMS_CLOUD_AI.CREATE_PROFILE(
        profile_name => 'WEBINAR_COHERE_PROF',
        attributes => '{"provider":"cohere",
                        "credential_name":"{credential name from step 3}",
                        "model":"cohere-command",
                        "comments":"true",
                        "max_tokens":"1024",
                        "temperature":"0",
                        "stop_tokens":["#", ";"],
                        "object_list":[{"owner": "MOVIESTREAM", "name": "customer"},
                                        {"owner": "MOVIESTREAM", "name": "movies"},
                                        {"owner": "MOVIESTREAM", "name": "genre"},
                                        {"owner": "MOVIESTREAM", "name": "actors"},
                                        {"owner": "MOVIESTREAM", "name": "streams"}]
        }');
    END;
    /    
    </copy>
    ```

    For more details on creating a Profile and the associated attributes, see the following documentation

    [`DBMS_CLOUD_AI` Package](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-000CBBD4-202B-4E9B-9FC2-B9F2FF20F246)

    [Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-7B6A819E-AF51-445B-949D-E8E16A936CFE)

    [Profile Attributes](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-12D91681-B51C-48E0-93FD-9ABC67B0F375)

    If you would like to see what Profiles exist and they attributes, execute the following SQL Statement

    ```
    <copy>
    select a.profile_name, a.status, b.attribute_name, b.attribute_value 
    from user_CLOUD_AI_PROFILES a, user_cloud_ai_profile_attributes b
    where a.profile_id = b.profile_id;
    </copy>
    ```

## Task 2: Basic Usage

1. Set Select AI Profile for Current Session

    ```
    <copy>
    BEGIN
        DBMS_CLOUD_AI.SET_PROFILE(
            profile_name => '{profile name from step 4}'
        );
    END;
    /
    </copy>
    ```

    If you would like set the user's AI Profile at logon, you could create the following trigger

    ```
    <copy>
    CREATE OR REPLACE TRIGGER SET_AI_PROFILE AFTER LOGON ON SCHEMA
        BEGIN
            DBMS_CLOUD_AI.SET_PROFILE(profile_name => 'profile name from step 4F');
        END;
    /    
    </copy>
    ```

    To list what AI Profile is currently set for the user's session, execute the following PL/SQL Code/

    ```
    <copy>
    SET SERVEROUTPUT ON;
    DECLARE
        l_profile_name  DBMS_ID;
        l_profile_owner DBMS_ID;
    BEGIN
        DBMS_CLOUD_AI.GET_PROFILE(profile_name => l_profile_name,
                                profile_owner => l_profile_owner);
        dbms_output.Put_line('Active Profile Name/Owner:  ' || 
                            l_profile_name || '/' || l_profile_owner);
    END;
    /    
    </copy>
    ```

    If you would like to see what Profiles exist and they attributes, execute the following SQL Statement

    ```
    <copy>
    select a.profile_name, a.status, b.attribute_name, b.attribute_value 
    from user_CLOUD_AI_PROFILES a, user_cloud_ai_profile_attributes b
    where a.profile_id = b.profile_id;
    </copy>
    ```

    For more details on creating a Profile and the associated attributes, see the following documentation

    [Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-7B6A819E-AF51-445B-949D-E8E16A936CFE)

2. Select AI Examples

    Use **AI** as the keyword in a **SELECT** statement for interacting with the database using natural language prompts.

    The **AI** keyword in a **SELECT** statement instructs the SQL execution engine to use the LLM identified in the active AI profile to process natural language and to generate SQL.

    You can use the **AI** keyword in a query with Oracle clients such as SQL Developer, OML Notebooks, and third-party tools, to interact with database in natural language.

    For more details on running **Select AI** statements, see the following documentation

    [Use AI Keyword to Enter Prompts](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-B3E0EE68-3B4C-4002-9B45-BBE258A2F15A)

    ```
    <copy>
    select ai chat give me a recipe for french toast
    select ai chat tell me a story about elephants
    select ai chat What is Tom Hanks best known for
    </copy>
    ```

3. Select AI RUNSQL Examples

    ```
    <copy>
    select ai runsql What movies are tom hanks in
    select ai list the stream count by movies
    select ai list the stream count by actor
    select ai how many customers are there
    </copy>
    ```

4. Select AI PL/SQL Function DBMS\_CLOUD\_AI.GENERATE

    ```
    <copy>
    select dbms_lob.substr(dbms_cloud_ai.generate(
        prompt => 'give me a cookie recipe',
        action => 'chat',
        profile_name => '{any profile name}'),4000,1) as recipe from dual;    
    </copy>
    ```

    For more details on Generate Function, see the following documentation

    [GENERATE Function](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-7B438E87-0E9A-4318-BA01-3BE1A5851229)
 

## Task 3: How To Understand What is Happening

1. RUNSQL Action

2. SHOWSQL Action

3. SHOWPROMPT Action

4. NARRATE Action

## Task 4: The Effects of Cache

1. Set AI Profile

2. Execute Select AI Query

3. Rename table

4. Re-Execute Select AI Query

## Task 5: How To Improve Results

1. Changing Table and Column Names

2. Adding Column Comments

3. Foreign Key References

4. Transforming Embedded JSON to Flattened JSON

## Task 6: Using Select AI in Applications

1.  Select AI with other SQL

2.  Select AI within an APEX Application

## Acknowledgements
  * **Authors:** Derrick Cameron and Steven Nichols, Master Principal Cloud Architects
  * **Contributors:** Marty Gubar, Product Management
* **Last Updated By/Date:** Steven Nichols, Febuary 2, 2024

Data about movies in this workshop were sourced from **Wikipedia**.

Copyright (C)  Oracle Corporation.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled [GNU Free Documentation License](files/gnu-free-documentation-license.txt)