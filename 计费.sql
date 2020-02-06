select *
  from odsetl.etl_job_stream a
 where 
a.stream_job in (
'T_CDE_BILL_EVENT_TYPE','T_CDE_BILLING_CYCLE','T_CDE_BILLTYPE_CITYNO_RELA','T_CDE_PAY_METHOD','T_CDE_OWE_BUSINESS_TYPE'
,'T_CDE_SUM_RULE_DETAIL','T_CDE_SUM_RULE','T_PRD_PRD_USAGE_EVENT_TYPE','T_PRD_USER_INFO_CURRENT','T_BIL_ACCT'
,'T_BIL_ACCT_BALANCE','T_BIL_ACCT_GROUP','T_BIL_ACCT_ITEM_ADD','T_BIL_ACCT_ITEM_ADJUST','T_BIL_ACCT_ITEM_GROUP'
,'T_BIL_ACCT_ITEM_GROUP_MEMBER','T_BIL_ACCT_ITEM_SOURCE','T_BIL_ACCT_ITEM_TYPE','T_BIL_BAD_ACCT_ITEM','T_BIL_BALANCE_LATE_FEE'
,'T_BIL_BALANCE_PAYOUT','T_BIL_BALANCE_SOURCE','T_BIL_BALANCE_TYPE','T_BIL_BILL','T_BIL_BILL_REQUEMENT','T_BIL_CHARGE_ADJUST_LOG'
,'T_BIL_DEPOIST_PRESENT_RULE','T_BIL_INTER_CHARGE','T_BIL_PAYMENT','T_BIL_SERV_ACCT','T_BIL_SPECIAL_PAYMENT','T_BIL_SPECIAL_PAYMENT_DESC'
,'T_BIL_MID_SERV_STATE_ATTR','T_BIL_OWE_USER_LIST_BILL','T_BIL_PAY_USER_LIST','T_BIL_TJ_PAY_FEE','T_BIL_PAY_FEE_INFO','T_PTY_BIL_PARTNER'
,'T_BIL_BALANCE_ACCT_ITEM_PAYED','T_BIL_SERV_FLEXIBLE_CYCLE','T_BIL_ZTE_MML_VOUCHER_LOG','T_BIL_BANK_PAYMENT','T_EVT_EVENT_CDR_DELETE_REPEAT'
,'T_EVT_EVENT_CDR','T_EVT_EVENT_CDR_FEE','T_EVT_EVENT_EXT','T_EVT_EVENT_EXT_FEE','T_EVT_EVENT_PS','T_EVT_EVENT_PS_FEE','T_EVT_EVENT_VAS'
,'T_EVT_EVENT_VAS_FEE','T_EVT_SERVICE_ATTR','T_EVT_SERVICE_EVENT_MAP','T_EVT_SERVICE_LIST','T_EVT_NB_EVENT_EXT','T_EVT_NB_EVENT_EXT_FEE'
,'T_EVT_NB_EVENT_VAS','T_EVT_NB_EVENT_VAS_FEE','T_EVT_EVENT_ROLL','T_EVT_EVENT_TGCDR','T_EVT_EVENT_TGCDR_DEL_REPEAT','T_EVT_EVENT_TGCDR_FEE'
,'T_EVT_EVENT_TGVAS','T_EVT_EVENT_TGVAS_FEE','T_CDE_BILCRM_STAFF','T_BIL_BALANCE_TYPE_RULE','T_BIL_BALANCE_SHARE_RULE','T_CDE_DEPOIST_PRES_RULE_REST'
,'T_CDE_AGENT_INFO','T_EVT_SERV_STATE_ATTR','T_BIL_DAY_DISCT','T_BIL_PAYMENT_MONTH','T_BIL_BILL_MONTH','T_BIL_INTER_CHARGE_MONTH'
,'T_BIL_USER_FEE_LIST_HIS','T_BIL_ADVICE_MSG_HIS','T_EVT_EVENT_NIC','T_PRD_LAC_GRP','T_PRD_LAC_GRP_MEMBER','T_BIL_ACCT_ITEM_CURR'
,'T_BIL_ACCT_ITEM_FIN','T_BIL_OWE_USER_LIST_SOURCE','T_BIL_ACCT_ITEM_DAY','T_BIL_SERV_STATE_ATTR_HUISHOU','T_BIL_BILL_ACCUM'
,'T_BIL_RATABLE_RESOURCE','T_BIL_PAID_ACCT_ITEM','T_EVT_EVENT_TGPS','T_BIL_ACCT_ITEM_SD'
)
and a.enable='1'

select * from odsetl.etl_job_dependency b
where 
b.etl_job in (
'T_CDE_BILL_EVENT_TYPE','T_CDE_BILLING_CYCLE','T_CDE_BILLTYPE_CITYNO_RELA','T_CDE_PAY_METHOD','T_CDE_OWE_BUSINESS_TYPE'
,'T_CDE_SUM_RULE_DETAIL','T_CDE_SUM_RULE','T_PRD_PRD_USAGE_EVENT_TYPE','T_PRD_USER_INFO_CURRENT','T_BIL_ACCT'
,'T_BIL_ACCT_BALANCE','T_BIL_ACCT_GROUP','T_BIL_ACCT_ITEM_ADD','T_BIL_ACCT_ITEM_ADJUST','T_BIL_ACCT_ITEM_GROUP'
,'T_BIL_ACCT_ITEM_GROUP_MEMBER','T_BIL_ACCT_ITEM_SOURCE','T_BIL_ACCT_ITEM_TYPE','T_BIL_BAD_ACCT_ITEM','T_BIL_BALANCE_LATE_FEE'
,'T_BIL_BALANCE_PAYOUT','T_BIL_BALANCE_SOURCE','T_BIL_BALANCE_TYPE','T_BIL_BILL','T_BIL_BILL_REQUEMENT','T_BIL_CHARGE_ADJUST_LOG'
,'T_BIL_DEPOIST_PRESENT_RULE','T_BIL_INTER_CHARGE','T_BIL_PAYMENT','T_BIL_SERV_ACCT','T_BIL_SPECIAL_PAYMENT','T_BIL_SPECIAL_PAYMENT_DESC'
,'T_BIL_MID_SERV_STATE_ATTR','T_BIL_OWE_USER_LIST_BILL','T_BIL_PAY_USER_LIST','T_BIL_TJ_PAY_FEE','T_BIL_PAY_FEE_INFO','T_PTY_BIL_PARTNER'
,'T_BIL_BALANCE_ACCT_ITEM_PAYED','T_BIL_SERV_FLEXIBLE_CYCLE','T_BIL_ZTE_MML_VOUCHER_LOG','T_BIL_BANK_PAYMENT','T_EVT_EVENT_CDR_DELETE_REPEAT'
,'T_EVT_EVENT_CDR','T_EVT_EVENT_CDR_FEE','T_EVT_EVENT_EXT','T_EVT_EVENT_EXT_FEE','T_EVT_EVENT_PS','T_EVT_EVENT_PS_FEE','T_EVT_EVENT_VAS'
,'T_EVT_EVENT_VAS_FEE','T_EVT_SERVICE_ATTR','T_EVT_SERVICE_EVENT_MAP','T_EVT_SERVICE_LIST','T_EVT_NB_EVENT_EXT','T_EVT_NB_EVENT_EXT_FEE'
,'T_EVT_NB_EVENT_VAS','T_EVT_NB_EVENT_VAS_FEE','T_EVT_EVENT_ROLL','T_EVT_EVENT_TGCDR','T_EVT_EVENT_TGCDR_DEL_REPEAT','T_EVT_EVENT_TGCDR_FEE'
,'T_EVT_EVENT_TGVAS','T_EVT_EVENT_TGVAS_FEE','T_CDE_BILCRM_STAFF','T_BIL_BALANCE_TYPE_RULE','T_BIL_BALANCE_SHARE_RULE','T_CDE_DEPOIST_PRES_RULE_REST'
,'T_CDE_AGENT_INFO','T_EVT_SERV_STATE_ATTR','T_BIL_DAY_DISCT','T_BIL_PAYMENT_MONTH','T_BIL_BILL_MONTH','T_BIL_INTER_CHARGE_MONTH'
,'T_BIL_USER_FEE_LIST_HIS','T_BIL_ADVICE_MSG_HIS','T_EVT_EVENT_NIC','T_PRD_LAC_GRP','T_PRD_LAC_GRP_MEMBER','T_BIL_ACCT_ITEM_CURR'
,'T_BIL_ACCT_ITEM_FIN','T_BIL_OWE_USER_LIST_SOURCE','T_BIL_ACCT_ITEM_DAY','T_BIL_SERV_STATE_ATTR_HUISHOU','T_BIL_BILL_ACCUM'
,'T_BIL_RATABLE_RESOURCE','T_BIL_PAID_ACCT_ITEM','T_EVT_EVENT_TGPS','T_BIL_ACCT_ITEM_SD'

)
