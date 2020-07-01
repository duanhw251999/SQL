--这三张慎重
ODSPMART.T_AWT_PRD_PROD_INST
ODSPMART.T_AWT_PRD_PROD_INST_B
ODSPMART.T_AWT_PRD_PROD_OFFER  

SELECT * FROM    all_tables
WHERE
    OWNER = 'ODSPMART'
    AND TABLE_NAME LIKE '%_201910'
    and tablespace_name='MDATA'
ORDER BY table_name;
alter table odspmart.t_mid_fin_income_201910 move tablespace MDATA_HIS;
commit;


SELECT * FROM    all_tables
WHERE
    OWNER = 'OTHPDATA'
    AND TABLE_NAME LIKE 'TB_%'
    and tablespace_name='PDATA_OTH'
ORDER BY table_name;
