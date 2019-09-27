prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Components - Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Components Maintenance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612636109968797)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
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
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'750'
,p_dialog_width=>'1400'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190912123300'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12669440653884985)
,p_plug_name=>'Components - Maintenance'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12670129036884987)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13658578485079513)
,p_plug_name=>'Add To/Remove From C-List'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>8
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P41_COMPONENT_ID'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 14px; color: steelblue"><b>Add/Remove From C-List</b></div> ',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15773923250873706)
,p_plug_name=>'Add To/Remove From Defects'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P41_COMPONENT_ID'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 14px; color: steelblue"><b>Add/Remove From Defects</b></div> ',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35014386361926545)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P41_COMPONENT_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85919541601049241)
,p_plug_name=>'Components Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12670576502884988)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(85919541601049241)
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
 p_id=>wwv_flow_api.id(13660791447079535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13658578485079513)
,p_button_name=>'ADD_TO_CLIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply C-List Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12495047655151014)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(85919541601049241)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12669909834884987)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(85919541601049241)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P41_COMPONENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12495168073151015)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(85919541601049241)
,p_button_name=>'SAVE_NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(12831274943163245)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes & Next'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12669803236884987)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(85919541601049241)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P41_COMPONENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12495361170151017)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(85919541601049241)
,p_button_name=>'CREATE_NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(12832459673163254)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create & Next'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13660844058079536)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(12669440653884985)
,p_button_name=>'ADD_DEFECTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add D-List Defects'
,p_button_position=>'BODY'
,p_button_cattributes=>'title="Add Defects from Defect List."'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12670019883884987)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12670129036884987)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15774108169873708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15773923250873706)
,p_button_name=>'ADD_REMOVE_DEFECTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Defect Changes'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12495210963151016)
,p_branch_name=>'Create'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12669803236884987)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13658010461079508)
,p_branch_name=>'Create & Next'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12495361170151017)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12672933184884997)
,p_name=>'P41_COMPONENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPONENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12673349913885018)
,p_name=>'P41_DEFECT_HEADER_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'D-List:'
,p_source=>'DEFECT_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dch.defect_list_name d, dch.defect_code_header_id r',
'from  qcis_defect_code_header dch',
'where',
'dch.plant_id = :G_DEFAULT_PLANT_ID',
'-- and dch.division_id IS NULL',
'and dch.inactive_date IS NULL',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12673634634885021)
,p_name=>'P41_COMPONENT_NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Component #:'
,p_source=>'COMPONENT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>255
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12674047271885021)
,p_name=>'P41_COMPONENT_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name:'
,p_source=>'COMPONENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>75
,p_cMaxlength=>400
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12674496332885022)
,p_name=>'P41_INACTIVE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12681670342896069)
,p_name=>'P41_LAST_UPDATE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35014386361926545)
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
 p_id=>wwv_flow_api.id(12682020317896070)
,p_name=>'P41_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35014386361926545)
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
 p_id=>wwv_flow_api.id(12682429367896070)
,p_name=>'P41_CREATION_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(35014386361926545)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_format_mask=>'DD-MON-YYYY'
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
 p_id=>wwv_flow_api.id(12682851550896070)
,p_name=>'P41_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(35014386361926545)
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
 p_id=>wwv_flow_api.id(13069662234320496)
,p_name=>'P41_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Status: '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  If :P41_INACTIVE_DATE is NULL then',
'    Return (''A'');',
'  Else',
'    Return (''I'');',
'  End if;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13658276142079510)
,p_name=>'P41_NEXT_DATA_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_use_cache_before_default=>'NO'
,p_source=>'P41_NEXT_DATA_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13658678464079514)
,p_name=>'P41_COMPONENT_LIST_SHUTTLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13658578485079513)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value     varchar2(5000);',
'',
'  Cursor c_get_current_components is',
'  ',
'--  select clh.ID from bg_qcis.qcis_component_list_header CLH, BG_QCIS.QCIS_COMPONENT_LIST_DETAIL cld where cld.COMP_LIST_HDR_ID = clh.id and cld.COMP_MASTER_ID = :P41_COMPONENT_ID;',
'',
'select  CLH.id from bg_qcis.qcis_component_list_header CLH',
'where CLH.plant_id = :G_DEFAULT_PLANT_ID and ',
'-- CLH.division_id = :G_DEFAULT_DIVISION_ID and',
'       EXISTS (select ''Y'' from BG_QCIS.QCIS_COMPONENT_LIST_DETAIL CLD where CLH.ID = CLD.COMP_LIST_HDR_ID and CLD.COMP_MASTER_ID = :P41_COMPONENT_ID)',
'order by CLH.comp_list_name;',
' ',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  For sel1 in c_get_current_components',
'    LOOP',
'      v_return_value := v_return_value || sel1.ID || '':'';',
'    END LOOP;',
'',
'  return (v_return_value);',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'C-Lists'
,p_source=>'P41_COMPONENT_LIST_SHUTTLE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLH.comp_list_name d, CLH.id r from bg_qcis.qcis_component_list_header CLH',
'where CLH.plant_id = :G_DEFAULT_PLANT_ID  ',
'-- CLH.division_id = :G_DEFAULT_DIVISION_ID ',
'--       NOT EXISTS (select ''Y'' from BG_QCIS.QCIS_COMPONENT_LIST_DETAIL CLD where CLH.ID = CLD.COMP_LIST_HDR_ID and CLD.COMP_MASTER_ID = :P41_COMPONENT_ID)',
'order by CLH.comp_list_name'))
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13787318323845981)
,p_name=>'P41_PLANT_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13787611486850464)
,p_name=>'P41_PLANT_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12669440653884985)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_LOC_CODE;',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15774029752873707)
,p_name=>'P41_DEFECTS_SHUTTLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15773923250873706)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value     varchar2(5000);',
'',
'  Cursor c_get_current_defects is',
'    select defect_code_detail_id',
'      from bg_qcis.qcis_defect_code_detail DCD',
'     where DCD.plant_id = :G_DEFAULT_PLANT_ID',
'--       and DCD.division_id = :G_DEFAULT_DIVISION_ID',
'           and dcd.inactive_date IS NULL',
'       and exists (Select xr.defect_code_detail_id',
'                     from qcis_comp_defect_xref xr',
'                    where xr.component_id = :P41_COMPONENT_ID',
'                      and DCD.defect_code_detail_id = xr.defect_code_detail_id)',
'                      order by DCD.defect_description;',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  For sel1 in c_get_current_defects',
'    LOOP',
'      v_return_value := v_return_value || sel1.defect_code_detail_id || '':'';',
'    END LOOP;',
'',
'  return (v_return_value);',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Defect Description |Type| Category - Definition'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DCD.defect_description ',
'       ||'' | ''||DCD.defect_type',
'       ||'' | ''||DCD.default_defect_category',
'       || CASE WHEN DCD.defect_definition IS NULL THEN NULL',
'               ELSE '' - ''',
'           END',
'       ||substr(DCD.defect_definition,1,80) d, ',
'       DCD.defect_code_detail_id r ',
'from bg_qcis.qcis_defect_code_detail DCD',
'where DCD.plant_id = :G_DEFAULT_PLANT_ID   ',
'-- DCD.division_id = :G_DEFAULT_DIVISION_ID',
'-- and       NOT EXISTS (select ''Y'' from BG_QCIS.QCIS_COMP_DEFECT_XREF XR  where XR.DEFECT_CODE_DETAIL_ID = DCD.DEFECT_CODE_DETAIL_ID and XR.COMPONENT_ID = :P41_COMPONENT_ID)',
'  AND dcd.inactive_date IS NULL',
'order by upper(DCD.defect_description)'))
,p_cHeight=>15
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12495806849151022)
,p_validation_name=>'Defect Not Null - Create'
,p_validation_sequence=>10
,p_validation=>'P41_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12669803236884987)
,p_associated_item=>wwv_flow_api.id(12673349913885018)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12495961868151023)
,p_validation_name=>'Defect Not Null - Create & Next'
,p_validation_sequence=>30
,p_validation=>'P41_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12495361170151017)
,p_associated_item=>wwv_flow_api.id(12673349913885018)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496040320151024)
,p_validation_name=>'Defect Not Null - Save'
,p_validation_sequence=>40
,p_validation=>'P41_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12669909834884987)
,p_associated_item=>wwv_flow_api.id(12673349913885018)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496153120151025)
,p_validation_name=>'Defect Not Null - Save & Next'
,p_validation_sequence=>50
,p_validation=>'P41_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12495168073151015)
,p_associated_item=>wwv_flow_api.id(12673349913885018)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496261156151026)
,p_validation_name=>'Component # Not Null - Create'
,p_validation_sequence=>60
,p_validation=>'P41_COMPONENT_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Number is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12669803236884987)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496331799151027)
,p_validation_name=>'Component # Not Null - Create & Next'
,p_validation_sequence=>80
,p_validation=>'P41_COMPONENT_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Number is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12495361170151017)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496491135151028)
,p_validation_name=>'Component # Not Null - Save'
,p_validation_sequence=>90
,p_validation=>'P41_COMPONENT_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Number is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12669909834884987)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496573627151029)
,p_validation_name=>'Component # Not Null - Save & Next'
,p_validation_sequence=>100
,p_validation=>'P41_COMPONENT_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Number is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12495168073151015)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496617507151030)
,p_validation_name=>'Component Name Not Null - Create'
,p_validation_sequence=>110
,p_validation=>'P41_COMPONENT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Name is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12669803236884987)
,p_associated_item=>wwv_flow_api.id(12674047271885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496795272151031)
,p_validation_name=>'Component Name Not Null - Create & Next'
,p_validation_sequence=>120
,p_validation=>'P41_COMPONENT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Name is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12495361170151017)
,p_associated_item=>wwv_flow_api.id(12674047271885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496855422151032)
,p_validation_name=>'Component Name Not Null - Save'
,p_validation_sequence=>130
,p_validation=>'P41_COMPONENT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Name is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12669909834884987)
,p_associated_item=>wwv_flow_api.id(12674047271885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12496937463151033)
,p_validation_name=>'Component Name Not Null - Save & Next'
,p_validation_sequence=>140
,p_validation=>'P41_COMPONENT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Component Name is mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(12495168073151015)
,p_associated_item=>wwv_flow_api.id(12674047271885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12495473884151018)
,p_validation_name=>'Duplicate Check - Create'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_COMPONENT_MASTER ',
'where DEFECT_HEADER_ID = TO_NUMBER(:P41_DEFECT_HEADER_ID)',
'AND COMPONENT_NUMBER = TO_NUMBER(:P41_COMPONENT_NUMBER)',
'AND COMPONENT_NAME = :P41_COMPONENT_NAME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The Defect, Component Number, and Component Name must be unique.'
,p_when_button_pressed=>wwv_flow_api.id(12669803236884987)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12495616955151020)
,p_validation_name=>'Duplicate Check - Create & Next'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_COMPONENT_MASTER ',
'where DEFECT_HEADER_ID = TO_NUMBER(:P41_DEFECT_HEADER_ID)',
'AND COMPONENT_NUMBER = TO_NUMBER(:P41_COMPONENT_NUMBER)',
'AND COMPONENT_NAME = :P41_COMPONENT_NAME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The Defect, Component Number, and Component Name must be unique.'
,p_when_button_pressed=>wwv_flow_api.id(12495361170151017)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12495504050151019)
,p_validation_name=>'Duplicate Check - Save'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_COMPONENT_MASTER ',
'where DEFECT_HEADER_ID = TO_NUMBER(:P41_DEFECT_HEADER_ID)',
'AND COMPONENT_NUMBER = TO_NUMBER(:P41_COMPONENT_NUMBER)',
'AND COMPONENT_NAME = :P41_COMPONENT_NAME',
'AND COMPONENT_ID <> :P41_COMPONENT_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The Defect, Component Number, and Component Name must be unique.'
,p_when_button_pressed=>wwv_flow_api.id(12669909834884987)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12495751142151021)
,p_validation_name=>'Duplicate Check - Save & Next'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_COMPONENT_MASTER ',
'where DEFECT_HEADER_ID = TO_NUMBER(:P41_DEFECT_HEADER_ID)',
'AND COMPONENT_NUMBER = TO_NUMBER(:P41_COMPONENT_NUMBER)',
'AND COMPONENT_NAME = :P41_COMPONENT_NAME',
'AND COMPONENT_ID <> :P41_COMPONENT_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The Defect, Component Number, and Component Name must be unique.'
,p_when_button_pressed=>wwv_flow_api.id(12495168073151015)
,p_associated_item=>wwv_flow_api.id(12673634634885021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12670607947884988)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12670576502884988)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12671456244884990)
,p_event_id=>wwv_flow_api.id(12670607947884988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13070311379330651)
,p_name=>'Update Inactive Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_STATUS'
,p_condition_element=>'P41_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13070710604330651)
,p_event_id=>wwv_flow_api.id(13070311379330651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_INACTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select to_char(sysdate,''dd-mon-yyyy hh24:mi:ss'') from dual'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13071261584330652)
,p_event_id=>wwv_flow_api.id(13070311379330651)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_INACTIVE_DATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13657733630079505)
,p_name=>'Populate Division'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_BRAND_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13657841792079506)
,p_event_id=>wwv_flow_api.id(13657733630079505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_BRAND_CODE,G_DEFAULT_DIVISION_ID,P41_DIVISION_ID,P41_DIVISION_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.BRAND_CODE, d.QCIS_DIVISION_MASTER_ID def_id, d.QCIS_DIVISION_MASTER_ID, d.DIVISION_CODE||'' - ''||d.DIVISION_NAME',
'  FROM bg_qcis.QCIS_DIVISION_MASTER d, bg_qcis.QCIS_BRAND_MASTER b',
' WHERE     b.QCIS_BRAND_MASTER_ID = :P41_BRAND_ID',
'       AND d.QCIS_DIVISION_MASTER_ID = b.DIVISION_MASTER_ID'))
,p_attribute_07=>'P41_BRAND_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12678392775885028)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_COMPONENT_MASTER'
,p_attribute_02=>'QCIS_COMPONENT_MASTER'
,p_attribute_03=>'P41_COMPONENT_ID'
,p_attribute_04=>'COMPONENT_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13658396607079511)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Next ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_next_id          number;',
'  v_sequence_number  number;',
'  v_sample_number    number;',
'',
'  Cursor c_get_data_elements is',
'    Select component_id',
'      from qcis_component_master',
'     where component_id = :P41_COMPONENT_ID;',
'',
'BEGIN',
'',
'  v_next_id := NULL;',
'',
'  Open c_get_data_elements;',
'  Fetch c_get_data_elements into v_next_id;',
'  Close c_get_data_elements;',
'',
'  :P41_NEXT_DATA_ID := v_next_id;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12678782855885029)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P41_COMPONENT_ID is null then',
'        select "#OWNER#"."QCIS_COMPONENT_MASTER_SEQ".nextval',
'          into :P41_COMPONENT_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12669803236884987)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15774499685873711)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply C-List Changes for Component'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  v_selected APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  v_error_flag   varchar2(1);',
'  v_error_message varchar2(500);',
'  v_count number;',
'  v_found varchar2(1);',
'',
'  v_loop_dat  varchar2(200);',
' ',
'BEGIN ',
'',
'    v_error_message := ''Initialize'';',
'',
'-- ',
'-- Convert the colon separated string into an array ',
'  v_selected := APEX_UTIL.STRING_TO_TABLE(:P41_COMPONENT_LIST_SHUTTLE);',
'',
'-- Loop over array and apply d-list additions',
'  FOR i IN 1..v_selected.count LOOP ',
'    select count(*)',
'      into v_count',
'      from bg_qcis.qcis_component_list_detail',
'     where COMP_LIST_HDR_ID = v_selected(i)',
'       and COMP_MASTER_ID = :p41_component_id;',
'    if v_count = 0 then',
'      insert into bg_qcis.qcis_component_list_detail (COMP_MASTER_ID, COMP_LIST_HDR_ID)',
'                                            values (:p41_component_id, v_selected(i));',
'    end if;',
'  END LOOP; ',
'',
'',
'-- Now delete all the C-List entries from the table that are no longer among those ''selected''',
'  for rec_xref in (select COMP_MASTER_ID, COMP_LIST_HDR_ID',
'                     from bg_qcis.qcis_component_list_detail',
'                    where COMP_MASTER_ID = :p41_component_id',
'                      and inactive_date is null)',
'  loop',
'    v_found := ''N'';',
'    for i IN 1..v_selected.count LOOP ',
'      if rec_xref.COMP_LIST_HDR_ID = v_selected(i) then',
'        v_found := ''Y'';',
'        exit;',
'      end if;',
'    end loop; ',
'    if v_found = ''N'' then',
'       delete bg_qcis.qcis_component_list_detail where COMP_LIST_HDR_ID = rec_xref.COMP_LIST_HDR_ID and COMP_MASTER_ID = rec_xref.COMP_MASTER_ID;',
'    end if;',
'  end loop;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13660791447079535)
,p_process_success_message=>'Component Added/Removed from C-List(s).'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13661804054079546)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Component to C-List from Shuttle'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'qcis_add_comp_to_clist(:P41_COMPONENT_ID,:P41_COMPONENT_LIST_SHUTTLE);',
'commit;',
'end;'))
,p_process_error_message=>'Error Adding C-Lists'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13660791447079535)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Component(s) added to C-List.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13661647518079544)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Defects from D-List to Defect/Comp XRef'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'     ',
'   -- get the defects from the defect list xref that are assoc with this defect list',
'   -- exclude the defect if it is already in the Component/Defect Xref table',
'   FOR import',
'      IN (SELECT dx.defect_code_detail_id ',
'          FROM qcis_defect_hdr_dtl_xref dx',
'              WHERE dx.defect_code_header_id = :P41_DEFECT_HEADER_ID',
'         AND NOT EXISTS',
'                        (SELECT ''Y''',
'                           FROM qcis_comp_defect_xref cdx',
'                          WHERE cdx.component_id = :P41_COMPONENT_ID',
'                            AND cdx.defect_code_detail_id = dx.defect_code_detail_id',
'                        )',
'         )',
'      ',
'   LOOP',
'         -- Insert the defects from the defect list into the Component/Defect Xref table',
'         insert into qcis_comp_defect_xref',
'         (component_id, defect_code_detail_id)',
'         values (:P41_COMPONENT_ID, import.defect_code_detail_id);',
'',
'   END LOOP;  ',
'',
'END;   ',
''))
,p_process_error_message=>'Error Adding Defects to D-List'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12669909834884987)
,p_process_success_message=>'Defects from D-List Added to Component.'
,p_process_comment=>'Changed from Ad Defects Button to Save'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24910418373849496)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply C-List Defect Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  v_selected APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  v_error_flag   varchar2(1);',
'  v_error_message varchar2(500);',
'  v_count number;',
'  v_found varchar2(1);',
'',
'  v_loop_dat  varchar2(200);',
' ',
'BEGIN ',
'',
'    v_error_message := ''Initialize'';',
'',
'-- ',
'-- Convert the colon separated string into an array ',
'  v_selected := APEX_UTIL.STRING_TO_TABLE(:P41_DEFECTS_SHUTTLE);',
'',
'-- Loop over array and apply d-list additions',
'  FOR i IN 1..v_selected.count LOOP ',
'    select count(*)',
'      into v_count',
'      from bg_qcis.qcis_comp_defect_xref',
'     where defect_code_detail_id = v_selected(i)',
'       and component_id = :p41_component_id;',
'    if v_count = 0 then',
'      insert into bg_qcis.qcis_comp_defect_xref (component_id, defect_code_detail_id)',
'                                            values (:p41_component_id, v_selected(i));',
'    end if;',
'  END LOOP; ',
'',
'',
'-- Now delete all the D-List entries from the xref table that are no longer among those ''selected''',
'  for rec_xref in (select ID, defect_code_detail_id',
'                     from bg_qcis.qcis_comp_defect_xref',
'                    where component_id = :p41_component_id',
'                      and inactive_date is null)',
'  loop',
'    v_found := ''N'';',
'    for i IN 1..v_selected.count LOOP ',
'      if rec_xref.defect_code_detail_id = v_selected(i) then',
'        v_found := ''Y'';',
'        exit;',
'      end if;',
'    end loop; ',
'    if v_found = ''N'' then',
'       delete bg_qcis.qcis_comp_defect_xref where ID = rec_xref.ID;',
'    end if;',
'  end loop;',
'END;'))
,p_process_error_message=>'Error making changes to Defects assigned to Component'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12669909834884987)
,p_process_success_message=>'Changes made to Defects assigned to Component.'
,p_process_comment=>'Changed from Add Remove Deects To Save'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12679190705885030)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_COMPONENT_MASTER'
,p_attribute_02=>'QCIS_COMPONENT_MASTER'
,p_attribute_03=>'P41_COMPONENT_ID'
,p_attribute_04=>'COMPONENT_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12679558637885030)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12495361170151017)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12679940444885031)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12670576502884988)
);
end;
/
