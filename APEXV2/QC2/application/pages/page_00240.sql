prompt --application/pages/page_00240
begin
wwv_flow_api.create_page(
 p_id=>240
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
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
 p_id=>wwv_flow_api.id(10436673741993326)
,p_plug_name=>'Gig Sheet Template Tasks'
,p_region_name=>'IG'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
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
 p_id=>wwv_flow_api.id(10437731687993337)
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
 p_id=>wwv_flow_api.id(10437932993993339)
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
 p_id=>wwv_flow_api.id(10438024902993340)
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
 p_id=>wwv_flow_api.id(10438120480993341)
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
 p_id=>wwv_flow_api.id(10438234902993342)
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
 p_id=>wwv_flow_api.id(10438309860993343)
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
 p_id=>wwv_flow_api.id(10438447077993344)
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
 p_id=>wwv_flow_api.id(10438540359993345)
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
 p_id=>wwv_flow_api.id(10438659660993346)
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
,p_lov_id=>wwv_flow_api.id(4685285324311780)
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
 p_id=>wwv_flow_api.id(10438787089993347)
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
 p_id=>wwv_flow_api.id(10438853083993348)
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
 p_id=>wwv_flow_api.id(10438947008993349)
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
 p_id=>wwv_flow_api.id(10470105485458605)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(10470222006458606)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(10437629360993336)
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
 p_id=>wwv_flow_api.id(10461103270312693)
,p_interactive_grid_id=>wwv_flow_api.id(10437629360993336)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(10461243342312694)
,p_report_id=>wwv_flow_api.id(10461103270312693)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10461702904312696)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(10437731687993337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10462794486312701)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(10437932993993339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10463216254312702)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(10438024902993340)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10463721462312705)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(10438120480993341)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10464250882312708)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(10438234902993342)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10464779380312711)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(10438309860993343)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
,p_sort_order=>3
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10465238300312714)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(10438447077993344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10465728721312716)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(10438540359993345)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10466226043312718)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(10438659660993346)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10466739481312721)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(10438787089993347)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10467232350312723)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(10438853083993348)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10467736585312725)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(10438947008993349)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11189001590073344)
,p_view_id=>wwv_flow_api.id(10461243342312694)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(10470105485458605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15114992510445891)
,p_plug_name=>'Gig Sheet Template'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b> Gig Sheet Template </b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23609251418225363)
,p_plug_name=>'HideShow GS Template Selector'
,p_parent_plug_id=>wwv_flow_api.id(15114992510445891)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
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
 p_id=>wwv_flow_api.id(23609501009225366)
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
 p_id=>wwv_flow_api.id(13979914494784438)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>220
,p_column_identifier=>'A'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13980352456784439)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>230
,p_column_identifier=>'B'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13980779320784439)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>240
,p_column_identifier=>'C'
,p_column_label=>'Plant Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13981188002784440)
,p_db_column_name=>'BRAND_ID'
,p_display_order=>250
,p_column_identifier=>'D'
,p_column_label=>'Brand Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13981547203784440)
,p_db_column_name=>'DIVISION_ID'
,p_display_order=>260
,p_column_identifier=>'E'
,p_column_label=>'Division Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13981964836784441)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>270
,p_column_identifier=>'F'
,p_column_label=>'Model Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13982313125784442)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>280
,p_column_identifier=>'G'
,p_column_label=>'Group'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13982754724784442)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>290
,p_column_identifier=>'H'
,p_column_label=>'Acc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13983179549784443)
,p_db_column_name=>'STATION_ID'
,p_display_order=>300
,p_column_identifier=>'I'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13983504756784444)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>310
,p_column_identifier=>'J'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13983991682784445)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>320
,p_column_identifier=>'K'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13984349414784445)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>330
,p_column_identifier=>'L'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13984794242784446)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>340
,p_column_identifier=>'M'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13985167796784446)
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
 p_id=>wwv_flow_api.id(13985532565784447)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>360
,p_column_identifier=>'O'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13985969864784447)
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
 p_id=>wwv_flow_api.id(13986399235784448)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>380
,p_column_identifier=>'Q'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24425812761814905)
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
 p_id=>wwv_flow_api.id(22017410467481861)
,p_plug_name=>'Model Inspection Gig Sheets'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62970884551619125)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
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
 p_id=>wwv_flow_api.id(11131066823298099)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22017410467481861)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12962364667862542)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22017410467481861)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'Title="Clear Entries and refresh Page."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11131460656298099)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22017410467481861)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
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
 p_id=>wwv_flow_api.id(11131894541298099)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22017410467481861)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
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
 p_id=>wwv_flow_api.id(10472240467458626)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(22017410467481861)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(12202623357605088)
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
 p_id=>wwv_flow_api.id(26057618574603737)
,p_branch_name=>'Go To Page 240'
,p_branch_action=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12962364667862542)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10436437309993324)
,p_name=>'P240_HEADER_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_source=>'P240_HEADER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10436959108993329)
,p_name=>'P240_STATION_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10437074745993330)
,p_name=>'P240_SUBSTATION_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10437116982993331)
,p_name=>'P240_ACC_GROUP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_prompt=>'Acc Group'
,p_source=>'P240_ACC_GROUP'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10437222579993332)
,p_name=>'P240_ACCESSORY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_prompt=>'Accessory'
,p_source=>'P240_ACCESSORY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P240_HEADER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10437327611993333)
,p_name=>'P240_GIG_SHEET_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10437428629993334)
,p_name=>'P240_SEQUENCE_NBR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_prompt=>'Sequence'
,p_source=>'P240_SEQUENCE_NBR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10437596053993335)
,p_name=>'P240_INACTIVE_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_prompt=>'Inactive Date'
,p_source=>'P240_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>13
,p_cattributes_element=>'nowrap=nowrap;'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10472419253458628)
,p_name=>'P240_DIVISION_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_source=>'P240_DIVISION_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13608489191934731)
,p_name=>'P240_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(62970884551619125)
,p_prompt=>'Last Update'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_cattributes_element=>'title="The date that the entry was last altered"'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13608807859934733)
,p_name=>'P240_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(62970884551619125)
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that last altered the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13609294073934734)
,p_name=>'P240_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(62970884551619125)
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
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13609623843934735)
,p_name=>'P240_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(62970884551619125)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that created the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13906188021282504)
,p_name=>'P240_GS_HEADER_ID_SELECTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23609251418225363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14569382733391927)
,p_name=>'P240_PLANT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14570403892417207)
,p_name=>'P240_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14570745471423402)
,p_name=>'P240_BRAND_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14571056397429079)
,p_name=>'P240_MODEL_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25244441194025032)
,p_name=>'P240_MANDATORY_YN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15114992510445891)
,p_prompt=>'Mandatory'
,p_source=>'P240_MANDATORY_YN'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10471646498458620)
,p_tabular_form_region_id=>wwv_flow_api.id(10436673741993326)
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
,p_when_button_pressed=>wwv_flow_api.id(11131894541298099)
,p_associated_column=>'APEX$ROW_SELECTOR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10471831753458622)
,p_tabular_form_region_id=>wwv_flow_api.id(10436673741993326)
,p_validation_name=>'Accessory must be numeric'
,p_validation_sequence=>30
,p_validation=>'ACCESSORY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric, 1-3 digits in length, and may be zero.'
,p_associated_column=>'ACCESSORY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10471988997458623)
,p_tabular_form_region_id=>wwv_flow_api.id(10436673741993326)
,p_validation_name=>'Defecct_Hdr must be numeric'
,p_validation_sequence=>40
,p_validation=>'DEFECT_HDR_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'DEFECT_HDR_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10472005526458624)
,p_tabular_form_region_id=>wwv_flow_api.id(10436673741993326)
,p_validation_name=>'Responsible_Area is not null'
,p_validation_sequence=>50
,p_validation=>'RESPONSIBLE_AREA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Detail line responsible area is mandatory.'
,p_associated_column=>'RESPONSIBLE_AREA'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10469964163458603)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11131066823298099)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10470009520458604)
,p_event_id=>wwv_flow_api.id(10469964163458603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13908597870282528)
,p_name=>'ExpandOrCollapseModels'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13906268791282505)
,p_name=>'ExpandOrCollapseGSHeaders'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13906390554282506)
,p_event_id=>wwv_flow_api.id(13906268791282505)
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
 p_id=>wwv_flow_api.id(13906410892282507)
,p_event_id=>wwv_flow_api.id(13906268791282505)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23609251418225363)
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
 p_id=>wwv_flow_api.id(14571258424435338)
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
 p_id=>wwv_flow_api.id(14571679422435338)
,p_event_id=>wwv_flow_api.id(14571258424435338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14572146016435339)
,p_event_id=>wwv_flow_api.id(14571258424435338)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14572617828435339)
,p_event_id=>wwv_flow_api.id(14571258424435338)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23609251418225363)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14145207391656017)
,p_event_id=>wwv_flow_api.id(14571258424435338)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10469841863458602)
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
 p_id=>wwv_flow_api.id(10470888789458612)
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
,p_process_when_button_id=>wwv_flow_api.id(11131894541298099)
,p_process_success_message=>'Gig Sheet successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10470908040458613)
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
,p_process_when_button_id=>wwv_flow_api.id(11131460656298099)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10472382052458627)
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
,p_process_when_button_id=>wwv_flow_api.id(10472240467458626)
,p_process_success_message=>'Delete completed successfully'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10470399109458607)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(10436673741993326)
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
