prompt --application/shared_components/security/authorizations/issuperuseroradmin
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(21410904546253985)
,p_name=>'isSuperUserOrAdmin'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM DUAL',
' WHERE (apex_page_utilities.user_has_access_to_role (''Admin'',',
'                                                     :app_user,',
'                                                     :g_default_location_id) = ''Y'')',
'    OR (EXISTS',
'           (SELECT ''Y''',
'              FROM bg_shared_admin.apex_app_applications aaa',
'                   JOIN bg_shared_admin.apex_app_users_appl aua',
'                      ON aua.app_id = aaa.id',
'                   JOIN bc1_shared.bcone_oid_employees oid',
'                      ON oid.id = aua.oid_id',
'             WHERE UPPER (oid.username) = UPPER ( :app_user)',
'               AND aaa.app_id = :app_id',
'               AND aua.super_user_access = ''Y''));'))
,p_error_message=>'<h2>Access denied, only Admins or Super Users may access this.</h2>'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
