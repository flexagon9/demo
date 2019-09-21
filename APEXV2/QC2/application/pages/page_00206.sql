prompt --application/pages/page_00206
begin
wwv_flow_api.create_page(
 p_id=>206
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Clone Stations'
,p_page_mode=>'MODAL'
,p_step_title=>'Clone Stations'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904210384314369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'900'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190710223055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22520931202050489)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>11
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24804211813601328)
,p_plug_name=>'Current Station Relationships'
,p_region_name=>'IR_STATION_LIST'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.STATION_MASTER_ID,',
'       s.STATION_CODE || '' - '' || s.STATION_NAME STATION_NAME,',
'       TO_NUMBER(s.STATION_CODE) STATION_CODE,',
'       s.INACTIVE_DATE,',
'       s.LAST_UPDATE_DATE,',
'       s.LAST_UPDATED_BY,',
'       s.CREATION_DATE,',
'       s.CREATED_BY,',
'       s.QCIS_USAGE_FLAG,',
'       p.USAGE_CODE,',
'       s.STATION_PARENT_ID,',
'       ss.SUBSTATION_CODE || '' '' || ss.SUBSTATION_NAME SUBSTATION_NAME, ',
'       TO_NUMBER(ss.SUBSTATION_CODE) ss_code,',
'       ss.INACTIVE_DATE SUBSTATION_INACTIVE_DATE',
'  FROM bg_qcis.QCIS_STATION_MASTER s, bg_qcis.QCIS_STATION_PARENT p, bg_qcis.QCIS_SUBSTATION ss',
' WHERE     s.MODEL_ID = :P206_CLONE_FROM_MODEL_ID   ',
'   AND p.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND p.ID = s.STATION_PARENT_ID',
'   AND s.STATION_MASTER_ID = ss.STATION_MASTER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P206_CLONE_FROM_MODEL_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24804309457601329)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Station Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>13512961062267345
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24804420092601330)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24804546928601331)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Station Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24804641040601332)
,p_db_column_name=>'STATION_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Station Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24804648607601333)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24804757171601334)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25079817777196185)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25079894953196186)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25079976460196187)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25080083312196188)
,p_db_column_name=>'QCIS_USAGE_FLAG'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'QCIS Usage'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(21782523689685517)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25080154983196189)
,p_db_column_name=>'USAGE_CODE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Usage Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15976633719645764)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25080339150196190)
,p_db_column_name=>'STATION_PARENT_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Station Parent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25080367326196191)
,p_db_column_name=>'SUBSTATION_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Substation Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25080456512196192)
,p_db_column_name=>'SUBSTATION_INACTIVE_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Substation Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25080682944196194)
,p_db_column_name=>'SS_CODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ss Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25090294689212603)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'137990'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATION_NAME:USAGE_CODE:QCIS_USAGE_FLAG:INACTIVE_DATE:SUBSTATION_NAME:SUBSTATION_INACTIVE_DATE:'
,p_sort_column_1=>'STATION_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SS_CODE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STATION_NAME:USAGE_CODE:QCIS_USAGE_FLAG:INACTIVE_DATE:0:0'
,p_break_enabled_on=>'STATION_NAME:USAGE_CODE:QCIS_USAGE_FLAG:INACTIVE_DATE:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32337213043789131)
,p_plug_name=>'Station Clone Report'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'       LOG_ID,',
'       MSG_DATA_SOURCE,',
'       MSG_SOURCE_ID,',
'       SOURCE_PROCESS,',
'       LOG_MESSAGE,',
'       LOG_TYPE,',
'       CREATE_DATE,',
'       CREATED_BY,',
'       :APP_USER USERNAME ',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'  AND LOG_TYPE IN (''I'', ''E'', ''R'', ''S'')',
'  AND CREATED_BY = :APP_USER',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32337381988789132)
,p_max_row_count=>'1000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_description=>'Shows the logging out put for Cloning Stations'
,p_owner=>'DGRUGINS'
,p_internal_uid=>21046033593455148
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22674681998152025)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calling Program'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22675082041152028)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22675481875152030)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22675867569152032)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22676334819152034)
,p_db_column_name=>'CREATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22676656531152037)
,p_db_column_name=>'LOG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22677068642152037)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22677476627152038)
,p_db_column_name=>'USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22522036977050500)
,p_db_column_name=>'MSG_SOURCE_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Msg Source Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22523032260050510)
,p_db_column_name=>'ROWNUM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32390785954328325)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113865'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWNUM:CREATE_DATE:LOG_MESSAGE:'
,p_sort_column_1=>'ROWNUM'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(25166778011326353)
,p_report_id=>wwv_flow_api.id(32390785954328325)
,p_name=>'Errors will be highlighted'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOG_TYPE'
,p_operator=>'='
,p_expr=>'E'
,p_condition_sql=>' (case when ("LOG_TYPE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''E''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_font_color=>'#AB2402'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33098406866637256)
,p_plug_name=>'Station Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_column=>7
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31038290367296291)
,p_plug_name=>'Stations'
,p_parent_plug_id=>wwv_flow_api.id(33098406866637256)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone To Model</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33098511270637257)
,p_plug_name=>'Clone Stations Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone From Model</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33161843982058523)
,p_plug_name=>'Clone Stations'
,p_parent_plug_id=>wwv_flow_api.id(33098511270637257)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22607492694297731)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22520931202050489)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'BACK'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'title="Cancel any unsaved changes and close window."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24417625701024289)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22520931202050489)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:RP,206:P206_CLONE_TO_MODEL_ID:'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22608340509297732)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22520931202050489)
,p_button_name=>'CLONE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'title="Clone Selected Stations from the Clone Model to the  Clone To Model"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22618722594297740)
,p_branch_name=>'Go To Page 206'
,p_branch_action=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:RP:P206_CLONE_TO_MODEL_ID,P206_CLONE_FROM_MODEL_ID,P206_CLONE_FROM_MODEL_YEAR:&P206_CLONE_TO_MODEL_ID.,&P206_CLONE_FROM_MODEL_ID.,&P206_CLONE_FROM_MODEL_YEAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22608340509297732)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22521038216050490)
,p_name=>'P206_CLONE_FROM_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33098511270637257)
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22521080344050491)
,p_name=>'P206_CLONE_FROM_MODEL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33098511270637257)
,p_prompt=>'Clone From Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P206_CLONE_FROM_MODEL_YEAR',
'  and BRAND_ID = :P206_BRAND_ID',
'  and PLANT_ID = :G_DEFAULT_PLANT_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P206_CLONE_FROM_MODEL_YEAR,P206_BRAND_ID'
,p_ajax_items_to_submit=>'P206_CLONE_FROM_MODEL_ID,G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22589897794297709)
,p_name=>'P206_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33098511270637257)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22590325939297710)
,p_name=>'P206_PLANT_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_LOC_CODE;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22590670012297711)
,p_name=>'P206_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22591071578297711)
,p_name=>'P206_CLONE_TO_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_prompt=>'Clone To Model'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P206_MODEL_YEAR',
'  and PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND BRAND_ID = :P206_BRAND_ID',
'  AND MODEL_YEAR||MODEL_NAME NOT IN ( SELECT MODEL_YEAR||MODEL_NAME ',
'                                        FROM bg_qcis.QCIS_MODEL_MASTER fm',
'                                       WHERE MODEL_MASTER_ID = :P206_CLONE_FROM_MODEL_ID)                                   ',
'order by 1'))
,p_lov_cascade_parent_items=>'P206_MODEL_YEAR,P206_CLONE_FROM_MODEL_ID,P206_BRAND_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22592696193297713)
,p_name=>'P206_PARENT_STATION_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22593525696297714)
,p_name=>'P206_STATION_MASTER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22593919271297714)
,p_name=>'P206_STATION_MASTER_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22594251324297714)
,p_name=>'P206_SUBSTATION_MASTER_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31038290367296291)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBSTATION_MASTER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22606835101297730)
,p_name=>'P206_CLONE_STATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33161843982058523)
,p_prompt=>'Available Clone From Sequence - Stations'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.STATION_CODE || '' - '' || s.STATION_NAME d,',
'       s.STATION_MASTER_ID r',
'  FROM bg_qcis.QCIS_STATION_MASTER s',
' WHERE s.MODEL_ID = :P206_CLONE_FROM_MODEL_ID',
'   AND s.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND s.INACTIVE_DATE IS NULL',
'ORDER BY TO_NUMBER(s.STATION_CODE)'))
,p_lov_cascade_parent_items=>'P206_CLONE_FROM_MODEL_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24467114211916356)
,p_name=>'P206_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33098511270637257)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN :G_DEFAULT_BRAND_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_CODE||'' - ''||BRAND_NAME display_value, ',
'       QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID ',
'  and INACTIVE_DATE IS NULL ',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Brand -'
,p_lov_cascade_parent_items=>'G_DEFAULT_PLANT_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22617723795297739)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22607492694297731)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22618195843297740)
,p_event_id=>wwv_flow_api.id(22617723795297739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22615354820297738)
,p_name=>'Refresh Station List'
,p_event_sequence=>35
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P206_CLONE_TO_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25080577830196193)
,p_event_id=>wwv_flow_api.id(22615354820297738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24804211813601328)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22522271841050503)
,p_name=>'Hide Station Relationship List'
,p_event_sequence=>45
,p_condition_element=>'P206_CLONE_TO_MODEL_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22610650062297734)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Station Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_to_stations   apex_application_global.vc_arr2;',
'    v_to_models     apex_application_global.vc_arr2;',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN',
'    v_to_stations := APEX_UTIL.string_to_table (:P206_CLONE_STATION_ID);',
'    v_to_models := APEX_UTIL.string_to_table (:P206_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        v_out_err_msg :=',
'            BG_QCIS.qc2_cloning_utilities.clone_selected_stations (',
'                TO_NUMBER(v_to_models (i)),',
'                :APP_USER,',
'                v_to_stations);',
'    END LOOP;                                                             --TO_MODELS',
'END;'))
,p_process_error_message=>'Error in Creating QC Station - #SQLERRM# '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22608340509297732)
,p_process_success_message=>'QC Station Created'
);
end;
/
