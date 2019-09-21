prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(15903984505302781)
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
 p_id=>wwv_flow_api.id(15904210384314369)
,p_group_name=>'Inspection Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Inspections',
' Boats',
' Boat Schedule'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(15904114236306873)
,p_group_name=>'Model Maintenance Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Model Wizard',
' Cloning'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(15904438206428507)
,p_group_name=>'Reports Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Customer Service',
' Customer Variable Data'))
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(15904327961323740)
,p_group_name=>'Shipping Group'
,p_group_desc=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contains:',
' Red/Green Tags',
' Set Rack Date'))
);
end;
/
