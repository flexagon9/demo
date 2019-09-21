prompt --application/pages/page_00055
begin
wwv_flow_api.create_page(
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Global Maintenance - Divisions Edit'
,p_page_mode=>'MODAL'
,p_step_title=>'Global Maintenance - Divisions Edit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'800'
,p_dialog_css_classes=>'no-close '
,p_dialog_chained=>'N'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190712071305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47909004053088414)
,p_plug_name=>'Division Master Buttons'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65228668864020004)
,p_plug_name=>'Division Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73798649272045012)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P55_QCIS_DIVISION_MASTER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24436579371360606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47909004053088414)
,p_button_name=>'Back'
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
 p_id=>wwv_flow_api.id(24437788450360608)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(47909004053088414)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24436973258360607)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(47909004053088414)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P55_QCIS_DIVISION_MASTER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Save Gig Sheet Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24437411420360607)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(47909004053088414)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P55_QCIS_DIVISION_MASTER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Gig Sheet"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24438543007360609)
,p_name=>'P55_QCIS_DIVISION_MASTER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65228668864020004)
,p_source=>'P55_QCIS_DIVISION_MASTER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24438873031360611)
,p_name=>'P55_INACTIVE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(65228668864020004)
,p_source=>'P55_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24439703456360612)
,p_name=>'P55_DIVISION_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(65228668864020004)
,p_prompt=>'Division Code:'
,p_source=>'P55_DIVISION_CODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_cMaxlength=>3
,p_cattributes_element=>'title="The 3-character identifier for the Division"'
,p_tag_attributes=>'onKeyUp="javascript:{this.value = this.value.toUpperCase(); }"'
,p_read_only_when=>'P55_QCIS_DIVISION_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737162602242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24440114664360613)
,p_name=>'P55_DIVISION_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(65228668864020004)
,p_prompt=>'Division Name:'
,p_source=>'P55_DIVISION_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cattributes_element=>'title="The actual name the Division is known as"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737162602242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24440885126360615)
,p_name=>'P55_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(65228668864020004)
,p_prompt=>'Status:'
,p_source=>'P55_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Division is Active or Inactive"'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24442040645360616)
,p_name=>'P55_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(73798649272045012)
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
 p_id=>wwv_flow_api.id(24442368866360617)
,p_name=>'P55_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(73798649272045012)
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
 p_id=>wwv_flow_api.id(24442755346360617)
,p_name=>'P55_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(73798649272045012)
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
 p_id=>wwv_flow_api.id(24443240265360617)
,p_name=>'P55_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(73798649272045012)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24445224265360622)
,p_validation_name=>'Unique Division Code'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''y''',
'  from dual',
' where exists (select ''x''',
'                 from qcis_division_master',
'                where division_code = :p55_division_code',
'                  and qcis_division_master_id <> nvl(:p55_qcis_division_master_id, qcis_division_master_id+1))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Division Code must be unique'
,p_validation_condition=>':REQUEST IN(''CREATE'',''SAVE'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(24439703456360612)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24447475005360626)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24436579371360606)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24447966121360627)
,p_event_id=>wwv_flow_api.id(24447475005360626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24446248571360624)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Division Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   BEGIN',
'      SELECT division_code,',
'             division_name,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             decode(inactive_date,null,''A'',''I'') status,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p55_division_code,',
'             :p55_division_name,',
'             :p55_inactive_date,',
'             :p55_status,',
'             :p55_last_update_date,',
'             :p55_last_updated_by,',
'             :p55_creation_date,',
'             :p55_created_by',
'        FROM QCIS_DIVISION_MASTER',
'       WHERE qcis_division_master_id = :p55_qcis_division_master_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p55_qcis_division_master_id := null;',
'         :p55_division_code := NULL;',
'         :p55_division_name := NULL;',
'         :p55_inactive_date := NULL;',
'         :p55_status := NULL;',
'         :p55_last_update_date := NULL;',
'         :p55_last_updated_by := NULL;',
'         :p55_creation_date := NULL;',
'         :p55_created_by := NULL;',
'   END;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24446717996360625)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into QCIS_DIVISION_MASTER',
'      (division_code,',
'       division_name)',
'  values(:p55_division_code,',
'         :p55_division_name);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24437411420360607)
,p_process_success_message=>'Division successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24447059936360626)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_inactive_date date;',
'',
'begin',
'if :p55_status = ''A'' then v_inactive_date := null;',
'else if :p55_status = ''I'' and :p55_inactive_date is null then v_inactive_date := sysdate;',
'end if;',
'end if;',
'update QCIS_DIVISION_MASTER',
'   set division_name = :p55_division_name,',
'       inactive_date = v_inactive_date',
' where qcis_division_master_id = :p55_qcis_division_master_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24436973258360607)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25652436189500773)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Apply Changes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24436973258360607)
);
end;
/
