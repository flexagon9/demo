prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(90743924126242860)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25629094373933517)
,p_short_name=>'Inspect Names'
,p_link=>'f?p=&APP_ID.:61:&SESSION.'
,p_page_id=>61
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27379969015117473)
,p_short_name=>'Defect List - Defect List Maint'
,p_link=>'f?p=&APP_ID.:74:&SESSION.'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90744358059242867)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(156193448020691048)
,p_parent_id=>0
,p_short_name=>'Application User Inquiry'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
end;
/
