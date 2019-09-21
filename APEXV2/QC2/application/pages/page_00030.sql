prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Images By Plant (not used)'
,p_step_title=>'Images By Plant'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'TBOWERS'
,p_last_upd_yyyymmddhh24miss=>'20190627160330'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22407360176349208)
,p_plug_name=>'Images By Plant'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IMG.ID,',
'       TO_CHAR(IMG.ID) CHAR_ID,',
'       IMG.PLANT_ID,',
'       (SELECT pm.plant_code',
'          FROM qcis_plant_master pm',
'         WHERE pm.qcis_plant_master_id = IMG.plant_id) plt,',
'       IMG.IMAGE_NAME,',
'       IMG.FILE_NAME,',
'       IMG.MIME_TYPE,',
'       IMG.IMAGE_SIZE,',
'       IMG.PIXEL_WIDTH,',
'       IMG.PIXEL_HEIGHT,',
'       --IMG.CHARACTER_SET,',
'       IMG.BLOB_CONTENT,',
'       IMG.INACTIVE_DATE,',
'       IMG.LAST_UPDATE_DATE,',
'       IMG.LAST_UPDATED_BY,',
'       IMG.CREATION_DATE,',
'       IMG.CREATED_BY',
'  from QCIS_IMAGES_MASTER IMG',
' where IMG.PLANT_ID = :G_DEFAULT_PLANT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22407522923349208)
,p_name=>'Images By Plant'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'TBOWERS'
,p_internal_uid=>11116174528015224
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22407911925349216)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22408329135349217)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Plant Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21121734863200598)
,p_db_column_name=>'PLT'
,p_display_order=>31
,p_column_identifier=>'O'
,p_column_label=>'Plt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22408693099349217)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>41
,p_column_identifier=>'C'
,p_column_label=>'Image Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22409904092349219)
,p_db_column_name=>'IMAGE_SIZE'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Image Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22410270435349219)
,p_db_column_name=>'PIXEL_WIDTH'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Pixel Width'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22410718172349220)
,p_db_column_name=>'PIXEL_HEIGHT'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Pixel Height'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22411473329349221)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22411887218349222)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22412258219349223)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22412663166349223)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22413095701349224)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>121
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21121993156200601)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>131
,p_column_identifier=>'R'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21122391498200605)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>151
,p_column_identifier=>'T'
,p_column_label=>'Blob Content'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_format_mask=>'IMAGE:QCIS_IMAGES_MASTER:BLOB_CONTENT:ID::::::::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21122469967200606)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>161
,p_column_identifier=>'U'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_format_mask=>'IMAGE:QCIS_IMAGES_MASTER:BLOB_CONTENT:ID::::::::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21122592136200607)
,p_db_column_name=>'CHAR_ID'
,p_display_order=>171
,p_column_identifier=>'V'
,p_column_label=>'Char Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22413655516360204)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111224'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PLANT_ID_NAME_SIZE:PIXEL_WIDTH:PIXEL_HEIGHT:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY:PLT:MIME_TYPE:BLOB_CONTENT:FILE_NAME:CHAR_ID'
);
end;
/
