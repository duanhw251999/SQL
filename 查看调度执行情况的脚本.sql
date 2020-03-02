SELECT  /*+parallel(32) */  * FROM ODSPMART.T_LOG_ETL_RUN A
WHERE A.ETL_JOB='T_AWT_PRD_PROD_INST_A'
ORDER BY A.EXEC_END_TIME DESC,A.PROCDURE_STEP DESC;

Alter table ODSPMART.T_LOG_ETL_RUN parallel 1  ;


--select  count(*) from othpdata.T_EVT_EVENT_TGPS a where a.load_date='2018-07-26'
