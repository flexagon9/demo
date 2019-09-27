prompt --application/pages/page_00502
begin
wwv_flow_api.create_page(
 p_id=>502
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Variable Data Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Variable Data Maintenance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(4612861988980385)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'900'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190819142457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19337576112259383)
,p_plug_name=>'Models'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>QC Models</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24597984280557944)
,p_plug_name=>'Variable Data Elements'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>31
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vdt.vdata_templ_dtl_id,',
'       vdt.template_header_id,',
'       vdt.var_data_element_id,',
'       vdt.line_number,',
'       vdt.help_link,',
'       (SELECT  vde.where_collected_code ',
'          FROM bg_qcis.qcis_var_data_elements vde',
'         WHERE vde.var_data_element_id = vdt.var_data_element_id)',
'          element_name',
'  FROM bg_qcis.qcis_var_data_template_detail vdt',
' WHERE vdt.template_header_id = :p502_header_id;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P502_HEADER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P502_HEADER_ID'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Variable Data Elements</b></div> '
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24598182316557946)
,p_name=>'VDATA_TEMPL_DTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VDATA_TEMPL_DTL_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24598430893557948)
,p_name=>'TEMPLATE_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_HEADER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P502_HEADER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24598508548557949)
,p_name=>'VAR_DATA_ELEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAR_DATA_ELEMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Data Element'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    vde.element_name',
'       || CASE',
'             WHEN vde.where_collected_code = ''QCIS'' THEN '' ''',
'             ELSE '' (used in '' || vde.where_collected_code || '')''',
'          END',
'          display_value,',
'       vde.var_data_element_id return_value',
'  FROM bg_qcis.qcis_var_data_elements vde',
' WHERE vde.plant_id = :P502_PLANT_ID',
'   AND vde.inactive_date IS NULL',
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24598629738557950)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Number'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(24651014410434201)
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
 p_id=>wwv_flow_api.id(24651093565434202)
,p_name=>'ELEMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELEMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Where Used'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24651188526434203)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24651278829434204)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(24598087140557945)
,p_internal_uid=>24598087140557945
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'...No Data Elements attached to this template...'
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
 p_id=>wwv_flow_api.id(24656666407441336)
,p_interactive_grid_id=>wwv_flow_api.id(24598087140557945)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(24656693030441337)
,p_report_id=>wwv_flow_api.id(24656666407441336)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24657250256441340)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(24598182316557946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24658146549441347)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(24598430893557948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24658648867441350)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(24598508548557949)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>461
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24659163142441352)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(24598629738557950)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24659628687441354)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(24651014410434201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24660159584441356)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(24651093565434202)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(24669450918585845)
,p_view_id=>wwv_flow_api.id(24656693030441337)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(24651188526434203)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41514963280940277)
,p_plug_name=>'Current Template Relationships'
,p_region_name=>'SSR'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT header_id,',
'       mm.model_year || ''-'' || mm.model_name model,',
'       acc_group,',
'       accessory,',
'       sh.station_code || ''-'' || sh.station_name station,',
'       ss.substation_code || ''-'' || ss.substation_name substation,',
'       inspector_id,',
'       sequence_nbr,',
'       ins.inspection_name gig_sheet_name,',
'       NVL ( (SELECT ''Y''',
'                FROM DUAL',
'               WHERE EXISTS',
'                        (SELECT ''Y''',
'                           FROM bg_qcis.qcis_var_data_template_detail dtd',
'                          WHERE dtd.template_header_id = gsth.header_id)),',
'            ''N'')',
'          var_data_flag,',
'       gsth.inactive_date,',
'       sh.station_master_id,',
'       ss.substation_id',
'  FROM bg_qcis.qcis_gs_template_header gsth',
'       JOIN bg_qcis.qcis_model_master mm',
'          ON mm.model_master_id = gsth.model_id',
'       JOIN bg_qcis.qcis_station_master sh',
'          ON sh.station_master_id = gsth.station_id',
'       JOIN bg_qcis.qcis_substation ss',
'          ON ss.substation_id = gsth.substation_id',
'       JOIN bg_qcis.qcis_inspection_names ins',
'          ON ins.inspect_name_id = gsth.gig_sheet_name',
' WHERE gsth.gig_sheet_type = ''G''',
'   AND mm.model_master_id = :p502_model_id',
'   AND 1 = CASE',
'              WHEN ( :p502_status = ''A'')',
'               AND (gsth.inactive_date IS NULL) THEN',
'                 1',
'              WHEN ( :p502_status = ''I'')',
'               AND (gsth.inactive_date IS NOT NULL) THEN',
'                 1',
'              WHEN :p502_status = ''B'' THEN 1                 ',
'              ELSE',
'                 0',
'           END',
'ORDER BY sh.station_code, ss.substation_code, sequence_nbr'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P502_MODEL_ID,P502_STATION_ID,P502_SUBSTATION_ID,P502_STATUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10745179248100109)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'..No Templates For This Model..'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.:RP,502:P502_MODEL_ID,P502_STATION_ID,P502_SUBSTATION_ID,P502_SEQUENCE_NUMBER:&P502_MODEL_ID.,#STATION_MASTER_ID#,#SUBSTATION_ID#,#SEQUENCE_NBR#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>10745179248100109
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745294704100110)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745342247100111)
,p_db_column_name=>'MODEL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745418679100112)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745597449100113)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745686536100114)
,p_db_column_name=>'STATION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745719079100115)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745815712100116)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10745998930100117)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Sequence Nbr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10746040610100118)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10746136418100119)
,p_db_column_name=>'VAR_DATA_FLAG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Var Data Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10746229623100120)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12008964200912932)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12009041107912933)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Substation Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10956247071315205)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'109563'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODEL:STATION:SUBSTATION:SEQUENCE_NBR:GIG_SHEET_NAME:ACC_GROUP:ACCESSORY:VAR_DATA_FLAG:INACTIVE_DATE::STATION_MASTER_ID:SUBSTATION_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10906623624260864)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19337576112259383)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10745033855100108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19337576112259383)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10744968528100107)
,p_name=>'P502_SUBSTATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24597984280557944)
,p_prompt=>'Substation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ss.substation_code || '' - '' || ss.substation_name d,',
'       ss.substation_id r',
'  FROM bg_qcis.qcis_substation ss',
' WHERE ss.station_master_id = :p502_station_id',
'ORDER BY ss.substation_code;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_cascade_parent_items=>'P502_STATION_ID'
,p_ajax_items_to_submit=>'P502_STATION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10889420346260828)
,p_name=>'P502_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19337576112259383)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10890201081260829)
,p_name=>'P502_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19337576112259383)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT model_year d,',
'                model_year r',
'  FROM bg_qcis.qcis_model_master',
' WHERE plant_id = :p502_plant_id',
'   AND inactive_date IS NULL',
'ORDER BY model_year'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P502_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10890621105260829)
,p_name=>'P502_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19337576112259383)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT model_name display_value,',
'       model_master_id return_value',
'  FROM bg_qcis.qcis_model_master',
' WHERE brand_id = :p502_brand_id',
'    AND ((plant_id = :p502_plant_id',
'    AND inactive_date IS NULL',
'    AND model_year = :p502_model_year)',
'    OR model_master_id = :p502_model_id)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P502_PLANT_ID,P502_MODEL_YEAR,P502_BRAND_ID'
,p_ajax_items_to_submit=>'P502_BRAND_ID,P502_MODEL_YEAR,P502_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P502_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10891807158260830)
,p_name=>'P502_STATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24597984280557944)
,p_prompt=>'Station'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT station_code || '' - '' || station_name d,',
'       station_master_id r',
'  FROM bg_qcis.qcis_station_master sm',
' WHERE sm.plant_id = :p502_plant_id',
'   AND model_id = :p502_model_id',
'ORDER BY station_code;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_cascade_parent_items=>'P502_PLANT_ID,P502_MODEL_ID'
,p_ajax_items_to_submit=>'P502_PLANT_ID,P502_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10894628271260833)
,p_name=>'P502_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41514963280940277)
,p_item_default=>'B'
,p_prompt=>'Status: '
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;A,Inactive;I,Both;B'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'13'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14389104607347507)
,p_name=>'P502_HEADER_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(19337576112259383)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14395742784263802)
,p_name=>'P502_COLLASPE_EXPAND_FLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(19337576112259383)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14395814723263803)
,p_name=>'P502_SEQUENCE_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24597984280557944)
,p_prompt=>'Sequence #'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14420657297095352)
,p_name=>'P502_BRAND_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19337576112259383)
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
,p_read_only_when=>'P502_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14389652729347508)
,p_tabular_form_region_id=>wwv_flow_api.id(24597984280557944)
,p_validation_name=>'Check for duplicates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_error_message   VARCHAR2 (1000);',
'   v_checker_flag    VARCHAR2 (1);',
'BEGIN',
'   v_error_message := NULL;',
'   v_checker_flag := ''N'';',
'',
'   BEGIN',
'      SELECT ''Y''',
'        INTO v_checker_flag',
'        FROM bg_qcis.qcis_var_data_template_detail',
'       WHERE template_header_id = :p502_header_id',
'         AND line_number = :line_number',
'         AND vdata_templ_dtl_id <> NVL ( :vdata_templ_dtl_id, -99);',
'   EXCEPTION',
'      WHEN TOO_MANY_ROWS THEN',
'         v_checker_flag := ''Y'';',
'      When no_data_found then ',
'         v_checker_flag := ''N'';',
'      WHEN OTHERS THEN',
'               v_error_message := substr(sqlerrm,1,500);',
'         v_error_message := v_error_message;',
'         v_checker_flag := ''Z'';',
'   END;',
'',
'   IF v_checker_flag = ''Y'' THEN',
'      RETURN (''This line number is already in use'');',
'   END IF;',
'',
'',
'   IF v_checker_flag = ''Z'' THEN',
'      RETURN (v_error_message);',
'   END IF;',
'',
'   BEGIN',
'      SELECT ''Y''',
'        INTO v_checker_flag',
'        FROM bg_qcis.qcis_var_data_template_detail',
'       WHERE template_header_id = :p502_header_id',
'         AND var_data_element_id = :var_data_element_id',
'         AND vdata_templ_dtl_id <> NVL ( :vdata_templ_dtl_id, -99);',
'   EXCEPTION',
'      WHEN TOO_MANY_ROWS THEN',
'         v_checker_flag := ''Y'';',
'      WHEN NO_DATA_FOUND THEN',
'         v_checker_flag := ''N'';',
'      WHEN OTHERS THEN',
'         v_checker_flag := ''N'';',
'   END;',
'',
'   IF v_checker_flag = ''Y'' THEN',
'      RETURN (''This element is already attached to the template'');',
'   END IF;',
'',
'   RETURN (v_error_message);',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_column=>'LINE_NUMBER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10917464686260879)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10906623624260864)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10917949898260879)
,p_event_id=>wwv_flow_api.id(10917464686260879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10746321753100121)
,p_name=>'Show templates'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_MODEL_ID'
,p_condition_element=>'P502_MODEL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10746431103100122)
,p_event_id=>wwv_flow_api.id(10746321753100121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10746512166100123)
,p_event_id=>wwv_flow_api.id(10746321753100121)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10746621816100124)
,p_event_id=>wwv_flow_api.id(10746321753100121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10746792566100125)
,p_name=>'Refresh templates'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_STATION_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10746891443100126)
,p_event_id=>wwv_flow_api.id(10746792566100125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10746963797100127)
,p_name=>'Refresh templates again'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_SUBSTATION_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10747049499100128)
,p_event_id=>wwv_flow_api.id(10746963797100127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10747135247100129)
,p_name=>'Refresh report'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10747247515100130)
,p_event_id=>wwv_flow_api.id(10747135247100129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11072673923216228)
,p_name=>'Refresh region after dialog closed'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11072748447216229)
,p_event_id=>wwv_flow_api.id(11072673923216228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14403651262275571)
,p_name=>'COLLAPSE_EXPAND'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14404512711275571)
,p_event_id=>wwv_flow_api.id(14403651262275571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P502_COLLASPE_EXPAND_FLAG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE ',
'         WHEN :P502_HEADER_ID IS NULL THEN 1',
'         ELSE 0',
'       END',
'FROM DUAL;'))
,p_attribute_07=>'P205_STATION_MASTER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14404049385275571)
,p_event_id=>wwv_flow_api.id(14403651262275571)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41514963280940277)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P502_COLLASPE_EXPAND_FLAG")',
'   , $region = $(this.affectedElements[0]);',
'  ',
' if (numEntries > 0 && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries < 1 && $region.hasClass(''is-expanded'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10747301187100131)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Variables'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  :P502_MODEL_ID := NULL;',
'  :P502_STATION_ID := NULL;',
'  :P502_SUBSTATION_ID := NULL;',
'  :P502_STATUS := ''A'';',
'  :P502_SEQUENCE_NUMBER := NULL;',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10745033855100108)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14389937598347508)
,p_process_sequence=>25
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24597984280557944)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Variable Data Elements - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10747702817100135)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Model Year and Header ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_model_year       number;',
'',
'BEGIN',
'  ',
'  v_model_year := NULL;',
'  ',
'  If :P502_MODEL_ID is NOT NULL then',
'    Begin',
'      Select model_year,',
'             brand_id',
'        into v_model_year,',
'             :P502_BRAND_ID',
'        from bg_qcis.qcis_model_master',
'       where model_master_id = :P502_MODEL_ID;',
'    Exception',
'      When others then',
'        v_model_year := NULL;',
'    End;',
'  End if;',
'',
'  :P502_MODEL_YEAR := v_model_year;  ',
'  ',
'  Begin',
'    SELECT header_id',
'      INTO :p502_header_id',
'      FROM bg_qcis.qcis_gs_template_header',
'     WHERE model_id = :p502_model_id',
'       AND station_id = :p502_station_id',
'       AND substation_id = :p502_substation_id',
'       AND sequence_nbr = :p502_sequence_number;',
'  Exception',
'    When Others then',
'      :p502_header_id := NULL;',
'  End;',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
