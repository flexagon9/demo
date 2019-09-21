prompt --application/shared_components/navigation/lists/template_set_up_maintenance
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(26254351257265685)
,p_name=>'Template Set Up & Maintenance'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26519167277886570)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Drafts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26255779547265688)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Image Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map'
,p_parent_list_item_id=>wwv_flow_api.id(26519167277886570)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26256236858265688)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Pin Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-o'
,p_parent_list_item_id=>wwv_flow_api.id(26519167277886570)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26520046261896666)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Draft to Template'
,p_list_item_link_target=>'f?p=&APP_ID.:380:&SESSION.::&DEBUG.:RP,380:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26519545381889587)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Templates'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26256582441265689)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Gig Sheets'
,p_list_item_link_target=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-list'
,p_parent_list_item_id=>wwv_flow_api.id(26519545381889587)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27121932537477847)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Image & Pin Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:382:&SESSION.::&DEBUG.:RP,382:::'
,p_list_item_icon=>'fa-map'
,p_parent_list_item_id=>wwv_flow_api.id(26519545381889587)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26256949120265690)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Var Data'
,p_list_item_link_target=>'f?p=&APP_ID.:520:&SESSION.::&DEBUG.:RP,520:::'
,p_list_item_icon=>'fa-variable'
,p_parent_list_item_id=>wwv_flow_api.id(26519545381889587)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
