-- Title:
-- SHOP user creation script

-- Instruction:
-- Run script before using database project. 
-- to create Oracle user to map on.

-- USER SQL
CREATE USER "SHOP" IDENTIFIED BY "{Password}"

-- TABLE SPACES
DEFAULT TABLESPACE "{Tablespace}"
TEMPORARY TABLESPACE "{Tablespace}";

-- QUOTAS
ALTER USER "SHOP" QUOTA UNLIMITED ON "{Tablespace}";

-- ROLES
GRANT "DBA" TO "SHOP" ;
GRANT "DV_MONITOR" TO "SHOP" ;
GRANT "CTXAPP" TO "SHOP" ;
GRANT "DV_AUDIT_CLEANUP" TO "SHOP" ;
GRANT "SPATIAL_CSW_ADMIN" TO "SHOP" ;
GRANT "APEX_GRANTS_FOR_NEW_USERS_ROLE" TO "SHOP" ;
GRANT "WFS_USR_ROLE" TO "SHOP" ;
GRANT "EM_EXPRESS_ALL" TO "SHOP" ;
GRANT "WM_ADMIN_ROLE" TO "SHOP" ;
GRANT "OLAP_USER" TO "SHOP" ;
GRANT "OLAP_XS_ADMIN" TO "SHOP" ;
GRANT "DV_SECANALYST" TO "SHOP" ;
GRANT "CSW_USR_ROLE" TO "SHOP" ;
GRANT "XS_CACHE_ADMIN" TO "SHOP" ;
GRANT "GDS_CATALOG_SELECT" TO "SHOP" ;
GRANT "SCHEDULER_ADMIN" TO "SHOP" ;
GRANT "PROVISIONER" TO "SHOP" ;
GRANT "AUDIT_ADMIN" TO "SHOP" ;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO "SHOP" ;
GRANT "DV_REALM_RESOURCE" TO "SHOP" ;
GRANT "AQ_ADMINISTRATOR_ROLE" TO "SHOP" ;
GRANT "DELETE_CATALOG_ROLE" TO "SHOP" ;
GRANT "XDB_WEBSERVICES" TO "SHOP" ;
GRANT "DV_PUBLIC" TO "SHOP" ;
GRANT "LBAC_DBA" TO "SHOP" ;
GRANT "OPTIMIZER_PROCESSING_RATE" TO "SHOP" ;
GRANT "RECOVERY_CATALOG_USER" TO "SHOP" ;
GRANT "DV_DATAPUMP_NETWORK_LINK" TO "SHOP" ;
GRANT "GSMUSER_ROLE" TO "SHOP" ;
GRANT "GATHER_SYSTEM_STATISTICS" TO "SHOP" ;
GRANT "LOGSTDBY_ADMINISTRATOR" TO "SHOP" ;
GRANT "GSM_POOLADMIN_ROLE" TO "SHOP" ;
GRANT "DV_ADMIN" TO "SHOP" ;
GRANT "HS_ADMIN_ROLE" TO "SHOP" ;
GRANT "XS_SESSION_ADMIN" TO "SHOP" ;
GRANT "DV_GOLDENGATE_ADMIN" TO "SHOP" ;
GRANT "IMP_FULL_DATABASE" TO "SHOP" ;
GRANT "DV_XSTREAM_ADMIN" TO "SHOP" ;
GRANT "DV_PATCH_ADMIN" TO "SHOP" ;
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO "SHOP" ;
GRANT "EJBCLIENT" TO "SHOP" ;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO "SHOP" ;
GRANT "JMXSERVER" TO "SHOP" ;
GRANT "OLAP_DBA" TO "SHOP" ;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO "SHOP" ;
GRANT "JAVAIDPRIV" TO "SHOP" ;
GRANT "SELECT_CATALOG_ROLE" TO "SHOP" ;
GRANT "JAVADEBUGPRIV" TO "SHOP" ;
GRANT "CONNECT" TO "SHOP" ;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO "SHOP" ;
GRANT "OEM_MONITOR" TO "SHOP" ;
GRANT "APEX_ADMINISTRATOR_ROLE" TO "SHOP" ;
GRANT "GSMADMIN_ROLE" TO "SHOP" ;
GRANT "AQ_USER_ROLE" TO "SHOP" ;
GRANT "JAVAUSERPRIV" TO "SHOP" ;
GRANT "XDB_SET_INVOKER" TO "SHOP" ;
GRANT "RECOVERY_CATALOG_OWNER" TO "SHOP" ;
GRANT "JAVA_ADMIN" TO "SHOP" ;
GRANT "DBFS_ROLE" TO "SHOP" ;
GRANT "PDB_DBA" TO "SHOP" ;
GRANT "DV_GOLDENGATE_REDO_ACCESS" TO "SHOP" ;
GRANT "CDB_DBA" TO "SHOP" ;
GRANT "JAVASYSPRIV" TO "SHOP" ;
GRANT "HS_ADMIN_SELECT_ROLE" TO "SHOP" ;
GRANT "AUDIT_VIEWER" TO "SHOP" ;
GRANT "RESOURCE" TO "SHOP" ;
GRANT "DV_OWNER" TO "SHOP" ;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO "SHOP" ;
GRANT "EXECUTE_CATALOG_ROLE" TO "SHOP" ;
GRANT "DV_ACCTMGR" TO "SHOP" ;
GRANT "DV_REALM_OWNER" TO "SHOP" ;
GRANT "EXP_FULL_DATABASE" TO "SHOP" ;
GRANT "DV_STREAMS_ADMIN" TO "SHOP" ;
GRANT "JAVA_DEPLOY" TO "SHOP" ;
GRANT "SPATIAL_WFS_ADMIN" TO "SHOP" ;
GRANT "XS_NAMESPACE_ADMIN" TO "SHOP" ;
GRANT "XS_RESOURCE" TO "SHOP" ;
GRANT "ORDADMIN" TO "SHOP" ;
GRANT "AUTHENTICATEDUSER" TO "SHOP" ;
GRANT "CAPTURE_ADMIN" TO "SHOP" ;
GRANT "OEM_ADVISOR" TO "SHOP" ;
GRANT "XDBADMIN" TO "SHOP" ;
GRANT "EM_EXPRESS_BASIC" TO "SHOP" ;

-- SYSTEM PRIVILEGES
GRANT CREATE JOB TO "SHOP" ;
GRANT DROP ANY CONTEXT TO "SHOP" ;
GRANT UPDATE ANY CUBE TO "SHOP" ;
GRANT DROP ANY TRIGGER TO "SHOP" ;
GRANT DROP ANY SQL TRANSLATION PROFILE TO "SHOP" ;
GRANT MANAGE ANY FILE GROUP TO "SHOP" ;
GRANT ALTER PUBLIC DATABASE LINK TO "SHOP" ;
GRANT MANAGE FILE GROUP TO "SHOP" ;
GRANT ALTER ANY INDEX TO "SHOP" ;
GRANT DROP ANY SEQUENCE TO "SHOP" ;
GRANT ALTER PROFILE TO "SHOP" ;
GRANT INHERIT ANY PRIVILEGES TO "SHOP" ;
GRANT UNDER ANY TABLE TO "SHOP" ;
GRANT KEEP SYSGUID TO "SHOP" ;
GRANT CREATE ASSEMBLY TO "SHOP" ;
GRANT DROP ANY LIBRARY TO "SHOP" ;
GRANT ALTER ANY EDITION TO "SHOP" ;
GRANT CREATE ROLE TO "SHOP" ;
GRANT CREATE LIBRARY TO "SHOP" ;
GRANT DROP ROLLBACK SEGMENT TO "SHOP" ;
GRANT CREATE TRIGGER TO "SHOP" ;
GRANT ALTER ANY PROCEDURE TO "SHOP" ;
GRANT ADMINISTER DATABASE TRIGGER TO "SHOP" ;
GRANT DROP ANY MEASURE FOLDER TO "SHOP" ;
GRANT CREATE ANY PROCEDURE TO "SHOP" ;
GRANT ALTER ANY OUTLINE TO "SHOP" ;
GRANT EXECUTE ANY INDEXTYPE TO "SHOP" ;
GRANT CREATE ANY DIRECTORY TO "SHOP" ;
GRANT ALTER ANY RULE SET TO "SHOP" ;
GRANT USE ANY SQL TRANSLATION PROFILE TO "SHOP" ;
GRANT ALTER ANY MINING MODEL TO "SHOP" ;
GRANT DEBUG CONNECT SESSION TO "SHOP" ;
GRANT LOGMINING TO "SHOP" ;
GRANT CREATE ANY MINING MODEL TO "SHOP" ;
GRANT ALTER SESSION TO "SHOP" ;
GRANT CREATE MATERIALIZED VIEW TO "SHOP" ;
GRANT CREATE PLUGGABLE DATABASE TO "SHOP" ;
GRANT MERGE ANY VIEW TO "SHOP" ;
GRANT CREATE ANY INDEX TO "SHOP" ;
GRANT CREATE DIMENSION TO "SHOP" ;
GRANT EXECUTE ANY RULE SET TO "SHOP" ;
GRANT CREATE SQL TRANSLATION PROFILE TO "SHOP" ;
GRANT ALTER ANY MATERIALIZED VIEW TO "SHOP" ;
GRANT AUDIT SYSTEM TO "SHOP" ;
GRANT CREATE OPERATOR TO "SHOP" ;
GRANT MANAGE ANY QUEUE TO "SHOP" ;
GRANT ALTER ANY SQL PROFILE TO "SHOP" ;
GRANT GRANT ANY OBJECT PRIVILEGE TO "SHOP" ;
GRANT CREATE INDEXTYPE TO "SHOP" ;
GRANT AUDIT ANY TO "SHOP" ;
GRANT SYSKM TO "SHOP" ;
GRANT DEBUG ANY PROCEDURE TO "SHOP" ;
GRANT CREATE ANY MEASURE FOLDER TO "SHOP" ;
GRANT CREATE ANY SEQUENCE TO "SHOP" ;
GRANT CREATE MEASURE FOLDER TO "SHOP" ;
GRANT UPDATE ANY CUBE BUILD PROCESS TO "SHOP" ;
GRANT CREATE VIEW TO "SHOP" ;
GRANT ALTER DATABASE LINK TO "SHOP" ;
GRANT ALTER ANY ASSEMBLY TO "SHOP" ;
GRANT ALTER ANY SQL TRANSLATION PROFILE TO "SHOP" ;
GRANT CREATE ANY EVALUATION CONTEXT TO "SHOP" ;
GRANT SELECT ANY MINING MODEL TO "SHOP" ;
GRANT DELETE ANY CUBE DIMENSION TO "SHOP" ;
GRANT ALTER ANY TABLE TO "SHOP" ;
GRANT CREATE SESSION TO "SHOP" ;
GRANT CREATE RULE TO "SHOP" ;
GRANT BECOME USER TO "SHOP" ;
GRANT SELECT ANY CUBE BUILD PROCESS TO "SHOP" ;
GRANT SELECT ANY TABLE TO "SHOP" ;
GRANT INSERT ANY MEASURE FOLDER TO "SHOP" ;
GRANT CREATE ANY SQL PROFILE TO "SHOP" ;
GRANT FORCE ANY TRANSACTION TO "SHOP" ;
GRANT DELETE ANY TABLE TO "SHOP" ;
GRANT ALTER ANY SEQUENCE TO "SHOP" ;
GRANT SELECT ANY CUBE DIMENSION TO "SHOP" ;
GRANT CREATE ANY EDITION TO "SHOP" ;
GRANT CREATE EXTERNAL JOB TO "SHOP" ;
GRANT EM EXPRESS CONNECT TO "SHOP" ;
GRANT DROP ANY MATERIALIZED VIEW TO "SHOP" ;
GRANT CREATE ANY CUBE BUILD PROCESS TO "SHOP" ;
GRANT FLASHBACK ANY TABLE TO "SHOP" ;
GRANT DROP ANY RULE SET TO "SHOP" ;
GRANT BACKUP ANY TABLE TO "SHOP" ;
GRANT ALTER ANY CUBE TO "SHOP" ;
GRANT CREATE CREDENTIAL TO "SHOP" ;
GRANT CREATE TABLE TO "SHOP" ;
GRANT EXECUTE ANY LIBRARY TO "SHOP" ;
GRANT DROP ANY OUTLINE TO "SHOP" ;
GRANT EXECUTE ASSEMBLY TO "SHOP" ;
GRANT CREATE ANY DIMENSION TO "SHOP" ;
GRANT DROP ANY TABLE TO "SHOP" ;
GRANT ADMINISTER KEY MANAGEMENT TO "SHOP" ;
GRANT ALTER ANY CLUSTER TO "SHOP" ;
GRANT EXECUTE ANY CLASS TO "SHOP" ;
GRANT ALTER ANY CUBE BUILD PROCESS TO "SHOP" ;
GRANT CREATE ANY CREDENTIAL TO "SHOP" ;
GRANT DROP ANY DIMENSION TO "SHOP" ;
GRANT SYSBACKUP TO "SHOP" ;
GRANT CREATE ANY RULE SET TO "SHOP" ;
GRANT SELECT ANY SEQUENCE TO "SHOP" ;
GRANT UNDER ANY TYPE TO "SHOP" ;
GRANT MANAGE TABLESPACE TO "SHOP" ;
GRANT DROP ANY OPERATOR TO "SHOP" ;
GRANT CREATE ANY OPERATOR TO "SHOP" ;
GRANT EXEMPT IDENTITY POLICY TO "SHOP" ;
GRANT CREATE TYPE TO "SHOP" ;
GRANT CREATE TABLESPACE TO "SHOP" ;
GRANT SELECT ANY TRANSACTION TO "SHOP" ;
GRANT DELETE ANY MEASURE FOLDER TO "SHOP" ;
GRANT CREATE ANY CUBE TO "SHOP" ;
GRANT LOCK ANY TABLE TO "SHOP" ;
GRANT CREATE EVALUATION CONTEXT TO "SHOP" ;
GRANT DROP ANY TYPE TO "SHOP" ;
GRANT ADVISOR TO "SHOP" ;
GRANT CREATE PUBLIC DATABASE LINK TO "SHOP" ;
GRANT ANALYZE ANY TO "SHOP" ;
GRANT DROP ANY RULE TO "SHOP" ;
GRANT INSERT ANY CUBE DIMENSION TO "SHOP" ;
GRANT CREATE ROLLBACK SEGMENT TO "SHOP" ;
GRANT CREATE ANY JOB TO "SHOP" ;
GRANT ALTER USER TO "SHOP" ;
GRANT QUERY REWRITE TO "SHOP" ;
GRANT SELECT ANY DICTIONARY TO "SHOP" ;
GRANT CREATE PUBLIC SYNONYM TO "SHOP" ;
GRANT GLOBAL QUERY REWRITE TO "SHOP" ;
GRANT ALTER ANY CUBE DIMENSION TO "SHOP" ;
GRANT CREATE ANY CUBE DIMENSION TO "SHOP" ;
GRANT DROP ANY CLUSTER TO "SHOP" ;
GRANT CREATE ANY RULE TO "SHOP" ;
GRANT UPDATE ANY CUBE DIMENSION TO "SHOP" ;
GRANT SYSDBA TO "SHOP" ;
GRANT ADMINISTER RESOURCE MANAGER TO "SHOP" ;
GRANT CREATE ANY SYNONYM TO "SHOP" ;
GRANT DROP ANY SYNONYM TO "SHOP" ;
GRANT DROP ANY MINING MODEL TO "SHOP" ;
GRANT EXECUTE ANY PROCEDURE TO "SHOP" ;
GRANT CREATE SYNONYM TO "SHOP" ;
GRANT SET CONTAINER TO "SHOP" ;
GRANT EXECUTE ANY PROGRAM TO "SHOP" ;
GRANT EXEMPT REDACTION POLICY TO "SHOP" ;
GRANT EXECUTE ANY TYPE TO "SHOP" ;
GRANT ON COMMIT REFRESH TO "SHOP" ;
GRANT CREATE SEQUENCE TO "SHOP" ;
GRANT SELECT ANY MEASURE FOLDER TO "SHOP" ;
GRANT COMMENT ANY MINING MODEL TO "SHOP" ;
GRANT ADMINISTER SQL TUNING SET TO "SHOP" ;
GRANT SYSOPER TO "SHOP" ;
GRANT CREATE ANY INDEXTYPE TO "SHOP" ;
GRANT KEEP DATE TIME TO "SHOP" ;
GRANT DROP ANY INDEX TO "SHOP" ;
GRANT RESTRICTED SESSION TO "SHOP" ;
GRANT SYSDG TO "SHOP" ;
GRANT DEQUEUE ANY QUEUE TO "SHOP" ;
GRANT ANALYZE ANY DICTIONARY TO "SHOP" ;
GRANT ALTER ANY INDEXTYPE TO "SHOP" ;
GRANT TRANSLATE ANY SQL TO "SHOP" ;
GRANT ADMINISTER ANY SQL TUNING SET TO "SHOP" ;
GRANT EXEMPT DDL REDACTION POLICY TO "SHOP" ;
GRANT CREATE USER TO "SHOP" ;
GRANT EXECUTE ANY OPERATOR TO "SHOP" ;
GRANT CREATE CUBE BUILD PROCESS TO "SHOP" ;
GRANT CREATE PROFILE TO "SHOP" ;
GRANT ALTER ANY ROLE TO "SHOP" ;
GRANT UPDATE ANY TABLE TO "SHOP" ;
GRANT ALTER ANY LIBRARY TO "SHOP" ;
GRANT DROP ANY VIEW TO "SHOP" ;
GRANT CREATE ANY CLUSTER TO "SHOP" ;
GRANT EXECUTE ANY RULE TO "SHOP" ;
GRANT ALTER TABLESPACE TO "SHOP" ;
GRANT UNDER ANY VIEW TO "SHOP" ;
GRANT EXECUTE ANY ASSEMBLY TO "SHOP" ;
GRANT GRANT ANY PRIVILEGE TO "SHOP" ;
GRANT ALTER ANY TRIGGER TO "SHOP" ;
GRANT CREATE ANY VIEW TO "SHOP" ;
GRANT EXPORT FULL DATABASE TO "SHOP" ;
GRANT ALTER ANY MEASURE FOLDER TO "SHOP" ;
GRANT ALTER ANY EVALUATION CONTEXT TO "SHOP" ;
GRANT FLASHBACK ARCHIVE ADMINISTER TO "SHOP" ;
GRANT IMPORT FULL DATABASE TO "SHOP" ;
GRANT CREATE ANY OUTLINE TO "SHOP" ;
GRANT COMMENT ANY TABLE TO "SHOP" ;
GRANT EXEMPT DML REDACTION POLICY TO "SHOP" ;
GRANT READ ANY TABLE TO "SHOP" ;
GRANT CREATE DATABASE LINK TO "SHOP" ;
GRANT DROP PUBLIC SYNONYM TO "SHOP" ;
GRANT DROP USER TO "SHOP" ;
GRANT CHANGE NOTIFICATION TO "SHOP" ;
GRANT CREATE MINING MODEL TO "SHOP" ;
GRANT INSERT ANY TABLE TO "SHOP" ;
GRANT DROP PROFILE TO "SHOP" ;
GRANT CREATE ANY MATERIALIZED VIEW TO "SHOP" ;
GRANT CREATE RULE SET TO "SHOP" ;
GRANT EXEMPT ACCESS POLICY TO "SHOP" ;
GRANT MANAGE SCHEDULER TO "SHOP" ;
GRANT READ ANY FILE GROUP TO "SHOP" ;
GRANT FORCE TRANSACTION TO "SHOP" ;
GRANT DROP ANY CUBE BUILD PROCESS TO "SHOP" ;
GRANT ALTER ANY TYPE TO "SHOP" ;
GRANT DROP ANY PROCEDURE TO "SHOP" ;
GRANT CREATE ANY SQL TRANSLATION PROFILE TO "SHOP" ;
GRANT DROP PUBLIC DATABASE LINK TO "SHOP" ;
GRANT DROP ANY INDEXTYPE TO "SHOP" ;
GRANT DROP ANY SQL PROFILE TO "SHOP" ;
GRANT ALTER SYSTEM TO "SHOP" ;
GRANT UNLIMITED TABLESPACE TO "SHOP" ;
GRANT DROP ANY ROLE TO "SHOP" ;
GRANT ALTER ANY DIMENSION TO "SHOP" ;
GRANT DROP ANY CUBE DIMENSION TO "SHOP" ;
GRANT DROP ANY CUBE TO "SHOP" ;
GRANT CREATE ANY TRIGGER TO "SHOP" ;
GRANT DROP ANY ASSEMBLY TO "SHOP" ;
GRANT CREATE ANY TABLE TO "SHOP" ;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "SHOP" ;
GRANT DROP ANY DIRECTORY TO "SHOP" ;
GRANT ENQUEUE ANY QUEUE TO "SHOP" ;
GRANT DROP ANY EVALUATION CONTEXT TO "SHOP" ;
GRANT CREATE ANY ASSEMBLY TO "SHOP" ;
GRANT CREATE ANY TYPE TO "SHOP" ;
GRANT REDEFINE ANY TABLE TO "SHOP" ;
GRANT CREATE CLUSTER TO "SHOP" ;
GRANT CREATE ANY CONTEXT TO "SHOP" ;
GRANT EXECUTE ANY EVALUATION CONTEXT TO "SHOP" ;
GRANT RESUMABLE TO "SHOP" ;
GRANT CREATE ANY LIBRARY TO "SHOP" ;
GRANT DROP ANY EDITION TO "SHOP" ;
GRANT CREATE PROCEDURE TO "SHOP" ;
GRANT ALTER DATABASE TO "SHOP" ;
GRANT SELECT ANY CUBE TO "SHOP" ;
GRANT GRANT ANY ROLE TO "SHOP" ;
GRANT ALTER ANY RULE TO "SHOP" ;
GRANT CREATE CUBE DIMENSION TO "SHOP" ;
GRANT ALTER ANY OPERATOR TO "SHOP" ;
GRANT CREATE CUBE TO "SHOP" ;
GRANT ALTER RESOURCE COST TO "SHOP" ;
GRANT DROP TABLESPACE TO "SHOP" ;
GRANT ALTER ROLLBACK SEGMENT TO "SHOP" ;
GRANT PURGE DBA_RECYCLEBIN TO "SHOP" ;