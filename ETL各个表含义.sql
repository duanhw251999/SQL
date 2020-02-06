select * from odsetl.etl_job t where t.etl_job='25026';--ETL作业表
select * from odsetl.etl_int_entity_info t where t.intunit like '3%'--调度基础信息
SELECT * FROM ODSETL.ETL_JOB_BEFORE;--调度调用脚本信息
select * from odsetl.etl_job_bk;
select * from odsetl.etl_job_dependency--依赖关系定义表
select * from odsetl.etl_job_log --ETL日志表
select * from odsetl.etl_job_queue --ETL作业队列表
select * from odsetl.etl_job_source--ETL作业源定义表
select * from odsetl.etl_job_status--ETL作业状态表
select * from odsetl.etl_job_stream--ETL
