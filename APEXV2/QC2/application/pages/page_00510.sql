prompt --application/pages/page_00510
begin
wwv_flow_api.create_page(
 p_id=>510
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Clone Var Data'
,p_page_mode=>'MODAL'
,p_step_title=>'Clone Variable Data'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904210384314369)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15901823723215299)
,p_dialog_height=>'900'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190819142650'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22039774811434126)
,p_plug_name=>'Page Container'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22362037903550192)
,p_plug_name=>'From Data'
,p_parent_plug_id=>wwv_flow_api.id(22039774811434126)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41650148613583525)
,p_plug_name=>'Copy From Model'
,p_parent_plug_id=>wwv_flow_api.id(22362037903550192)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone From</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22362065376550193)
,p_plug_name=>'To Data'
,p_parent_plug_id=>wwv_flow_api.id(22039774811434126)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22039848878434127)
,p_plug_name=>'Copy To Models'
,p_parent_plug_id=>wwv_flow_api.id(22362065376550193)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>11
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone To</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22362703331550199)
,p_plug_name=>'Page Variables'
,p_plug_display_sequence=>0
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22363310511550205)
,p_plug_name=>'Clone Activity'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT log_message',
'  FROM bg_qcis.qcis_msg_log',
' WHERE msg_data_source = ''QC2_CLONING_UTILITIES''',
'   AND source_process = ''CLONE_GIG_AND_VAR_DATA''',
'   AND log_id > :p510_log_id',
'   AND created_by = :APP_USER;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P510_LOG_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P510_LOG_ID'
,p_plug_display_when_cond2=>'99999999999999999999999'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone Activity</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22363405356550206)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'..No Recent Clone Activity Found..'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'JJOHNSON'
,p_internal_uid=>11072056961216222
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22363505573550207)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Log Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22631252612973290)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113400'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG_MESSAGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22313632294324146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22039774811434126)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22314047115324147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22039774811434126)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22361405249550186)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22039848878434127)
,p_button_name=>'Clone'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Clone'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'title="Clone the template headers and detail to the selected ''To'' models." All'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_column=>6
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22040038012434128)
,p_name=>'P510_TO_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22039848878434127)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22040560401434134)
,p_name=>'P510_TO_MODELS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22039848878434127)
,p_prompt=>'To Models'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT model_name d,',
'       model_master_id r',
'  FROM bg_qcis.qcis_model_master',
' WHERE plant_id = :p510_plant_id',
'   AND model_year = :p510_to_model_year',
'   AND model_master_id <> :p510_model_Id',
'ORDER BY model_name;'))
,p_lov_cascade_parent_items=>'P510_TO_MODEL_YEAR,P510_MODEL_ID'
,p_ajax_items_to_submit=>'P510_TO_MODEL_YEAR,P510_PLANT_ID,P510_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22314349247324147)
,p_name=>'P510_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22314825539324148)
,p_name=>'P510_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P510_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22315209154324148)
,p_name=>'P510_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT model_name display_value,',
'       model_master_id return_value',
'  FROM bg_qcis.qcis_model_master',
' WHERE ( (plant_id = :p510_plant_id',
'      AND inactive_date IS NULL',
'      AND model_year = :p510_model_year)',
'     OR model_master_id = :p510_model_id)',
'   AND brand_id = :p510_brand_id',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P510_PLANT_ID,P510_MODEL_YEAR,P510_BRAND_ID'
,p_ajax_items_to_submit=>'P510_BRAND_ID,P510_MODEL_YEAR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P510_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22316423927324149)
,p_name=>'P510_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_item_default=>'B'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Active;A,Inactive;I,Both;B'
,p_colspan=>4
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'13'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22362777262550200)
,p_name=>'P510_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22362703331550199)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22363164945550204)
,p_name=>'P510_LOG_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22362703331550199)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22363627971550208)
,p_name=>'P510_INCLUDE_GIG_SHEETS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_item_default=>'N'
,p_prompt=>'Include Gig Sheet Detail?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23299447048246907)
,p_name=>'P510_TO_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22039848878434127)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P510_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23299449906246908)
,p_name=>'P510_BRAND_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN :G_DEFAULT_BRAND_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT brand_code || '' - '' || brand_name display_value,',
'       qcis_brand_master_id return_value',
'  FROM bg_qcis.qcis_brand_master',
' WHERE qcis_plant_master_id = :g_default_plant_id',
'   AND inactive_date IS NULL',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23954518922729171)
,p_name=>'P510_CLONE_FROM_STATIONS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(41650148613583525)
,p_prompt=>'Available Clone From Stations'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    sm.station_code',
'       || '' - ''',
'       || sm.station_name',
'       || '' / ''',
'       || s.substation_code',
'       || '' - ''',
'       || s.substation_name',
'       || '' / ''',
'       || g.gig_sheet_name',
'          d,',
'       g.header_id r',
'  FROM bg_qcis.qcis_gs_template_header g',
'       JOIN bg_qcis.qcis_station_master sm',
'          ON sm.station_master_id = g.station_id',
'       JOIN bg_qcis.qcis_substation s ON s.substation_id = g.substation_id',
' WHERE g.model_id = :p510_model_id',
'   AND g.plant_id = :p510_plant_id',
'ORDER BY sm.station_code'))
,p_lov_cascade_parent_items=>'P510_MODEL_ID'
,p_ajax_items_to_submit=>'P510_PLANT_ID,P510_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22326243520324165)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22313632294324146)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22326747031324166)
,p_event_id=>wwv_flow_api.id(22326243520324165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22327121883324166)
,p_name=>'Hide or show To Models'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P510_MODEL_ID'
,p_condition_element=>'P510_MODEL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22361752025550190)
,p_event_id=>wwv_flow_api.id(22327121883324166)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22039848878434127)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22361943545550191)
,p_event_id=>wwv_flow_api.id(22327121883324166)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22039848878434127)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22361541450550187)
,p_name=>'Hide or show button'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P510_TO_MODELS'
,p_condition_element=>'P510_TO_MODELS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22361619172550188)
,p_event_id=>wwv_flow_api.id(22361541450550187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(22361405249550186)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22361677995550189)
,p_event_id=>wwv_flow_api.id(22361541450550187)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(22361405249550186)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22321913988324162)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Variables'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  :P510_MODEL_ID := NULL;',
'  :P510_STATUS := ''A'';',
'',
'  :P510_TO_MODELS := NULL;',
'  :P510_LOG_ID := 99999999999999999999999;',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22314047115324147)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22362594138550198)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_from_headers    apex_application_global.vc_arr2;',
'  v_to_models       apex_application_global.vc_arr2;',
'',
'BEGIN',
'',
'  Begin',
'    SELECT MAX (log_id)',
'      INTO :p510_log_id',
'      FROM bg_qcis.qcis_msg_log',
'     WHERE msg_data_source = ''QC2_CLONING_UTILITIES''',
'       AND source_process = ''CLONE_GIG_AND_VAR_DATA'';',
'  Exception',
'    When others then',
'      :p510_log_id := 0;',
'  End;',
'',
'  v_to_models := APEX_UTIL.string_to_table (:p510_to_models);',
'  v_from_headers := APEX_UTIL.string_to_table (:P510_CLONE_FROM_STATIONS);',
'  ',
'  :P510_MESSAGE := bg_qcis.qc2_cloning_utilities.clone_selected_template_detail(:p510_model_Id,',
'      v_from_headers,',
'      ''A'', -- status code',
'      :app_user,',
'      ''Y'',',
'      :P510_INCLUDE_GIG_SHEETS,',
'      v_to_models);',
'  ',
'END;',
''))
,p_process_error_message=>'&P510_MESSAGE.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22361405249550186)
,p_process_success_message=>'&P510_MESSAGE.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22322342702324162)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Model Year'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_model_year       number;',
'',
'BEGIN',
'  ',
'  v_model_year := NULL;',
'  ',
'  If :P510_MODEL_ID is NOT NULL then',
'    Begin',
'      Select model_year,',
'             brand_Id',
'        into v_model_year,',
'             :P510_BRAND_ID',
'        from bg_qcis.qcis_model_master',
'       where model_master_id = :P510_MODEL_ID;',
'    Exception',
'      When others then',
'        v_model_year := NULL;',
'    End;',
'  End if;',
'',
'  :P510_MODEL_YEAR := v_model_year;  ',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
