prompt --application/shared_components/security/authentications/master_sso_oam
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(79453537289924544)
,p_name=>'MASTER - SSO - OAM'
,p_scheme_type=>'NATIVE_HTTP_HEADER_VARIABLE'
,p_attribute_01=>'OAM_REMOTE_USER'
,p_attribute_02=>'BUILTIN_URL'
,p_attribute_06=>'CALLBACK'
,p_attribute_07=>'/oamsso/logout.html?end_url=%POST_LOGOUT_URL%'
,p_logout_url=>'f?p=2140.:3'
,p_cookie_name=>'BBGLAUNCH'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'OAM Authentication'
);
end;
/
