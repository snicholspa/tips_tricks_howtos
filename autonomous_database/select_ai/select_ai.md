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

    If you would like to see what existing ACL Priviledges exist, execute the following SQL Statement

    ```
    <copy>
    select a.host, b.principal, b.privilege, b.is_grant 
    from dba_network_acls a, dba_network_acl_privileges b
    where a.acl = b.acl; 
    </copy>
    ```

    For more details, see the [`DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE` PL/SQL Package](https://docs.oracle.com/en/database/oracle/oracle-database/23/arpls/DBMS_NETWORK_ACL_ADMIN.html#GUID-254AE700-B355-4EBC-84B2-8EE32011E692) documentation.


2. Grant Non-Admin User Permission to PL/SQL Packages

    As the user **ADMIN**, issue the following SQL Statements

    ```
    <copy>
    grant execute on DBMS_CLOUD to moviestream;
    grant execute on DBMS_CLOUD_AI to moviestream;
    </copy>
    ```

3. Create Credential to Access AI Providers

    As the user your granted access to the PL/SQL Packages in Step 2, issue the following PL/SQL Code.

    ```
    <copy>
    BEGIN
      DBMS_CLOUD.CREATE_CREDENTIAL(
        credential_name => 'WEBINAR_COHERE_CRED',
        username => '{cohere_user}',
        password => '{cohere_api_key}');
    END;
    /    
    </copy>
    ```

    If you would like to see what existing ACL Priviledges exist, execute the following SQL Statement

    ```
    <copy>
    select * from user_credentials;  
    </copy>
    ```


    For more details, see the [`DBMS_CLOUD.CREATE_CREDENTIAL` PL/SQL Package](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A) documentation.

4. Create Select AI Profile

    ```
    <copy>
    </copy>
    ```


## Task 2: Basic Usage

1. Set Select AI Profile for Current Session

    ```
    <copy>
    </copy>
    ```

2. Select AI Chat Examples

    ```
    <copy>
    </copy>
    ```

3. Select AI RUNSQL Examples

    ```
    <copy>
    </copy>
    ```

4. Select AI PL/SQL Package DBMS\_CLOUD\_AI.GENERATE

    ```
    <copy>
    </copy>
    ```

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