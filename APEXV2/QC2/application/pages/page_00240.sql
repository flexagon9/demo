prompt --application/pages/page_00240
begin
wwv_flow_api.create_page(
 p_id=>240
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Gig Sheet Template'
,p_page_mode=>'MODAL'
,p_step_title=>'Gig Sheet Maintenance'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IG_ig_toolbar_actions_button{',
'display: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close '
,p_dialog_chained=>'N'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190829201615'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21728022137327310)
,p_plug_name=>'Gig Sheet Template Tasks'
,p_region_name=>'IG'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'DETAIL_ID,',
'HEADER_ID,',
'SEQUENCE_NUMBER,',
'INSPECTION_TASK,',
'ACCESSORY_GROUP,',
'ACCESSORY,',
'INSPECTOR_ID,',
'DEFECT_HDR_ID,',
'MANDATORY_YN,',
'RESPONSIBLE_AREA,',
'HELP_LINK,',
'INACTIVE_DATE',
'from QCIS_GS_TEMPLATE_DETAIL',
'where HEADER_ID = TO_NUMBER(:P240_HEADER_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P240_HEADER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P240_HEADER_ID'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21729080083327321)
,p_name=>'DETAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAIL_ID'
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
 p_id=>wwv_flow_api.id(21729281389327323)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P240_HEADER_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21729373298327324)
,p_name=>'SEQUENCE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQUENCE_NUMBER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq #'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(21729468876327325)
,p_name=>'INSPECTION_TASK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSPECTION_TASK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Inspection Task'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1800
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
 p_id=>wwv_flow_api.id(21729583298327326)
,p_name=>'ACCESSORY_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY_GROUP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Group'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(21729658256327327)
,p_name=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Acc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(21729795473327328)
,p_name=>'INSPECTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSPECTOR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(21729888755327329)
,p_name=>'DEFECT_HDR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEFECT_HDR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Defect Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sub_com_desc||'' - ''||commodity_desc d, defect_code_header_id r',
'from   qcis_defect_code_header',
'where inactive_date IS NULL',
'and plant_id = :P240_PLANT_ID ',
'order by sub_com_desc'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_api.id(21730008056327330)
,p_name=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANDATORY_YN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mandatory Y/N'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(15976633719645764)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_api.id(21730135485327331)
,p_name=>'RESPONSIBLE_AREA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSIBLE_AREA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Responsible Area'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>false
,p_max_length=>100
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RESPONSIBLE_AREA d, RESPONSIBLE_AREA r',
'from   QCIS_RESP_AREA_MASTER ',
'where PLANT_ID = :P240_PLANT_ID and',
'INACTIVE_DATE IS NULL',
'order by RESPONSIBLE_AREA'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21730201479327332)
,p_name=>'HELP_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HELP_LINK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Help Link'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21730295404327333)
,p_name=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INACTIVE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Inactive Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21761453880792589)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21761570401792590)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(21728977756327320)
,p_internal_uid=>10437629360993336
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
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
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
 p_id=>wwv_flow_api.id(21752451665646677)
,p_interactive_grid_id=>wwv_flow_api.id(21728977756327320)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(21752591737646678)
,p_report_id=>wwv_flow_api.id(21752451665646677)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21753051299646680)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(21729080083327321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21754142881646685)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(21729281389327323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21754564649646686)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(21729373298327324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21755069857646689)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(21729468876327325)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21755599277646692)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(21729583298327326)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21756127775646695)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(21729658256327327)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
,p_sort_order=>3
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21756586695646698)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(21729795473327328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21757077116646700)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(21729888755327329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21757574438646702)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(21730008056327330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21758087876646705)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(21730135485327331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21758580745646707)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(21730201479327332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21759084980646709)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(21730295404327333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22480349985407328)
,p_view_id=>wwv_flow_api.id(21752591737646678)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21761453880792589)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26406340905779875)
,p_plug_name=>'Gig Sheet Template'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b> Gig Sheet Template </b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34900599813559347)
,p_plug_name=>'HideShow GS Template Selector'
,p_parent_plug_id=>wwv_flow_api.id(26406340905779875)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   gsth.HEADER_ID, ',
'   pm.plant_code PLANT_ID, ',
'   bm.brand_code BRAND_ID, ',
'   dm.division_code DIVISION_ID, ',
'   mm.model_year||''-''||mm.model_name MODEL_ID, ',
'   gsth.ACC_GROUP, ',
'   gsth.ACCESSORY, ',
'   (select sh.station_code||''-''||sh.station_name from qcis_station_master sh where sh.station_master_id=gsth.station_id) STATION_ID, ',
'   (select ss.substation_code||''-''||ss.substation_name from qcis_substation ss where ss.substation_id=gsth.substation_id) SUBSTATION_ID, ',
'   gsth.INSPECTOR_ID, ',
'   gsth.SEQUENCE_NBR, ',
'   (select ins.inspection_name from qcis_inspection_names ins where ins.inspect_name_id=gsth.gig_sheet_name) GIG_SHEET_NAME, ',
'   gsth.INACTIVE_DATE, ',
'   gsth.LAST_UPDATE_DATE, ',
'   gsth.LAST_UPDATED_BY, ',
'   gsth.CREATION_DATE, ',
'   gsth.CREATED_BY',
'FROM qcis_model_master mm,',
'     qcis_plant_master pm, ',
'     qcis_brand_master bm, ',
'     qcis_division_master dm, ',
'     qcis_gs_template_header gsth',
'where mm.model_master_id = :p240_model_id',
'  and pm.qcis_plant_master_id=mm.plant_id',
'  and bm.qcis_brand_master_id=mm.brand_id',
'  and dm.qcis_division_master_id=mm.division_id',
'  and gsth.gig_sheet_type=''G'' and gsth.plant_id=mm.plant_id and gsth.model_id=mm.model_master_id'))
,p_plug_source_type=>'NATIVE_IR'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Current GS Templates</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(34900849404559350)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Gig Sheets Found or this Model'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP:P240_HEADER_ID:#HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit GS Template"'
,p_owner=>'SGRAY'
,p_internal_uid=>23609501009225366
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25271262890118422)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>220
,p_column_identifier=>'A'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25271700852118423)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>230
,p_column_identifier=>'B'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25272127716118423)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>240
,p_column_identifier=>'C'
,p_column_label=>'Plant Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25272536398118424)
,p_db_column_name=>'BRAND_ID'
,p_display_order=>250
,p_column_identifier=>'D'
,p_column_label=>'Brand Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25272895599118424)
,p_db_column_name=>'DIVISION_ID'
,p_display_order=>260
,p_column_identifier=>'E'
,p_column_label=>'Division Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25273313232118425)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>270
,p_column_identifier=>'F'
,p_column_label=>'Model Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25273661521118426)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>280
,p_column_identifier=>'G'
,p_column_label=>'Group'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25274103120118426)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>290
,p_column_identifier=>'H'
,p_column_label=>'Acc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25274527945118427)
,p_db_column_name=>'STATION_ID'
,p_display_order=>300
,p_column_identifier=>'I'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25274853152118428)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>310
,p_column_identifier=>'J'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25275340078118429)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>320
,p_column_identifier=>'K'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25275697810118429)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>330
,p_column_identifier=>'L'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25276142638118430)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>340
,p_column_identifier=>'M'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25276516192118430)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>350
,p_column_identifier=>'N'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25276880961118431)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>360
,p_column_identifier=>'O'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25277318260118431)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>370
,p_column_identifier=>'P'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25277747631118432)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>380
,p_column_identifier=>'Q'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(35717161157148889)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139867'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATION_ID:SUBSTATION_ID:SEQUENCE_NBR:GIG_SHEET_NAME:ACC_GROUP:ACCESSORY:INACTIVE_DATE:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_sort_column_1=>'STATION_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SEQUENCE_NBR'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STATION_ID:0:0:0:0:0'
,p_break_enabled_on=>'STATION_ID:0:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33308758862815845)
,p_plug_name=>'Model Inspection Gig Sheets'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74262232946953109)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P240_HEADER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22422415218632083)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33308758862815845)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24253713063196526)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33308758862815845)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'Title="Clear Entries and refresh Page."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22422809051632083)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33308758862815845)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P240_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Save Gig Sheet Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22423242936632083)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33308758862815845)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P240_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Gig Sheet"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21763588862792610)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(33308758862815845)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23493971752939072)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P240_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-times-circle'
,p_button_cattributes=>'title="Delete Gig Sheet and Tasks"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37348966969937721)
,p_branch_name=>'Go To Page 240'
,p_branch_action=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24253713063196526)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21727785705327308)
,p_name=>'P240_HEADER_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_source=>'P240_HEADER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728307504327313)
,p_name=>'P240_STATION_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Station'
,p_source=>'P240_STATION_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select station_code||''-''||station_name d, station_master_id r',
'  from qcis_station_master',
' where plant_id = :p240_plant_id',
'   and model_id = :p240_model_id;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P240_MODEL_ID'
,p_ajax_items_to_submit=>'P240_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>2
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728423141327314)
,p_name=>'P240_SUBSTATION_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Substation'
,p_source=>'P240_SUBSTATION_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substation_code||''-''||substation_name d, substation_id r',
'  from qcis_substation',
' where station_master_id = :p240_station_id;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P240_STATION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728465378327315)
,p_name=>'P240_ACC_GROUP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Acc Group'
,p_source=>'P240_ACC_GROUP'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728570975327316)
,p_name=>'P240_ACCESSORY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Accessory'
,p_source=>'P240_ACCESSORY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728676007327317)
,p_name=>'P240_GIG_SHEET_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Gig Sheet Name'
,p_source=>'P240_GIG_SHEET_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select inspection_name d, inspect_name_id r',
'from   qcis_inspection_names',
'where plant_id = :P240_PLANT_ID',
'order by inspection_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728777025327318)
,p_name=>'P240_SEQUENCE_NBR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Sequence'
,p_source=>'P240_SEQUENCE_NBR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728944449327319)
,p_name=>'P240_INACTIVE_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Inactive Date'
,p_source=>'P240_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>13
,p_cattributes_element=>'nowrap=nowrap;'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21763767648792612)
,p_name=>'P240_DIVISION_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_source=>'P240_DIVISION_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24899837587268715)
,p_name=>'P240_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74262232946953109)
,p_prompt=>'Last Update'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_cattributes_element=>'title="The date that the entry was last altered"'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24900156255268717)
,p_name=>'P240_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(74262232946953109)
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that last altered the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24900642469268718)
,p_name=>'P240_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(74262232946953109)
,p_prompt=>'Created'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>20
,p_cattributes_element=>'title="The date that the entry was created"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24900972239268719)
,p_name=>'P240_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(74262232946953109)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that created the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25197536416616488)
,p_name=>'P240_GS_HEADER_ID_SELECTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34900599813559347)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25860731128725911)
,p_name=>'P240_PLANT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
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
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25861752287751191)
,p_name=>'P240_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT model_year d,',
'                model_year r',
'  FROM bg_qcis.qcis_model_master',
' WHERE plant_id = :p240_plant_id',
'   AND inactive_date IS NULL',
'ORDER BY model_year'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>3
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862093866757386)
,p_name=>'P240_BRAND_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
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
,p_colspan=>2
,p_grid_column=>5
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862404792763063)
,p_name=>'P240_MODEL_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT model_name display_value,',
'       model_master_id return_value',
'  FROM bg_qcis.qcis_model_master',
' WHERE brand_id = :p240_brand_id',
'    AND ((plant_id = :p240_plant_id',
'    AND inactive_date IS NULL',
'    AND model_year = :p240_model_year)',
'    OR model_master_id = :p240_model_id)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P240_MODEL_YEAR'
,p_ajax_items_to_submit=>'P240_MODEL_YEAR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36535789589359016)
,p_name=>'P240_MANDATORY_YN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(26406340905779875)
,p_prompt=>'Mandatory'
,p_source=>'P240_MANDATORY_YN'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21762994893792604)
,p_tabular_form_region_id=>wwv_flow_api.id(21728022137327310)
,p_validation_name=>'Duplicate not allowed'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_GS_TEMPLATE_HEADER ',
'where PLANT_ID = TO_NUMBER(:P240_PLANT_ID)',
'AND DIVISION_ID = TO_NUMBER(:P240_DIVISION_ID)',
'AND BRAND_ID = TO_NUMBER(:P240_BRAND_ID)',
'AND MODEL_ID = TO_NUMBER(:P240_MODEL_ID) ',
'AND STATION_ID = TO_NUMBER(:P240_STATION_ID)',
'AND SUBSTATION_ID = TO_NUMBER(:P240_SUBSTATION_ID) ',
'AND ACC_GROUP = TO_NUMBER(:P240_ACC_GROUP) ',
'AND ACCESSORY = TO_NUMBER(:P240_ACCESSORY)',
'AND GIG_SHEET_NAME = TO_NUMBER(:P240_GIG_SHEET_NAME)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Duplicates not allowed'
,p_when_button_pressed=>wwv_flow_api.id(22423242936632083)
,p_associated_column=>'APEX$ROW_SELECTOR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21763180148792606)
,p_tabular_form_region_id=>wwv_flow_api.id(21728022137327310)
,p_validation_name=>'Accessory must be numeric'
,p_validation_sequence=>30
,p_validation=>'ACCESSORY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric, 1-3 digits in length, and may be zero.'
,p_associated_column=>'ACCESSORY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21763337392792607)
,p_tabular_form_region_id=>wwv_flow_api.id(21728022137327310)
,p_validation_name=>'Defecct_Hdr must be numeric'
,p_validation_sequence=>40
,p_validation=>'DEFECT_HDR_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'DEFECT_HDR_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21763353921792608)
,p_tabular_form_region_id=>wwv_flow_api.id(21728022137327310)
,p_validation_name=>'Responsible_Area is not null'
,p_validation_sequence=>50
,p_validation=>'RESPONSIBLE_AREA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Detail line responsible area is mandatory.'
,p_associated_column=>'RESPONSIBLE_AREA'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21761312558792587)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22422415218632083)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21761357915792588)
,p_event_id=>wwv_flow_api.id(21761312558792587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25199946265616512)
,p_name=>'ExpandOrCollapseModels'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25197617186616489)
,p_name=>'ExpandOrCollapseGSHeaders'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25197738949616490)
,p_event_id=>wwv_flow_api.id(25197617186616489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P240_GS_HEADER_ID_SELECTED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE WHEN :p240_header_id IS NULL THEN 1',
'            ELSE 0',
'         END',
'FROM DUAL;'))
,p_attribute_07=>'P240_GS_HEADER_ID_SELECTED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25197759287616491)
,p_event_id=>wwv_flow_api.id(25197617186616489)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34900599813559347)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P240_GS_HEADER_ID_SELECTED")',
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25862606819769322)
,p_name=>'Show templates'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_MODEL_ID'
,p_condition_element=>'P240_MODEL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25863027817769322)
,p_event_id=>wwv_flow_api.id(25862606819769322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25863494411769323)
,p_event_id=>wwv_flow_api.id(25862606819769322)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25863966223769323)
,p_event_id=>wwv_flow_api.id(25862606819769322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34900599813559347)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25436555786990001)
,p_event_id=>wwv_flow_api.id(25862606819769322)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21761190258792586)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Gig Sheet Header info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'--   if :p240_header_id is null and :p240_gig_sheet_name is not null then',
'--     select header_id',
'--       into :p240_header_id',
'--       from qcis_gs_template_header',
'--      where plant_id = :P240_PLANT_ID',
'--        and model_id = :P240_MODEL_ID',
'--        and station_id = :P240_STATION_ID',
'--        and substation_id = :P240_SUBSTATION_ID',
'--        and gig_sheet_name = :P240_GIG_SHEET_NAME;',
'--   end if;',
'   BEGIN',
'      SELECT station_id,',
'             substation_id,',
'             acc_group,',
'             accessory,',
'             gig_sheet_name,',
'             sequence_nbr,',
'             (select decode((select ''Y'' from dual where exists (select ''Y'' from qcis_gs_template_detail gstd where gstd.header_id = :p240_header_id and gstd.mandatory_yn = ''Y'')),''Y'',''Yes'',''No'') from dual) mandatory_yn,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p240_station_id,',
'             :p240_substation_id,',
'             :p240_acc_group,',
'             :p240_accessory,',
'             :p240_gig_sheet_name,',
'             :p240_sequence_nbr,',
'             :p240_mandatory_yn,',
'             :p240_inactive_date,',
'             :p240_last_update_date,',
'             :p240_last_updated_by,',
'             :p240_creation_date,',
'             :p240_created_by',
'        FROM QCIS_GS_TEMPLATE_HEADER',
'       WHERE header_id = :p240_header_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p240_station_id := NULL;',
'         :p240_substation_id := NULL;',
'         :p240_acc_group := NULL;',
'         :p240_accessory := NULL;',
'         :p240_gig_sheet_name := NULL;',
'         :p240_sequence_nbr := NULL;',
'         :p240_mandatory_yn := NULL;',
'         :p240_inactive_date := NULL;',
'         :p240_last_update_date := NULL;',
'         :p240_last_updated_by := NULL;',
'         :p240_creation_date := NULL;',
'         :p240_created_by := NULL;',
'   END;',
'',
'   BEGIN',
'      SELECT ',
'           --  pm.plant_code || '' - '' || pm.plant_name,',
'             mm.model_year,',
'             mm.model_master_id,',
'             mm.brand_id,',
'             mm.division_id,',
'             nvl(:p240_plant_id,mm.plant_id)',
'        INTO ',
'           --  :P240_PLANT_CODE_DO,',
'             :P240_MODEL_YEAR, :P240_MODEL_ID,',
'             :P240_BRAND_ID, :P240_DIVISION_ID, :P240_PLANT_ID',
'        FROM bg_qcis.qcis_model_master mm',
'             JOIN bg_qcis.qcis_plant_master pm',
'                ON pm.qcis_plant_master_id = mm.plant_id',
'       WHERE mm.model_master_Id = :P240_MODEL_ID;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'       --  :P240_PLANT_CODE_DO := NULL;',
'         :P240_MODEL_YEAR := NULL;',
'         :P240_MODEL_ID := NULL;',
'         :P240_BRAND_ID := NULL;',
'         :P240_DIVISION_ID := NULL;',
'         :P240_PLANT_ID := NULL;',
'   END;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21762237184792596)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select qcis_gs_template_header_seq.nextval',
'  into :p240_header_id',
'  from dual;',
'insert into QCIS_GS_TEMPLATE_HEADER',
'      (header_id,',
'       plant_id,',
'       brand_id,',
'       division_id,',
'       model_id,',
'       station_id,',
'       substation_id,',
'       acc_group,',
'       accessory,',
'       gig_sheet_name,',
'       gig_sheet_type,',
'       sequence_nbr,',
'       inactive_date)',
'  values(:p240_header_id,',
'         :p240_plant_id,',
'         :240_brand_id,',
'         :p240_division_id,',
'         :p240_model_id,',
'         :p240_station_id,',
'         :p240_substation_id,',
'         :p240_acc_group,',
'         :p240_accessory,',
'         :p240_gig_sheet_name,',
'         ''G'',',
'         :p240_sequence_nbr,',
'         :p240_inactive_date);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22423242936632083)
,p_process_success_message=>'Gig Sheet successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21762256435792597)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update QCIS_GS_TEMPLATE_HEADER',
'   set sequence_nbr = :p240_sequence_nbr,',
'       inactive_date = :p240_inactive_date',
' where header_id = :p240_header_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22422809051632083)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21763730447792611)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Gig Sheet'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete QCIS_GS_TEMPLATE_DETAIL',
' where header_id = :p240_header_id;',
'delete QCIS_GS_TEMPLATE_HEADER',
' where header_id = :p240_header_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21763588862792610)
,p_process_success_message=>'Delete completed successfully'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21761747504792591)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21728022137327310)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Gig Sheet Template Tasks - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Changes successfully applied'
);
end;
/
