prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(4612636109968797)
,p_group_name=>'Admin Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Brands',
' Rework Time',
' Responsible Area',
' Defects',
' Parent Stations',
' Inspect Names',
' Components',
' Component Lists',
' Station xRef',
' Order Number Change',
' Boat Master',
' Variable Data'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(4612861988980385)
,p_group_name=>'Inspection Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Inspections',
' Boats',
' Boat Schedule'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(4612765840972889)
,p_group_name=>'Model Maintenance Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Model Wizard',
' Cloning'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(4613089811094523)
,p_group_name=>'Reports Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Customer Service',
' Customer Variable Data'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(4612979565989756)
,p_group_name=>'Shipping Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Red/Green Tags',
' Set Rack Date'))
);
end;
/
