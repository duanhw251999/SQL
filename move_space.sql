SELECT * FROM    all_tables
WHERE
    OWNER = 'ODSPMART'
    AND TABLE_NAME LIKE '%_201910'
    and tablespace_name='MDATA'
ORDER BY table_name;
alter table odspmart.t_mid_fin_income_201910 move tablespace MDATA_HIS;
commit;
