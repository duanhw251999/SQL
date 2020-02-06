select * from odspmart.t_dim_data_share_info a where A.SHARE_FILE_NAME LIKE '%DNA%'

INSERT INTO odspmart.t_dim_data_share_info
VALUES ('290','ODSPMART.T_FCT_PRD_DNA_7GENE','新入网DNA-7大基因','Y','D','ADD','T_FCT_PRD_DNA_7GENE','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('291','ODSPMART.T_FCT_PRD_DNA_7GENE_COMMON','新入网DNA-7大基因(县局)','Y','D','ADD','T_FCT_PRD_DNA_7GENE_COMMON','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('292','ODSPMART.T_FCT_PRD_DNA_SX','新入网DNA-四心结构','Y','D','ADD','T_FCT_PRD_DNA_SX','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('293','ODSPMART.T_FCT_PRD_DNA_SX_COMMON','新入网DNA-四心结构(县局)','Y','D','ADD','T_FCT_PRD_DNA_SX_COMMON','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('294','ODSPMART.T_MID_PRD_DNA_INST','DNA用户中间表','Y','D','ADD','T_MID_PRD_DNA_INST','EDW','DAY_ID');
COMMIT;
