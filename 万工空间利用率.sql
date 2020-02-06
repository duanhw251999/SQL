select a.tablespace_name,a.status,                           
    ceil(trunc(used_undo / total_undo * 100, 2))||'%' used_pres
    from (select nvl(sum(bytes / 1024 / 1024), 0) used_undo,  
    tablespace_name,status                                    
    from dba_undo_extents                                     
    group by tablespace_name,status) a,                       
    (select tablespace_name,                                  
    sum(bytes / 1024 / 1024) total_undo                       
    from dba_data_files                                       
    group by tablespace_name) b                               
    where a.tablespace_name = b.tablespace_name; 