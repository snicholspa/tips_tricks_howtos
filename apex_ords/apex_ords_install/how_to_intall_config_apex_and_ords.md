## **Introduction**

Install

## **Documentation Links**

[APEX Install](https://docs.oracle.com/en/database/oracle/apex/22.1/htmig/downloading-installing-apex.html#GUID-B5A5B38D-586C-488A-AE27-A168FAA28FEE)

[ORDS Install](https://docs.oracle.com/en/database/oracle/oracle-rest-data-services/22.2/ordig/installing-and-configuring-oracle-rest-data-services.html#GUID-B6661F35-3EE3-4CB3-9379-40D0B8E24635)

[Remove Previous Versions of APEX - 555624.1](https://support.oracle.com/cloud/faces/DocumentDisplay?id=555624.1)
[Remove Previous Versions of APEX - 558340.1](https://support.oracle.com/cloud/faces/DocumentDisplay?id=558340.1)

## **Step 1: SSH into Compute Instance**

	```
    <copy>
	ssh -i {ssh_private_key} opc@{compute_public_ip}
	<copy>
	```

## **Step 2: Install JAVA JDK into Compute Instance**

	```
    <copy>
	sudo yum install jdk-17.x86_64 
	java --version
	<copy>
	```

## **Step 3: Install Instant Client into Compute Instance and Verify**

	```
    <copy>
    sudo yum install oracle-instantclient-release-el8  
    sudo yum install oracle-instantclient-sqlplus
    sqlplus username/password@//[host]:[port]/[service_name]
	<copy>
	```

## **Step 4: Install ORDS into Compute Instance**

    This also creates linux ORACLE:OINSTALL user:group

	```
    <copy>
    sudo yum install ords
    ords --version
	<copy>
	```
