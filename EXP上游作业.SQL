--EXP 查看
select a.etl_job,a.description ,b.stream_job,a.last_txdate from odsetl.etl_job  a
inner join odsetl.etl_job_stream b
on a.etl_job=b.etl_job
where 
b.Stream_Job in (
SELECT 
etl_job
--,description,enable,last_jobstatus,LAST_STARTTIME,last_endtime,last_txdate
 FROM ODSETL.etl_job A WHERE A.ETL_SYSTEM='EXP' AND A.JOBTYPE='D'
 )
and a.description like '%电视%'