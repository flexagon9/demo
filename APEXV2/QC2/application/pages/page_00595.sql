prompt --application/pages/page_00595
begin
wwv_flow_api.create_page(
 p_id=>595
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Edit Variable Data Element'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Variable Data Element'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'900'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190822171244'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12007093009912913)
,p_plug_name=>'The Big Kahuna'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11074520830216247)
,p_plug_name=>'Audit Information'
,p_parent_plug_id=>wwv_flow_api.id(12007093009912913)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P595_VAR_DATA_ELEMENT_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11836227774692802)
,p_plug_name=>'Edit Variable Data Element'
,p_parent_plug_id=>wwv_flow_api.id(12007093009912913)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Maintain Variable Data Element</b></div> ',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12006175818912904)
,p_plug_name=>'Allowable Values'
,p_parent_plug_id=>wwv_flow_api.id(11836227774692802)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P595_VAR_DATA_ELEMENT_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11074683605216248)
,p_plug_name=>'Valid Values'
,p_parent_plug_id=>wwv_flow_api.id(12006175818912904)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT var_data_element_id,',
'       var_data_attribute_id,',
'       allowable_value,',
'       value_type_code',
'  FROM bg_qcis.qcis_var_data_attributes',
' WHERE var_data_element_id = :p595_var_data_element_id',
'   AND value_type_code = :p595_value_type_code;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P595_VAR_DATA_ELEMENT_ID,,P595_VALUE_TYPE_CODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11074876706216250)
,p_name=>'VAR_DATA_ELEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAR_DATA_ELEMENT_ID'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P595_VAR_DATA_ELEMENT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12005863920912901)
,p_name=>'VAR_DATA_ATTRIBUTE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAR_DATA_ATTRIBUTE_ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12005909633912902)
,p_name=>'ALLOWABLE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALLOWABLE_VALUE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Allowable Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>400
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
 p_id=>wwv_flow_api.id(12006073495912903)
,p_name=>'VALUE_TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE_TYPE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P595_VALUE_TYPE_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12006310391912906)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12006428450912907)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(11074752499216249)
,p_internal_uid=>11074752499216249
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
 p_id=>wwv_flow_api.id(12012695782928550)
,p_interactive_grid_id=>wwv_flow_api.id(11074752499216249)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(12012707939928551)
,p_report_id=>wwv_flow_api.id(12012695782928550)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12013291285928562)
,p_view_id=>wwv_flow_api.id(12012707939928551)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(11074876706216250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12013714109928569)
,p_view_id=>wwv_flow_api.id(12012707939928551)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(12005863920912901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12014296754928576)
,p_view_id=>wwv_flow_api.id(12012707939928551)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(12005909633912902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12014712561928580)
,p_view_id=>wwv_flow_api.id(12012707939928551)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(12006073495912903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12017410459939363)
,p_view_id=>wwv_flow_api.id(12012707939928551)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(12006310391912906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12007371342912916)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11073334024216235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12007371342912916)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11836991279692802)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12007371342912916)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11836788540692802)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12007371342912916)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P595_VAR_DATA_ELEMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11836694114692802)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12007371342912916)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P595_VAR_DATA_ELEMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11073795094216239)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12007371342912916)
,p_button_name=>'BUILDNEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create & Build Another'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P595_VAR_DATA_ELEMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Save changes and clear screen to build a new element."'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11073837892216240)
,p_branch_name=>'Save and Build New'
,p_branch_action=>'f?p=&APP_ID.:595:&SESSION.::&DEBUG.:RP,595::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11073795094216239)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11073640765216238)
,p_branch_name=>'Refresh page (Cancel)'
,p_branch_action=>'f?p=&APP_ID.:595:&SESSION.::&DEBUG.:RP,595:P595_VAR_DATA_ELEMENT_ID:&P595_VAR_DATA_ELEMENT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11836991279692802)
,p_branch_sequence=>21
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11838992038692806)
,p_name=>'P595_VAR_DATA_ELEMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_source=>'VAR_DATA_ELEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11839362389692834)
,p_name=>'P595_PLANT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  RETURN (:G_DEFAULT_PLANT_ID);',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11839732087692839)
,p_name=>'P595_ELEMENT_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name:'
,p_source=>'ELEMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11840187601692839)
,p_name=>'P595_ACC_GROUP'
,p_item_sequence=>103
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acc Group:'
,p_source=>'ACC_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11840552342692840)
,p_name=>'P595_ACCESSORY'
,p_item_sequence=>106
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Accessory:'
,p_source=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11840996152692840)
,p_name=>'P595_MANDATORY_FLAG'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Mandatory:'
,p_source=>'MANDATORY_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11841385631692841)
,p_name=>'P595_DESCRIPTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description:'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11841737110692841)
,p_name=>'P595_DATA_TYPE_CODE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Data Type:'
,p_source=>'DATA_TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Letters and Numbers;A,Numbers Only;N,Date;D,Date and Time;T'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11842103136692842)
,p_name=>'P595_MIN_VALUE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min Value:'
,p_source=>'MIN_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11842509792692842)
,p_name=>'P595_MAX_VALUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Max Value:'
,p_source=>'MAX_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cattributes_element=>'title="(Min/Max values are only applicable for NUMERIC fields)"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11842911618692843)
,p_name=>'P595_ALLOW_MIN_MAX_EXCEED_FLAG'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Allow Min Max Exceed Flag'
,p_source=>'ALLOW_MIN_MAX_EXCEED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11843343589692843)
,p_name=>'P595_SHOW_BRAND_FLAG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Show Brand:'
,p_source=>'SHOW_BRAND_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11843791780692844)
,p_name=>'P595_SHOW_MODEL_FLAG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Show Model:'
,p_source=>'SHOW_MODEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11844133637692845)
,p_name=>'P595_INACTIVE_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11844511354692846)
,p_name=>'P595_LAST_UPDATE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11074520830216247)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date:'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11844919768692846)
,p_name=>'P595_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11074520830216247)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11845389245692847)
,p_name=>'P595_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11074520830216247)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date:'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11845770068692848)
,p_name=>'P595_CREATED_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11074520830216247)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11846109392692848)
,p_name=>'P595_LOWER_CONTROL_LIMIT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lower Limit:'
,p_source=>'LOWER_CONTROL_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11846527821692849)
,p_name=>'P595_UPPER_CONTROL_LIMIT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upper  Limit:'
,p_source=>'UPPER_CONTROL_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11846950326692849)
,p_name=>'P595_USER_HINTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Hints:'
,p_source=>'USER_HINTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_cattributes_element=>'title="(Hints will show up like this)"'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11847374763692850)
,p_name=>'P595_UNIT_OF_MEASURE'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Of Measure:'
,p_source=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'UNITS_OF_MEASURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select INITCAP(keyword_value) d, ',
'       keyword_value r',
'  from qcis_keywords',
' where upper(keyword_type) = ''UOM''',
'   and inactive_date is NULL',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11847792435692850)
,p_name=>'P595_HELP_LINK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Help Link:'
,p_source=>'HELP_LINK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>300
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11848117575692851)
,p_name=>'P595_CATEGORY_TYPE_CODE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category:'
,p_source=>'CATEGORY_TYPE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT keyword_value d,',
'       keyword_code r',
'  FROM qcis_keywords',
' WHERE keyword_type = ''Vdata_Category''',
'   AND inactive_date IS NULL',
' order by UPPER(keyword_value)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11848511695692851)
,p_name=>'P595_CUSTOMER_SHARE_FLAG'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Share with Customer:'
,p_source=>'CUSTOMER_SHARE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11848989657692851)
,p_name=>'P595_DEFAULT_REPAIRED_FLAG'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Default Replace/Rework:'
,p_source=>'DEFAULT_REPAIRED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11849333550692852)
,p_name=>'P595_USE_SAMPLES_FLAG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Use Samples:'
,p_source=>'USE_SAMPLES_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11849789164692852)
,p_name=>'P595_WHERE_COLLECTED_CODE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'QCIS'
,p_prompt=>'Where Collected:'
,p_source=>'WHERE_COLLECTED_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WHERE_VAR_DATA_COLLECTED'
,p_lov=>'.'||wwv_flow_api.id(12023374858144939)||'.'
,p_cHeight=>1
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11850173770692853)
,p_name=>'P595_OVERRIDE_VAR_DATA_ELEMENT_ID'
,p_item_sequence=>109
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Override Default Option:'
,p_source=>'OVERRIDE_VAR_DATA_ELEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT acc_group || '','' || accessory || '' - '' || element_name d,',
'       var_data_element_id r',
'  FROM bg_qcis.qcis_var_data_elements',
' WHERE plant_id = :g_default_plant_id',
'   AND acc_group = 0',
'   AND accessory = 0',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-None-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12006281113912905)
,p_name=>'P595_VALUE_TYPE_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12006175818912904)
,p_item_default=>'V'
,p_prompt=>'Values for:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Value;V,Brand;B,Model;M'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12007257385912915)
,p_name=>'P595_MIN_MAX_MESSAGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_source=>'(Min/Max values are only applicable for NUMERIC fields)'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12007517329912918)
,p_name=>'P595_STATUS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(11836227774692802)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Status: '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  If :P595_INACTIVE_DATE is NULL then',
'    Return (''A'');',
'  Else',
'    Return (''I'');',
'  End if;',
'',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
begin
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12007106229912914)
,p_validation_name=>'Element name is unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_error_message   VARCHAR2 (500);',
'   v_checker_flag    VARCHAR2 (1);',
'BEGIN',
'   v_error_message := NULL;',
'   v_checker_flag := ''N'';',
'',
'   BEGIN',
'      SELECT ''Y''',
'        INTO v_checker_flag',
'        FROM bg_qcis.qcis_var_data_elements',
'       WHERE plant_id = :g_default_plant_id',
'         AND element_name = :p595_element_name',
'         AND NVL(acc_group,-1) = NVL(:p595_acc_group,-1)',
'         AND NVL(accessory,-1) = NVL(:p595_accessory,-1)',
'         AND var_data_element_id <> NVL ( :p595_var_data_element_id, 0);',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'         v_checker_flag := ''N'';',
'      WHEN OTHERS THEN',
'         v_checker_flag := ''Y'';',
'   END;',
'',
'   IF v_checker_flag = ''Y'' THEN',
'      v_error_message :=',
'         ''Element '' || :p595_element_name || '' already exists in the system.'';',
'   END IF;',
'',
'   RETURN (v_error_message);',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(11839732087692839)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12007447292912917)
,p_tabular_form_region_id=>wwv_flow_api.id(11074683605216248)
,p_validation_name=>'Allowable values unique'
,p_validation_sequence=>20
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
'        FROM bg_qcis.qcis_var_data_attributes',
'       WHERE var_data_element_Id = :p595_var_data_element_Id',
'         AND allowable_value = :allowable_value',
'         AND var_data_attribute_id <> NVL ( :var_data_attribute_id, -99);',
'   EXCEPTION',
'      WHEN TOO_MANY_ROWS THEN',
'         v_checker_flag := ''Y'';',
'      When no_data_found then ',
'         v_checker_flag := ''N'';',
'      WHEN OTHERS THEN',
'         v_checker_flag := ''N'';',
'   END;',
'',
'   IF v_checker_flag = ''Y'' THEN',
'      RETURN (''This value already exists'');',
'   END IF;',
'',
'   RETURN (v_error_message);',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'ALLOWABLE_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12006677328912909)
,p_name=>'Refresh values'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P595_VALUE_TYPE_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12006771980912910)
,p_event_id=>wwv_flow_api.id(12006677328912909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11074683605216248)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12007691415912919)
,p_name=>'Update inactive date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P595_STATUS'
,p_condition_element=>'P595_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12007834735912921)
,p_event_id=>wwv_flow_api.id(12007691415912919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P595_INACTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select to_char(sysdate,''dd-mon-yyyy hh24:mi:ss'') from dual'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12007992394912922)
,p_event_id=>wwv_flow_api.id(12007691415912919)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P595_INACTIVE_DATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16293431550416003)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11073334024216235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16293538935416004)
,p_event_id=>wwv_flow_api.id(16293431550416003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11850911825692855)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_VAR_DATA_ELEMENTS'
,p_attribute_02=>'QCIS_VAR_DATA_ELEMENTS'
,p_attribute_03=>'P595_VAR_DATA_ELEMENT_ID'
,p_attribute_04=>'VAR_DATA_ELEMENT_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11851349813692855)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_VAR_DATA_ELEMENTS'
,p_attribute_02=>'QCIS_VAR_DATA_ELEMENTS'
,p_attribute_03=>'P595_VAR_DATA_ELEMENT_ID'
,p_attribute_04=>'VAR_DATA_ELEMENT_ID'
,p_attribute_09=>'P595_VAR_DATA_ELEMENT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,BUILDNEW,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12006534534912908)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11074683605216248)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Valid Values - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
