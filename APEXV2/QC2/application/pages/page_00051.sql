prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Global Maintenance - Plants Edit'
,p_page_mode=>'MODAL'
,p_step_title=>'Global Maintenance - Plants Edit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'800'
,p_dialog_css_classes=>'no-close '
,p_dialog_chained=>'N'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190802074352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10473745581458641)
,p_plug_name=>'Plant Master Buttons Breadcrumb'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27854913641095511)
,p_plug_name=>'Plant Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36424894049120519)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
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
,p_plug_display_when_condition=>'P51_QCIS_PLANT_MASTER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12757720363649649)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10473745581458641)
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
 p_id=>wwv_flow_api.id(12930109087526170)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10473745581458641)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(9982768250893683)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12758156692649649)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10473745581458641)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P51_QCIS_PLANT_MASTER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Save Gig Sheet Changes"'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(9982768250893683)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12758503081649650)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10473745581458641)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P51_QCIS_PLANT_MASTER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Gig Sheet"'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(9982768250893683)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10473411699458638)
,p_name=>'P51_PLANT_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_prompt=>'Plant Name'
,p_source=>'P51_PLANT_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cattributes_element=>'title="The actual name the Plant is known as"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10473589948458639)
,p_name=>'P51_ALL_COMPLETE_YN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_prompt=>'All Complete'
,p_source=>'P51_ALL_COMPLETE_YN'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Plant allows the ''ALL-COMPLETE'' function of inspections"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10473609966458640)
,p_name=>'P51_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_prompt=>'Status'
,p_source=>'P51_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Plant is Active or Inactive"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12742636324649623)
,p_name=>'P51_QCIS_PLANT_MASTER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_source=>'P51_QCIS_PLANT_MASTER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12743896136649624)
,p_name=>'P51_PLANT_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_prompt=>'Plant Code'
,p_source=>'P51_PLANT_CODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cattributes_element=>'title="The 2-character identifier for the Plant"'
,p_tag_attributes=>'onKeyUp="javascript:{this.value = this.value.toUpperCase(); }"'
,p_read_only_when=>'P51_QCIS_PLANT_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12746262392649626)
,p_name=>'P51_INACTIVE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_source=>'P51_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12746999867649627)
,p_name=>'P51_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(36424894049120519)
,p_prompt=>'Last Update Date'
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
 p_id=>wwv_flow_api.id(12747322234649628)
,p_name=>'P51_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(36424894049120519)
,p_prompt=>'Last Updated By'
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
 p_id=>wwv_flow_api.id(12747744549649628)
,p_name=>'P51_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(36424894049120519)
,p_prompt=>'Creation Date'
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
 p_id=>wwv_flow_api.id(12748161284649628)
,p_name=>'P51_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(36424894049120519)
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
 p_id=>wwv_flow_api.id(14678626415649040)
,p_name=>'P51_SFM_FLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(27854913641095511)
,p_prompt=>'Uses Shop Floor'
,p_source=>'P51_SFM_FLAG'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Plant uses Shop Floor"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10473959159458643)
,p_validation_name=>'Unique Plant Code'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''y''',
'  from dual',
' where exists (select ''x''',
'                 from qcis_plant_master',
'                where plant_code = :p51_plant_code',
'                  and qcis_plant_master_id <> nvl(:p51_qcis_plant_master_id, qcis_plant_master_id+1))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Plant Code must be unique'
,p_associated_item=>wwv_flow_api.id(12743896136649624)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12762490293649660)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12757720363649649)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12762999570649661)
,p_event_id=>wwv_flow_api.id(12762490293649660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12760801253649653)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Plant Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   BEGIN',
'      SELECT plant_code,',
'             plant_name,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             decode(inactive_date,null,''A'',''I'') status,',
'             all_complete_yn,',
'             sfm_flag,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p51_plant_code,',
'             :p51_plant_name,',
'             :p51_inactive_date,',
'             :p51_status,',
'             :p51_all_complete_yn,',
'             :p51_sfm_flag,',
'             :p51_last_update_date,',
'             :p51_last_updated_by,',
'             :p51_creation_date,',
'             :p51_created_by',
'        FROM QCIS_PLANT_MASTER',
'       WHERE qcis_plant_master_id = :p51_qcis_plant_master_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p51_plant_code := NULL;',
'         :p51_plant_name := NULL;',
'         :p51_inactive_date := NULL;',
'         :p51_status := NULL;',
'         :p51_all_complete_yn := NULL;',
'         :p51_sfm_flag := NULL;',
'         :p51_last_update_date := NULL;',
'         :p51_last_updated_by := NULL;',
'         :p51_creation_date := NULL;',
'         :p51_created_by := NULL;',
'   END;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12761264379649656)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into QCIS_PLANT_MASTER',
'      (plant_code,',
'       plant_name,',
'       all_complete_yn,',
'       sfm_flag)',
'  values(:p51_plant_code,',
'         :p51_plant_name,',
'         :p51_all_complete_yn,',
'         :p51_sfm_flag);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12758503081649650)
,p_process_success_message=>'Plant successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12761644708649657)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_inactive_date date;',
'',
'begin',
'if :p51_status = ''A'' then v_inactive_date := null;',
'else if :p51_status = ''I'' and :p51_inactive_date is null then v_inactive_date := sysdate;',
'end if;',
'end if;',
'update QCIS_PLANT_MASTER',
'   set plant_code = :p51_plant_code,',
'       plant_name = :p51_plant_name,',
'       inactive_date = v_inactive_date,',
'       all_complete_yn = :p51_all_complete_yn,',
'       sfm_flag = :p51_sfm_flag',
' where qcis_plant_master_id = :p51_qcis_plant_master_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12758156692649649)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14144947090656014)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Apply Changes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12758156692649649)
);
end;
/
