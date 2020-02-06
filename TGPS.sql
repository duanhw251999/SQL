--TGPS
SELECT
A.ETL_SYSTEM,a.etl_job,A.DESCRIPTION,A.JOBTYPE,A.ENABLE,A.LAST_STARTTIME
,A.LAST_ENDTIME,A.LAST_JOBSTATUS,A.LAST_TXDATE
FROM  ODSETL.ETL_JOB  A
WHERE  A.ETL_SYSTEM IN ('BOS')
and a.etl_job    in (
'25036','25037','25038','25039','25040'
,'25041','25042','25043','25044','25045'
,'25046','25047','25048','25049','25050'
,'25051','25052','25053','25054','25055'
,'25056','25057','25058','25059','25060'
,'25061','25062','25063','25064','25065'
,'25066','25067','25068','25069'
)
AND  A.ENABLE = '1'
AND A.JOBTYPE='D'
order by a.last_jobstatus,a.last_txdate desc;

 select /*+parallel(32) */ '25036', count(*) from othpdata.tb_25036_s_20180824
union select /*+parallel(32) */ '25037', count(*) from othpdata.tb_25037_s_20180824
union select /*+parallel(32) */ '25038', count(*) from othpdata.tb_25038_s_20180824
union select /*+parallel(32) */ '25039', count(*) from othpdata.tb_25039_s_20180824
union select /*+parallel(32) */ '25040', count(*) from othpdata.tb_25040_s_20180824
union select /*+parallel(32) */ '25041', count(*) from othpdata.tb_25041_s_20180824
union select /*+parallel(32) */ '25042', count(*) from othpdata.tb_25042_s_20180824
union select /*+parallel(32) */ '25043', count(*) from othpdata.tb_25043_s_20180824
union select /*+parallel(32) */ '25044', count(*) from othpdata.tb_25044_s_20180824
union select /*+parallel(32) */ '25045', count(*) from othpdata.tb_25045_s_20180824
union select /*+parallel(32) */ '25046', count(*) from othpdata.tb_25046_s_20180824
union select /*+parallel(32) */ '25047', count(*) from othpdata.tb_25047_s_20180824
union select /*+parallel(32) */ '25048', count(*) from othpdata.tb_25048_s_20180824
union select /*+parallel(32) */ '25049', count(*) from othpdata.tb_25049_s_20180824
union select /*+parallel(32) */ '25050', count(*) from othpdata.tb_25050_s_20180824
union select /*+parallel(32) */ '25051', count(*) from othpdata.tb_25051_s_20180824
union select /*+parallel(32) */ '25052', count(*) from othpdata.tb_25052_s_20180824
union select /*+parallel(32) */ '25053', count(*) from othpdata.tb_25053_s_20180824
union select /*+parallel(32) */ '25054', count(*) from othpdata.tb_25054_s_20180824
union select /*+parallel(32) */ '25055', count(*) from othpdata.tb_25055_s_20180824
union select /*+parallel(32) */ '25056', count(*) from othpdata.tb_25056_s_20180824
union select /*+parallel(32) */ '25057', count(*) from othpdata.tb_25057_s_20180824
union select /*+parallel(32) */ '25058', count(*) from othpdata.tb_25058_s_20180824
union select /*+parallel(32) */ '25059', count(*) from othpdata.tb_25059_s_20180824
union select /*+parallel(32) */ '25060', count(*) from othpdata.tb_25060_s_20180824
union select /*+parallel(32) */ '25061', count(*) from othpdata.tb_25061_s_20180824
union select /*+parallel(32) */ '25062', count(*) from othpdata.tb_25062_s_20180824
union select /*+parallel(32) */ '25063', count(*) from othpdata.tb_25063_s_20180824
union select /*+parallel(32) */ '25064', count(*) from othpdata.tb_25064_s_20180824
union select /*+parallel(32) */ '25065', count(*) from othpdata.tb_25065_s_20180824
union select /*+parallel(32) */ '25066', count(*) from othpdata.tb_25066_s_20180824
union select /*+parallel(32) */ '25067', count(*) from othpdata.tb_25067_s_20180824
union select /*+parallel(32) */ '25068', count(*) from othpdata.tb_25068_s_20180824
union select /*+parallel(32) */ '25069', count(*) from othpdata.tb_25069_s_20180824;


select 
TABLE_NAME ,sum(t.NUM_ROWS)
from all_tables t where t.OWNER='OTHPDATA' AND T.TABLE_NAME LIKE 'TB_30%'
group by TABLE_NAME
order by sum(t.NUM_ROWS) asc
