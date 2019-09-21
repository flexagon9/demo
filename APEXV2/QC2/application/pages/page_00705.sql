prompt --application/pages/page_00705
begin
wwv_flow_api.create_page(
 p_id=>705
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'System Message Logging'
,p_step_title=>'System Message Logging'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190815143403'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22502380148543076)
,p_plug_name=>'System Message Logging'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOG_ID,',
'       MSG_DATA_SOURCE,',
'       MSG_SOURCE_ID,',
'       SOURCE_PROCESS,',
'       LOG_MESSAGE,',
'       LOG_TYPE,',
'       CREATE_DATE,',
'       CREATED_BY',
'  from QCIS_MSG_LOG',
'WHERE TRUNC(CREATE_DATE) >= TRUNC(SYSDATE) - 90'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22502532680543076)
,p_name=>'System Message Logging'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>11211184285209092
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22502910042543079)
,p_db_column_name=>'LOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22503295897543079)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Msg Data Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22503676605543079)
,p_db_column_name=>'MSG_SOURCE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Msg Source Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22504056156543080)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Source Process'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22504466137543080)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Log Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22504895154543080)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22505329966543080)
,p_db_column_name=>'CREATE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22505684572543081)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22506077098546783)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112148'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG_ID:MSG_DATA_SOURCE:MSG_SOURCE_ID:SOURCE_PROCESS:LOG_MESSAGE:LOG_TYPE:CREATE_DATE:CREATED_BY'
,p_sort_column_1=>'LOG_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
end;
/
