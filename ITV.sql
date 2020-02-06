--ITV
update odsetl.etl_job set last_jobstatus = 'Pending',last_txdate = '2017-08-25'
 where etl_job in (
'17039','17040','17041'
 )
 and last_jobstatus='Done';
 commit;
update odsetl.etl_job set last_jobstatus = 'Pending',last_txdate = '2017-08-24'
 where etl_job in (
'17038'
 )
 and last_jobstatus='Done';
  commit;
