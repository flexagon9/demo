prompt --application/pages/page_00350
begin
wwv_flow_api.create_page(
 p_id=>350
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Plant Level Maintenance Landing'
,p_step_title=>'Plant Level Maintenance Landing'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190730114301'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31459517079526130)
,p_plug_name=>'Plant Level Setup & Relationships'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31460017817526135)
,p_plug_name=>'Plant Setup Action'
,p_parent_plug_id=>wwv_flow_api.id(31459517079526130)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90718551788242455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(27200311407818024)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(90736248200242506)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27426458486786108)
,p_name=>'P350_MODEL_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31459517079526130)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27426897942786109)
,p_name=>'P350_MODEL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31459517079526130)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427303848786110)
,p_name=>'P350_MODEL_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31459517079526130)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427674729786111)
,p_name=>'P350_MODEL_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31459517079526130)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27428387791786112)
,p_name=>'P350_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31460017817526135)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_PLANT_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
end;
/
