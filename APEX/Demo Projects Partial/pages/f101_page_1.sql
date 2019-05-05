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

prompt --application/pages/delete_00001
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(42954448833137756399)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'APEX_N00B@EMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160106220736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21988339321504335090)
,p_plug_name=>'Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(42954422639628756349)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Open Projects'' label',
', count(*) value',
', ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||'':::::'' link',
'from demo_projects ',
'where status != ''Completed''',
'UNION ALL',
'select ''Upcoming Milestones'' label',
', count(*) value',
', ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||'':::::'' link',
'from demo_milestones',
'where due_date > sysdate',
'UNION ALL',
'select ''Open Tasks'' label',
', count(*) value',
', ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||'':::::'' link ',
'from demo_tasks',
'where is_complete_yn = ''N'''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&LINK.'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21988339507334335091)
,p_name=>'Recent Projects'
,p_template=>wwv_flow_api.id(42954422639628756349)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Timeline--compact'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select p.id project_id',
', t.id',
', null event_modifiers',
', null event_attributes',
', null user_color',
', dbms_lob.getlength(''PHOTO_BLOB'') user_avatar',
', t.full_name user_name',
', nvl(p.completed_date, p.updated) event_date',
', (case p.status ',
'when ''Assigned'' then ''is-removed''',
'when ''In-Progress'' then ''is-updated''',
'when ''Completed'' then ''is-new''',
'end) event_status',
', p.status event_type',
', (case p.status ',
'when ''Assigned'' then ''fa fa-clock-o''',
'when ''In-Progress'' then ''fa fa-refresh''',
'when ''Completed'' then ''fa fa-check''',
'end) event_icon',
', p.name event_title',
', p.description event_desc',
'from demo_projects p',
', demo_team_members t',
'where p.project_lead = t.id',
'order by p.updated desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(42954432648129756365)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988339847811335095)
,p_query_column_id=>1
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Project id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988339955281335096)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340103350335097)
,p_query_column_id=>3
,p_column_alias=>'EVENT_MODIFIERS'
,p_column_display_sequence=>3
,p_column_heading=>'Event modifiers'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340185154335098)
,p_query_column_id=>4
,p_column_alias=>'EVENT_ATTRIBUTES'
,p_column_display_sequence=>4
,p_column_heading=>'Event attributes'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340253871335099)
,p_query_column_id=>5
,p_column_alias=>'USER_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'User color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340366960335100)
,p_query_column_id=>6
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>6
,p_column_heading=>'User avatar'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DEMO_TEAM_MEMBERS:PHOTO_BLOB:ID::PHOTO_MIMETYPE:PHOTO_FILENAME:PHOTO_LAST_UPDATED::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340451512335101)
,p_query_column_id=>7
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340518874335102)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Event date'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340682774335103)
,p_query_column_id=>9
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Event status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340749225335104)
,p_query_column_id=>10
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340827454335105)
,p_query_column_id=>11
,p_column_alias=>'EVENT_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'Event icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988340920914335106)
,p_query_column_id=>12
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>12
,p_column_heading=>'Event title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21988341059970335107)
,p_query_column_id=>13
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>13
,p_column_heading=>'Event desc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40235878504223495845)
,p_plug_name=>'Project Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(42954422639628756349)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select p.id',
', p.name as label',
', (select count(''x'') from demo_tasks t ',
'where p.id = t.project_id ',
'and nvl(t.is_complete_yn,''N'') = ''Y''',
') value',
', ''Completed Tasks'' series',
', p.created',
'from demo_projects p',
'UNION ALL',
'select p.id',
', p.name as label',
', (select count(''x'') from demo_tasks t ',
'where p.id = t.project_id ',
'and nvl(t.is_complete_yn,''N'') = ''N''',
') value',
', ''Incompleted Tasks'' series',
', p.created',
'from demo_projects p',
'order by 5'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_03=>'Y'
,p_attribute_04=>'SERIES'
,p_attribute_06=>'HORIZONTAL,STACKED'
,p_attribute_09=>'Tasks'
,p_attribute_10=>'SERIES:Y'
,p_attribute_12=>'BOTTOM'
,p_attribute_15=>'FRIENDLY'
,p_attribute_16=>'10'
,p_attribute_17=>'10'
,p_attribute_19=>'240'
,p_attribute_21=>'BARS'
,p_attribute_22=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40235878809487495848)
,p_name=>'My Outstanding Tasks'
,p_template=>wwv_flow_api.id(42954422639628756349)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select p.name project',
', t.name task',
', t.end_date',
'from demo_tasks t',
', demo_projects p',
', demo_milestones m',
', demo_team_members tm',
'where p.id = t.project_id',
'and   m.id = t.milestone_id (+)',
'and   tm.id = t.assignee',
'and   nvl(t.is_complete_yn, ''N'') = ''N''',
'and   upper(tm.username) = upper(:APP_USER)',
'order by t.end_date'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(42954431357115756364)
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
 p_id=>wwv_flow_api.id(40235878866774495849)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40235879012192495850)
,p_query_column_id=>2
,p_column_alias=>'TASK'
,p_column_display_sequence=>2
,p_column_heading=>'Task'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40235879070860495851)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'End date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42954450631107756417)
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
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
