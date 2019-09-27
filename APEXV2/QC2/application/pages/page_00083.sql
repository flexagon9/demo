prompt --application/pages/page_00083
begin
wwv_flow_api.create_page(
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Image Maps - Draft HTML'
,p_page_mode=>'MODAL'
,p_step_title=>'Image Maps - Draft HTML'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'//',
'// Get the display value from an LOV for the supplied ID',
'//',
'// This is used primarily when an inline error is displayed and ',
'// there are Popup Key LOV items displayed in a tabular form. ',
'// In this case APEX does not display the return values for',
'// the Popup Key LOVs on any newly added records.',
'//',
'function get_LOV_value(pLOV,pId){',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=get_LOV_value'',0);',
'  get.addParam(''x01'',pLOV);',
'  get.addParam(''x02'',pId);',
'  return get.get();',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'750'
,p_dialog_width=>'1000'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190924132625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38563156427216339)
,p_plug_name=>'Draft HTML'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87541561612996315)
,p_plug_name=>'Component Lists'
,p_parent_plug_id=>wwv_flow_api.id(38563156427216339)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38570657094216426)
,p_plug_name=>'Components'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'-- apex_item.checkbox (7,cc_id) id_chkbx,',
'CC_ID,',
'DRAFT_ID,',
'COMP_ID,',
'INACTIVE_DATE',
'from QCIS_CELL_COMP_DRAFT',
'where DRAFT_ID = :P83_HTML_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P83_HTML_ID'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2620040461256301)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2620117633256302)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26926040040499003)
,p_name=>'CC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CC_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cc Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26926181201499004)
,p_name=>'DRAFT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DRAFT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Draft Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(26926240344499005)
,p_name=>'COMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Component'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm.plant_code||'' - ''||dm.division_code||'' - ''||cm.component_name||'' - ''||cm.component_number||'' - ''||dch.defect_list_name d, cm.component_id r ',
'from QCIS_COMPONENT_MASTER cm, qcis_defect_code_header dch, qcis_division_master dm, qcis_plant_master pm, qcis_draft_html dh, qcis_im_template_draft itd',
'where',
'(cm.defect_header_id = dch.defect_code_header_id',
'and dch.division_id = dm.qcis_division_master_id',
'and dch.plant_id = pm.qcis_plant_master_id',
'and dh.html_id = :P83_HTML_ID',
'and dh.draft_id = itd.header_id',
'and dch.plant_id = itd.plant_id) ',
'and (cm.inactive_date IS NULL) ',
'order by cm.component_name'))
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
 p_id=>wwv_flow_api.id(26926318934499006)
,p_name=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INACTIVE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Inactive Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(26925831224499001)
,p_internal_uid=>26925831224499001
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
 p_id=>wwv_flow_api.id(26933582307499386)
,p_interactive_grid_id=>wwv_flow_api.id(26925831224499001)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(26933681240499386)
,p_report_id=>wwv_flow_api.id(26933582307499386)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(2626060096256907)
,p_view_id=>wwv_flow_api.id(26933681240499386)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(2620040461256301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26934613199499396)
,p_view_id=>wwv_flow_api.id(26933681240499386)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(26926040040499003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26935126351499398)
,p_view_id=>wwv_flow_api.id(26933681240499386)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(26926181201499004)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26935658194499400)
,p_view_id=>wwv_flow_api.id(26933681240499386)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(26926240344499005)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>468
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26936133257499403)
,p_view_id=>wwv_flow_api.id(26933681240499386)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(26926318934499006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>187
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49394858168661221)
,p_plug_name=>'IM Drafts HTML Buttons'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64568391482427186)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P83_COMPONENT_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3342031947564004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(49394858168661221)
,p_button_name=>'Back'
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
 p_id=>wwv_flow_api.id(3342433065564005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(49394858168661221)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3342844525564005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(49394858168661221)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P83_HTML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="IM Draft Changes"'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3343289546564006)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(49394858168661221)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P83_HTML_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create IM Draft"'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26676706223859208)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(49394858168661221)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete HTML Line & Components'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-scissors'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26683481566859217)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87541561612996315)
,p_button_name=>'ADD_COMP_FROM_CL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Components from Selected Component List'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26686951428859223)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(38570657094216426)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Add Row'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26677507625859209)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(38563156427216339)
,p_button_name=>'SAVE_body'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Apply Component Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P83_HTML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26687388204859223)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(38570657094216426)
,p_button_name=>'DELETE_SELECTED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Delete Selected'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26677908715859210)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(38563156427216339)
,p_button_name=>'CREATE_body'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Create Body'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P83_HTML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26687762211859223)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(38570657094216426)
,p_button_name=>'DELETE_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Delete All'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26678347046859210)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(38563156427216339)
,p_button_name=>'APPEND_HTML_body'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Append HTML Information'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26696623920859233)
,p_branch_name=>'Go To Page 83'
,p_branch_action=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26678347046859210)
,p_branch_sequence=>10
,p_branch_comment=>'Created 13-MAY-2013 10:13 by TBOWERS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26695831816859232)
,p_branch_name=>'Go To Page 83'
,p_branch_action=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26697096517859233)
,p_branch_name=>'Go To Page 81'
,p_branch_action=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13920901996220023)
,p_branch_sequence=>50
,p_branch_comment=>'Created 21-MAY-2013 08:29 by TBOWERS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26696251139859232)
,p_branch_name=>'Go To Page 83'
,p_branch_action=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>70
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3425616820681920)
,p_branch_name=>'Cancel - Refresh - Redisplay the page'
,p_branch_action=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3342433065564005)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3348600686608148)
,p_name=>'P83_LAST_UPDATE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64568391482427186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3349060016608149)
,p_name=>'P83_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64568391482427186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3349499834608149)
,p_name=>'P83_CREATION_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(64568391482427186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3349845710608150)
,p_name=>'P83_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(64568391482427186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26678722506859210)
,p_name=>'P83_HTML_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Html Id'
,p_source=>'HTML_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26679150974859211)
,p_name=>'P83_DRAFT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'DRAFT_ID'
,p_source=>'DRAFT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26679549604859211)
,p_name=>'P83_PLANT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_source=>'select PLANT_ID from QCIS_IM_TEMPLATE_DRAFT where HEADER_ID = :P83_DRAFT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26679922415859212)
,p_name=>'P83_MODEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:12px;color:#0000A0">Model:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select mm.model_year||''-''||mm.model_name',
'from',
'qcis_im_template_draft itd, qcis_model_master mm',
'where itd.header_id=:P83_DRAFT_ID and',
'      mm.model_master_id=itd.model_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-weight:bold"'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26680385002859213)
,p_name=>'P83_INSPECTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:12px;color:#0000A0">Inspection:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select insp.inspection_name',
'from',
'qcis_im_template_draft itd, qcis_inspection_names insp',
'where itd.header_id=:P83_DRAFT_ID and',
'      insp.inspect_name_id=itd.inspect_name_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-weight:bold"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26680768705859213)
,p_name=>'P83_IMAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:12px;color:#0000A0">Image:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select img.image_name',
'from',
'qcis_im_template_draft itd, qcis_images img',
'where itd.header_id=:P83_DRAFT_ID and',
'      img.images_id=itd.image_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-weight:bold"'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26681160016859213)
,p_name=>'P83_CELL_TITLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:10px;color:#0000A0">Cell Title:</span>'
,p_source=>'CELL_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-weight:bold"'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26681595732859214)
,p_name=>'P83_LINE_NBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:12px;color:#0000A0">Line #:</span>'
,p_source=>'LINE_NBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="font-weight:bold"'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26681933929859215)
,p_name=>'P83_SPACER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_source=>'P83_SPACER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'style="width:50px"'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26682348933859216)
,p_name=>'P83_INACTIVE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26682763941859216)
,p_name=>'P83_HTML'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(38563156427216339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:12px;color:#0000A0">HTML</span>'
,p_source=>'HTML'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>10
,p_colspan=>12
,p_grid_column=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26683862608859218)
,p_name=>'P83_COMP_LIST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(87541561612996315)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:12px;color:#0000A0">Component List:</span>'
,p_post_element_text=>'&nbsp;&nbsp;<span style="font-size:12px;color:#0000A0"> Note - Adding components from a Component List will NOT REMOVE EXISTING COMPONENTS currently assigned to the hotspot.</span>'
,p_source=>'COMP_LIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select clh.COMP_LIST_NAME d, clh.ID r',
'  from QCIS_COMPONENT_LIST_HEADER clh, qcis_draft_html dh, qcis_im_template_draft itd',
'  where',
'  dh.html_id = :P83_HTML_ID and',
'  dh.draft_id = itd.header_id and',
'  clh.plant_id = itd.plant_id and',
'  clh.division_id = itd.division_id and',
'  clh.INACTIVE_DATE IS NULL',
'  order by clh.comp_list_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-None-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26694888317859231)
,p_name=>'Component LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26695306639859231)
,p_event_id=>wwv_flow_api.id(26694888317859231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Find any LOV items that have an ID value but do not have an',
'// associated display value. This will happen if new records have',
'// been added and there is an inline error displayed when the page',
'// is submitted.',
'// - <input type="hidden"> is the hidden ID value for the LOV',
'// - <input type="text"> is the displayed value',
'// - ''COMPONENT_2030_27'' is the name of the named LOV for this item',
'$(''span.lov'').each(function(){',
'  var vID = $(this).find(''input[type="hidden"]'');',
'  var vVal = $(this).find(''input[type="text"]'');',
'   if($(vVal).val()==""){',
'    $(vVal).val(get_LOV_value(''COMPONENT_2030_27'',$(vID).val()));',
'  }',
'});'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3343645524569950)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3342031947564004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3344054605569951)
,p_event_id=>wwv_flow_api.id(3343645524569950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26691208508859227)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_DRAFT_HTML'
,p_attribute_02=>'QCIS_DRAFT_HTML'
,p_attribute_03=>'P83_HTML_ID'
,p_attribute_04=>'HTML_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26691602630859228)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P83_HTML_ID is null then',
'        select "QCIS_DRAFT_HTML_SEQ".nextval',
'          into :P83_HTML_ID',
'          from dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26677908715859210)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26692043350859228)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_DRAFT_HTML'
,p_attribute_02=>'QCIS_DRAFT_HTML'
,p_attribute_03=>'P83_HTML_ID'
,p_attribute_04=>'HTML_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3342844525564005)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26693217519859229)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete HTML & Components'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'-- delete the components, the children of the HTML line...',
'delete from qcis_cell_comp_draft ',
'where draft_id = to_number(:P83_HTML_ID);',
'',
'-- delete the HTML line...',
'delete from qcis_draft_html ',
'where html_id = to_number(:P83_HTML_ID);',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26676706223859208)
,p_process_success_message=>'- - HTML Line and Components Deleted - -'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26692813427859229)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Construct URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update the CELL_TITLE column from the TITLE attribute in the HTML column.',
'',
'declare',
'v_href varchar2(10) := ''href="'';',
'v_fp varchar2(200) := NULL;',
'v_session integer := v(''APP_SESSION''); ',
'v_debug varchar2(50) := ''::NO::P10_HEADER_ID,P10_CELL_TITLE:'';',
'v_id varchar2(20) := NULL;',
'v_title varchar2(40) := :P83_CELL_TITLE;',
'v_url varchar2(4000) := NULL;',
'v_url2 varchar2(4000) := NULL;',
'v_html varchar2(4000) := NULL;',
' ',
'begin',
'-- typical html data in this table looks like this the syntax below',
'-- the first line will be entered by the user, we will append the rest',
'-- <area shape="rect" coords="178,133,222,177"',
'-- href="f?p=2031:10:168591775188478::NO::P10_HEADER_ID,P10_CELL_TITLE:854,5-4" alt="5-4" title="5-4"/>',
'',
'-- start by getting the f?p= part from a control record...',
'   select keyword_value into v_fp from qcis_keywords ',
'   where keyword_type = ''Control'' and keyword_code = ''URL_PATH_IM'';',
'',
'-- get current HTML column value straight from table...',
'   select html,cell_title,draft_id into v_html,v_title,v_id from qcis_draft_html where html_id = :P83_HTML_ID;',
'',
'-- put it all together...',
'   v_url := v_href||v_fp||v_session||v_debug||v_id||'',''||v_title||''" alt="''||v_title||''" title="''||v_title||''"/>'';',
'',
'-- put the two parts together...',
'   v_url2 := v_html||v_url;  ',
'',
'-- now update the table with the value...',
'   Update qcis_draft_html set html = v_url2 where html_id = :P83_HTML_ID;',
'',
'end;'))
,p_process_when_button_id=>wwv_flow_api.id(26678347046859210)
,p_process_when_type=>'NEVER'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26692488149859228)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26693672797859229)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Components to Hotspot'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'-- Update the Component List FK in the hotspot to the selected value ...',
'   update qcis_draft_html set comp_list_id = :P83_COMP_LIST_ID where html_id = :P83_HTML_ID; ',
'',
'-- Remove any components on this hotspot...',
'--     delete from qcis_cell_comp_draft where draft_id = :P83_HTML_ID;',
'--     commit;',
'     ',
'   FOR import',
'      IN (SELECT * ',
'          FROM qcis_component_list_detail cld',
'              WHERE cld.comp_list_hdr_id = :P83_COMP_LIST_ID',
'         AND NOT EXISTS',
'                        (SELECT ''Y''',
'                           FROM qcis_cell_comp_draft ccd',
'                          WHERE     ccd.draft_id = :P83_HTML_ID',
'                                AND ccd.comp_id = cld.comp_master_id',
'                        )',
'         )',
'      ',
'   LOOP',
'-- Insert the components from the component list...',
'         insert into qcis_cell_comp_draft',
'         (draft_id, comp_id, last_update_date, last_updated_by, creation_date, created_by)',
'         values (:P83_HTML_ID, import.comp_master_id, SYSDATE, V(''APP_USER''), SYSDATE, V(''APP_USER''));',
'',
'   END LOOP;  ',
'      ',
'',
'END;   ',
''))
,p_process_error_message=>'Error adding components to hotspot.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26683481566859217)
,p_process_success_message=>'Components added to hotspot.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26694036875859230)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Selected Components'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'-- Remove selected components from this hotspot...',
'  FOR I in 1..APEX_APPLICATION.G_f07.COUNT LOOP',
'    delete from qcis_cell_comp_draft',
'    WHERE CC_ID = TO_NUMBER(Apex_Application.g_f07(i));      ',
'  END LOOP;',
'      ',
'END;   ',
''))
,p_process_error_message=>'Error removing components from hotspot.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26687388204859223)
,p_process_success_message=>'Selected components removed from hotspot.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26694461521859230)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete All Components'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'-- Remove all components on this hotspot...',
'   delete from qcis_cell_comp_draft where draft_id = :P83_HTML_ID;',
'      ',
'END;   ',
''))
,p_process_error_message=>'Error removing components from hotspot.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26687762211859223)
,p_process_success_message=>'All components removed from hotspot.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2620299312256303)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(38570657094216426)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Components - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
