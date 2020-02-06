--汇聚平台集团下发
SELECT ETL_SYSTEM,ETL_Job,Description,JobType,Enable,Last_StartTime,Last_EndTime,Last_JobStatus,Last_TXDate
FROM ODSETL.ETL_JOB     
WHERE   ETL_JOB IN                          
(                                                                                  
'12112','12113','12114','12115','12116','12117'
,'12118','12119','12120','12121','12122','12123'
,'12124','12125','12126','12127','12128','12129'
,'12130','12131','12132','12133','12134','12136'
,'12137','12138','12139','12140','12141','12142'
,'12143','12144','12145','12146','12147','12148'
,'12149','12150','12151','12152','12153','12154'
,'12155'
)
AND  ETL_SYSTEM = 'BOS'
ORDER  BY JOBTYPE,LAST_TXDATE,LAST_ENDTIME,ETL_JOB;
