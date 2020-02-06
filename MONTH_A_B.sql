--MONTH_A MONTH_B
SELECT  a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate 
FROM  ODSETL.ETL_JOB a
--update odsetl.etl_job a set last_jobstatus = 'Pending',last_txdate = '2019-10-31'
where
a.ETL_SYSTEM not in ('ORC','SYN') 
and a.ETL_JOB in (select Stream_Job from odsetl.ETL_Job_Stream where ETL_Job IN ('T_AWT_PRD_PROD_INST_MONTH_A'))
;
