set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.4.00.12'
,p_default_workspace_id=>6910808050842941
,p_default_application_id=>101
,p_default_owner=>'APEXHR'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 101 - Demo Projects
--
-- Application Export:
--   Application:     101
--   Name:            Demo Projects
--   Date and Time:   11:19 Sunday May 5, 2019
--   Exported By:     HRADMIN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         5.0.4.00.12
--   Instance ID:     69409115742119
--

prompt --application/pages/delete_00002
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(42954448833137756399)
,p_name=>'Team Members'
,p_page_mode=>'NORMAL'
,p_step_title=>'Team Members'
,p_step_sub_title=>'Demo Team Members'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.t-Card-icon img {',
'width: 48px;',
'height: 48px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'APEX_N00B@EMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160106224930'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(42954451104221756545)
,p_name=>'Team Members'
,p_template=>wwv_flow_api.id(42954422133568756349)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--displayInitials:t-Cards--4cols:t-Cards--desc-3ln'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select id',
', full_name card_title',
', profile card_text',
', nvl(email,'' '') card_subtext',
', dbms_lob.getlength(''PHOTO_BLOB'') card_initials',
', apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::::P3_ID:''||id) card_link',
', photo_filename',
', photo_mimetype',
', photo_charset',
', photo_last_updated',
'from demo_team_members',
'order by created'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(42954428772591756362)
,p_query_num_rows=>15
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
 p_id=>wwv_flow_api.id(21988341116385335108)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342027351335117)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342138972335118)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342210375335119)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342323540335120)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DEMO_TEAM_MEMBERS:PHOTO_BLOB:ID::PHOTO_MIMETYPE:PHOTO_FILENAME:PHOTO_LAST_UPDATED::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342423549335121)
,p_query_column_id=>6
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>6
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342586630335122)
,p_query_column_id=>7
,p_column_alias=>'PHOTO_FILENAME'
,p_column_display_sequence=>7
,p_column_heading=>'Photo filename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342700936335123)
,p_query_column_id=>8
,p_column_alias=>'PHOTO_MIMETYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Photo mimetype'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342710289335124)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_CHARSET'
,p_column_display_sequence=>9
,p_column_heading=>'Photo charset'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988342808257335125)
,p_query_column_id=>10
,p_column_alias=>'PHOTO_LAST_UPDATED'
,p_column_display_sequence=>10
,p_column_heading=>'Photo last updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42954452935465756551)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(42954425911978756352)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(42954450103847756410)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(42954444081025756381)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42954457219133756682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42954452935465756551)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(42954443596836756380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Team Member'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42954457453405756685)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(42954451104221756545)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42954457596792756685)
,p_event_id=>wwv_flow_api.id(42954457453405756685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42954451104221756545)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42954457287752756684)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42954457219133756682)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42954457394607756684)
,p_event_id=>wwv_flow_api.id(42954457287752756684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42954451104221756545)
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
