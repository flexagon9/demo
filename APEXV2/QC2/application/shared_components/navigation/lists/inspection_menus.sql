prompt --application/shared_components/navigation/lists/inspection_menus
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(13812766028779838)
,p_name=>'Inspection Menus'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13813006689779839)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Inspection List'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13813409936779849)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Boat Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ship'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13813804079779850)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Boat Order Schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-arrow-up'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13814199322779850)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Set Rack Date'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
