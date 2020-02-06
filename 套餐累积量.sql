--依赖关系
SELECT  'A依赖作业',a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate 
FROM  ODSETL.ETL_JOB a
where
a.ETL_SYSTEM  in ('BOS') 
and a.ETL_JOB in (select Dependency_Job from odsetl.ETL_Job_Dependency where ETL_Job IN ('T_BSN_BILL_ACCUM'))
UNION ALL
SELECT  'B触发作业',a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate 
FROM  ODSETL.ETL_JOB a
where
a.ETL_SYSTEM  in ('BOS') 
and a.ETL_JOB in (select ETL_Job from odsetl.ETL_Job_Stream where Stream_Job IN ('T_BSN_BILL_ACCUM'));
