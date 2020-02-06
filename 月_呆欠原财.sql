--呆坏账
select count(*) from OTHPDATA.Tb_30032_i_20191031
select /*+ paralle(20)*/  distinct 9||substr(billing_cycle_id,1,2),count(*)  from OTHPDATA.Tb_30032_i_20191031 group by substr(billing_cycle_id,1,2);

--欠费
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30111_s_20191031;--49761192
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30112_s_20191031;--62153249
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30113_s_20191031;--58621290
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30114_s_20191031;--57712008
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30115_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30116_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30117_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30118_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30119_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30120_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30121_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30122_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30123_s_20191031;--50127622
select /*+PARALLEL(12)*/  count(*) from OTHPDATA.Tb_30124_s_20191031;--50127622
--欠费分公司
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30111_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30112_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30113_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30114_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30115_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30116_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30117_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30118_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30119_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30120_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30121_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30122_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30123_s_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/  distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30124_s_20191031 group by substr(billing_cycle_id,1,2);





SELECT 
A.ETL_SYSTEM,A.ETL_JOB,A.DESCRIPTION,A.JOBTYPE,A.ENABLE,A.LAST_STARTTIME
,A.LAST_ENDTIME,A.LAST_JOBSTATUS,A.LAST_TXDATE
 FROM  ODSETL.ETL_JOB A
 where a.etl_job in (
select a.dependency_job  from odsetl.etl_job_dependency a where etl_job in ('T_BIL_ACCT_ITEM_CURR','T_BIL_ACCT_ITEM_FIN')
union select t.etl_job from odsetl.etl_job_stream t where t.stream_job in ('T_BIL_ACCT_ITEM_CURR','T_BIL_ACCT_ITEM_FIN')
 )

--原始月账
select /*+PARALLEL(12)*/ '25001',count(*) from OTHPDATA.TB_25001_I_20191031 union
select /*+PARALLEL(12)*/ '25002',count(*) from OTHPDATA.TB_25002_I_20191031 union
select /*+PARALLEL(12)*/ '25003',count(*) from OTHPDATA.TB_25003_I_20191031 union
select /*+PARALLEL(12)*/ '25004',count(*) from OTHPDATA.TB_25004_I_20191031 union
select /*+PARALLEL(12)*/ '25005',count(*) from OTHPDATA.TB_25005_I_20191031 ;
         
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30083_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30084_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30085_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30086_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30087_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30088_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30089_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30090_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30091_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30092_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30093_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30094_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30095_i_20191031 group by substr(billing_cycle_id,1,2) union
select /*+PARALLEL(12)*/ distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_30096_i_20191031 group by substr(billing_cycle_id,1,2) ;
      

--财务月账
select /*+PARALLEL(12)*/ '930',count(*) from OTHPDATA.TB_30097_S_20191031 union
select /*+PARALLEL(12)*/ '931',count(*) from OTHPDATA.TB_30098_S_20191031 union
select /*+PARALLEL(12)*/ '932',count(*) from OTHPDATA.TB_30099_S_20191031 union
select /*+PARALLEL(12)*/ '933',count(*) from OTHPDATA.TB_30100_S_20191031 union
select /*+PARALLEL(12)*/ '934',count(*) from OTHPDATA.TB_30101_S_20191031 union
select /*+PARALLEL(12)*/ '935',count(*) from OTHPDATA.TB_30102_S_20191031 union
select /*+PARALLEL(12)*/ '936',count(*) from OTHPDATA.TB_30103_S_20191031 union
select /*+PARALLEL(12)*/ '937',count(*) from OTHPDATA.TB_30104_S_20191031 union
select /*+PARALLEL(12)*/ '938',count(*) from OTHPDATA.TB_30105_S_20191031 union
select /*+PARALLEL(12)*/ '939',count(*) from OTHPDATA.TB_30106_S_20191031 union
select /*+PARALLEL(12)*/ '941',count(*) from OTHPDATA.TB_30107_S_20191031 union
select /*+PARALLEL(12)*/ '943',count(*) from OTHPDATA.TB_30108_S_20191031 union
select /*+PARALLEL(12)*/ '945',count(*) from OTHPDATA.TB_30109_S_20191031 union
select /*+PARALLEL(12)*/ '947',count(*) from OTHPDATA.TB_30110_S_20191031 ;

select a1.c1+a2.c2+a3.c3+a4.c4+a5.c5  from 
(select count(*) c1 from OTHPDATA.TB_25006_S_20191031) a1,
(select count(*) c2 from OTHPDATA.TB_25007_S_20191031) a2,
(select count(*) c3 from OTHPDATA.TB_25008_S_20191031) a3,
(select count(*) c4 from OTHPDATA.TB_25009_S_20191031) a4,
(select count(*) c5 from OTHPDATA.TB_25010_S_20191031) a5;

SELECT /*+PARALLEL(12)*/    DISTINCT SOURCE_LATN_ID,COUNT(*) FROM OTHPDATA.TB_25006_S_20191031 A GROUP BY SOURCE_LATN_ID UNION 
SELECT /*+PARALLEL(12)*/    DISTINCT SOURCE_LATN_ID,COUNT(*) FROM OTHPDATA.TB_25007_S_20191031 GROUP BY SOURCE_LATN_ID UNION 
SELECT /*+PARALLEL(12)*/    DISTINCT SOURCE_LATN_ID,COUNT(*) FROM OTHPDATA.TB_25008_S_20191031 GROUP BY SOURCE_LATN_ID UNION 
SELECT /*+PARALLEL(12)*/    DISTINCT SOURCE_LATN_ID,COUNT(*) FROM OTHPDATA.TB_25009_S_20191031 GROUP BY SOURCE_LATN_ID UNION 
SELECT /*+PARALLEL(12)*/    DISTINCT SOURCE_LATN_ID,COUNT(*) FROM OTHPDATA.TB_25010_S_20191031 GROUP BY SOURCE_LATN_ID;

select * from odsetl.etl_record_log a where a.etl_job in ('25001','25002','25003','25004','25005','25006','25007','25008','25009','25010');



SELECT ETL_SYSTEM,ETL_Job,Description,JobType,Enable,Last_StartTime,Last_EndTime,Last_JobStatus,Last_TXDate
FROM ODSETL.ETL_JOB    
where 
etl_job in ('25001','25002','25003','25004','25005','25006','25007','25008','25009','25010');


SELECT a.etl_system,a.etl_job,a.etl_server,a.jobtype,a.enable,a.last_jobstatus,a.last_txdate,a.last_starttime,a.last_endtime 
FROM odsetl.etl_job a
where a.etl_job in (select a.dependency_job from odsetl.etl_job_dependency a where a.etl_job in ('T_BIL_ACCT_ITEM_CURR','T_BIL_ACCT_ITEM_FIN')
union select b.etl_job from odsetl.etl_job_stream b where b.stream_job in( 'T_BIL_ACCT_ITEM_CURR','T_BIL_ACCT_ITEM_FIN'))
