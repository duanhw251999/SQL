--空间利用率
SELECT UPPER(D.TABLESPACE_NAME) "ts_name",
       D.TOT_GROOTTE_MB "ts_size(MB)",
       D.TOT_GROOTTE_MB - nvl(F.TOTAL_BYTES, 0) "used_space(MB)",
       TO_CHAR(ROUND((D.TOT_GROOTTE_MB - nvl(F.TOTAL_BYTES, 0)) /
                     D.TOT_GROOTTE_MB * 100,
                     2),
               '990.99')||'%' used_pct,
       nvl(F.TOTAL_BYTES, 0) free_space,
       nvl(F.MAX_BYTES, 0) max_block
  FROM (SELECT TABLESPACE_NAME,
               ROUND(SUM(BYTES) / (1024 * 1024), 2) TOTAL_BYTES,
               ROUND(MAX(BYTES) / (1024 * 1024), 2) MAX_BYTES
          FROM SYS.DBA_FREE_SPACE
         GROUP BY TABLESPACE_NAME) F,
       (SELECT DD.TABLESPACE_NAME,
               ROUND(SUM(DD.BYTES) / (1024 * 1024), 2) TOT_GROOTTE_MB
          FROM SYS.DBA_DATA_FILES DD
         GROUP BY DD.TABLESPACE_NAME) D
 WHERE D.TABLESPACE_NAME = F.TABLESPACE_NAME(+)
 ORDER BY 4 DESC;
