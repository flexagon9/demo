prompt --application/pages/page_00116
begin
wwv_flow_api.create_page(
 p_id=>116
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Station Xref'
,p_page_mode=>'MODAL'
,p_step_title=>'Station Xref'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$("#rgnSticky").stickyWidget({toggleWidth:true});'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830121426'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14399999595263844)
,p_plug_name=>'Station Xref'
,p_region_name=>'rgnSticky'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT STATION_PARENT_ID,',
'         PLANT_MASTER_ID,',
'         PLANT_CODE,',
'         PLANT_NAME,',
'         QCIS_STATION_CODE,',
'         QCIS_STATION_NAME,',
'         STATION_USAGE_CODE,',
'         SUBSTATION_PARENT_ID,',
'         QCIS_SUBSTATION_CODE,',
'         QCIS_SUBSTATION_NAME,',
'         SUBSTATION_USAGE_CODE,',
'         XREF_ID,',
'         OBMS_BUILDING_ID,',
'         OBMS_BUILDING_NAME,',
'         OBMS_LINE_ID,',
'         OBMS_LINE_NAME,',
'         OBMS_STATION_ID,',
'         OBMS_STATION_NAME,',
'         USAGE_CODE,',
'         XREF_INACTIVE_DATE',
'    FROM bg_qcis.qcis_sfm_station_xref_vw',
'   WHERE plant_master_id = :g_default_plant_id',
'ORDER BY plant_code,',
'         qcis_station_code,',
'         qcis_substation_code,',
'         obms_building_name,',
'         obms_line_name,',
'         obms_station_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Station Xref List</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14400031511263845)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP,114:P114_ID,P114_PLANT,P114_STATION_SEQUENCE,P114_STATION_NAME:#SUBSTATION_PARENT_ID#,#PLANT_MASTER_ID#,#QCIS_STATION_CODE#,#QCIS_STATION_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>14400031511263845
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14400104849263846)
,p_db_column_name=>'STATION_PARENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station Parent Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14400249271263847)
,p_db_column_name=>'PLANT_MASTER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plant Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205147126621207)
,p_db_column_name=>'XREF_ID'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Xref Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205473236621210)
,p_db_column_name=>'OBMS_LINE_ID'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Obms Line Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205603220621212)
,p_db_column_name=>'OBMS_STATION_ID'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>'Obms Station Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205274530621208)
,p_db_column_name=>'OBMS_BUILDING_ID'
,p_display_order=>60
,p_column_identifier=>'M'
,p_column_label=>'Obms Building Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15204753391621203)
,p_db_column_name=>'SUBSTATION_PARENT_ID'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Substation Parent Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14400389594263848)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>80
,p_column_identifier=>'C'
,p_column_label=>'Plant Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14400402036263849)
,p_db_column_name=>'PLANT_NAME'
,p_display_order=>90
,p_column_identifier=>'D'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14400576849263850)
,p_db_column_name=>'QCIS_STATION_CODE'
,p_display_order=>100
,p_column_identifier=>'E'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15204545758621201)
,p_db_column_name=>'QCIS_STATION_NAME'
,p_display_order=>110
,p_column_identifier=>'F'
,p_column_label=>'QCIS Station Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15204623446621202)
,p_db_column_name=>'STATION_USAGE_CODE'
,p_display_order=>120
,p_column_identifier=>'G'
,p_column_label=>'Station Usage Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15204873971621204)
,p_db_column_name=>'QCIS_SUBSTATION_CODE'
,p_display_order=>130
,p_column_identifier=>'I'
,p_column_label=>'QCIS Substation'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15204922771621205)
,p_db_column_name=>'QCIS_SUBSTATION_NAME'
,p_display_order=>140
,p_column_identifier=>'J'
,p_column_label=>'QCIS Substation Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205017191621206)
,p_db_column_name=>'SUBSTATION_USAGE_CODE'
,p_display_order=>150
,p_column_identifier=>'K'
,p_column_label=>'Substation Usage Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205374385621209)
,p_db_column_name=>'OBMS_BUILDING_NAME'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'SFM Building Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205514535621211)
,p_db_column_name=>'OBMS_LINE_NAME'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'SFM Line Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205755011621213)
,p_db_column_name=>'OBMS_STATION_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'SFM Station Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205863363621214)
,p_db_column_name=>'USAGE_CODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'XRef Usage Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15205932627621215)
,p_db_column_name=>'XREF_INACTIVE_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Xref Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15217350413627856)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'152174'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QCIS_STATION_CODE:QCIS_STATION_NAME:STATION_USAGE_CODE:QCIS_SUBSTATION_CODE:QCIS_SUBSTATION_NAME:SUBSTATION_USAGE_CODE:OBMS_BUILDING_NAME:OBMS_LINE_NAME:OBMS_STATION_NAME:USAGE_CODE:XREF_INACTIVE_DATE:'
,p_break_on=>'QCIS_STATION_CODE:QCIS_SUBSTATION_CODE:0:0:0'
,p_break_enabled_on=>'QCIS_STATION_CODE:QCIS_SUBSTATION_CODE:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25072889176203243)
,p_plug_name=>'Button Bar'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16301259023498757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25072889176203243)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16301670373509162)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16301259023498757)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16302034708509162)
,p_event_id=>wwv_flow_api.id(16301670373509162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16302762942529390)
,p_name=>'Refresh Station List'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14399999595263844)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16303145809529391)
,p_event_id=>wwv_flow_api.id(16302762942529390)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14399999595263844)
,p_stop_execution_on_error=>'Y'
);
end;
/
