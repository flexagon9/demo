prompt --application/shared_components/security/authorizations/isreadonly
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(4610656072881316)
,p_name=>'isReadOnly'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM DUAL',
' WHERE (apex_page_utilities.user_has_access_to_role (''Read Only'',',
'                                                    :APP_USER,',
'                                                    :G_DEFAULT_LOCATION_ID) = ''Y'')',
'    OR (apex_page_utilities.user_has_access_to_role (''Admin'',',
'                                                    :APP_USER,',
'                                                    :G_DEFAULT_LOCATION_ID) = ''Y'');',
''))
,p_error_message=>'<h2>Access denied, you must have the Read Only role to access this.</h2>'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
