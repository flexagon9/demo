prompt --application/shared_components/security/authorizations/isadmin
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(15901823723215299)
,p_name=>'isAdmin'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM DUAL',
' WHERE apex_page_utilities.user_has_access_to_role (''Admin'',',
'                                                    :APP_USER,',
'                                                    :G_DEFAULT_LOCATION_ID) = ''Y'';'))
,p_error_message=>'<h2>Access denied, only Admins may access this.</h2>'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
