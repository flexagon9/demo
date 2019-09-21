prompt --application/pages/page_00382
begin
wwv_flow_api.create_page(
 p_id=>382
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'IM and PM Templates'
,p_page_mode=>'MODAL'
,p_step_title=>'IM and PM Templates'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15901823723215299)
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830120243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37300502473389709)
,p_plug_name=>'Button Bar'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63314464946258645)
,p_plug_name=>'Template Listing'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ''fa-copy'' CLONE,',
'         th.header_id,',
'         dm.division_code,',
'         bm.brand_code,',
'         :G_DEFAULT_LOCATION_CODE PLANT_CODE,',
'         th.model_year,',
'         th.model_name,',
'         th.sequence_nbr,',
'         th.acc_group,',
'         th.accessory,',
'         sh.station_code || ''-'' || sh.station_name          station,',
'         ss.substation_code || ''-'' || ss.substation_name    substation,',
'         im.image_name,',
'         ins.inspection_name,',
'         td.map_type,',
'         th.draft_id draft_number,',
'         th.inactive_date,',
'         mm.model_master_id,',
'         th.CREATION_DATE,',
'         th.CREATED_BY,',
'         th.LAST_UPDATED_BY,',
'         th.LAST_UPDATE_DATE',
'    FROM bg_qcis.qcis_im_template_header th',
'         JOIN bg_qcis.qcis_im_template_draft td ON td.header_id = th.draft_id',
'         JOIN bg_qcis.qcis_im_template_draft td ON td.header_id = th.draft_id',
'         JOIN bg_qcis.qcis_model_master mm ON mm.model_master_id = td.model_id',
'       --  JOIN bg_qcis.qcis_plant_master pm',
'      --       ON pm.qcis_plant_master_id = td.plant_id',
'         JOIN bg_qcis.qcis_division_master dm',
'             ON dm.qcis_division_master_id = td.division_id',
'         JOIN bg_qcis.qcis_brand_master bm',
'             ON bm.qcis_brand_master_id = td.brand_id',
'         JOIN bg_qcis.qcis_station_master sh',
'             ON sh.station_master_id = th.station_id',
'         JOIN bg_qcis.qcis_substation ss ON ss.substation_id = th.substation_id',
'         JOIN bg_qcis.qcis_images im ON im.images_id = th.image_id',
'         JOIN bg_qcis.qcis_inspection_names ins',
'             ON ins.inspect_name_id = th.inspect_name_id',
'   WHERE 1 = 1',
'     AND th.plant_code = :g_default_loc_code',
'     AND td.PLANT_ID = :G_DEFAULT_PLANT_ID',
'     AND mm.INACTIVE_DATE IS NULL'))
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>IM & PM Templates</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63314551535258646)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:385:&SESSION.::&DEBUG.:RP,385:P385_DRAFT_HEADER_ID,P385_MODEL_YEAR_PARM,P385_MODEL_NAME_PARM,P385_HEADER_ID:#DRAFT_NUMBER#,#MODEL_YEAR#,#MODEL_NAME#,#HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>52023203139924662
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37421794980707133)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301173744389716)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301298910389717)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301390517389718)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301513941389719)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301608665389720)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37424997600707138)
,p_db_column_name=>'STATION'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37425400809707139)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37425759616707139)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Image Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37426237234707140)
,p_db_column_name=>'INSPECTION_NAME'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Inspection Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37426569994707140)
,p_db_column_name=>'MAP_TYPE'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Map Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37300695756389711)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Sequence Nbr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37300840015389712)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37300891874389713)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37300960658389714)
,p_db_column_name=>'DRAFT_NUMBER'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Draft Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301108940389715)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37301967604389724)
,p_db_column_name=>'MODEL_MASTER_ID'
,p_display_order=>170
,p_column_identifier=>'Y'
,p_column_label=>'Model Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37784877674255390)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>180
,p_column_identifier=>'Z'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37784954460255391)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>190
,p_column_identifier=>'AA'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37785112333255392)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>200
,p_column_identifier=>'AB'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37785196803255393)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>210
,p_column_identifier=>'AC'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37785271361255394)
,p_db_column_name=>'CLONE'
,p_display_order=>220
,p_column_identifier=>'AD'
,p_column_label=>'Clone'
,p_column_link=>'f?p=&APP_ID.:382:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'<span class = "fa #CLONE#  fa-1x"</span>'
,p_column_link_attr=>'	TITLE="Click to Clone Image/Pin Map Inspection:  #INSPECTION_NAME# to Another Model."'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63436054569767328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'261356'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLONE:BRAND_CODE:DIVISION_CODE:MODEL_YEAR:MODEL_NAME:MAP_TYPE:SEQUENCE_NBR:STATION:SUBSTATION:IMAGE_NAME:INSPECTION_NAME:INACTIVE_DATE:CREATION_DATE:CREATED_BY:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_sort_column_1=>'BRAND_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'MODEL_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'MODEL_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'SEQUENCE_NBR'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'STATION'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'SUBSTATION'
,p_sort_direction_6=>'ASC'
,p_break_on=>'BRAND_CODE:DIVISION_CODE:MODEL_YEAR:MODEL_NAME:0:0'
,p_break_enabled_on=>'BRAND_CODE:DIVISION_CODE:MODEL_YEAR:MODEL_NAME:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(37865201186990200)
,p_report_id=>wwv_flow_api.id(63436054569767328)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37421100148707120)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(37300502473389709)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37420704247707119)
,p_button_sequence=>99
,p_button_plug_id=>wwv_flow_api.id(37300502473389709)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37302732714389731)
,p_branch_name=>'Cancel Redirect'
,p_branch_action=>'f?p=&APP_ID.:382:&SESSION.::&DEBUG.:RP,382::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37428242992707164)
,p_name=>'Close Page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37421100148707120)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37428729636707167)
,p_event_id=>wwv_flow_api.id(37428242992707164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37605139266712086)
,p_name=>'Refresh Report'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(63314464946258645)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37605207165712087)
,p_event_id=>wwv_flow_api.id(37605139266712086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63314464946258645)
,p_stop_execution_on_error=>'Y'
);
end;
/
