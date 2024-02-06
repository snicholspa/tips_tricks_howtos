# Oracle Autonomous Database Select AI

## Introduction

Introducing Select AI - A new way to talk to and converse with your Oracle Autonomous Database

The Autonomous Database now speaks “human.” Select AI is a new Autonomous Database capability that is included with the service and allows you to use natural language (English, Spanish, French, Portuguese, etc.) to query data, AND pose questions to LLMs (external to the database). You no longer need to understand where and how your data is stored to gain insights about your business. SQL (structured query language) has been and continues to be the language of choice for querying relational databases, but not everyone knows SQL, and you do need to know your data. Select AI provides a new approach to querying data in the database and external LLMs by breaking down the grammatical elements of a typical question posed by person into its component parts (subject, object, verbs, etc.) to answer their question.

This webinar will show how to enable this feature and how it can be effective at finding data in your applications and leveraging LLMs.

We'll show you

* Database configuration/setup
* Configuration with OpenAI and Cohere
* Sample queries/questions and results
* Select AI on JSON documents in ADB
* Tips for improving response accuracy
* Select AI as an APEX Application

## Webcast Replays

* [Chat with your data. Autonomous Database speaks human.](https://go.oracle.com/LP=139057?elqCampaignId=508924#On-Demand-Webinars)
    * Attend this 60-minute session to learn how easy it is to use Autonomous Database Select AI, which surfaces the latest in Generative AI capabilities that are revolutionizing the way we interact with data.
    * Oracle LiveLabs Workshop - [Chat with Your Data in Autonomous Database Using Generative AI](https://apexapps.oracle.com/pls/apex/f?p=133:180:8657447273761::::wid:3831)

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
          PRINCIPAL_NAME => '<database user>',
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
    grant execute on DBMS_CLOUD to <database user>;
    grant execute on DBMS_CLOUD_AI to <database user>;
    </copy>
    ```

3. Create Credential to Access AI Providers

    As the user you granted access to the PL/SQL Packages in Step 2, issue the following PL/SQL Code.

    ```
    <copy>
    BEGIN
      DBMS_CLOUD.CREATE_CREDENTIAL(
        credential_name => '<enter credential name>',
        username => '<ai_provider_user>',
        password => '<ai_provider_api_key>');
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
        profile_name => '<enter ai profile name>',
        attributes => '{"provider":"cohere",
                        "credential_name":"<credential name from step 3>",
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

    If you would like to see what Profiles exist and their attributes, execute the following SQL Statement

    ```
    <copy>
    select a.profile_name, a.status, b.attribute_name, b.attribute_value 
    from user_CLOUD_AI_PROFILES a, user_cloud_ai_profile_attributes b
    where a.profile_id = b.profile_id;
    </copy>
    ```

## Task 2: Basic Usage

Use **AI** as the keyword in a **SELECT** statement for interacting with the database using natural language prompts.

The **AI** keyword in a **SELECT** statement instructs the SQL execution engine to use the LLM identified in the active AI profile to process natural language and to generate SQL.

You can use the **AI** keyword in a query with Oracle clients such as SQL Developer, OML Notebooks, and third-party tools, to interact with database in natural language.

For more details on running **Select AI** statements, see the following documentation

[Use AI Keyword to Enter Prompts](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-B3E0EE68-3B4C-4002-9B45-BBE258A2F15A)

1. Set Select AI Profile for Current Session

    ```
    <copy>
    BEGIN
        DBMS_CLOUD_AI.SET_PROFILE(
            profile_name => '<profile name from step 4>'
        );
    END;
    /
    </copy>
    ```

    If you would like to set the user's AI Profile at logon, you could create the following trigger

    ```
    <copy>
    CREATE OR REPLACE TRIGGER SET_AI_PROFILE AFTER LOGON ON SCHEMA
        BEGIN
            DBMS_CLOUD_AI.SET_PROFILE(profile_name => '<profile name from step 4>');
        END;
    /    
    </copy>
    ```

    To list what AI Profile is currently set for the user's session, execute the following PL/SQL Code

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

    For more details on Setting the Profile, see the following documentation

    [Create and Set an AI Profile](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/sql-generation-ai-autonomous.html#GUID-7B6A819E-AF51-445B-949D-E8E16A936CFE)

2. Select AI CHAT Examples

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
        profile_name => '<enabled profile name>'),4000,1) as recipe from dual;    
    </copy>
    ```

    For more details on Generate Function, see the following documentation

    [GENERATE Function](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-ai-package.html#GUID-7B438E87-0E9A-4318-BA01-3BE1A5851229)
 

## Task 3: How To Understand What is Happening

1.  Create and Set Select AI Profile

    ```
    <copy>
    BEGIN
    dbms_cloud_ai.create_profile(
        profile_name => 'OPENAI_MOVIE',
        attributes =>
            '{"provider": "openai",
            "credential_name": "OPENAI_CRED",
            "comments":true,
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

    ```
    <copy>
    BEGIN
    DBMS_CLOUD_AI.SET_PROFILE(
        profile_name => 'OPENAI_movie'
    );
    END;
    /    
    </copy>
    ```

2. RUNSQL and SHOWSQL Action

    ```
    <copy>
    select ai show movies that were streamed from customers in the United States
    select ai showsql show movies that were streamed from customers in the United States
    </copy>
    ```

    ```
    <copy>
    SELECT m.TITLE, m.OPENING_DATE, c.COUNTRY
    FROM MOVIESTREAM.MOVIES m
    JOIN MOVIESTREAM.STREAMS s ON m.MOVIE_ID = s.MOVIE_ID
    JOIN MOVIESTREAM.CUSTOMER c ON s.CUST_ID = c.CUST_ID
    WHERE c.COUNTRY = 'United States'    
    </copy>
    ```

2. EXPLAINSQL Action

    ```
    <copy>
    select ai explainsql show movies that were streamed from customers in the United States
    </copy>
    ```

    ```
    <copy>
    SELECT m.TITLE, c.COUNTRY
    FROM MOVIESTREAM.MOVIES m
    JOIN MOVIESTREAM.STREAMS s ON m.MOVIE_ID = s.MOVIE_ID
    JOIN MOVIESTREAM.CUSTOMER c ON s.CUST_ID = c.CUST_ID
    WHERE c.COUNTRY = 'United States'; 

    This query selects the movie title and the country from the MOVIES, STREAMS, and CUSTOMER tables. It joins the tables based on the MOVIE_ID and CUST_ID columns. The WHERE clause filters the results to only include movies that were streamed by customers in the United States.    
    </copy>
    ```

3. SHOWPROMPT Action

    ```
    <copy>
    select dbms_lob.substr(dbms_cloud_ai.generate(
        prompt => 'show movies that were streamed from customers in the United States',
        action => 'showprompt',
        profile_name => 'OPENAI_movie'),4000,1) from dual;
    </copy>
    ```

    ```
    <copy>
    SELECT JSON_QUERY('[{
        "role":"system",
        "content":"### Oracle SQL tables with their properties:"
        },
        {
            "role":"system",
            "content":"# 
            \"MOVIESTREAM\".\"MOVIES\" (
                \"MOVIE_ID\" NUMBER, 
                \"SUMMARY\" VARCHAR2(16000), 
                \"RUNTIME\" NUMBER, 
                \"NOMINATIONS\" VARCHAR2(4000), 
                \"AWARDS\" VARCHAR2(4000), 
                \"MAIN_SUBJECT\" VARCHAR2(4000), 
                \"STUDIO\" VARCHAR2(4000), 
                \"CREW\" VARCHAR2(4000), 
                \"OPENING_DATE\" DATE, 
                \"YEAR\" NUMBER, 
                \"LIST_PRICE\" NUMBER, 
                \"GROSS\" NUMBER, 
                \"BUDGET\" NUMBER, 
                \"TITLE\" VARCHAR2(200))"
        },
        {
            "role":"system",
            "content":"# 
            \"MOVIESTREAM\".\"STREAMS\" (
                \"PAYMENT_METHOD\" VARCHAR2(100), 
                \"OS\" VARCHAR2(100), 
                \"DEVICE\" VARCHAR2(100), 
                \"APP\" VARCHAR2(100), 
                \"CUST_ID\" NUMBER, 
                \"MOVIE_ID\" NUMBER, 
                \"GENRE_ID\" NUMBER(4,0), 
                \"DAY_ID\" TIMESTAMP(6), 
                \"ACTUAL_PRICE\" NUMBER(5,2), 
                \"DISCOUNT_PERCENT\" NUMBER(5,2), 
                \"DISCOUNT_TYPE\" VARCHAR2(100),
                \"LIST_PRICE\" NUMBER(5,2))"
        },
        {
            "role":"system",
            "content":"# 
            \"MOVIESTREAM\".\"PIZZA_SHOP\" (
                \"PIZZA_LOC_ID\" NUMBER, 
                \"COUNTY\" VARCHAR2(250), 
                \"POSTAL_CODE\" VARCHAR2(38), 
                \"STATE\" VARCHAR2(26), 
                \"CITY\" VARCHAR2(250), 
                \"ADDRESS\" VARCHAR2(250), 
                \"CHAIN\" VARCHAR2(30), 
                \"CHAIN_ID\" NUMBER, 
                \"LON\" NUMBER, 
                \"LAT\" NUMBER)"
        },
        {
            "role":"system",
            "content":"# 
            \"MOVIESTREAM\".\"ACTORS\" (
                \"MOVIE_ID\" NUMBER, 
                \"ACTOR\" VARCHAR2(4000))"
        },
        {
            "role":"system",
            "content":"# 
            \"MOVIESTREAM\".\"GENRE\" (
                \"GENRE_ID\" NUMBER, 
                \"NAME\" VARCHAR2(30))"
        },
        {
            "role":"system",
            "content":"# 
            \"MOVIESTREAM\".\"CUSTOMER\" (
                \"YRS_CUSTOMER\" NUMBER, 
                \"CONTINENT\" VARCHAR2(400), 
                \"COUNTRY_CODE\" VARCHAR2(2), 
                \"COUNTRY\" VARCHAR2(400), 
                \"STATE_PROVINCE\" VARCHAR2(100), 
                \"CITY\" VARCHAR2(100), 
                \"POSTAL_CODE\" VARCHAR2(10), 
                \"STREET_ADDRESS\" VARCHAR2(400), 
                \"EMAIL\" VARCHAR2(500),
                \"FIRST_NAME\" VARCHAR2(200), 
                \"LAST_NAME\" VARCHAR2(200), 
                \"CUST_ID\" NUMBER, 
                \"LOCATION\" SDO_GEOMETRY, 
                \"CUSTOMER_SEGMENT_NAME\" VARCHAR2(100), 
                \"YRS_RESIDENCE\" NUMBER, 
                \"YRS_CURRENT_EMPLOYER\" NUMBER, 
                \"WORK_EXPERIENCE\" NUMBER, 
                \"SEGMENT_ID\" NUMBER, 
                \"RENT_OWN\" VARCHAR2(40), 
                \"PET\" VARCHAR2(40), 
                \"NUM_MORTGAGES\" NUMBER, 
                \"NUM_CARS\" NUMBER, 
                \"MORTGAGE_AMT\" NUMBER,
                \"MARITAL_STATUS\" VARCHAR2(8), 
                \"LATE_MORT_RENT_PMTS\" NUMBER, 
                \"JOB_TYPE\" VARCHAR2(200), 
                \"INSUFF_FUNDS_INCIDENTS\" NUMBER,
                \"INCOME_LEVEL\" VARCHAR2(20), 
                \"INCOME\" NUMBER, 
                \"HOUSEHOLD_SIZE\" NUMBER, 
                \"GENDER\" VARCHAR2(20), 
                \"FULL_TIME\" VARCHAR2(40), 
                \"EDUCATION\" VARCHAR2(40), 
                \"CREDIT_BALANCE\" NUMBER, 
                \"COMMUTE_DISTANCE\" NUMBER, 
                \"AGE\" NUMBER, 
                \"LOC_LONG\" NUMBER, 
                \"LOC_LAT\" NUMBER, 
                \"PROMOTION_RESPONSE\" NUMBER)"
        },
        {
            "role":"user",
            "content":"Always use table alias and easy to read column names, only type Oracle SQL and nothing else to show movies that were streamed from customers in the United States"}]'
    , '$' returning clob pretty)  prompt FROM DUAL
    </copy>
    ```

## Task 4: The Effects of Cache (Profile Specific)

1. SHOWSQL Action (successful)

    ```
    <copy>
    select ai showsql movies with a runtime greater than 150
    </copy>
    ```

2. Rename Table 

    ```
    <copy>
    rename movies to movietemp;
    </copy>
    ```

3.  SHOWSQL Action (successful)

    ```
    <copy>
    select ai showsql movies with a runtime greater than 150
    </copy>
    ```

4.  RUNSQL (fails)

    ```
    <copy>
    select ai runsql movies with a runtime greater than 150
    </copy>
    ```

    ```
    <copy>
    Sorry, unfortunately a valid SELECT statement could not be generated for your natural language prompt. Here is some more information to help you further: 

    1. The Lord of the Rings: The Return of the King (2003) - 201 minutes
    2. The Godfather: Part II (1974) - 202 minutes
    3. Lawrence of Arabia (1962) - 216 minutes
    4. Gone with the Wind (1939) - 238 minutes
    5. Schindler's List (1993) - 195 minutes
    6. The Wolf of Wall Street (2013) - 180 minutes
    7. Titanic (1997) - 194 minutes
    8. The Dark Knight Rises (2012) - 165 minutes
    9. The Green Mile (1999) - 189 minutes
    10. The Hateful Eight (2015) - 187 minutes
    </copy>
    ```

5. Rename Table to Original Name

    ```
    <copy>
    rename movietemp to movies;
    </copy>
    ```

## Task 5: The Effects of Table, Column Names

1. Seed the Cache with SHOWSQL

    ```
    <copy>
    select ai showsql show movies with a runtime greater than 150
    </copy>
    ```
2. Rename Column

    ```
    <copy>
    alter table movies rename column runtime to test;
    </copy>
    ```

3. Re-run SHOWSQL (still cached)

    ```
    <copy>
    select ai showsql show movies with a runtime greater than 150
    </copy>
    ```

4. RUNSQL (fails)

    ```
    <copy>
    select ai runsql show movies with a runtime greater than 150
    </copy>
    ```

    ```
    <copy>
    Sorry, unfortunately a valid SELECT statement could not be generated for your natural language prompt. Here is some more information to help you further:
    </copy>
    ```

## Task 6: The Effects of Adding Comments

1. Add column comment

    ```
    <copy>
    COMMENT ON COLUMN movies.test IS 'This column contains runtime metrics';
    </copy>
    ```
2. Create and Set New Profile with Comment Attribute

    ```
    <copy>
    BEGIN
    dbms_cloud_ai.create_profile(
        profile_name => 'OPENAI_MOVIE2',
        attributes =>
            '{"provider": "openai",
            "credential_name": "OPENAI_CRED",
            "comments":true,
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

    ```
    <copy>
    BEGIN
    DBMS_CLOUD_AI.SET_PROFILE(
        profile_name => 'OPENAI_MOVIE2'
    );
    END;
    /
    </copy>
    ```
3. Run SHOWSQL

    ```
    <copy>
    select ai showsql show movies with a runtime metric greater than 150
    </copy>
    ```

4. Delete Profile, Rename Column, Remove Column Comment

    ```
    <copy>
    BEGIN
    DBMS_CLOUD_AI.DROP_PROFILE(
        profile_name => 'OPENAI_MOVIE2'
    );
    END;
    /
    alter table movies rename column test to runtime;
    comment on column movies.runtime is '';
    </copy>
    ```

## Task 7: Transform JSON for use in LLMs

Transform embedded JSON into structured views and columns to provide LLM with metadata that is easier to understand.  Please note some queries against the embedded JSON work, but are less reliable.

1. Create and Set Profile 

    ```
    <copy>
    BEGIN
        DBMS_CLOUD_AI.create_profile(
        profile_name => 'OPENAI_MOVIEJSON',
        attributes => '{"provider":"openai",
            "credential_name":"OPENAI_CRED",
            "comments":true,
            "object_list": [{"owner": "MOVIESTREAM", "name": "movie"},
                {"owner": "MOVIESTREAM", "name": "movie_crew"},
                {"owner": "MOVIESTREAM", "name": "movie_studio"},
                {"owner": "MOVIESTREAM", "name": "movie_genre"},
                {"owner": "MOVIESTREAM", "name": "movie_actors"},
                {"owner": "MOVIESTREAM", "name": "streams"},
                {"owner": "MOVIESTREAM", "name": "pizza_shop"},
                {"owner": "MOVIESTREAM", "name": "actors"},
                {"owner": "MOVIESTREAM", "name": "genre"},
                {"owner": "MOVIESTREAM", "name": "customer"}]
        }');
    END;
    /
    </copy>
    ```

    ```
    <copy>
    BEGIN
    DBMS_CLOUD_AI.SET_PROFILE(
        profile_name => 'OPENAI_MOVIEJSON'
    );
    END;
    /
    </copy>
    ```

2. RUNSQL (case sensitive, and must match exactly)

    ```
    <copy>
    select ai show movies from Marvel Studios studio -- case sensitive, and must match exactly
    </copy>
    ```

    ```
    <copy>
    SELECT M.TITLE AS MOVIE_TITLE, M.YEAR, M.OPENING_DATE, M.MAIN_SUBJECT, M.LIST_PRICE, M.URL, M.SUMMARY, M.RUNTIME, M.BUDGET, M.NUMBER_OF_VIEWS, M.GROSS_RECEIPTS
    FROM MOVIESTREAM.MOVIE M
    JOIN MOVIESTREAM.MOVIE_STUDIO MS ON M.MOVIE_ID = MS.MOVIE_ID
    WHERE MS.STUDIO = 'Marvel Studios'
    </copy>
    ```

3. RUNSQL

    ```
    <copy>
    select ai show who directed the most movies
    </copy>
    ```
    ```
    <copy>
    SELECT MC.NAME AS DIRECTOR, COUNT(MC.MOVIE_ID) AS NUM_MOVIES_DIRECTED
    FROM MOVIESTREAM.MOVIE_CREW MC
    GROUP BY MC.NAME
    ORDER BY NUM_MOVIES_DIRECTED DESC
    FETCH FIRST 1 ROWS ONLY
    </copy>
    ```

4. RUNSQL

    ```
    <copy>
    select ai show how many movies are Drama
    </copy>
    ```

## Task 8: Using Select AI in Applications

1.  Set Profile (use original profile)

    ```
    <copy>
    BEGIN
    DBMS_CLOUD_AI.SET_PROFILE(
        profile_name => 'OPENAI_MOVIE'
    );
    END;
    /
    </copy>
    ```

2. Insert into ... Select AI (fails)

    ```
    <copy>
    insert into prompts(showsql)
    select ai 'select ai show movies with a runtime greater than 150' from dual;
    </copy>
    ```

3.  Insert into ... DBMS\_CLOUD\_AI.GENERATE

    ```
    <copy>
    insert into prompts(showsql)
    select dbms_cloud_ai.generate(
        prompt => 'select ai show movies with a runtime greater than 150',
        profile_name => 'OPENAI_MOVIE',
        action          => 'showsql')
    from dual;
    commit;
    </copy>
    ```

4.  Insert PL/SQL Code 

    ```
    <copy>
    DECLARE
        l_prompt varchar2(4000);
        l_sql varchar2(4000);
    BEGIN
    l_prompt := 'select ai show movies with a runtime greater than 150';
    select dbms_cloud_ai.generate(
        prompt => l_prompt,
        profile_name => 'OPENAI_movie',
        action          => 'showsql') 
        into l_sql from dual;
    insert into prompts values(l_prompt, l_sql);
    commit;
    end;
    /
    </copy>
    ```

5.  Truncate Table 

    ```
    <copy>
    truncate table prompts;
    </copy>
    ```

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