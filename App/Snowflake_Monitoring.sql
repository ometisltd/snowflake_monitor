USE ROLE ACCOUNTADMIN;

CREATE WAREHOUSE QLIK_MONITORING_WH WITH 
    WAREHOUSE_TYPE              = 'STANDARD'
    WAREHOUSE_SIZE              = 'XSMALL'
    MAX_CLUSTER_COUNT           = 1
    MIN_CLUSTER_COUNT           = 1
    SCALING_POLICY              = 'ECONOMY'
    AUTO_SUSPEND                = 30 
    INITIALLY_SUSPENDED         = TRUE
    COMMENT                     = 'This warehouse is exclusively to be used for the processing of the Monitoring Schema'
    ENABLE_QUERY_ACCELERATION   = FALSE
;


CREATE ROLE QLIK_MONITORING_ROLE;
GRANT ROLE QLIK_MONITORING_ROLE TO ROLE ACCOUNTADMIN;

CREATE USER QLIK_MONITORING PASSWORD = 'replace-with-password' DEFAULT_ROLE = QLIK_MONITORING_ROLE;

GRANT USAGE   on WAREHOUSE QLIK_MONITORING_WH to ROLE QLIK_MONITORING_ROLE;
GRANT OPERATE on WAREHOUSE QLIK_MONITORING_WH to ROLE QLIK_MONITORING_ROLE;

GRANT IMPORTED PRIVILEGES ON DATABASE SNOWFLAKE TO ROLE QLIK_MONITORING_ROLE;
GRANT MONITOR USAGE ON ACCOUNT TO ROLE QLIK_MONITORING_ROLE; 
