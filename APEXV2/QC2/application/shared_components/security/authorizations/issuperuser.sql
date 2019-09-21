prompt --application/shared_components/security/authorizations/issuperuser
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(21274116646227667)
,p_name=>'isSuperUser'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM bg_shared_admin.apex_app_applications aaa',
'       JOIN bg_shared_admin.apex_app_users_appl aua ON aua.app_id = aaa.id',
'       JOIN bc1_shared.bcone_oid_employees oid ON oid.id = aua.oid_id',
' WHERE UPPER (oid.username) = UPPER ( :app_user)',
'   AND aaa.app_id = :app_id',
'   AND aua.super_user_access = ''Y'';'))
,p_error_message=>'<h2>Access denied, only Super Users may access this.</h2>'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
