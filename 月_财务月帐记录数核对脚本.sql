
--�����ܼ�¼�� ÿ���滻���ڼ���
select a1.c1+a2.c2+a3.c3+a4.c4+a5.c5  from 
(select count(*) c1 from OTHPDATA.TB_25001_I_20171031) a1,
(select count(*) c2 from OTHPDATA.TB_25002_I_20171031) a2,
(select count(*) c3 from OTHPDATA.TB_25003_I_20171031) a3,
(select count(*) c4 from OTHPDATA.TB_25004_I_20171031) a4,
(select count(*) c5 from OTHPDATA.TB_25005_I_20171031) a5;

155413183

select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25001_i_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25002_i_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25003_i_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25004_i_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25005_i_20171031 group by substr(billing_cycle_id,1,2);

select '25001',count(*) from OTHPDATA.TB_25001_I_20170930 union
select '25002',count(*) from OTHPDATA.TB_25002_I_20171031 union
select '25003',count(*) from OTHPDATA.TB_25003_I_20171031 union
select '25004',count(*)  from OTHPDATA.TB_25004_I_20171031 union
select '25005',count(*)  from OTHPDATA.TB_25005_I_20171031 ;

�˶Լ�¼��������ֶ�ǿ��ִ��T_BIL_ACCT_ITEM_CURR

--���������ܼ�¼�� ÿ���滻���ڼ���
select a1.c1+a2.c2+a3.c3+a4.c4+a5.c5  from 
(select count(*) c1 from OTHPDATA.TB_25006_S_20171031) a1,
(select count(*) c2 from OTHPDATA.TB_25007_S_20171031) a2,
(select count(*) c3 from OTHPDATA.TB_25008_S_20171031) a3,
(select count(*) c4 from OTHPDATA.TB_25009_S_20171031) a4,
(select count(*) c5 from OTHPDATA.TB_25010_S_20171031) a5;



�˶Լ�¼��������ֶ�ǿ��ִ��T_BIL_ACCT_ITEM_FIN



--Month_A ������ҵ 
T_BWT_DAPM_CUST_STAR_INTEREST
T_BWT_DAPM_EVTPDADDVALACTIVMBL
T_BWT_DAPM_EVTPDVOICEACTIVEMBL
T_BWT_DAPM_EVT_PDDATAACTIVEMBL
T_BWT_DAPM_EVT_PD_DATA_ACTIVE
T_BWT_DAPM_EVT_PD_VOICE_ACTIVE
T_BWT_DAPM_EVT_TRMNL
T_BWT_DAPM_PRD_ADDVAL_INFO
T_BWT_DAPM_PRD_ITV_INST
T_BWT_DAPM_PRD_PO_INST
T_BWT_DAPM_PRD_PO_MEMBER
EXP_T_AWT_PRD_PROD_OFFER_YYYYMM
EXP_T_MID_CDMA_TER_MAX_YYYYMM
EXP_T_MID_EVT_ITV_VIEWINFO_YYYYMM
EXP_T_PRD_OFFER_PROD_INST_REL
EXP_T_PRD_TRM_SIM_LIST
T_FCT_DZQD_ALL_MONTH
T_FCT_EOMS_GOVE_OPEN
T_FCT_ITV_EVT_MONTH
T_IND_MID_FIX_CALL
T_MID_JUJ_CUST_INFO_NEW
T_MID_MAC_PD_INST
T_MID_MHYYY
T_MID_PRD_CDMA_WLAN
T_MID_PRD_DZQD_WZD_INST
T_MID_PRD_UNIV_SPE_INST
T_MID_WVPDN_INFO      



--Ƿ��
select a1.c1+a2.c2+a3.c3+a4.c4+a5.c5  from                
(select count(*) c1 from OTHPDATA.TB_25011_S_20171031) a1,
(select count(*) c2 from OTHPDATA.TB_25012_S_20171031) a2,
(select count(*) c3 from OTHPDATA.TB_25013_S_20171031) a3,
(select count(*) c4 from OTHPDATA.TB_25014_S_20171031) a4,
(select count(*) c5 from OTHPDATA.TB_25015_S_20171031) a5;


######################�¹���
--������
select count(*) from OTHPDATA.Tb_13021_i_20170131��78705262
select count(*) from OTHPDATA.Tb_13021_i_20171031;--76285095  76285472 76286403
select count(*) from OTHPDATA.Tb_13021_i_20181231;--81181551

--�����˷ֹ�˾
select /*+ paralle(20)*/  distinct 9||substr(billing_cycle_id,1,2),count(*)  from OTHPDATA.Tb_13021_i_20181231 group by substr(billing_cycle_id,1,2);
922	1
930	15047810
931	23508019
932	5330188
933	4418368
934	5154384
935	4400862
936	1997407
937	1717445
938	4479942
939	5144976
941	662641
943	4999959
945	3018389
947	1301160



--Ƿ��
select count(*) from OTHPDATA.Tb_25011_s_20171031;--49761192
select count(*) from OTHPDATA.Tb_25012_s_20171031;--62153249
select count(*) from OTHPDATA.Tb_25013_s_20171031;--58621290
select count(*) from OTHPDATA.Tb_25014_s_20171031;--57712008
select count(*) from OTHPDATA.Tb_25015_s_20171031;--50127622

--Ƿ�ѷֹ�˾
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25011_s_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25012_s_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25013_s_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25014_s_20171031 group by substr(billing_cycle_id,1,2) union
select distinct 9||substr(billing_cycle_id,1,2) ,count(*) from OTHPDATA.Tb_25015_s_20171031 group by substr(billing_cycle_id,1,2);

--��ѯMONTH_A MONTH_B����
select 
a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate 
  from odsetl.etl_job a
--update odsetl.etl_job set last_jobstatus = 'Pending',last_txdate = '2016-08-31'
 where etl_job in (
 select stream_job from odsetl.etl_job_stream
 where etl_job  = 'T_AWT_PRD_PROD_INST_MONTH_A'
 )
-- and last_txdate='2016-08-31';



select count(*) from OTHPDATA.T_BIL_PAID_ACCT_ITEM a where a.billing_month='201606'

--���MONTH_B����û�У������ִ�нű�������������Ƶ��Ͽ���-EDA�¶ȳ���ȫʡ�����û����˲�����.xls
SELECT B.SERIAL,B.LATN_ID,B.LATN_NAME,COUNT(DISTINCT A.PROD_INST_ID)
FROM ODSPMART.T_AWT_PRD_PROD_INST_$BillMonth A
INNER JOIN ODSPMART.T_DIM_LATN B
ON A.LATN_ID=B.LATN_ID
WHERE A.BILLING_ARRIVE_FLAG='1'
AND TRUNC(A.FINISH_DATE,'DD')<=DATE'YYYY-MM-DD'
AND A.PRODUCT_CD IN
(
SELECT PRODUCT_CD FROM ODSPMART.T_DIM_PRODUCT
WHERE CLASS2_ID=200101
)
GROUP BY B.SERIAL,B.LATN_ID,B.LATN_NAME
ORDER BY B.SERIAL,B.LATN_ID,B.LATN_NAME



select * from dba_tables a where a.TABLE_NAME in ('T_AWT_PRD_PROD_INST_201609','T_MID_ACCT_ITEM_TOTAL','T_AWT_PRD_PROD_OFFER_201609','T_PRD_PROD_OFFER','T_MID_PRD_FUNC_INST_201609')

select * from odspmart.t_log_etl_run a where a.etl_job='T_MID_CPSP_SETTLE_INDEX'
order  by a.exec_end_time desc

27��
ȫҵ������Ԥ��������

30��
1.�˲���������� 13021��
2.��T_MID_FIN_INCOME����������ҵ��Ϊdisable
Job Name	T_BWT_DAPM_FIN_INCOME
Job Name	T_MID_JUJ_CUST_SERV_INC
Job Name	T_MID_PRD_CDMA_ACCT

1��
=IF(ISERROR(VLOOKUP(E1,Sheet2!$A$1:$B$39,2,0)),"",VLOOKUP(E1,Sheet2!$A$1:$B$39,2,0))

Ƿ�ѽӿ�����˶Լ�¼����>>>�ֶ�BBB>>>montha>>>�ֶ��ſ�����
��������:
--������ҵ
SELECT  a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate 
FROM  ODSETL.ETL_JOB a
where
a.ETL_SYSTEM not in ('ORC','SYN') 
and a.ETL_JOB in (select Stream_Job from odsetl.ETL_Job_Stream where ETL_Job IN ('T_AWT_PRD_PROD_INST_MONTH_A'))
ORDER BY a.Last_JobStatus,a.Last_TXDate ASC
;

--����������ҵ״̬
update odsetl.etl_job a set last_jobstatus = 'Pending',last_txdate = '2016-12-31'
where
a.ETL_SYSTEM not in ('ORC','SYN') 
and a.ETL_JOB in (select Stream_Job from odsetl.ETL_Job_Stream where ETL_Job IN ('T_AWT_PRD_PROD_INST_MONTH_A'))
;

--��ѯMONTH_A MONTH_B����
select 
a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate 
  from odsetl.etl_job a
--update odsetl.etl_job set last_jobstatus = 'Pending',last_txdate = '2017-12-31'
 where etl_job in (
 select stream_job from odsetl.etl_job_stream
 where etl_job  = 'T_AWT_PRD_PROD_INST_MONTH_B'
 )
-- and last_txdate='2016-08-31';

2��

�������˺����˴����� ǿ��ִ��BBB Ȼ��ᴥ��T_MID_FIN_INCOME��
��T_MID_FIN_INCOMEִ�еĹ����У�ȥ��T_MID_CPSP_SETTLE_INDEX�������Ƿ�ȫ������
T_MID_FIN_INCOMEִ����Ϻ���Ҫ���ˣ�������Ϻ���������������ҵ�ſ�
[BWT] T_BWT_DAPM_FIN_INCOME (Status = 'Done', TXdate = '2017-07-31')
[MID] T_MID_JUJ_CUST_SERV_INC (Status = 'Done', TXdate = '2017-07-31')
[MID] T_MID_PRD_CDMA_ACCT (Status = 'Done', TXdate = '2017-07-31')
T_MID_PRD_CDMA_ACCT ���괥��monthB


monthb���δ���
--������ҵ
SELECT  a.ETL_SYSTEM,a.ETL_JOB,a.Description,a.JobType,a.Enable,a.Last_StartTime,a.Last_EndTime,a.Last_JobStatus,a.Last_TXDate  FROM  ODSETL.ETL_JOB a
--update odsetl.etl_job a set last_jobstatus = 'Pending',last_txdate = '2017-02-28'
where
a.ETL_SYSTEM not in ('ORC','SYN') 
and a.ETL_JOB in (select Stream_Job from odsetl.ETL_Job_Stream where ETL_Job IN ('T_AWT_PRD_PROD_INST_MONTH_B'))
;

