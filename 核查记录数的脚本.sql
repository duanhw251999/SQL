SELECT  /*+parallel(32) */  SUM(A.EXEC_RECNUM) FROM ODSPMART.T_LOG_ETL_RUN A
WHERE A.ETL_JOB='T_AWT_PRD_PROD_INST_A'
AND A.LOAD_DATE=DATE'2018-08-17'
ORDER BY A.EXEC_END_TIME DESC,A.PROCDURE_STEP DESC;
--293949336
--293858258
--294097028
