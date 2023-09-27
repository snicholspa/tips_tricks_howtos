## **Introduction**

PL/SQL SDK for OCI 

## **Documentation Links**

**OCI SDKs:** <https://docs.oracle.com/en-us/iaas/Content/API/Concepts/sdks.htm>

**PL/SQL SDK for OCI:** <https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/plsqlsdk.htm>

## **PL/SQL SDK Packages and Types**

You can view all the DBMS\_CLOUD\_OCI\_ Packages and Types in the documentation link above or from within Database Actions -> SQL or SQL Develeoper under the user **C##CLOUD$SERVICE**.

1.  Packages

    ![](images/packages.png)

2.  Types

    ![](images/types.png)

## **CREDENTIAL for PL/SQL SDK**

**DBMS\_CLOUD.CREATE\_CREDENTIAL:** <https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/dbms-cloud-subprograms.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A>

	```
    <copy>
    BEGIN
       DBMS_CLOUD.CREATE_CREDENTIAL (
           credential_name => 'OCI_KEY_CRED',
           user_ocid       => 'ocid1.user.oc1..aaa.........................6a',
           tenancy_ocid    => 'ocid1.tenancy.oc1..aaa.....................3hq',
           private_key     => '-----BEGIN RSA PRIVATE KEY-----
    MIIEpQIBA.........vLQE=
    -----END RSA PRIVATE KEY-----',
           fingerprint     => '3b:0.....................................8:90');
    END;
    /
	</copy>
	```

## **PL/SQL SDK Grants**

Non-ADMIN users in an Autonomous Database instance on Shared Exadata requires grants to the DBMS\_CLOUD\_OCI\_ Packages and Types

	```
    <copy>
    grant execute on DBMS_CLOUD_OCI_ID_IDENTITY to webinar;
    grant execute on dbms_cloud_oci_id_identity_get_compartment_response_t to webinar;
    grant execute on dbms_cloud_oci_identity_compartment_t to webinar;
    grant execute on dbms_cloud_oci_identity_compartment_tbl to webinar;
    grant execute on dbms_cloud_oci_id_identity_list_compartments_response_t to webinar;
	</copy>
	```

## **PL/SQL SDK Sample Code**

**PL/SQL SDK Examples:** <https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/plsqlsdkexamples.htm>


1.  get\_compartment and list\_compartments

	```
    <copy>
    create or replace procedure load_compartment_hier as
        -- Constants
        tenancy_ocid varchar(100)    := 'ocid1.tenancy.oc1..a...........q';
        home_region varchar(50)      := 'us-ashburn-1';
        -- Get Compartment
        get_response        dbms_cloud_oci_id_identity_get_compartment_response_t;
        get_response_body   dbms_cloud_oci_identity_compartment_t;
        -- List Compartment
        response_body       dbms_cloud_oci_identity_compartment_tbl;
        response            dbms_cloud_oci_id_identity_list_compartments_response_t;
        json_obj            json_object_t;
        defined_tags_obj    json_object_t;
        created_by          varchar(200);
    begin
        dbms_output.put_line(SYSTIMESTAMP);
        -- Truncate Compartments Table
        BEGIN
            execute immediate 'truncate table compartments';
        END;
        -- Get Tenancy Details
        get_response := DBMS_CLOUD_OCI_ID_IDENTITY.GET_COMPARTMENT(
                            credential_name => 'OCI_KEY_CRED',
                            compartment_id => tenancy_ocid,
                            region => home_region);
        get_response_body := get_response.response_body;
        -- Response status code
        dbms_output.put_line('GET Status Code: ' || CHR(10) || '------------' || CHR(10) || get_response.status_code);
        dbms_output.put_line(CHR(10));
        BEGIN
            -- Insert into Table
            INSERT INTO COMPARTMENTS VALUES (get_response_body.id,get_response_body.name,get_response_body.description,get_response_body.time_created,'tenant_creator',null);
            commit;
        END;
        -- Get All Compartments in Tenancy
        response := dbms_cloud_oci_id_identity.list_compartments(
                        credential_name => 'OCI_KEY_CRED',
                        compartment_id => tenancy_ocid,
                        region => home_region,
                        access_level => 'ANY',
                        compartment_id_in_subtree => 1, -- 0 is false, 1 is true
                        lifecycle_state => 'ACTIVE',
                        sort_by => 'NAME',
                        sort_order => 'ASC');
        response_body := response.response_body;
        -- Response status code
        dbms_output.put_line('LIST Status Code: ' || CHR(10) || '------------' || CHR(10) || response.status_code || ' - ' || response_body.count);
        dbms_output.put_line(CHR(10));
        -- Loop Through Compartments and Insert into Table
        for i in 1 .. response_body.count loop
            -- Check if Oracle-Tags exist
            defined_tags_obj := json_object_t.parse(response_body(i).defined_tags.to_string());
            IF defined_tags_obj.has('Oracle-Tags') THEN
                created_by := defined_tags_obj.get_Object('Oracle-Tags').get_String('CreatedBy');
            ELSE
                created_by := 'Not Avaialable';
            END IF;
            -- Insert into Table
            BEGIN
                INSERT INTO COMPARTMENTS VALUES (response_body(i).id,response_body(i).name,response_body(i).description,response_body(i).time_created,created_by,response_body(i).compartment_id);
                commit;
            END;
         end loop;
         dbms_output.put_line(SYSTIMESTAMP);
    end;
	</copy>
	```

## **Python SDK Sample Code**

**Python SDK:** <https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/pythonsdk.htm>

1.  get\_compartment and list\_compartments

	```
    <copy>
    import oci
    import os
    from treelib import Node, Tree
    import csv
    import time

    start_time_all = time.time()

    # OCI Config Details
    tenancy_ocid = "ocid1.tenancy.oc1..aa............q"
    config = {
        "user": "ocid1.user.oc1..a...................a",
        "key_file": "C:\path\to\private_key.pem",
        "fingerprint": "3............................0",
        "tenancy": tenancy_ocid,
        "region": "us-ashburn-1"
    }

    # Initialize Tree
    compartment_tree = Tree()

    # Compartment CSV File
    compcsvHeaders = ['COMPARTMENT_ID','COMPARTMENT_NAME','COMPARTMENT_DESCRIPTION','TIME_CREATED','CREATED_BY','COMPARTMENT_PARENT']

    # Initialize service client with default config file
    identity_client = oci.identity.IdentityClient(config)

    # Get ROOT Compartment
    get_compartment_response = identity_client.get_compartment(compartment_id=tenancy_ocid)
    # Add ROOT Compartment Tree with NO parent
    compartment_tree.create_node(get_compartment_response.data.name, get_compartment_response.data.id, data=(get_compartment_response.data.description,str(get_compartment_response.data.time_created),'tenant_creator'))

    # Get Compartments under ROOT
    list_compartments_response = identity_client.list_compartments(
        compartment_id=tenancy_ocid,
        lifecycle_state="ACTIVE", #CREATING,ACTIVE,INACTIVE,DELETING,DELETED
        access_level="ANY",
        compartment_id_in_subtree=True,
        sort_by="TIMECREATED", #TIMECREATED,NAME
        sort_order="ASC")
    # Loop through Compartments and add to Tree
    for compartment in list_compartments_response.data:
        get_compartment_response2 = identity_client.get_compartment(compartment_id=compartment.id)
        #print(get_compartment_response2.data)
        print(compartment)
        if len(compartment.defined_tags) > 0:
            createdby = compartment.defined_tags['Oracle-Tags']['CreatedBy']
        else:
            createdby = 'Not Available'
        compartment_tree.create_node(compartment.name, compartment.id, parent=compartment.compartment_id, data=(compartment.description,str(compartment.time_created),createdby))

    # Show Tree
    compartment_tree.show()
    # Save Tree
    # compartment_tree.save2file(filename="tree.txt")

    # Write Compartment Tree to CSV File
    with open('compartments.csv', 'w', newline='') as compcsvfile: 
        compcsvwriter = csv.writer(compcsvfile,quoting=csv.QUOTE_MINIMAL)           
        compcsvwriter.writerow(compcsvHeaders)
        for node in compartment_tree.all_nodes_itr():
            compcsvwriter.writerow([node.identifier,node.tag,node.data[0],node.data[1],node.data[2],node.predecessor(compartment_tree.identifier)])
            
    duration_all = time.time() - start_time_all
    print('\nIn {} seconds\n'.format(duration_all))    
	</copy>
	```

## **DBMS_CLOUD Manual Install into non-ADBs**

The DBMS\_CLOUD package provides a comprehensive support for working with data in Object Storage starting with Oracle Database 19c and later releases. However, this package is not pre-installed with Oracle Database. You need to manually install the DBMS\_CLOUD package and also configure users or roles to use this package.

For information on installing the DBMS\_CLOUD package and configuring users/roles, see the MOS-NOTE with Doc ID 2748362.1.

**Database 23c Documentation:** <https://docs.oracle.com/en/database/oracle/oracle-database/23/arpls/DBMS_CLOUD.html>

**Doc ID 2748362.1:** <https://support.oracle.com/rs?type=doc&id=2748362.1>
