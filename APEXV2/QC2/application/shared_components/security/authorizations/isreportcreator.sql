prompt --application/shared_components/security/authorizations/isreportcreator
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(21277430099849366)
,p_name=>'isReportCreator'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM bg_shared_admin.apex_app_applications aaa',
'       JOIN bg_shared_admin.apex_app_users_appl aua ON aua.app_id = aaa.id',
'       JOIN bc1_shared.bcone_oid_employees oid ON oid.id = aua.oid_id',
' WHERE UPPER (oid.username) = UPPER ( :app_user)',
'   AND aaa.app_id = :app_id',
'   AND aua.public_ir_access = ''Y'';'))
,p_error_message=>'<h2>Access denied, only Report Creators may access this.</h2>'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
