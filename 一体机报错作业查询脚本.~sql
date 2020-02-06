--4.一体机报错作业查询脚本：
SELECT 
etl_job,enable,last_jobstatus,LAST_STARTTIME,last_endtime,last_txdate
FROM  odsetl.etl_job          
WHERE  last_jobstatus = 'Failed'
  AND  etl_system IN ('TES','BBB','BOS','CLN','DAP','DOR','EXP','FCT','FIN','MID','ORA','ORC','STL','IDA','FSI','RTP','EXP','MKT','AWT','BWT')
  AND  enable = '1'
ORDER BY 1,2,last_txdate asc;

select etl_job,enable,last_jobstatus,LAST_STARTTIME,last_endtime,last_txdate from odsetl.etl_job   where 
--update  odsetl.etl_job  set last_jobstatus='Done' where 
last_jobstatus = 'Failed'
  AND  etl_system IN ('BOS')
  AND  enable = '1'
