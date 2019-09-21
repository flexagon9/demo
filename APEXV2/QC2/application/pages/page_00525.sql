prompt --application/pages/page_00525
begin
wwv_flow_api.create_page(
 p_id=>525
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Build Var Data Templates'
,p_page_mode=>'MODAL'
,p_step_title=>'Build Var Data Templates'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15901823723215299)
,p_dialog_width=>'900'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190820154201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37182886328885490)
,p_plug_name=>'Button Bar'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37183316169885494)
,p_plug_name=>'Page Variables'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37183453201885496)
,p_plug_name=>'Var Data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vdt.vdata_templ_dtl_id,',
'       vdt.vdata_templ_dtl_id     vdata_templ_dtl_id_display,',
'       vdt.template_header_id,',
'       vdt.var_data_element_id,',
'       vdt.line_number,',
'       vdt.help_link',
'  --       (SELECT    vde.element_name',
'  --               || CASE',
'  --                      WHEN vde.where_collected_code = ''QCIS'' THEN '' ''',
'  --                      ELSE '' (used in '' || vde.where_collected_code || '')''',
'  --                  END',
'  --          FROM bg_qcis.qcis_temp_usage_table   tu,',
'  --               bg_qcis.qcis_var_data_elements  vde',
'  --         WHERE vde.var_data_element_id = vdt.var_data_element_id',
'  --           AND tu.user_id = :app_user',
'  --           AND tu.usage_key = ''vtemplate''',
'  --           AND vde.plant_id =',
'  --               SUBSTR (tu.usage_data, 1, INSTR (tu.usage_data, '','') - 1)',
'  --           AND vde.inactive_date IS NULL)    element_name',
'  FROM bg_qcis.qcis_var_data_template_detail vdt',
' WHERE vdt.template_header_id = :p525_header_id;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P525_HEADER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37183716833885498)
,p_name=>'VDATA_TEMPL_DTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VDATA_TEMPL_DTL_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37183823399885499)
,p_name=>'VDATA_TEMPL_DTL_ID_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VDATA_TEMPL_DTL_ID_DISPLAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37183933947885500)
,p_name=>'TEMPLATE_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_HEADER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P525_HEADER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37184005907885501)
,p_name=>'VAR_DATA_ELEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAR_DATA_ELEMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Data Element'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT    vde.element_name',
'         || CASE',
'                WHEN vde.where_collected_code = ''QCIS'' THEN '' ''',
'                ELSE '' (used in '' || vde.where_collected_code || '')''',
'            END                     display_value,',
'         vde.var_data_element_id    return_value',
'    FROM bg_qcis.qcis_temp_usage_table tu, bg_qcis.qcis_var_data_elements vde',
'   WHERE tu.user_id = :app_user',
'     AND tu.usage_key = ''vtemplate''',
'     AND vde.plant_id =',
'         SUBSTR (tu.usage_data, 1, INSTR (tu.usage_data, '','') - 1)',
'     AND vde.inactive_date IS NULL',
'ORDER BY 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37184068949885502)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Number'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37184155395885503)
,p_name=>'HELP_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HELP_LINK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Help Link'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37184658612885508)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37184763708885509)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(37183629609885497)
,p_internal_uid=>25892281214551513
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(37208960584219207)
,p_interactive_grid_id=>wwv_flow_api.id(37183629609885497)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(37209144607219208)
,p_report_id=>wwv_flow_api.id(37208960584219207)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37209639215219211)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(37183716833885498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37210102847219220)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(37183823399885499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37210608317219223)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(37183933947885500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37211109297219227)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(37184005907885501)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>385
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37211553445219230)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(37184068949885502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37212134215219233)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(37184155395885503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37249174449925654)
,p_view_id=>wwv_flow_api.id(37209144607219208)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(37184658612885508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37183020585885491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37182886328885490)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37184968966885511)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(37182886328885490)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:525:&SESSION.::&DEBUG.:RP,525:P525_HEADER_ID:&P525_HEADER_ID.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37185061548885512)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(37182886328885490)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37183399514885495)
,p_name=>'P525_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37183316169885494)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37185206432885513)
,p_name=>'P525_PLANT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37183316169885494)
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37185267337885514)
,p_name=>'P525_BRAND_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(37183316169885494)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select brand_code || ''-'' || brand_name d,',
'       qcis_brand_master_id r',
'  from bg_qcis.qcis_brand_master',
' order by brand_code'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37185395975885515)
,p_name=>'P525_MODEL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(37183316169885494)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37185482859885516)
,p_name=>'P525_STATION_SUBSTATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(37183316169885494)
,p_prompt=>'Station/Substation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37183049263885492)
,p_name=>'Close Page'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37183020585885491)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37183151343885493)
,p_event_id=>wwv_flow_api.id(37183049263885492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37184941347885510)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(37183453201885496)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Var Data - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37185573441885517)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get model info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  Begin',
'    SELECT gth.plant_id,',
'           gth.brand_id,',
'           mm.model_year || ''-'' || mm.model_name    model_info,',
'           sm.station_code || ''-'' || sm.station_name || ''/'' || ',
'           ss.substation_code || ''-'' || ss.substation_name',
'      INTO :p525_plant_id,',
'           :p525_brand_id,',
'           :p525_model_id,',
'           :p525_station_substation',
'      FROM bg_qcis.qcis_gs_template_header  gth',
'           JOIN bg_qcis.qcis_model_master mm ON mm.model_master_id = gth.model_id',
'           JOIN bg_qcis.qcis_station_master sm',
'               ON sm.station_master_id = gth.station_id',
'           JOIN bg_qcis.qcis_substation ss',
'               ON ss.substation_id = gth.substation_id',
'     WHERE gth.header_id = :p525_header_id;',
'  Exception',
'    When Others then',
'      :p525_plant_id := NULL;',
'      :p525_brand_id := NULL;',
'      :p525_model_id := ''Unknown'';',
'      :p525_station_substation := NULL;',
'  End;',
'',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
