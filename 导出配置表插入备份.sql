select * from odspmart.t_dim_data_share_info a where A.SHARE_FILE_NAME LIKE '%DNA%'

INSERT INTO odspmart.t_dim_data_share_info
VALUES ('290','ODSPMART.T_FCT_PRD_DNA_7GENE','������DNA-7�����','Y','D','ADD','T_FCT_PRD_DNA_7GENE','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('291','ODSPMART.T_FCT_PRD_DNA_7GENE_COMMON','������DNA-7�����(�ؾ�)','Y','D','ADD','T_FCT_PRD_DNA_7GENE_COMMON','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('292','ODSPMART.T_FCT_PRD_DNA_SX','������DNA-���Ľṹ','Y','D','ADD','T_FCT_PRD_DNA_SX','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('293','ODSPMART.T_FCT_PRD_DNA_SX_COMMON','������DNA-���Ľṹ(�ؾ�)','Y','D','ADD','T_FCT_PRD_DNA_SX_COMMON','EDW','DAY_ID');
COMMIT;
INSERT INTO odspmart.t_dim_data_share_info
VALUES ('294','ODSPMART.T_MID_PRD_DNA_INST','DNA�û��м��','Y','D','ADD','T_MID_PRD_DNA_INST','EDW','DAY_ID');
COMMIT;
