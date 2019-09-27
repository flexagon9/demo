prompt --application/shared_components/security/authorizations/isvaliduser
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(9888999411535993)
,p_name=>'isValidUser'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM bc1_shared.bcone_oid_employees oid',
'       JOIN bg_shared_admin.apex_app_users_appl aua ON aua.oid_id = oid.id',
'       JOIN bg_shared_admin.apex_app_applications aaa ON aaa.id = aua.app_id',
' WHERE oid.username = :app_user',
'   AND aaa.app_id = :app_id',
'   AND aua.inactive_date IS NULL',
'   AND aaa.inactive_date IS NULL;'))
,p_error_message=>'<h2>Access denied, you must be a valid QCIS user to access this.</h2>'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
