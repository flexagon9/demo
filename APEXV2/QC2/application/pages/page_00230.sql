prompt --application/pages/page_00230
begin
wwv_flow_api.create_page(
 p_id=>230
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Image Map Draft'
,p_page_mode=>'MODAL'
,p_step_title=>'Image Map Draft'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190610143144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15954414924592215)
,p_plug_name=>'Image Map Draft'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
