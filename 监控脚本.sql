SELECT A.ETL_JOB,A.AVG,B.LAST_STARTTIME,B.LAST_ENDTIME,B.LAST_JOBSTATUS,B.LAST_TXDATE,A.ALARM_TIME,
case when substr(to_char(SYSDATE,'yyyymmdd hh24:mi:ss'),10,5)>A.ALARM_TIME AND B.LAST_JOBSTATUS ='Running' then '不正常' 
     when substr(to_char(SYSDATE,'yyyymmdd hh24:mi:ss'),10,5)>A.ALARM_TIME AND B.LAST_TXDATE =to_char(sysdate-2,'yyyy-mm-dd') then '不正常'
     when sysdate-30/(24*60)>A.LAST_STARTTIME AND B.LAST_JOBSTATUS ='Pending' then '不正常'
     when B.LAST_JOBSTATUS ='Failed' then '不正常'
  else '正常'
   end ALARM_STATUS,
A.PERSON,A.TEL,A.OTHER 
FROM odsetl.etl_job B
INNER JOIN odsptemp.t_fct_jk A
ON A.ETL_JOB=B.ETL_JOB
ORDER BY B.LAST_ENDTIME ASC;
