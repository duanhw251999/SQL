-- IPTV存量
DROP TABLE OTHPDATA.T_JTM_IPTV_STOCK_2018;
CREATE TABLE OTHPDATA.T_JTM_IPTV_STOCK_2018
(
LATN_ID   VARCHAR2(6)              
,PROD_INST_ID   VARCHAR2(13)         
,OWN_CUST_ID    VARCHAR2(13)        
,OPEN_DATE     VARCHAR2(15)          
,UNINSTALL_DATE  VARCHAR2(15)      	
,PD_INST_STATE_CD  VARCHAR2(7)    	
,PAYMENT_MODE_CD   VARCHAR2(5)    	
,MODIFY_DATE     VARCHAR2(15)      	
,CHANNEL_BIG_TYPE_CD  VARCHAR2(7)   
,STD_PRODUCT_NBR_CD  VARCHAR2(10)   
,BILLING_ARRIVE_FLAG  VARCHAR2(2)  	
,BILLING_ARRIVE_FLAG_11 VARCHAR2(2)	
,BILLING_ARRIVE_FLAG_10 VARCHAR2(2)	
,ETL_TIME        DATE      	
,MONTH_ID      VARCHAR2(7)        	
,PRVNCE_ID       VARCHAR2(4)  
)TABLESPACE PDATA_OTH; 
COMMIT;
COMMENT ON TABLE OTHPDATA.T_JTM_IPTV_STOCK_2018                         IS '天翼高清IPTV存量表2018';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.LATN_ID                IS '本地网标识';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PROD_INST_ID           IS '产品实例ID';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.OWN_CUST_ID            IS '产权客户标识';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.OPEN_DATE             	IS '开通日期';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.UNINSTALL_DATE        	IS '拆机日期';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PD_INST_STATE_CD      	IS '产品实例状态';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PAYMENT_MODE_CD       	IS '付费模式CD';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.MODIFY_DATE           	IS '变更日期';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.CHANNEL_BIG_TYPE_CD   	IS '渠道大类编码';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.STD_PRODUCT_NBR_CD    	IS '标准产品编码';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.BILLING_ARRIVE_FLAG   	IS '是否计费\出账到达（集团）12月';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.BILLING_ARRIVE_FLAG_11	IS '是否计费\出账到达（集团）11月';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.BILLING_ARRIVE_FLAG_10	IS '是否计费\出账到达（集团）10月';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.ETL_TIME              	IS '处理时间';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.MONTH_ID              	IS '帐期';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PRVNCE_ID             	IS '省分标识';
COMMIT;
--移动存量
CREATE TABLE OTHPDATA.T_JTM_BROAD_STOCK_2018
(
latn_id   VARCHAR2(6)              
,prod_inst_id   VARCHAR2(13)         
,own_cust_id    VARCHAR2(13)        
,open_date     VARCHAR2(15)          
,uninstall_date  VARCHAR2(15)      	
,pd_inst_state_cd  VARCHAR2(7)    	
,payment_mode_cd   VARCHAR2(5)    	
,modify_date     VARCHAR2(15)      	
,channel_big_type_cd  VARCHAR2(7)   
,std_product_nbr_cd  VARCHAR2(10)   
,billing_arrive_flag  VARCHAR2(2)  	
,billing_arrive_flag_11 VARCHAR2(2)	
,billing_arrive_flag_10 VARCHAR2(2)	
,etl_time        DATE      	
,month_id      VARCHAR2(7)        	
,prvnce_id       VARCHAR2(4)  
)TABLESPACE PDATA_OTH; 
commit;
comment on table OTHPDATA.t_jtm_broad_stock_2018  is '移动存量表2018';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.latn_id                 is '本地网标识';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.prod_inst_id            is '产品实例ID';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.own_cust_id             is '产权客户标识';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.open_date             	is '开通日期';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.uninstall_date        	is '拆机日期';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.pd_inst_state_cd      	is '产品实例状态';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.payment_mode_cd       	is '付费模式CD';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.modify_date           	is '变更日期';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.channel_big_type_cd   	is '渠道大类编码';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.std_product_nbr_cd    	is '标准产品编码';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.billing_arrive_flag   	is '是否计费\出账到达（集团）12月';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.billing_arrive_flag_11	is '是否计费\出账到达（集团）11月';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.billing_arrive_flag_10	is '是否计费\出账到达（集团）10月';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.etl_time              	is '处理时间';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.month_id              	is '帐期';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.prvnce_id             	is '省分标识';
commit;

create table othpdata.t_jtm_cdma_stock_2018
(
latn_id   VARCHAR2(6)              
,prod_inst_id   VARCHAR2(13)         
,own_cust_id    VARCHAR2(13)        
,open_date     VARCHAR2(15)          
,uninstall_date  VARCHAR2(15)        
,pd_inst_state_cd  VARCHAR2(7)      
,payment_mode_cd   VARCHAR2(5)      
,modify_date     VARCHAR2(15)        
,channel_big_type_cd  VARCHAR2(7)   
,std_product_nbr_cd  VARCHAR2(10)   
,billing_arrive_flag  VARCHAR2(2)    
,billing_arrive_flag_11 VARCHAR2(2)  
,billing_arrive_flag_10 VARCHAR2(2)  
,etl_time        DATE        
,month_id      VARCHAR2(7)          
,prvnce_id       VARCHAR2(4)  
)TABLESPACE PDATA_OTH; 
commit;
comment on table OTHPDATA.t_jtm_cdma_stock_2018  is '宽带存量表2018';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.latn_id                 is '本地网标识';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.prod_inst_id            is '产品实例ID';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.own_cust_id             is '产权客户标识';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.open_date               is '开通日期';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.uninstall_date          is '拆机日期';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.pd_inst_state_cd        is '产品实例状态';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.payment_mode_cd         is '付费模式CD';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.modify_date             is '变更日期';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.channel_big_type_cd     is '渠道大类编码';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.std_product_nbr_cd      is '标准产品编码';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.billing_arrive_flag     is '是否计费\出账到达（集团）12月';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.billing_arrive_flag_11  is '是否计费\出账到达（集团）11月';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.billing_arrive_flag_10  is '是否计费\出账到达（集团）10月';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.etl_time                is '处理时间';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.month_id                is '帐期';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.prvnce_id               is '省分标识';
commit;