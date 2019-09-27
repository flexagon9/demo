prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'User Summary'
,p_page_mode=>'MODAL'
,p_step_title=>'User Summary'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}',
'',
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'',
''))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'700'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190820110653'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35464544109681492)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94682378088243579)
,p_plug_name=>'User Preferences'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95730217468747934)
,p_name=>'User Location Access'
,p_template=>wwv_flow_api.id(79423968160908466)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ua.PUBLIC_IR_ACCESS,',
'       ua.SUPER_USER_ACCESS,',
'       l.NAME Location,',
'       r.ROLE_NAME',
'  FROM bg_shared_admin.APEX_APP_APPLICATIONS   aaa,',
'       bg_shared_admin.ALL_APEX_APPLICATIONS   aa,',
'       bg_shared_admin.APEX_APP_USERS_APPL     ua,',
'       bg_shared_admin.APEX_APP_USER_LOC_ROLE  ulr,',
'       bg_shared_admin.APEX_APP_ROLES          r,',
'       bg_shared_admin.APEX_APP_LOCATIONS      l,',
'       bc1_shared.bcone_oid_employees          emp',
'WHERE     aaa.APP_ID = aa.APPLICATION_ID',
'       AND ua.APP_ID = aaa.ID',
'       AND ulr.USER_ID = ua.ID',
'       AND ulr.ROLE_ID = r.ID',
'       AND emp.id = ua.OID_ID',
'       AND ulr.loc_id = l.id',
'       AND aa.APPLICATION_ID = :APP_ID',
'       AND emp.username = :APP_USER',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79435738730908493)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9829916179866610)
,p_query_column_id=>1
,p_column_alias=>'PUBLIC_IR_ACCESS'
,p_column_display_sequence=>2
,p_column_heading=>'Public Ir Access'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9830083395866611)
,p_query_column_id=>2
,p_column_alias=>'SUPER_USER_ACCESS'
,p_column_display_sequence=>3
,p_column_heading=>'Super User Access'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(59391241161884839)
,p_query_column_id=>3
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>1
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9830198357866612)
,p_query_column_id=>4
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Role Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225671582826606028)
,p_plug_name=>'User Summary'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25646280579346579)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35464544109681492)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Close'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'title="Close Window"'
,p_icon_css_classes=>'fa-times-circle-o'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59389768462884798)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94682378088243579)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-floppy-o'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9818212274334907)
,p_branch_name=>'After Apply Changes'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(59389768462884798)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59390167376884813)
,p_name=>'P9_EMAIL_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94682378088243579)
,p_prompt=>'<b>Receive Emails</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cHeight=>1
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59390517432884826)
,p_name=>'P9_USER_PREF_DEFAULT_LOC_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94682378088243579)
,p_prompt=>'Current Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select DISTINCT CASE',
'             WHEN ualr.LOCATION_CODE IS NOT NULL',
'             THEN',
'                 ualr.LOCATION_CODE || '' - '' || ualr.LOCATION_NAME',
'             ELSE',
'                 ualr.LOCATION_NAME',
'         END, LOCATION_ID',
'FROM BG_SHARED_ADMIN.APEX_APP_USERS_LOC_ROLE_VW ualr,',
'       bc1_shared.bcone_oid_employees              emp',
' WHERE     APEX_APP_ID = 2032',
'       AND ualr.OID_ID = emp.id',
'       AND ualr.ROLE_INACTIVE_DATE IS NULL',
'       AND emp.USERNAME = :APP_USER',
'       AND USERNAME = :APP_USER ',
'  AND UA_INACTIVE_DATE IS NULL',
'ORDER BY 1'))
,p_cHeight=>1
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59392728552884846)
,p_name=>'P9_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(225671582826606028)
,p_prompt=>'<b>Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59393093429884847)
,p_name=>'P9_USER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(225671582826606028)
,p_prompt=>'<b>User Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59393544083884848)
,p_name=>'P9_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(225671582826606028)
,p_prompt=>'<b>Title:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59393937013884848)
,p_name=>'P9_SUPER_USER_ACCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(225671582826606028)
,p_prompt=>'<b>Super User:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59394289440884849)
,p_name=>'P9_PUBLIC_IR_ACCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(225671582826606028)
,p_prompt=>'<b>Public IR User:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59395106386884850)
,p_name=>'P9_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(225671582826606028)
,p_prompt=>'<b>Email Address:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59396349676884905)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'apex.gPageContext$'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59396854552884915)
,p_event_id=>wwv_flow_api.id(59396349676884905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(225671582826606028)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25541064161261325)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25646280579346579)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25541120749261326)
,p_event_id=>wwv_flow_api.id(25541064161261325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59395526896884900)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get User Information'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT DISTINCT USERNAME                       USER_NAME,',
'                FIRST_NAME || '' '' || LAST_NAME NAME,',
'                JOB_TITLE,',
'                NVL (SUPER_USER_ACCESS, ''N'')   SUPER_USER,',
'                NVL (PUBLIC_IR_ACCESS, ''N'')    PUBLIC_IR_ACCESS,                ',
'                EMAIL,',
'                NVL (EMAIL_FLAG, ''Y''),                ',
'                NVL(DEFAULT_LOCATION_ID,:G_DEFAULT_LOCATION_ID)',
'  INTO :P9_USER_NAME,',
'       :P9_NAME,',
'       :P9_TITLE,',
'       :P9_SUPER_USER_ACCESS,',
'       :P9_PUBLIC_IR_ACCESS,',
'       :P9_EMAIL,',
'       :P9_EMAIL_FLAG,',
'       :P9_USER_PREF_DEFAULT_LOC_ID',
'  FROM BG_QCIS.APP_USER_VW  ua',
' WHERE USER_APP_ID  = :G_USER_ID;',
' END;'))
,p_process_error_message=>'Error in Get User Preference'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59395890900884901)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_app_id number;',
'  v_oid_id varchar2(256);',
'',
'BEGIN',
'',
'  select id into v_oid_id from bc1_shared.bcone_oid_employees oid where username = :APP_USER;',
'  select id into v_app_id from bg_shared_admin.apex_app_applications where app_id = :APP_ID;',
'',
'     update bg_shared_admin.apex_app_users_appl users_appl       ',
'         set users_appl.default_location_id = :P9_USER_PREF_DEFAULT_LOC_ID,',
'         users_appl.email_flag = :P9_EMAIL_FLAG',
'             where ',
'               users_appl.app_id = V_APP_ID and',
'               users_appl.oid_id = V_OID_ID; ',
'               ',
'  -- Set the default plant_id               ',
'  :G_DEFAULT_PLANT_ID := :P9_USER_PREF_DEFAULT_LOC_ID;               ',
'               ',
'END;'))
,p_process_error_message=>'Error updating User Preference'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(59389768462884798)
,p_process_success_message=>'User Preference Updated'
);
end;
/
