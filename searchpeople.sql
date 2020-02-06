select b.acc_nbr,c.cust_name,c.certi_number,substr(c.certi_number,7,8),floor((to_number(sysdate-to_date( substr(c.certi_number,7,8),'yyyymmdd'))/365)) as age
 from odspmart.t_awt_prd_prod_inst_201512 b ,odspmart.t_awt_cust_info_201512 c
where 
b.use_cust_id=c.cust_id and 
b.use_cust_id in (
select cust_id from odspmart.t_awt_cust_info_201512 a where a.cust_name='≈À“„'  and a.latn_id='931'
);


                            
select * from odspmart.t_awt_cust_info_201803 b where b.cust_id in (
select  use_cust_id  from  odspmart.t_awt_prd_prod_inst_201803 a where a.acc_nbr='17739985870' )