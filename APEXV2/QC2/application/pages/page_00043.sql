prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Components - C-List Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'C-List Maintenance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'#IG_ig_toolbar_actions_button{',
'display: none !important;',
'}'))
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'TBOWERS'
,p_last_upd_yyyymmddhh24miss=>'20190828160122'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24191517180755891)
,p_plug_name=>'C-List Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27065596233207693)
,p_plug_name=>'Components'
,p_parent_plug_id=>wwv_flow_api.id(24191517180755891)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P43_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24192180773755892)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27733970683886278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27065596233207693)
,p_button_name=>'ADD_REMOVE_COMPONENTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add/Remove Components'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24192576401755892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24191517180755891)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23788839403485022)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24191517180755891)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24192062737755892)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24191517180755891)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24191955481755892)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24191517180755891)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24191903317755892)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(24191517180755891)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24949455877413493)
,p_branch_name=>'Create'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24191903317755892)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24195027540755896)
,p_name=>'P43_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24195389040755901)
,p_name=>'P43_PLANT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_DEFAULT_PLANT_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24195823620755901)
,p_name=>'P43_DIVISION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NULL'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'DIVISION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24196189382755901)
,p_name=>'P43_COMP_LIST_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C-List Name:'
,p_source=>'COMP_LIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>240
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(90737162602242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24196590995755902)
,p_name=>'P43_INACTIVE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24347863576341170)
,p_name=>'P43_PLANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_prompt=>'Plant:'
,p_source=>':G_CURRENT_LOCATION_FORMATTED'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24368539714840695)
,p_name=>'P43_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Status: '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  If :P43_INACTIVE_DATE is NULL then',
'    Return (''A'');',
'  Else',
'    Return (''I'');',
'  End if;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_cHeight=>1
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25108648024022428)
,p_name=>'P43_BRAND_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24191517180755891)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27065711441207694)
,p_name=>'P43_COMPONENT_SHUTTLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27065596233207693)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value     varchar2(5000);',
'',
'  Cursor c_get_current_components is',
'--    select cm.component_id',
'--      from bg_qcis.qcis_component_master cm',
'--     where exists (Select xr.comp_master_id',
'--                     from qcis_component_list_detail xr',
'--                    where xr.comp_list_hdr_id = :P43__ID',
'--                   );',
'',
'select',
'cm.component_id',
'from QCIS_COMPONENT_MASTER cm, QCIS_COMPONENT_LIST_DETAIL cd',
'where cm.component_id = cd.COMP_MASTER_ID and',
'cd.COMP_LIST_HDR_ID = :P43_ID',
'order by cm.component_name;',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  For sel1 in c_get_current_components',
'    LOOP',
'      v_return_value := v_return_value || sel1.component_id || '':'';',
'    END LOOP;',
'',
'  return (v_return_value);',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Components'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm.component_name||'' - ''||cm.component_number d, cm.component_id r',
'from QCIS_COMPONENT_MASTER cm, qcis_defect_code_header dch ',
'where',
'cm.defect_header_id = dch.defect_code_header_id',
'-- and dch.division_id = :G_DEFAULT_DIVISION_ID',
'and dch.plant_id = :G_DEFAULT_PLANT_ID',
'and cm.inactive_date IS NULL ',
'order by cm.component_name',
''))
,p_cHeight=>18
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23789827004485032)
,p_validation_name=>'Duplicate on Add'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_COMPONENT_LIST_HEADER',
'where COMP_LIST_NAME = :P43_COMP_LIST_NAME and',
'      PLANT_ID = :P43_PLANT_ID and',
'      DIVISION_ID = :P43_DIVISION_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Duplicate C-List Name.'
,p_when_button_pressed=>wwv_flow_api.id(24191903317755892)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23789945852485033)
,p_validation_name=>'Duplicate on Change'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_COMPONENT_LIST_HEADER',
'where COMP_LIST_NAME = :P43_COMP_LIST_NAME and',
'      PLANT_ID = :P43_PLANT_ID and',
'      DIVISION_ID = :P43_DIVISION_ID  and',
'      ID != :P43_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Duplicate C-List Name.'
,p_when_button_pressed=>wwv_flow_api.id(24191955481755892)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24192677994755892)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24192576401755892)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24193503521755893)
,p_event_id=>wwv_flow_api.id(24192677994755892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24370202705845615)
,p_name=>'Update Inactive Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_STATUS'
,p_condition_element=>'P43_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24370613043845615)
,p_event_id=>wwv_flow_api.id(24370202705845615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_INACTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select to_char(sysdate,''dd-mon-yyyy hh24:mi:ss'') from dual'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24371079563845616)
,p_event_id=>wwv_flow_api.id(24370202705845615)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_INACTIVE_DATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25108759372028723)
,p_name=>'Populate Division'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_BRAND_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25109232507028724)
,p_event_id=>wwv_flow_api.id(25108759372028723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_BRAND_CODE,G_DEFAULT_DIVISION_ID,P43_DIVISION_ID,P43_DIVISION_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.BRAND_CODE, d.QCIS_DIVISION_MASTER_ID def_id, d.QCIS_DIVISION_MASTER_ID, d.DIVISION_CODE||'' - ''||d.DIVISION_NAME',
'  FROM bg_qcis.QCIS_DIVISION_MASTER d, bg_qcis.QCIS_BRAND_MASTER b',
' WHERE     b.QCIS_BRAND_MASTER_ID = :P43_BRAND_ID',
'       AND d.QCIS_DIVISION_MASTER_ID = b.DIVISION_MASTER_ID'))
,p_attribute_07=>'P43_BRAND_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24197358917755903)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_COMPONENT_LIST_HEADER'
,p_attribute_02=>'QCIS_COMPONENT_LIST_HEADER'
,p_attribute_03=>'P43_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24197831774755903)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P43_ID is null then',
'        select "#OWNER#"."QCIS_COMPONENT_LIST_HEADER_SEQ".nextval',
'          into :P43_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24191903317755892)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24198154458755904)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_COMPONENT_LIST_HEADER'
,p_attribute_02=>'QCIS_COMPONENT_LIST_HEADER'
,p_attribute_03=>'P43_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36317525898596224)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply C-List Changes'
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
'  v_selected := APEX_UTIL.STRING_TO_TABLE(:P43_COMPONENT_SHUTTLE);',
'',
'-- Loop over array and apply c-list additions',
'  FOR i IN 1..v_selected.count LOOP ',
'    select count(*)',
'      into v_count',
'      from bg_qcis.qcis_component_list_detail',
'     where comp_master_id = v_selected(i)',
'       and comp_list_hdr_id = :p43_id;',
'    if v_count = 0 then',
'      insert into bg_qcis.qcis_component_list_detail (comp_list_hdr_id, comp_master_id)',
'                                            values (:p43_id, v_selected(i));',
'                                            ',
'    -- now check hotspots that reference the C-List and add the component if it isn''t there',
'       FOR html_comp_list IN (SELECT html_id',
'                            FROM qcis_draft_html',
'                           WHERE comp_list_id = :P43_ID)',
'       LOOP',
'          FOR comp IN (SELECT *',
'                     FROM qcis_component_list_detail cld',
'                    WHERE cld.comp_list_hdr_id = :P43_ID',
'                    AND NOT EXISTS',
'                        (SELECT ''Y''',
'                           FROM qcis_cell_comp_draft ccd',
'                          WHERE     ccd.draft_id = html_comp_list.html_id',
'                                AND ccd.comp_id = cld.comp_master_id',
'                        )',
'                   )                   ',
'         LOOP',
'         INSERT INTO qcis_cell_comp_draft (draft_id,',
'                                           comp_id,',
'                                           last_update_date,',
'                                           last_updated_by,',
'                                           creation_date,',
'                                           created_by)',
'              VALUES (html_comp_list.html_id,',
'                      comp.comp_master_id,',
'                      SYSDATE,',
'                      V (''APP_USER''),',
'                      SYSDATE,',
'                      V (''APP_USER''));',
'         END LOOP;',
'      END LOOP;',
'    -- end of checking hotspots',
'    ',
'    end if;',
'  END LOOP; ',
'',
'',
'-- Now delete all the Component entries from the xref table that are no longer among those ''selected''',
'  for rec_xref in (select ID, comp_master_id',
'                     from bg_qcis.qcis_component_list_detail',
'                    where comp_list_hdr_id = :p43_id',
'                      and inactive_date is null)',
'  loop',
'    v_found := ''N'';',
'    for i IN 1..v_selected.count LOOP ',
'      if rec_xref.comp_master_id = v_selected(i) then',
'        v_found := ''Y'';',
'        exit;',
'      end if;',
'    end loop; ',
'    if v_found = ''N'' then',
'       delete bg_qcis.qcis_component_list_detail where ID = rec_xref.ID;',
'       ',
'              -- now check hotspots that reference the C-List and add the component if it isn''t there',
'              FOR html_comp_list IN (SELECT html_id',
'                                     FROM qcis_draft_html',
'                                     WHERE comp_list_id = :P43_ID)',
'              LOOP',
'              -- delete the same components from the hotspots that use the same cList',
'              DELETE FROM qcis_cell_comp_draft  ',
'              WHERE draft_id = html_comp_list.html_id',
'              AND comp_id = rec_xref.ID;',
'              END LOOP;      ',
'           -- end of checking hotspots',
'           ',
'    end if;',
'  end loop;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27733970683886278)
,p_process_success_message=>'Changes made to Components assigned to C-List.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24198635565755904)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24192062737755892)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24198955119755904)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
