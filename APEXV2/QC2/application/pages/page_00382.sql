prompt --application/pages/page_00382
begin
wwv_flow_api.create_page(
 p_id=>382
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'IM and PM Templates'
,p_page_mode=>'MODAL'
,p_step_title=>'IM and PM Templates'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612636109968797)
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830120243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26009154078055725)
,p_plug_name=>'Button Bar'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52023116550924661)
,p_plug_name=>'Template Listing'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
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
 p_id=>wwv_flow_api.id(52023203139924662)
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
 p_id=>wwv_flow_api.id(26130446585373149)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009825349055732)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009950515055733)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26010042122055734)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26010165546055735)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26010260270055736)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26133649205373154)
,p_db_column_name=>'STATION'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26134052414373155)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26134411221373155)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Image Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26134888839373156)
,p_db_column_name=>'INSPECTION_NAME'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Inspection Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26135221599373156)
,p_db_column_name=>'MAP_TYPE'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Map Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009347361055727)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Sequence Nbr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009491620055728)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009543479055729)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009612263055730)
,p_db_column_name=>'DRAFT_NUMBER'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Draft Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26009760545055731)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26010619209055740)
,p_db_column_name=>'MODEL_MASTER_ID'
,p_display_order=>170
,p_column_identifier=>'Y'
,p_column_label=>'Model Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26493529278921406)
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
 p_id=>wwv_flow_api.id(26493606064921407)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>190
,p_column_identifier=>'AA'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26493763937921408)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>200
,p_column_identifier=>'AB'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26493848407921409)
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
 p_id=>wwv_flow_api.id(26493922965921410)
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
 p_id=>wwv_flow_api.id(52144706174433344)
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
 p_id=>wwv_flow_api.id(26573852791656216)
,p_report_id=>wwv_flow_api.id(52144706174433344)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26129751753373136)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(26009154078055725)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26129355852373135)
,p_button_sequence=>99
,p_button_plug_id=>wwv_flow_api.id(26009154078055725)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26011384319055747)
,p_branch_name=>'Cancel Redirect'
,p_branch_action=>'f?p=&APP_ID.:382:&SESSION.::&DEBUG.:RP,382::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26136894597373180)
,p_name=>'Close Page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26129751753373136)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26137381241373183)
,p_event_id=>wwv_flow_api.id(26136894597373180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26313790871378102)
,p_name=>'Refresh Report'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(52023116550924661)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26313858770378103)
,p_event_id=>wwv_flow_api.id(26313790871378102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(52023116550924661)
,p_stop_execution_on_error=>'Y'
);
end;
/
