prompt --application/shared_components/navigation/lists/template_set_up_maintenance
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(14963002861931701)
,p_name=>'Template Set Up & Maintenance'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15227818882552586)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Drafts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14964431151931704)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Image Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map'
,p_parent_list_item_id=>wwv_flow_api.id(15227818882552586)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14964888462931704)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Pin Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-o'
,p_parent_list_item_id=>wwv_flow_api.id(15227818882552586)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15228697866562682)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Draft to Template'
,p_list_item_link_target=>'f?p=&APP_ID.:380:&SESSION.::&DEBUG.:RP,380:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15228196986555603)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Templates'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14965234045931705)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Gig Sheets'
,p_list_item_link_target=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-list'
,p_parent_list_item_id=>wwv_flow_api.id(15228196986555603)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15830584142143863)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Image & Pin Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:382:&SESSION.::&DEBUG.:RP,382:::'
,p_list_item_icon=>'fa-map'
,p_parent_list_item_id=>wwv_flow_api.id(15228196986555603)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14965600724931706)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Var Data'
,p_list_item_link_target=>'f?p=&APP_ID.:520:&SESSION.::&DEBUG.:RP,520:::'
,p_list_item_icon=>'fa-variable'
,p_parent_list_item_id=>wwv_flow_api.id(15228196986555603)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
