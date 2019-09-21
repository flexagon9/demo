prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'User Inquiry'
,p_step_title=>'User Inquiry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904438206428507)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINSKI'
,p_last_upd_yyyymmddhh24miss=>'20190814153837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100961525962101086)
,p_plug_name=>'Application Users'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'       ua.SUPER_USER_ACCESS,',
'       l.DIVISION_CODE || '' - '' || l.NAME Location,',
'       r.ROLE_NAME',
'  FROM bg_shared_admin.APEX_APP_APPLICATIONS   aaa,',
'       apex_applications           aa,',
'       bg_shared_admin.APEX_APP_USERS_APPL     ua,',
'       bg_shared_admin.APEX_APP_USER_LOC_ROLE  ulr,',
'       bg_shared_admin.APEX_APP_ROLES          r,',
'       bg_shared_admin.APEX_APP_LOCATIONS      l,',
'       bc1_shared.bcone_oid_employees          emp',
' WHERE     aaa.APP_ID = aa.APPLICATION_ID',
'       AND ua.APP_ID = aaa.ID',
'       AND ulr.USER_ID = ua.ID',
'       AND ulr.ROLE_ID = r.ID',
'       AND emp.id = ua.OID_ID',
'       AND ulr.loc_id = l.id',
'       AND aa.APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size: 16px; color: steelblue"><b>Users List</b></span>  '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(100961855529101094)
,p_name=>'Users List'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No users found'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'SGRAY'
,p_internal_uid=>85235445543604343
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100963567189101114)
,p_db_column_name=>'LOCATION'
,p_display_order=>184
,p_column_identifier=>'P'
,p_column_label=>'Location'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100965597984101117)
,p_db_column_name=>'EMAIL'
,p_display_order=>234
,p_column_identifier=>'Y'
,p_column_label=>'Email'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155734811609698905)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>235
,p_column_identifier=>'Z'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155735559465698912)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>236
,p_column_identifier=>'AA'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155736250224698912)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>237
,p_column_identifier=>'AB'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155736945361698913)
,p_db_column_name=>'USERNAME'
,p_display_order=>238
,p_column_identifier=>'AC'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155737657537698914)
,p_db_column_name=>'TITLE'
,p_display_order=>239
,p_column_identifier=>'AD'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155738316557698915)
,p_db_column_name=>'TEXT_FLAG'
,p_display_order=>240
,p_column_identifier=>'AE'
,p_column_label=>'Text Flag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155739020464698915)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>241
,p_column_identifier=>'AF'
,p_column_label=>'Cell Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155739778867698916)
,p_db_column_name=>'EMAIL_FLAG'
,p_display_order=>242
,p_column_identifier=>'AG'
,p_column_label=>'Email Flag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155740471370698917)
,p_db_column_name=>'PUBLIC_IR_ACCESS'
,p_display_order=>243
,p_column_identifier=>'AH'
,p_column_label=>'Public Ir Access'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155741155813698917)
,p_db_column_name=>'SUPER_USER_ACCESS'
,p_display_order=>244
,p_column_identifier=>'AI'
,p_column_label=>'Super User Access'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(155741895492698918)
,p_db_column_name=>'ROLE_NAME'
,p_display_order=>245
,p_column_identifier=>'AJ'
,p_column_label=>'Role Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(100966365541101130)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'852400'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOCATION:FIRST_NAME:LAST_NAME:USERNAME:TITLE:EMAIL:TEXT_FLAG:EMAIL_FLAG:PUBLIC_IR_ACCESS:SUPER_USER_ACCESS:ROLE_NAME:'
,p_sort_column_1=>'LAST_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'ROLE_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'LOCATION:0:0'
,p_break_enabled_on=>'LOCATION:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156193064213691004)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noBorder:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(100966885853101168)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'apex.gPageContext$'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100967401901101173)
,p_event_id=>wwv_flow_api.id(100966885853101168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(100961525962101086)
,p_stop_execution_on_error=>'Y'
);
end;
/
