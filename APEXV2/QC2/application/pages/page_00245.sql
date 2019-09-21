prompt --application/pages/page_00245
begin
wwv_flow_api.create_page(
 p_id=>245
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Gig Sheet Templates - Gig Sheet Template List'
,p_page_mode=>'MODAL'
,p_step_title=>'Gig Sheet Templates - Gig Sheet Template List'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830120115'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63837568806981030)
,p_plug_name=>'Gig Sheet -GS IR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 8/27/2019 12:28:13 PM (QP5 v5.336) */',
'SELECT ''fa-copy'' CLONE,',
'       HEADER_ID,',
'       :G_DEFAULT_LOCATION_CODE',
'           PLANT,',
'       (SELECT bm.brand_code',
'          FROM qcis_brand_master bm',
'         WHERE bm.qcis_brand_master_id = gsth.brand_id)',
'           BRAND,',
'       (SELECT dm.division_code',
'          FROM qcis_division_master dm',
'         WHERE dm.qcis_division_master_id = gsth.division_id)',
'           DIVISION,',
'       mm.model_year,',
'       mm.model_name',
'           MODEL,',
'       gsth.MODEL_ID,',
'       ACC_GROUP,',
'       ACCESSORY,',
'       (SELECT sh.station_code || ''-'' || sh.station_name',
'          FROM qcis_station_master sh',
'         WHERE sh.station_master_id = gsth.station_id)',
'           STATION,',
'       (SELECT ss.substation_code || ''-'' || ss.substation_name',
'          FROM qcis_substation ss',
'         WHERE ss.substation_id = gsth.substation_id)',
'           SUBSTATION,',
'       INSPECTOR_ID,',
'       SEQUENCE_NBR,',
'       (SELECT ins.inspection_name',
'          FROM qcis_inspection_names ins',
'         WHERE ins.inspect_name_id = gsth.gig_sheet_name)',
'           GIG_SHEET_NAME,',
'       gsth.INACTIVE_DATE,',
'       gsth.LAST_UPDATE_DATE,',
'       gsth.LAST_UPDATED_BY,',
'       gsth.CREATION_DATE,',
'       gsth.CREATED_BY',
'  FROM QCIS_GS_TEMPLATE_HEADER gsth, BG_QCIS.QCIS_MODEL_MASTER mm',
' WHERE     GIG_SHEET_TYPE = ''G''',
'       AND gsth.PLANT_ID = :G_DEFAULT_PLANT_ID',
'       AND gsth.MODEL_ID = mm.MODEL_MASTER_ID',
'       AND mm.INACTIVE_DATE IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Gig Sheet Template List</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63837649741981030)
,p_name=>'IM - IM IR'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,81:P240_HEADER_ID,P240_MODEL_ID:#HEADER_ID#,#MODEL_ID##HEADER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Gig Sheet Template."'
,p_owner=>'TBOWERS'
,p_internal_uid=>52546301346647046
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37753245950152246)
,p_db_column_name=>'MODEL'
,p_display_order=>50
,p_column_identifier=>'AC'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37754425297152251)
,p_db_column_name=>'STATION'
,p_display_order=>80
,p_column_identifier=>'AF'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37754808645152251)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>90
,p_column_identifier=>'AG'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37758011197152255)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37756010778152253)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>200
,p_column_identifier=>'AJ'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37756375787152253)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>210
,p_column_identifier=>'AK'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37756809515152253)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>220
,p_column_identifier=>'AL'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37757156427152254)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>230
,p_column_identifier=>'AM'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37757616426152254)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>240
,p_column_identifier=>'AN'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37349054119937722)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>250
,p_column_identifier=>'AO'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37349468235937726)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>290
,p_column_identifier=>'AS'
,p_column_label=>'Model Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37349616831937727)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>300
,p_column_identifier=>'AT'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37349743490937728)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>310
,p_column_identifier=>'AU'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37349753289937729)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>320
,p_column_identifier=>'AV'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37349859989937730)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>330
,p_column_identifier=>'AW'
,p_column_label=>'Sequence Nbr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37350028319937731)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>340
,p_column_identifier=>'AX'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37350094016937732)
,p_db_column_name=>'PLANT'
,p_display_order=>350
,p_column_identifier=>'AY'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37350212551937733)
,p_db_column_name=>'BRAND'
,p_display_order=>360
,p_column_identifier=>'AZ'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37350284756937734)
,p_db_column_name=>'DIVISION'
,p_display_order=>370
,p_column_identifier=>'BA'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37141571052252908)
,p_db_column_name=>'CLONE'
,p_display_order=>380
,p_column_identifier=>'BB'
,p_column_label=>'Clone'
,p_column_link=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP:P241_CLONE_FROM_MODEL_ID,P241_CLONE_FROM_MODEL_YEAR:#MODEL_ID#,#MODEL_YEAR#'
,p_column_linktext=>'<span class = "fa #CLONE#  fa-1x"</span>'
,p_column_link_attr=>'TITLE="Click to Clone an Gig Sheet Inspection from #MODEL_YEAR#-#MODEL# to Another Model."'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63846046746006450)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264670'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLONE:BRAND:DIVISION:MODEL_YEAR:MODEL:GIG_SHEET_NAME:SEQUENCE_NBR:STATION:SUBSTATION:INACTIVE_DATE:CREATION_DATE:CREATED_BY:LAST_UPDATE_DATE:LAST_UPDATED_BY:'
,p_sort_column_1=>'BRAND'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'MODEL_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'MODEL'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'SEQUENCE_NBR'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'STATION'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'SUBSTATION'
,p_sort_direction_6=>'ASC'
,p_break_on=>'BRAND:DIVISION:MODEL_YEAR:MODEL:CLONE:0'
,p_break_enabled_on=>'BRAND:DIVISION:MODEL_YEAR:MODEL:CLONE:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(37927028082040208)
,p_report_id=>wwv_flow_api.id(63846046746006450)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73949938905154643)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37762184303161477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73949938905154643)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'title="Naviagate back to Template Maintenance."'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37759125629152256)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(63837568806981030)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_css_classes=>'title="Click to Create New Gid Sheet Template."'
,p_button_cattributes=>'title="Refresh and Create Another Model."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37784367077255385)
,p_name=>'Close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37762184303161477)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37784486684255386)
,p_event_id=>wwv_flow_api.id(37784367077255385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
