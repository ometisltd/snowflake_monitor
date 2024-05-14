> ![Badge](https://img.shields.io/badge/Ometis-f47923) ![Badge](https://img.shields.io/badge/Version-v.1.0.0-f47923) 


**Warning**
> This application is _community supported_. This means that you should not contact
> Qlik Support for help with this app. See below for additional information
> on how to raise issues on this repository to ask for help.

# Snowflake Monitoring Qlik Application


> **Note**
> This application is one of a set of community built and supported monitoring apps for Qlik Cloud.
> For links to all monitoring apps, visit the [Qlik Cloud Monitoring Apps](https://github.com/qlik-oss/qlik-cloud-monitoring-apps) repository.



## Installing / Updating

### Prerequisite 

- Setup Snowflake Role/User & Warehouse using this [script](/App/Snowflake_Monitoring.sql).


### Installation
* This application can be installed via an interactive Qlik Application Automation [installer](https://community.qlik.com/t5/Official-Support-Articles/Qlik-Cloud-Monitoring-Apps-Workflow-Guide/ta-p/2134140).

* Create Snowflake Data Connection In the Space the App was installed with the installer.
    * [Create a Snowflake Connection](https://help.qlik.com/en-US/connectors/Subsystems/ODBC_connector_help/Content/Connectors_ODBC/Snowflake/Create-Snowflake-connection.htm) Using the ```USER: QLIK_MONITORING | ROLE: QLIK_MONITORING_ROLE | WAREHOUSE: MONITORING_WH``` created using the SQL script.
    * The Validate the connection and save in the space with the name: SNOWFLAKE_MONITORING_DATA .
    * ![Snowflake Settings](/Images/Snowflake%20Connection%20Screenshot.png)

* Create the REST Connection 
    * Use URL https://help.qlik.com/en-US/connectors/Subsystems/ODBC_connector_help/Content/Connectors_ODBC/Snowflake/Create-Snowflake-connection.htm
    * Allow WITH CONNECTION
    * Make sure its a GET Request
    * Name the connection REST Monitoring Versioning API#
    * ![REST Settings](/Images/Rest%20Versioning%20Connection%20Screenshot.png)

    






## App Summary

In an effort to assist Qlik customers in cost management, Qlik has collaborated with Ometis to develop a cutting-edge cloud platform analytics app, specifically tailored for Snowflake. Leveraging the robust capabilities of Qlik's Associative Engine, the app uncovers invaluable insights within Snowflake's intricate metadata that traditional query-based tools, including Snowflake's built-in reports, simply cannot unveil.


## Overview

![Overview Page](/Images/Overview%20Page%20Screenshot.jpg)

The initial focal point of the Cloud Platform Analytics for Snowflake dashboard offers an overview of key KPIs being tracked, along with a glimpse of your contract status to ensure spending is aligned. By simply selecting a KPI of interest, you can delve deeper into your Snowflake environment.

Note: This dashboard is compatible with both the Standard and Enterprise versions of Snowflake.

## Cost
![Costs Page](/Images/Cost%20Page%20Screenshot.jpg)

The Costs view provides a detailed analysis of your expenses over time, allowing you to compare them with previous periods. Dive deep into your costs by examining Users, Databases, Roles, and more to uncover potential cost-saving opportunities within your Snowflake environment. Additionally, explore a value growth perspective to identify areas where costs are either expanding or contracting across key dimensions.

## Usage
![Usage Page](/Images/Usage%20Page%20Screenshot.jpg)

The Usage dashboard delves into your warehouse and workload activities, analysing query volumes over time to pinpoint peak usage periods within your warehouses. This insight allows for identifying opportunities to streamline queries across fewer warehouses in your Snowflake environment. Additionally, you can track your most engaged users and the frequency of their queries, providing valuable information on their activity patterns.

## Inventory
![Inventory Page](/Images/Inventory%20Page%20Screenshot.jpg)

The Inventory sheet offers a comprehensive view of your databases, schemas, tables and views, providing an useful overview of your data and tracking its growth trends. Users can easily filter through their environment to see which inventory items they have access to. Additionally, uncovering unused databases within this view can potentially identify areas where storage costs can be optimised.

## Security
![Security Page](/Images/Security%20Page%20Screenshot.jpg)

The Security view provides a comprehensive overview of your roles, users, and RBAC permissions, allowing you to identify who has access to specific items. Leveraging the power of the Qlik Associative Engine, this feature enables easy filtering of database objects to understand access control. Additionally, you can track login history trends to monitor how users interact with your system.

## Performace
![Performance Page](/Images/Performance%20Page%20Screenshot.jpg)

Performance metrics within Snowflake are crucial for optimising query performance. By analysing which queries utilise caching and identifying where queries are spilling to remote or local storage, you can effectively optimise your warehouse sizes. Additionally, monitoring warehouse suspend times can help uncover further cost-saving opportunities within your Snowflake environment.


## Ometis Webinar

If you want to find out more, checkout the [Ometis Webinar](https://www.youtube.com/watch?v=5DPVsJauI4I&t=1s), hosted by Neil Thorne, Ryan Peachey & David Tomlins.


## Support policy

This app is provided as-is and is not supported by Qlik. Over time, the APIs and
metrics used by the app may change, so it is advised to monitor this repository
for updates, and to update the app promptly when new versions are available.

If you have issues while using this app, support is provided on a best-efforts
basis by contributors to this project.

If you have an issue:

* Review the FAQ section in this readme to see if your issue is a common one
* Review open and closed [issues](/../../issues)
* Open a [new issue](/../../issues/new), following the issue template

If you are able to resolve the issue, then close your issue with the resolution,
and if you feel inclined, open a PR with your proposed changes so that we can
consider including the improvement in the next release of the app.

Thank you for your support!