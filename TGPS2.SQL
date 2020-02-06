SELECT 
A.ETL_SYSTEM,A.ETL_JOB,A.DESCRIPTION,A.JOBTYPE,A.ENABLE,A.LAST_STARTTIME
,A.LAST_ENDTIME,A.LAST_JOBSTATUS,A.LAST_TXDATE
 FROM  ODSETL.ETL_JOB A
 where a.etl_job in (
select a.dependency_job  from odsetl.etl_job_dependency a where etl_job in ('T_BIL_ACCT_ITEM_CURR','T_BIL_ACCT_ITEM_FIN')
union select t.etl_job from odsetl.etl_job_stream t where t.stream_job in ('T_BIL_ACCT_ITEM_CURR','T_BIL_ACCT_ITEM_FIN')
 )

