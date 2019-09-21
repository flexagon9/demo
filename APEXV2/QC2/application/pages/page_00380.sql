prompt --application/pages/page_00380
begin
wwv_flow_api.create_page(
 p_id=>380
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Draft to Template'
,p_page_mode=>'MODAL'
,p_step_title=>'Draft to Template'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15901823723215299)
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINSKI'
,p_last_upd_yyyymmddhh24miss=>'20190828134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37186110054885522)
,p_plug_name=>'Draft Listing'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dr.header_id,',
'       dm.division_code,',
'       bm.brand_code,',
'       pm.plant_code,',
'       mm.model_year,',
'       mm.model_name,',
'       dr.acc_group                                        grp,',
'       dr.accessory                                        acc,',
'       sh.station_code || ''-'' || sh.station_name           station,',
'       ss.substation_code || ''-'' || ss.substation_name     substation,',
'       im.image_name,',
'       im.images_id,',
'       ins.inspection_name,',
'       ins.inspect_name_id,',
'       map_type,',
'       dr.inactive_date',
'  FROM bg_qcis.qcis_im_template_draft  dr',
'       JOIN bg_qcis.qcis_brand_master bm',
'           ON bm.qcis_brand_master_id = dr.brand_id',
'       JOIN bg_qcis.qcis_division_master dm',
'           ON dm.qcis_division_master_id = dr.division_id',
'       JOIN bg_qcis.qcis_plant_master pm',
'           ON pm.qcis_plant_master_id = dr.plant_id',
'       JOIN bg_qcis.qcis_model_master mm ON mm.model_master_id = dr.model_id',
'       JOIN bg_qcis.qcis_station_master sh',
'           ON sh.station_master_id = dr.station_id',
'       JOIN bg_qcis.qcis_substation ss ON ss.substation_id = dr.substation_id',
'       LEFT JOIN bg_qcis.qcis_images im ON im.images_id = dr.image_id',
'       LEFT JOIN bg_qcis.qcis_inspection_names ins',
'           ON ins.inspect_name_id = dr.inspect_name_id',
' WHERE dr.plant_id = :g_default_plant_id',
'   AND mm.INACTIVE_DATE IS NULL',
'   AND dr.inactive_date IS NULL'))
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Draft Listing</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(37186196643885523)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:385:&SESSION.::&DEBUG.:RP,385:P385_DRAFT_HEADER_ID,P385_MODEL_YEAR_PARM,P385_MODEL_NAME_PARM,P385_IMAGE_ID,P385_INSPECT_NAME_ID,P385_DRAFT_ID:#HEADER_ID#,#MODEL_YEAR#,#MODEL_NAME#,#IMAGES_ID#,#INSPECT_NAME_ID#,#HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'Title="Click to Turn Draft to Template."'
,p_owner=>'JJOHNSON'
,p_internal_uid=>25894848248551539
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186289710885524)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186445622885525)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186477232885526)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186608165885527)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186694073885528)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186842994885529)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37186930908885530)
,p_db_column_name=>'GRP'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Grp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37187026558885531)
,p_db_column_name=>'ACC'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Acc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37187141830885532)
,p_db_column_name=>'STATION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37187202807885533)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37187270346885534)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Image Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37298136780389685)
,p_db_column_name=>'INSPECTION_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Inspection Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37298234998389686)
,p_db_column_name=>'MAP_TYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Map Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37302248325389726)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Images Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37302294186389727)
,p_db_column_name=>'INSPECT_NAME_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Inspect Name Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37785405949255395)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(37307699678394205)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260164'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BRAND_CODE:DIVISION_CODE:MODEL_YEAR:MODEL_NAME:MAP_TYPE:STATION:SUBSTATION:INSPECTION_NAME:IMAGE_NAME::INACTIVE_DATE'
,p_sort_column_1=>'BRAND_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'MODEL_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'MODEL_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'STATION'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'SUBSTATION'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'BRAND_CODE:DIVISION_CODE:0:MODEL_YEAR:MODEL_NAME:0'
,p_break_enabled_on=>'BRAND_CODE:DIVISION_CODE:0:MODEL_YEAR:MODEL_NAME:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(37880035227194304)
,p_report_id=>wwv_flow_api.id(37307699678394205)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62900728156225503)
,p_plug_name=>'Button Bar'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37295695957369101)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(62900728156225503)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37295337039369098)
,p_button_sequence=>99
,p_button_plug_id=>wwv_flow_api.id(62900728156225503)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37302483252389729)
,p_branch_name=>'Cancel Redirect'
,p_branch_action=>'f?p=&APP_ID.:380:&SESSION.::&DEBUG.:RP,380::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(37295337039369098)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37298272417389687)
,p_name=>'Close Page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37295695957369101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37298364613389688)
,p_event_id=>wwv_flow_api.id(37298272417389687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
