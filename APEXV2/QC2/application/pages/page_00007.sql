prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'User Summary of My Role(s)'
,p_page_mode=>'MODAL'
,p_step_title=>'User Summary of My Role(s)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904438206428507)
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'900'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190429142624'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(155722377085659552)
,p_name=>'User Roles'
,p_template=>wwv_flow_api.id(90709650764242441)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlightOff'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_display_column=>7
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --aa.APPLICATION_NAME,',
'       --emp.FIRST_NAME,',
'       --emp.LAST_NAME,',
'       --emp.USERNAME,',
'       --emp.TITLE,',
'       --ua.TEXT_FLAG,',
'       --ua.CELL_PHONE,',
'       --ua.EMAIL_FLAG,',
'       --emp.email,',
'       --ua.PUBLIC_IR_ACCESS,',
'       --ua.SUPER_USER_ACCESS',
'        L.DIVISION_CODE || '' - '' || l.NAME Location,',
'        r.ROLE_NAME,',
'        ulr.INACTIVE_DATE',
'  FROM bg_shared_admin.APEX_APP_APPLICATIONS  aaa,',
'       apex_applications          aa,',
'       bg_shared_admin.APEX_APP_USERS_APPL    ua,',
'       bg_shared_admin.APEX_APP_USER_LOC_ROLE  ulr,',
'       bg_shared_admin.APEX_APP_ROLES          r,',
'       bg_shared_admin.APEX_APP_LOCATIONS      l,',
'       bc1_shared.bcone_oid_employees         emp',
' WHERE     aaa.APP_ID = aa.APPLICATION_ID',
'       AND ua.APP_ID = aaa.ID',
'       AND ulr.USER_ID = ua.ID',
'       AND ulr.ROLE_ID = r.ID',
'       AND emp.id = ua.OID_ID',
'       AND ulr.loc_id = l.id',
'       AND aa.APPLICATION_ID = :APP_ID',
'       AND emp.USERNAME = :APP_USER'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></br>',
'<center> <div style="font-size: 14px; color: steelblue"><b>Roles</b></div> </center>',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90727087126242477)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Roles have been assigned'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155722778507659560)
,p_query_column_id=>1
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>1
,p_column_heading=>'Location'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155723168232659561)
,p_query_column_id=>2
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Role Name'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155723592677659561)
,p_query_column_id=>3
,p_column_alias=>'INACTIVE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Inactive Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(155723932950659569)
,p_name=>'User Summary'
,p_template=>wwv_flow_api.id(90709650764242441)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_grid_column_span=>6
,p_display_column=>1
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT aa.APPLICATION_NAME,',
'       emp.FIRST_NAME,',
'       emp.LAST_NAME,',
'       emp.USERNAME,',
'       emp.TITLE,',
'       ua.TEXT_FLAG,',
'       ua.CELL_PHONE,',
'       ua.EMAIL_FLAG,',
'       emp.email,',
'       ua.PUBLIC_IR_ACCESS,',
'       ua.SUPER_USER_ACCESS',
'  --    L.DIVISION_CODE || '' - '' || l.NAME Location,',
'  --    r.ROLE_NAME',
'  FROM bg_shared_admin.APEX_APP_APPLICATIONS  aaa,',
'       apex_applications          aa,',
'       bg_shared_admin.APEX_APP_USERS_APPL    ua,',
'       --     bg_shared_admin.APEX_APP_USER_LOC_ROLE  ulr,',
'       --     bg_shared_admin.APEX_APP_ROLES          r,',
'       --     bg_shared_admin.APEX_APP_LOCATIONS      l,',
'       bc1_shared.bcone_oid_employees         emp',
' WHERE     aaa.APP_ID = aa.APPLICATION_ID',
'       AND ua.APP_ID = aaa.ID',
'       --   AND ulr.USER_ID = ua.ID',
'       --   AND ulr.ROLE_ID = r.ID',
'       AND emp.id = ua.OID_ID',
'       --   AND ulr.loc_id = l.id',
'       AND aa.APPLICATION_ID = :APP_ID',
'       AND emp.USERNAME = :APP_USER'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></br>',
'<center> <div style="font-size: 14px; color: steelblue"><b>User Summary</b></div> </center>',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>2
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155726003790659571)
,p_query_column_id=>1
,p_column_alias=>'APPLICATION_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Application Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155724386809659570)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155724766698659570)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Last Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155725150897659570)
,p_query_column_id=>4
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>4
,p_column_heading=>'Username'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155725576997659570)
,p_query_column_id=>5
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Title'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155727204514659572)
,p_query_column_id=>6
,p_column_alias=>'TEXT_FLAG'
,p_column_display_sequence=>8
,p_column_heading=>'Text Flag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155727557917659572)
,p_query_column_id=>7
,p_column_alias=>'CELL_PHONE'
,p_column_display_sequence=>9
,p_column_heading=>'Cell Phone'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155728004124659573)
,p_query_column_id=>8
,p_column_alias=>'EMAIL_FLAG'
,p_column_display_sequence=>10
,p_column_heading=>'Email Flag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155728337235659573)
,p_query_column_id=>9
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>11
,p_column_heading=>'Email'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155726376193659571)
,p_query_column_id=>10
,p_column_alias=>'PUBLIC_IR_ACCESS'
,p_column_display_sequence=>6
,p_column_heading=>'Public Report Access'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(155726793977659571)
,p_query_column_id=>11
,p_column_alias=>'SUPER_USER_ACCESS'
,p_column_display_sequence=>7
,p_column_heading=>'Super User '
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156210388870001887)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noBorder:t-Form--slimPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(156210874362009159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(156210388870001887)
,p_button_name=>'CLOSE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Close'
,p_button_position=>'BOTTOM'
,p_icon_css_classes=>'fa-times-circle'
,p_button_cattributes=>'title="Close Window"'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(156211137828012473)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close - Close Dialogue'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(156210874362009159)
);
end;
/
