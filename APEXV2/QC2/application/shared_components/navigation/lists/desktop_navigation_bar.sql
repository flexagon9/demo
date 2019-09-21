prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(90742518376242694)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(100968577063106349)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Hello! '
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'&APP_USER. (&G_DEFAULT_LOC_CODE.)'
,p_list_text_02=>'&BADGE_CLASS_HELLO.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(91690997939013619)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'javascript:apex.navigation.dialog(''f?p=2161.:10:&SESSION.:::10:P10_APP_ID,P10_PAGE_ID,P10_PAGE_NAME,P10_ALLOW_HELP_EDIT:&APP_ID.,&APP_PAGE_ID.,&APP_PAGE_NAME.,&EDIT_HELP.'',800,550)'
,p_list_item_icon=>'fa-question-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(91691623564053559)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'LaunchPad'
,p_list_item_link_target=>'f?p=BBGLAUNCH:3:&SESSION.'
,p_list_item_icon=>'fa-rocket'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90742745948242739)
,p_list_item_display_sequence=>99
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
