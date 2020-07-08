select 'drop table '||a.owner||'.'||a.table_name||';' from all_all_tables a where a.owner='OTHPDATA'
AND  REGEXP_LIKE(TABLE_NAME, '*_20200630$')
