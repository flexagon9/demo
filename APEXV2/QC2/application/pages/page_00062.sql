prompt --application/pages/page_00062
begin
wwv_flow_api.create_page(
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Inspection Names - Edit'
,p_page_mode=>'MODAL'
,p_step_title=>'Inspection Names - Edit'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'450'
,p_dialog_width=>'600'
,p_dialog_css_classes=>'no-close '
,p_dialog_chained=>'N'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190730113956'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38609130441877695)
,p_plug_name=>'Inspection Names Buttons'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92844283936679212)
,p_plug_name=>'Inspection Name Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101414264344704220)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P62_INSPECT_NAME_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25631633538969077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38609130441877695)
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
 p_id=>wwv_flow_api.id(25632772243969078)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(38609130441877695)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25632019056969077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(38609130441877695)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P62_INSPECT_NAME_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Inspection Name Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25632372137969078)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(38609130441877695)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P62_INSPECT_NAME_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Inspection Name"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25633511717969079)
,p_name=>'P62_INSPECT_NAME_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(92844283936679212)
,p_source=>'P62_INSPECT_NAME_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25634736452969080)
,p_name=>'P62_INACTIVE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(92844283936679212)
,p_source=>'P62_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25635114061969080)
,p_name=>'P62_PLANT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(92844283936679212)
,p_source=>'P62_PLANT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25635473056969081)
,p_name=>'P62_INSPECTION_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(92844283936679212)
,p_prompt=>'Inspection Name:'
,p_source=>'P62_INSPECTION_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>100
,p_cattributes_element=>'title="The Inspection Name"'
,p_field_template=>wwv_flow_api.id(90737162602242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25637521277969083)
,p_name=>'P62_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(92844283936679212)
,p_prompt=>'Status:'
,p_source=>'P62_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Inspection Name is Active or Inactive"'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25638460382969084)
,p_name=>'P62_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(101414264344704220)
,p_prompt=>'Last Update'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_cattributes_element=>'title="The date that the entry was last altered"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25638908209969084)
,p_name=>'P62_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(101414264344704220)
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that last altered the entry"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25639273415969085)
,p_name=>'P62_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(101414264344704220)
,p_prompt=>'Created'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>20
,p_cattributes_element=>'title="The date that the entry was created"'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25639713626969085)
,p_name=>'P62_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(101414264344704220)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that created the entry"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25436444401989999)
,p_validation_name=>'Cannot Be Blank'
,p_validation_sequence=>10
,p_validation=>'P62_INSPECTION_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Inspection Name must have a value'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'');'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(25635473056969081)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25436496035990000)
,p_validation_name=>'Cannot Be Duplicate'
,p_validation_sequence=>20
,p_validation=>'select ''Y'' from qcis_inspection_names where inspection_name = :p62_inspection_name and plant_id = :g_default_plant_id and inspect_name_id <> nvl(:p62_inspect_name_id,inspect_name_id+1)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Inspection Name cannot be a duplicate within a plant'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'');'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(25635473056969081)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25643154233969094)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25631633538969077)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25643703221969096)
,p_event_id=>wwv_flow_api.id(25643154233969094)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25641957497969092)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Inspection Name Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   BEGIN',
'      SELECT inspection_name,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             decode(inactive_date,null,''A'',''I'') status,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p62_inspection_name,',
'             :p62_inactive_date,',
'             :p62_status,',
'             :p62_last_update_date,',
'             :p62_last_updated_by,',
'             :p62_creation_date,',
'             :p62_created_by',
'        FROM QCIS_INSPECTION_NAMES',
'       WHERE inspect_name_id = :p62_inspect_name_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p62_inspect_name_id := null;',
'         :p62_inspection_name := null;',
'         :p62_inactive_date := NULL;',
'         :p62_status := NULL;',
'         :p62_last_update_date := NULL;',
'         :p62_last_updated_by := NULL;',
'         :p62_creation_date := NULL;',
'         :p62_created_by := NULL;',
'   END;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25642351741969093)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into QCIS_INSPECTION_NAMES',
'      (plant_id,',
'       inspection_name)',
'  values(:g_default_plant_id,',
'         :p62_inspection_name);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25632372137969078)
,p_process_success_message=>'Keyword successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25642820634969094)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_inactive_date date;',
'',
'begin',
'if :p62_status = ''A'' then v_inactive_date := null;',
'else if :p62_status = ''I'' and :p62_inactive_date is null then v_inactive_date := sysdate;',
'end if;',
'end if;',
'update QCIS_INSPECTION_NAMES',
'   set inspection_name = :p62_inspection_name,',
'       inactive_date = v_inactive_date',
' where inspect_name_id = :p62_inspect_name_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25632019056969077)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25655622262531838)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Apply Changes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25632019056969077)
);
end;
/
