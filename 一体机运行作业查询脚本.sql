--3.一体机运行作业查询脚本：
SELECT a.etl_system,a.etl_job,a.etl_server,a.jobtype,a.enable,a.last_jobstatus,a.last_txdate,a.last_starttime,a.last_endtime 
FROM odsetl.etl_job a
WHERE a.last_jobstatus = 'Running'
ORDER BY a.last_jobstatus desc;
