ALTER SESSION ENABLE PARALLEL DML;
ALTER SESSION SET PARALLEL_FORCE_LOCAL = TRUE;
INSERT /*+PARALLEL(32)*/ into odspmart.T_BWT_DAPD_COMBO_SUM_CNT
 (day_id,
  prvnce_id,
  latn_id,
  offer_inst_id,
  prod_inst_id,
  offer_nbr,
  sum_type,
  sum_special_scope,
  sum_cycle_start_time,
  sum_cnt,
  is_special,
  row_num    )     
select /*+PARALLEL(32)*/  '20200201' ,
 prvnce_id,
  latn_id,
  offer_inst_id,
  prod_inst_id,
  offer_nbr,
  sum_type,
  sum_special_scope,
  sum_cycle_start_time,
  sum_cnt,
  is_special,
  row_num
from odspmart.T_BWT_DAPD_COMBO_SUM_CNT a where a.day_id='20200123';

select /*+parallel(23)*/  count(*) from odspmart.T_BWT_DAPD_COMBO_SUM_CNT a where a.day_id='20200201' and  row<=5 for update ;
