﻿SELECT /*+PARALLEL(32)*/A.LOAD_DATE,A.OP_TIME,COUNT(*) FROM OTHPDATA.T_JTD_PMT_BUSINESS_TXN_O2O_SH A
GROUP BY A.LOAD_DATE,A.OP_TIME
ORDER BY A.LOAD_DATE,A.OP_TIME;

SELECT /*+PARALLEL(32)*/A.LOAD_DATE,COUNT(*) FROM OTHPDATA.T_JTD_PMT_BUSINESS_TXN_O2O_SH A
GROUP BY A.LOAD_DATE
ORDER BY A.LOAD_DATE;

Job Name	T_JTD_YZF_CUSTOMERAGREEMENTPAS
Job Name	T_JTD_YZCUSTOMERAGREEMENTQUICK
Job Name	T_JTD_YZF_OTACAMPUSPRODUCT
Job Name	T_JTD_YZF_STARUSERINFO
Job Name	T_JTD_YZF_BAL