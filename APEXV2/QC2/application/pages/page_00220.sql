prompt --application/pages/page_00220
begin
wwv_flow_api.create_page(
 p_id=>220
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Image Display'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Image Display'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_last_updated_by=>'TBOWERS'
,p_last_upd_yyyymmddhh24miss=>'20190703135841'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41701819383270170)
,p_plug_name=>'ITEM CONTAINER'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'xxxx'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
