## **Introduction**

Install and Configure a Local Data Gateway to connect and model Snowflake in an RPD using the BI Client Modeler (admintool.exe)

## **Documentation Links**

**Supported Data Sources:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/supported-data-sources.html>

![](images/image1.png)

![](images/image2.png)

**Snowflake Data Model:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/create-data-model-connections-snowflake-data-warehouse.html#GUID-3C8367BE-8CCF-4ECF-BD71-103C37F5C59A>

![](images/image3.png)

**Local Connection to Snowflake:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/create-data-model-connections-snowflake-data-warehouse.html#GUID-C907A44B-76E5-4D1E-B7E1-A1ABF1C2D58E>

![](images/image4.png)

**Configure and Register Data Gateway for Reporting:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/configure-and-register-data-gateway-reporting.html#GUID-50AC9767-2B31-46FA-835F-52A287560D17>


## **Step 1: Install Local Data Gateway**

**Docs Link:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/you-start-data-gateway.html#GUID-47C8EFE0-A652-49AA-BBB3-89080B622D47>

1.  Download Data Gateway

    a.  <http://www.oracle.com/pls/topic/lookup?ctx=cloud&id=oac_data_sync>

    ![](images/image5.png)

2.  Unzip/Install Binaries to **C:\\Oracle\\DataGateway61**

    ![](images/image6.png)

## **Step 2: Install Snowflake JAR**

1.  Download JAR file from <https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/>

    a.  <https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/3.9.2/snowflake-jdbc-3.9.2.jar>

2.  Install JAR file into Data Gateway install

    a.  Create directory C:\\Oracle\\DataGateway61\\**thirdpartyDrivers**

    b.  Copy **snowflake-jdbc-3.9.2.jar** into ...\\**thirdpartyDrivers\\**

    ![](images/image7.png)

## **Step 3: Start and Configure Local Data Gateway**

**Doc Link:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/configure-and-register-data-gateway-visualization.html#GUID-66508027-EE50-44F9-B0DE-A535923F0560>

1.  Start Local Data Gateway

    a.  Double-click on **C:\\Oracle\\DataGateway61\\datagateway.exe**

2.  Enter OAC URL

3.  Click **Generate/Re-Generate Key**

4.  **Copy to Clipboard** the Key

    ![](images/image8.png)

5.  Log into OAC, access the **Console** and then **Remote Data Connectivity**

    a.  Click **Add**

    b.  Paste Key into **Public Key**

    c.  Click **OK**

    ![](images/image9.png

    ![](images/image10.png)

6.  Enable and Test Local Data Gateway

    a.  Switch back to the Local Data Gateway

    b.  Click **Enable**, **Test** and **Save**

    ![](images/image11.png)

7.  Obtain Local Data Gateway Port from (the port may change over time) **C:\\Users\\{win_username}\\AppData\\Local\\Temp\\DataGateway\\ports.properties**

    ![](images/image12.png)

 ## **Step 4: BI Client Modeler Setup**

**Doc Link:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/configure-and-register-data-gateway-reporting.html#GUID-50AC9767-2B31-46FA-835F-52A287560D17>

1.  Open Admin Tool and **Load Java Datasources**

    a.  Click **File**, **Load Java Datasources**

    ![](images/image13.png)

    b.  Enter **localhost** and port from **port.properties,** enter **dummy** for user

    ![](images/image14.png)

    c.  Click **OK**

    > ![](images/image15.png)

## **Step 5: Connect and Model Snowflake**

**Doc Link:** <https://docs.oracle.com/en/cloud/paas/analytics-cloud/acsds/create-data-model-connections-snowflake-data-warehouse.html#GUID-C907A44B-76E5-4D1E-B7E1-A1ABF1C2D58E>

1.  Create a **New Database**

    ![](images/image16.png)

2.  Enter **Name** and select **Database type**

    ![](images/image17.png)

3.  Select the **Connection Pools** and click the **Add**

    a.  Enter **Name**

    b.  Select **JDBC (Direct Driver)**

    c.  Enable **Require fully Qualified table names**

    d.  Enter **Connect String**

        i.  jdbc:snowflake://xxxx.snowflakecomputing.com?db=ODEV&warehouse=xxxxxx&schema=xxxxxx

    e.  Enter **User name**

    f.  Enter **Password**

    ![](images/image18.png)

    g.  Select the **Miscellaneous** Tab

    h.  Clear **Javads Server URL**

    i.  Enter **net.snowflake.client.jdbc.SnowflakeDriver** for Driver Class

    j.  **JSE SQL Overe HTTP** set to **False**

    k.  Clear **RDC Version**

    l.  Click **OK**, then **OK**

    ![](images/image19.png)

    ![](images/image20.png)

4.  Import Metadata

    a.  Right-click, select **Import Metadata**

    ![](images/image21.png)

    b.  Click **Next**

    ![](images/image22.png)

    c.  Select desired tables

    ![](images/image23.png)

    ![](images/image24.png)

## **Step 6: Upload Model in OAC and Test in DV**

![](images/image25.png)

![](images/image26.png)
