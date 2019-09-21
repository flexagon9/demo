prompt --application/pages/page_00064
begin
wwv_flow_api.create_page(
 p_id=>64
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Responsible Areas - Edit'
,p_page_mode=>'MODAL'
,p_step_title=>'Responsible Areas - Edit'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'450'
,p_dialog_width=>'600'
,p_dialog_css_classes=>'no-close '
,p_dialog_chained=>'N'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190823140139'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53872407721619937)
,p_plug_name=>'Responsible Area Buttons'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108096221262408843)
,p_plug_name=>'Responsible Area Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116666201670433851)
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
,p_plug_display_when_condition=>'P64_RA_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26543968560063616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(53872407721619937)
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
 p_id=>wwv_flow_api.id(26545167488063617)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(53872407721619937)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26544381962063617)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(53872407721619937)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P64_RA_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Inspection Name Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26544834433063617)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(53872407721619937)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P64_RA_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Inspection Name"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36536016619359018)
,p_branch_name=>'Cancel - Refresh - Redisplay the page'
,p_branch_action=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25967088603982995)
,p_name=>'P64_SFM_STATION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(108096221262408843)
,p_prompt=>'Shop Floor Station:'
,p_source=>'P64_RESPONSIBLE_AREA'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(sfb.plant)||'', ''||trim(sfb.building_name)||'', ''||trim(sfb.line_name)||'', ''||trim(sfb.station_name) d,',
'       sfb.station_id r ',
' from gpdtalib.sf_building_view@obms sfb,',
'      qcis_plant_master pm',
'where pm.qcis_plant_master_id=:P64_PLANT_ID',
'  and trim(sfb.plant)=pm.plant_code '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'title="The Shop Floor Maintenance Station - Optional,not required"'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26545943822063618)
,p_name=>'P64_RA_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(108096221262408843)
,p_source=>'P64_RA_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26546290811063620)
,p_name=>'P64_INACTIVE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(108096221262408843)
,p_source=>'P64_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26546701414063620)
,p_name=>'P64_PLANT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(108096221262408843)
,p_source=>'P64_PLANT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26547124845063621)
,p_name=>'P64_RESPONSIBLE_AREA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(108096221262408843)
,p_prompt=>'Responsible Area:'
,p_source=>'P64_RESPONSIBLE_AREA'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cattributes_element=>'title="The Responsible Area - maximum length is 30 characters"'
,p_field_template=>wwv_flow_api.id(90737162602242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26547467606063621)
,p_name=>'P64_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(108096221262408843)
,p_prompt=>'Status:'
,p_source=>'P64_STATUS'
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
 p_id=>wwv_flow_api.id(26548237645063622)
,p_name=>'P64_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(116666201670433851)
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
 p_id=>wwv_flow_api.id(26548616130063622)
,p_name=>'P64_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(116666201670433851)
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
 p_id=>wwv_flow_api.id(26548976014063622)
,p_name=>'P64_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(116666201670433851)
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
 p_id=>wwv_flow_api.id(26549400100063623)
,p_name=>'P64_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(116666201670433851)
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
 p_id=>wwv_flow_api.id(26551382280063625)
,p_validation_name=>'Cannot Be Blank'
,p_validation_sequence=>10
,p_validation=>'P64_RESPONSIBLE_AREA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Responsible Area must have a value'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'');'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(26547124845063621)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26551776352063626)
,p_validation_name=>'Cannot Be Duplicate'
,p_validation_sequence=>20
,p_validation=>'select ''Y'' from qcis_resp_area_master where responsible_area = :p64_responsible_area and plant_id = :g_default_plant_id and ra_id <> nvl(:p64_ra_id,ra_id+1)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Responsible Area cannot be a duplicate within a plant'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'');'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(26547124845063621)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26553740227063627)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26543968560063616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26554159243063628)
,p_event_id=>wwv_flow_api.id(26553740227063627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26552109445063626)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Responsible Area Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   :p64_plant_id := :g_default_plant_id;',
'   BEGIN',
'      SELECT responsible_area,',
'             sfm_station_id,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             decode(inactive_date,null,''A'',''I'') status,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p64_responsible_area,',
'             :p64_sfm_station_id,',
'             :p64_inactive_date,',
'             :p64_status,',
'             :p64_last_update_date,',
'             :p64_last_updated_by,',
'             :p64_creation_date,',
'             :p64_created_by',
'        FROM QCIS_RESP_AREA_MASTER',
'       WHERE ra_id = :p64_ra_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p64_ra_id := null;',
'         :p64_responsible_area := null;',
'         :p64_sfm_station_id := null;',
'         :p64_inactive_date := NULL;',
'         :p64_status := NULL;',
'         :p64_last_update_date := NULL;',
'         :p64_last_updated_by := NULL;',
'         :p64_creation_date := NULL;',
'         :p64_created_by := NULL;',
'   END;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26552517678063627)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into QCIS_RESP_AREA_MASTER',
'      (plant_id,',
'       responsible_area,',
'       sfm_station_id)',
'  values(:g_default_plant_id,',
'         :p64_responsible_area,',
'         :p64_sfm_station_id);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26544834433063617)
,p_process_success_message=>'Responsible Area successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26552881333063627)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_inactive_date date;',
'',
'begin',
'if :p64_status = ''A'' then v_inactive_date := null;',
'else if :p64_status = ''I'' and :p64_inactive_date is null then v_inactive_date := sysdate;',
'end if;',
'end if;',
'update QCIS_RESP_AREA_MASTER',
'   set responsible_area = :p64_responsible_area,',
'       sfm_station_id = :p64_sfm_station_id,',
'       inactive_date = v_inactive_date',
' where ra_id = :p64_ra_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26544381962063617)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26553299638063627)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Apply Changes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26544381962063617)
);
end;
/
