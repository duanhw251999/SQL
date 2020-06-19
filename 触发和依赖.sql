--create table odsptemp.tb_bbb_source as select a.stream_job from odsetl.etl_job_stream a where a.etl_job='T_STREAM_JOB' and a.enable='1';
select a.stream_job,'触发'||b.stream_job from odsptemp.tb_bbb_source a
left join odsetl.etl_job_stream b
on a.stream_job=b.etl_job
union
select c.etl_job,'依赖'||a.stream_job from odsptemp.tb_bbb_source a
left join odsetl.etl_job_dependency c 
on a.stream_job=c.dependency_job
