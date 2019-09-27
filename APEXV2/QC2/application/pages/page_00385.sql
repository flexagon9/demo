prompt --application/pages/page_00385
begin
wwv_flow_api.create_page(
 p_id=>385
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'IM Template Detail'
,p_page_mode=>'MODAL'
,p_step_title=>'IM Template Detail'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612636109968797)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190827113952'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26007321886055707)
,p_plug_name=>'Page Variables'
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26007552464055709)
,p_plug_name=>'Existing Templates for Model'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT th.header_id,',
'       th.sequence_nbr,',
'          dm.division_code',
'       || '' - ''',
'       || bm.brand_code',
'       || '' - ''',
'       || pm.plant_code',
'       || '' - ''',
'       || mm.model_year',
'       || ''/''',
'       || mm.model_name                                   draft,',
'       th.draft_id,',
'       th.acc_group,',
'       th.accessory,',
'       sh.station_code || ''-'' || sh.station_name          station,',
'       ss.substation_code || ''-'' || ss.substation_name    substation,',
'       im.image_name,',
'       ins.inspection_name,',
'       th.inactive_date',
'  FROM bg_qcis.qcis_im_template_header  th',
'       LEFT JOIN bg_qcis.qcis_station_master sh',
'           ON sh.station_master_id = th.station_id',
'       LEFT JOIN bg_qcis.qcis_substation ss',
'           ON ss.substation_id = th.substation_id',
'       LEFT JOIN bg_qcis.qcis_images im ON im.images_id = th.image_id',
'       LEFT JOIN bg_qcis.qcis_inspection_names ins',
'           ON ins.inspect_name_id = th.inspect_name_id',
'       JOIN qcis_im_template_draft td ON td.header_id = th.draft_id',
'       JOIN qcis_model_master mm ON mm.model_master_id = td.model_id',
'       JOIN qcis_plant_master pm ON pm.qcis_plant_master_id = td.plant_id',
'       JOIN qcis_division_master dm',
'           ON dm.qcis_division_master_id = td.division_id',
'       JOIN qcis_brand_master bm ON bm.qcis_brand_master_id = td.brand_id',
' WHERE th.plant_code = :g_default_loc_code',
'   AND th.model_year = NVL ( :p385_model_year_parm, th.model_year)',
'   AND th.model_name = NVL ( :p385_model_name_parm, th.model_name)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P385_MODEL_YEAR_PARM,P385_MODEL_NAME_PARM'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Existing Templates for Model</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26007622213055710)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_owner=>'JJOHNSON'
,p_internal_uid=>26007622213055710
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26007722587055711)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008064708055714)
,p_db_column_name=>'DRAFT_ID'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Draft Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26007967762055713)
,p_db_column_name=>'DRAFT'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Template'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008369879055717)
,p_db_column_name=>'STATION'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008471399055718)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008660314055720)
,p_db_column_name=>'INSPECTION_NAME'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Inspection'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008585429055719)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Image'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008198214055715)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008289029055716)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26008744078055721)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26007802820055712)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>120
,p_column_identifier=>'B'
,p_column_label=>'Sequence Nbr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26046042198404714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260461'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DRAFT:STATION:SUBSTATION:INSPECTION_NAME:IMAGE_NAME:ACC_GROUP:ACCESSORY:INACTIVE_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26009088642055724)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P385_HEADER_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26021996388175708)
,p_plug_name=>'Draft to Template 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417016967908454)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26022676037175708)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77645763257075181)
,p_plug_name=>'Button Bar'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26037069389183664)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(77645763257075181)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26036697794183663)
,p_button_sequence=>99
,p_button_plug_id=>wwv_flow_api.id(77645763257075181)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26022349156175708)
,p_button_sequence=>109
,p_button_plug_id=>wwv_flow_api.id(77645763257075181)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P385_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26022457865175708)
,p_button_sequence=>119
,p_button_plug_id=>wwv_flow_api.id(77645763257075181)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P385_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26011252597055746)
,p_branch_name=>'Cancel Redirect'
,p_branch_action=>'f?p=&APP_ID.:385:&SESSION.::&DEBUG.:RP,385:P385_DRAFT_HEADER_ID,P385_MODEL_YEAR_PARM,P385_MODEL_NAME_PARM,P385_IMAGE_ID,P385_INSPECT_NAME_ID,P385_HEADER_ID:&P385_DRAFT_HEADER_ID.,&P385_MODEL_YEAR_PARM.,&P385_MODEL_NAME_PARM.,&P385_IMAGE_ID.,&P385_INSPECT_NAME_ID.,&P385_HEADER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26036697794183663)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26007459272055708)
,p_name=>'P385_DRAFT_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26007321886055707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26008848249055722)
,p_name=>'P385_MODEL_YEAR_PARM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26007321886055707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26008904256055723)
,p_name=>'P385_MODEL_NAME_PARM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26007321886055707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26010318671055737)
,p_name=>'P385_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26007321886055707)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_ID ',
'  from BG_QCIS.QCIS_IM_TEMPLATE_DRAFT ',
' where HEADER_ID = :P385_DRAFT_HEADER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26010700855055741)
,p_name=>'P385_BRAND_CODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT bm.brand_code',
'  FROM bg_qcis.qcis_model_master  mm',
'       JOIN bg_qcis.qcis_brand_master bm',
'           ON bm.qcis_brand_master_id = mm.brand_id',
' WHERE mm.model_master_id = :p385_model_id;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26025409089175713)
,p_name=>'P385_HEADER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26025840634175735)
,p_name=>'P385_DRAFT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_source=>'DRAFT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26026214625175741)
,p_name=>'P385_PLANT_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_plant_code   varchar2(50);',
'',
'BEGIN',
'',
'  v_plant_code := NULL;',
'',
'  Begin',
'    Select pm.plant_code',
'      into v_plant_code',
'      from bg_qcis.qcis_model_master mm',
'           join bg_qcis.qcis_plant_master pm',
'             on pm.qcis_plant_master_id = mm.plant_id',
'     where mm.model_master_id = :p385_model_id;',
'  Exception',
'    When Others then',
'      v_plant_code := NULL;',
'  End;',
'  ',
'  Return (v_plant_code);',
'  ',
'Exception ',
'  When others then',
'    Return (NULL);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant Code'
,p_source=>'PLANT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26026669492175742)
,p_name=>'P385_MODEL_YEAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_model_year    number;',
'',
'BEGIN',
'',
'  v_model_year := NULL;',
'',
'  Begin',
'    Select mm.model_year',
'      into v_model_year',
'      from bg_qcis.qcis_model_master mm',
'           join bg_qcis.qcis_plant_master pm',
'             on pm.qcis_plant_master_id = mm.plant_id',
'     where mm.model_master_id = :p385_model_id;',
'  Exception',
'    When Others then',
'      v_model_year := NULL;',
'  End;',
'  ',
'  Return (v_model_year);',
'  ',
'Exception ',
'  When others then',
'    Return (NULL);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Model Year'
,p_source=>'MODEL_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26027014312175742)
,p_name=>'P385_MODEL_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_model_name   varchar2(2000);',
'',
'BEGIN',
'',
'  v_model_name := NULL;',
'',
'  Begin',
'    Select mm.model_name',
'      into v_model_name',
'      from bg_qcis.qcis_model_master mm',
'           join bg_qcis.qcis_plant_master pm',
'             on pm.qcis_plant_master_id = mm.plant_id',
'     where mm.model_master_id = :p385_model_id;',
'  Exception',
'    When Others then',
'      v_model_name := ''Unknown'';',
'  End;',
'  ',
'  Return (v_model_name);',
'  ',
'Exception ',
'  When others then',
'    Return (NULL);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Model Name'
,p_source=>'MODEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26027405481175742)
,p_name=>'P385_IMAGE_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image'
,p_source=>'IMAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT image_name d, images_id r',
'    FROM bg_qcis.qcis_images',
'   WHERE plant_id = :g_default_plant_id',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26027893014175743)
,p_name=>'P385_ACC_GROUP'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acc Group'
,p_source=>'ACC_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26028269404175743)
,p_name=>'P385_ACCESSORY'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Accessory'
,p_source=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26028663617175744)
,p_name=>'P385_STATION_ID'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Station'
,p_source=>'STATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT station_code || ''-'' || station_name d, station_master_id r',
'    FROM bg_qcis.qcis_station_master',
'   WHERE model_id = :p385_model_id',
'     AND (station_master_id = :p385_station_id',
'       OR inactive_date IS NULL)',
'     AND station_code != 0',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26029001097175744)
,p_name=>'P385_SUBSTATION_ID'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Substation'
,p_source=>'SUBSTATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT substation_code || ''-'' || substation_name d, substation_id r',
'    FROM bg_qcis.qcis_substation',
'   WHERE station_master_id = :p385_station_id',
'     AND substation_code != 0',
'ORDER BY substation_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P385_STATION_ID'
,p_ajax_items_to_submit=>'P385_STATION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26029403030175745)
,p_name=>'P385_INSPECT_NAME_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection Name'
,p_source=>'INSPECT_NAME_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT inspection_name d, inspect_name_id r',
'    FROM bg_qcis.qcis_inspection_names',
'   WHERE plant_id = :g_default_plant_id',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26029808265175745)
,p_name=>'P385_INSPECTOR_ID'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspector '
,p_source=>'INSPECTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT first_name || '' '' || last_name     d,',
'         id                        r',
'    FROM bg_qcis.qc2_inspector_vw',
'   WHERE plant_code = :g_default_loc_code',
'ORDER BY last_name, first_name;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26030238206175746)
,p_name=>'P385_DEFECT_ID'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defect '
,p_source=>'DEFECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT dch.sub_com_desc || '' - '' || dch.commodity_desc     d,',
'         dch.defect_code_header_id                           r',
'    FROM bg_qcis.qcis_defect_code_header dch',
'         JOIN bg_qcis.qcis_plant_master pm',
'             ON pm.qcis_plant_master_id = dch.plant_id',
'   WHERE dch.inactive_date IS NULL',
'     AND pm.qcis_plant_master_id = :g_default_plant_id',
'ORDER BY dch.sub_com_desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26030609831175746)
,p_name=>'P385_SEQUENCE_NBR'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sequence Nbr'
,p_source=>'SEQUENCE_NBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26031029400175747)
,p_name=>'P385_RESPONSIBLE_AREA'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Area'
,p_source=>'RESPONSIBLE_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT responsible_area d, responsible_area r',
'    FROM bg_qcis.qcis_resp_area_master ra',
'         JOIN bg_qcis.qcis_plant_master pm',
'             ON pm.qcis_plant_master_id = ra.plant_id',
'   WHERE pm.plant_code = :g_default_loc_code',
'     AND ra.inactive_date IS NULL',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26031452999175747)
,p_name=>'P385_MANDATORY_YN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Mandatory Y/N'
,p_source=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26031857837175748)
,p_name=>'P385_EMAIL_ALERT_GROUP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Alert Group'
,p_source=>'EMAIL_ALERT_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>160
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26032271189175748)
,p_name=>'P385_INACTIVE_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(26021996388175708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inactive Date'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26032685812175749)
,p_name=>'P385_LAST_UPDATE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26009088642055724)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date:'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26033097943175749)
,p_name=>'P385_LAST_UPDATED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26009088642055724)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26033449699175750)
,p_name=>'P385_CREATION_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26009088642055724)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date:'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26033854017175750)
,p_name=>'P385_CREATED_BY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26009088642055724)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26313987374378104)
,p_validation_name=>'Check for duplicates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_checker_flag    VARCHAR2 (1);',
'    v_error_message   VARCHAR2 (500);',
'BEGIN',
'    v_checker_flag := ''N'';',
'',
'    BEGIN',
'        SELECT ''Y''',
'          INTO v_checker_flag',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT ''Y''',
'                      FROM bg_qcis.qcis_im_template_header',
'                     WHERE draft_id = TO_NUMBER ( :p385_draft_id)',
'                       AND acc_group = TO_NUMBER ( :p385_acc_group)',
'                       AND accessory = TO_NUMBER ( :p385_accessory)',
'                       AND station_id = TO_NUMBER ( :p385_station_id)',
'                       AND substation_id = TO_NUMBER ( :p385_substation_id)',
'                       AND inspect_name_id =',
'                           TO_NUMBER ( :p385_inspection_name));',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_checker_flag := ''N'';',
'    END;',
'',
'    IF v_checker_flag = ''Y'' THEN',
'        RETURN (''Duplicate Template.  Group/Acc and Station/Substation and Inspection Name must be unique for the Division, Brand, Plant, Year, Model.'');',
'    END IF;',
'',
'    BEGIN',
'        SELECT ''Y''',
'          INTO v_checker_flag',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT ''Y''',
'                      FROM bg_qcis.qcis_im_template_header',
'                     WHERE draft_id = TO_NUMBER ( :p385_draft_id)',
'                       AND acc_group = TO_NUMBER ( :p385_acc_group)',
'                       AND accessory = TO_NUMBER ( :p385_accessory)',
'                       AND station_id = TO_NUMBER ( :p385_station_id)',
'                       AND substation_id = TO_NUMBER ( :p385_substation_id));',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_checker_flag := ''N'';',
'    END;',
'',
'    IF v_checker_flag = ''Y'' THEN',
'        RETURN (''Duplicate Template.  Group/Acc and Station/Substation must be unique for the Division, Brand, Plant, Year, Model.'');',
'    END IF;',
'',
'    BEGIN',
'        SELECT ''Y''',
'          INTO v_checker_flag',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT ''Y''',
'                      FROM bg_qcis.qcis_im_template_header',
'                     WHERE plant_code = :p385_plant_code',
'                       AND model_year = :p385_model_year',
'                       AND model_name = :p385_model_name',
'                       AND acc_group = TO_NUMBER ( :p385_acc_group)',
'                       AND accessory = TO_NUMBER ( :p385_accessory)',
'                       AND station_id = TO_NUMBER ( :p385_station_id)',
'                       AND substation_id = TO_NUMBER ( :p385_substation_id)',
'                       AND inspect_name_id =',
'                           TO_NUMBER ( :p385_inspection_name));',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_checker_flag := ''N'';',
'    END;',
'',
'    IF v_checker_flag = ''Y'' THEN',
'        RETURN (''Duplicate Template.  Group/Acc and Station/Substation and Inspection Name must be unique for the Plant, Year, Model.'');',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        v_error_message :=',
'            SUBSTR (SQLERRM,',
'                    1,',
'                    500);',
'',
'        INSERT INTO bg_qcis.qcis_msg_log (msg_data_source,',
'                                          msg_source_id,',
'                                          source_process,',
'                                          log_message,',
'                                          log_type)',
'             VALUES (''QC2 Page 385'',',
'                     :p385_draft_id,',
'                     ''CHECK_FOR_DUPLICATES'',',
'                     v_error_message,',
'                     ''E'');',
'',
'',
'        RETURN (''Error encountered validating draft.  Please try again and notify Solution Center if problem persists.'');',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26007135051055705)
,p_name=>'Close Page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26037069389183664)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26007264323055706)
,p_event_id=>wwv_flow_api.id(26007135051055705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26011619653055750)
,p_name=>'Refresh Report'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(26007552464055709)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26313650797378101)
,p_event_id=>wwv_flow_api.id(26011619653055750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26007552464055709)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26034676641175752)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_IM_TEMPLATE_HEADER'
,p_attribute_02=>'QCIS_IM_TEMPLATE_HEADER'
,p_attribute_03=>'P385_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26035020636175753)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_IM_TEMPLATE_HEADER'
,p_attribute_02=>'QCIS_IM_TEMPLATE_HEADER'
,p_attribute_03=>'P385_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_attribute_09=>'P385_HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
);
end;
/
