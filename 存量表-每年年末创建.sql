-- IPTV����
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
COMMENT ON TABLE OTHPDATA.T_JTM_IPTV_STOCK_2018                         IS '�������IPTV������2018';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.LATN_ID                IS '��������ʶ';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PROD_INST_ID           IS '��Ʒʵ��ID';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.OWN_CUST_ID            IS '��Ȩ�ͻ���ʶ';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.OPEN_DATE             	IS '��ͨ����';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.UNINSTALL_DATE        	IS '�������';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PD_INST_STATE_CD      	IS '��Ʒʵ��״̬';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PAYMENT_MODE_CD       	IS '����ģʽCD';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.MODIFY_DATE           	IS '�������';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.CHANNEL_BIG_TYPE_CD   	IS '�����������';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.STD_PRODUCT_NBR_CD    	IS '��׼��Ʒ����';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.BILLING_ARRIVE_FLAG   	IS '�Ƿ�Ʒ�\���˵�����ţ�12��';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.BILLING_ARRIVE_FLAG_11	IS '�Ƿ�Ʒ�\���˵�����ţ�11��';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.BILLING_ARRIVE_FLAG_10	IS '�Ƿ�Ʒ�\���˵�����ţ�10��';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.ETL_TIME              	IS '����ʱ��';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.MONTH_ID              	IS '����';
COMMENT ON COLUMN OTHPDATA.T_JTM_IPTV_STOCK_2018.PRVNCE_ID             	IS 'ʡ�ֱ�ʶ';
COMMIT;
--�ƶ�����
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
comment on table OTHPDATA.t_jtm_broad_stock_2018  is '�ƶ�������2018';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.latn_id                 is '��������ʶ';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.prod_inst_id            is '��Ʒʵ��ID';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.own_cust_id             is '��Ȩ�ͻ���ʶ';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.open_date             	is '��ͨ����';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.uninstall_date        	is '�������';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.pd_inst_state_cd      	is '��Ʒʵ��״̬';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.payment_mode_cd       	is '����ģʽCD';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.modify_date           	is '�������';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.channel_big_type_cd   	is '�����������';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.std_product_nbr_cd    	is '��׼��Ʒ����';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.billing_arrive_flag   	is '�Ƿ�Ʒ�\���˵�����ţ�12��';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.billing_arrive_flag_11	is '�Ƿ�Ʒ�\���˵�����ţ�11��';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.billing_arrive_flag_10	is '�Ƿ�Ʒ�\���˵�����ţ�10��';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.etl_time              	is '����ʱ��';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.month_id              	is '����';
COMMENT ON COLUMN OTHPDATA.t_jtm_broad_stock_2018.prvnce_id             	is 'ʡ�ֱ�ʶ';
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
comment on table OTHPDATA.t_jtm_cdma_stock_2018  is '���������2018';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.latn_id                 is '��������ʶ';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.prod_inst_id            is '��Ʒʵ��ID';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.own_cust_id             is '��Ȩ�ͻ���ʶ';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.open_date               is '��ͨ����';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.uninstall_date          is '�������';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.pd_inst_state_cd        is '��Ʒʵ��״̬';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.payment_mode_cd         is '����ģʽCD';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.modify_date             is '�������';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.channel_big_type_cd     is '�����������';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.std_product_nbr_cd      is '��׼��Ʒ����';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.billing_arrive_flag     is '�Ƿ�Ʒ�\���˵�����ţ�12��';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.billing_arrive_flag_11  is '�Ƿ�Ʒ�\���˵�����ţ�11��';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.billing_arrive_flag_10  is '�Ƿ�Ʒ�\���˵�����ţ�10��';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.etl_time                is '����ʱ��';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.month_id                is '����';
COMMENT ON COLUMN OTHPDATA.t_jtm_cdma_stock_2018.prvnce_id               is 'ʡ�ֱ�ʶ';
commit;