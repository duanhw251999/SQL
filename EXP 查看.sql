--EXP ²é¿´
SELECT 
etl_job,enable,last_jobstatus,LAST_STARTTIME,last_endtime,last_txdate
 FROM ODSETL.etl_job A WHERE A.ETL_SYSTEM='EXP' AND A.JOBTYPE='D'
 and a.last_txdate between date '2019-07-01'  and  '2019-07-09'
