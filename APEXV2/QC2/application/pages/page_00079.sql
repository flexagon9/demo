prompt --application/pages/page_00079
begin
wwv_flow_api.create_page(
 p_id=>79
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Pin Map Multi Mode Inspection'
,p_step_title=>'Pin Map Multi Mode Inspection'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.maphilight.min.js"></script>'
,p_step_template=>wwv_flow_api.id(81618079231725991)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190925183657'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3025066540620338)
,p_plug_name=>'Inspection Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Inspection Details</b></div'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5589456745136515)
,p_plug_name=>'Inspection Map Defect Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Inspection Map Defect Entry</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10935743814909720)
,p_name=>'Defect Listing'
,p_parent_plug_id=>wwv_flow_api.id(5589456745136515)
,p_template=>wwv_flow_api.id(79418302368908457)
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_item.checkbox (1,detail_id) cbox,',
'im.line_number, ',
'im.section_name,',
'(select cm.component_name from qcis_component_master cm where cm.component_id = im.component_id) component,',
'dh.sub_com_desc||''-''||dh.commodity_desc com_code, ',
'dd.defect_description defect, ',
'im.status, ',
'im.repair_type, ',
'im.defect_category,',
'im.created_by,',
'im.creation_date ',
'from qcis_im_detail im, qcis_defect_code_header dh, qcis_defect_code_detail dd ',
'where im.header_id = :P79_HEADER_ID and ',
'im.defect_hdr_id = dh.defect_code_header_id and',
'im.defect_id = dd.defect_code_detail_id',
'order by im.line_number'))
,p_header=>'<div style="font-size: 14px; color: steelblue"><b>Defect Listing</b></div>'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79435738730908493)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3442874564729880)
,p_query_column_id=>1
,p_column_alias=>'CBOX'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" onclick="$f_CheckFirstColumn(this)" /> '
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3443290228729881)
,p_query_column_id=>2
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Line'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3443640378729881)
,p_query_column_id=>3
,p_column_alias=>'SECTION_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Section'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3444011281729881)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT'
,p_column_display_sequence=>4
,p_column_heading=>'Component'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3444433402729882)
,p_query_column_id=>5
,p_column_alias=>'COM_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'Defect Classification'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3444810119729882)
,p_query_column_id=>6
,p_column_alias=>'DEFECT'
,p_column_display_sequence=>6
,p_column_heading=>'Defect'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3445231717729882)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3445665696729883)
,p_query_column_id=>8
,p_column_alias=>'REPAIR_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Repair<BR>Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3445908223729883)
,p_query_column_id=>9
,p_column_alias=>'DEFECT_CATEGORY'
,p_column_display_sequence=>9
,p_column_heading=>'S/W'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3446312591729883)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Created By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3446791064729884)
,p_query_column_id=>11
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Failed<BR>Date'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6528112415886482)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10955240053304592)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14982853033023538)
,p_plug_name=>'Pin/Image Map'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>50
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'  FOR cursor IN (select HTML from bg_qcis.qcis_html_multi where HEADER_ID = :P79_HEADER_ID and DEFECT_LINE_NBR = :P79_DEFECT_LINE_NBR order by LINE_NBR)',
'  LOOP  ',
'  htp.p(cursor.html);',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P79_DEFECT_LINE_NBR'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3024997513620337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3428951660729854)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3429307272729855)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'EXIT_MULTI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Exit Multi Mode'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P79_DEFECT_LINE_NBR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3427322770729850)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'SAVE_DEFECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Defect'
,p_button_position=>'BOTTOM'
,p_button_condition=>'(:P79_HEADER_ID IS NOT NULL) AND (:P79_DEFECT_LINE_NBR IS NULL)'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Save Defect"'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3427752136729853)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'SAVE_DEFECT_UPLOAD_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save & Upload Image'
,p_button_position=>'BOTTOM'
,p_button_condition=>'(:P79_HEADER_ID IS NOT NULL) AND (:P79_DEFECT_LINE_NBR IS NULL)'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-upload-alt'
,p_button_cattributes=>'title="Save Defect and Uplaod Savewd Image."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3428125332729853)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'SAVE_DEFECT_MULTI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Save Defect & Multi Mode'
,p_button_position=>'BOTTOM'
,p_button_condition=>'(:P79_HEADER_ID IS NOT NULL) AND (:P79_DEFECT_LINE_NBR IS NULL) AND (UPPER(TRIM(:P79_MAP_TYPE)) = ''P'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3428505684729853)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(6528112415886482)
,p_button_name=>'SHORT_STOCK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Save as Short Stock'
,p_button_position=>'BOTTOM'
,p_button_condition=>'(:P79_HEADER_ID IS NOT NULL) AND (:P79_DEFECT_LINE_NBR IS NULL)'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3464439162729930)
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_DETAIL_ID:&P10_NEXT_VAL.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3427752136729853)
,p_branch_sequence=>10
,p_branch_comment=>'Created 14-MAY-2013 14:24 by TBOWERS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3463680556729929)
,p_branch_action=>'10'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(3428125332729853)
,p_branch_sequence=>20
,p_branch_comment=>'Created 02-MAY-2012 15:56 by TBOWERS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3464033402729929)
,p_branch_name=>'Go To Page 19'
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:79::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_comment=>'Created 02-MAY-2012 15:57 by TBOWERS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3429797266729857)
,p_name=>'P79_HEADER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3430106270729860)
,p_name=>'P79_DIVISION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3430561506729860)
,p_name=>'P79_PLANT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3430982914729861)
,p_name=>'P79_DIVISION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3431323807729862)
,p_name=>'P79_REWORK_TIME_MANDATORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MM.REWORK_TIME_MANDATORY ',
'from QCIS_MODEL_MASTER MM, QCIS_INSPECTION_HEADER IH',
'where MM.MODEL_MASTER_ID = IH.MODEL_ID and',
'IH.HEADER_ID = :P79_HEADER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3431718806729863)
,p_name=>'P79_PLANT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3432171890729864)
,p_name=>'P79_BRAND_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3432515831729864)
,p_name=>'P79_MODEL_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3432932878729865)
,p_name=>'P79_HULL_NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Hull'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433395246729866)
,p_name=>'P79_HIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'HIN'
,p_source=>'select OHHIN from opdta.opohp@obms where OHORD = :P79_ORDER_NUMBER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3433701128729867)
,p_name=>'P79_ORDER_NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number'
,p_source=>'ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3434125210729867)
,p_name=>'P79_IMAGE_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Image'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3434502282729868)
,p_name=>'P79_CELL_TITLE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cell'
,p_source=>'P79_CELL_TITLE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3434949829729868)
,p_name=>'P79_ACC_GROUP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Acc Group'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3435368569729869)
,p_name=>'P79_ACCESSORY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Accessory'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3435749737729869)
,p_name=>'P79_STATION_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Station'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3436155319729870)
,p_name=>'P79_SUBSTATION_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Substation'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3436510055729870)
,p_name=>'P79_SEQUENCE_NBR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_prompt=>'Sequence #'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3436989762729870)
,p_name=>'P79_COMPONENT_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_prompt=>'Component'
,p_source=>'P79_COMPONENT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm.component_name d, cm.component_id r from qcis_component_master cm, qcis_cell_comp_insp cc, qcis_inspection_html ih',
'where ih.header_id = to_number(:P79_HEADER_ID) and ',
'ih.cell_title = :P79_CELL_TITLE and',
'cc.inspect_id = ih.html_id and',
'cc.comp_id = cm.component_id and',
'cm.inactive_date IS NULL and',
'cc.inactive_date IS NULL',
'order by cm.component_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_display_when=>'P79_MAP_TYPE'
,p_display_when2=>'I'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3437330341729871)
,p_name=>'P79_REWORK_TIME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rework Time'
,p_source=>'P79_REWORK_TIME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select TIME_DISPLAYED d, TIME_IN_MINUTES r from QCIS_REWORK_TIME where INACTIVE_DATE IS NULL order by TIME_IN_MINUTES'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P79_DEFECT_LINE_NBR'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3437765821729871)
,p_name=>'P79_DEFECT_HEADER_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P79_DEFECT_HEADER_DEFAULT'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Part Failed Defect List'
,p_source=>'P79_DEFECT_HEADER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sub_com_desc||'' - ''||commodity_desc d, defect_code_header_id r',
'from   qcis_defect_code_header',
'where inactive_date IS NULL ',
'and division_id = to_number(:P79_DIVISION_ID)',
'and plant_id = :G_DEFAULT_PLANT_ID',
'order by sub_com_desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P79_DIVISION_ID'
,p_ajax_items_to_submit=>'P79_DIVISION_ID,G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'(:P79_DEFECT_LINE_NBR IS NOT NULL) '
,p_read_only_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3438149404729872)
,p_name=>'P79_DEFECT_HEADER_ID_DSP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commodity Description'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sub_com_desc||'' - ''||commodity_desc',
'from qcis_defect_code_header ',
'where defect_code_header_id = :P79_DEFECT_HEADER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>':P79_MAP_TYPE = ''I'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3438559823729872)
,p_name=>'P79_DEFECT_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defect'
,p_source=>'P79_DEFECT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEFECT_DESCRIPTION d, DEFECT_CODE_DETAIL_ID r',
'from QCIS_DEFECT_CODE_DETAIL ',
'where DEFECT_CODE_HEADER_ID=TO_NUMBER(:P79_DEFECT_HEADER_ID) ',
'and INACTIVE_DATE IS NULL ',
'order by DEFECT_DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P79_DEFECT_HEADER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P79_DEFECT_LINE_NBR'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3438970217729873)
,p_name=>'P79_INSPECTION_TYPE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection Type'
,p_source=>'P79_INSPECTION_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select KEYWORD_CODE d, KEYWORD_CODE r from QCIS_KEYWORDS where KEYWORD_TYPE=''Defect_Type'' and INACTIVE_DATE IS NULL'
,p_cHeight=>1
,p_read_only_when=>'P79_DEFECT_LINE_NBR'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3439329427729873)
,p_name=>'P79_DEFECT_CATEGORY'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_item_default=>'W'
,p_prompt=>'Defect Category'
,p_source=>'P79_DEFECT_CATEGORY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEFECT_CATEGORY'
,p_lov=>'.'||wwv_flow_api.id(3379208593274923)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P79_DEFECT_LINE_NBR'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3439764266729873)
,p_name=>'P79_QTY'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_item_default=>'1'
,p_prompt=>'Qty'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9,10;10,11;11,12;12,13;13,14;14,15;15,16;16,17;17,18;18,19;19,20;20,21;21,22;22,23;23,24;24,25;25,26;26,27;27,28;28,29;29,30;30,31;31,32;32,33;33,34;34,35;35,36;36,37;37,38;38,39;39,40;40,41;41,42;42,43;43,44'
||';44,45;45,46;46,47;47,48;48,49;49,50;50'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3440122932729874)
,p_name=>'P79_STATUS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_status varchar2(30) := NULL;',
'BEGIN',
'select KEYWORD_CODE into v_status',
'from QCIS_KEYWORDS',
'where KEYWORD_TYPE = ''Status_Inspections'' and KEYWORD_DESC = ''DEFAULT_VALUE''; ',
'RETURN v_status;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Status'
,p_source=>'P79_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_INSPECTIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_value d, keyword_code r',
'from   qcis_keywords',
'where keyword_type=''Status_Inspections''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3440547929729875)
,p_name=>'P79_RESPONSIBLE_AREA'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Area'
,p_source=>'P79_RESPONSIBLE_AREA'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RESPONSIBLE_AREA d, RESPONSIBLE_AREA r',
'    FROM QCIS_RESP_AREA_MASTER',
'   WHERE PLANT_ID = :P79_PLANT_ID AND INACTIVE_DATE IS NULL',
'ORDER BY RESPONSIBLE_AREA'))
,p_lov_cascade_parent_items=>'P79_DEFECT_ID'
,p_ajax_items_to_submit=>'P79_DEFECT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P79_DEFECT_LINE_NBR'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3440975140729875)
,p_name=>'P79_DEFECT_DEFINITION'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_item_default=>'''- None -'''
,p_prompt=>'Defect Definition'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>110
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3441310661729875)
,p_name=>'P79_DEFECT_COMMENT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defect Comment'
,p_source=>'P79_DEFECT_COMMENT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>110
,p_cMaxlength=>200
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P79_DEFECT_LINE_NBR'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3441769700729876)
,p_name=>'P79_HELP_LINK'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_prompt=>'Help Link'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>110
,p_cMaxlength=>300
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'Basic'
,p_attribute_03=>'N'
,p_attribute_04=>'moonocolor'
,p_attribute_05=>'top'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3442163945729876)
,p_name=>'P79_HDR_RESPONSIBLE_AREA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3448102217729886)
,p_name=>'P79_LAST_UPDATE_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(10955240053304592)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3448534104729886)
,p_name=>'P79_LAST_UPDATED_BY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(10955240053304592)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3448921020729886)
,p_name=>'P79_CREATION_DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(10955240053304592)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3449371757729887)
,p_name=>'P79_CREATED_BY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(10955240053304592)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3449726386729887)
,p_name=>'P79_HEADER_ID2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3450183578729888)
,p_name=>'P79_DEFECT_HEADER_DEFAULT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_source=>'DEFECT_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3450587259729888)
,p_name=>'P79_DEFECT_LINE_NBR'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_source=>'P79_DEFECT_LINE_NBR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3450904990729888)
,p_name=>'P79_MAP_TYPE'
,p_item_sequence=>199
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select td.map_type from qcis_im_template_draft td, qcis_im_template_header th, qcis_inspection_header ih ',
'where ih.im_template_id=TH.HEADER_ID and TH.DRAFT_ID=TD.HEADER_ID ',
'and ih.header_id=to_number(:P79_HEADER_ID);'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3451398093729889)
,p_name=>'P79_NEXT_VAL'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(5589456745136515)
,p_use_cache_before_default=>'NO'
,p_source=>'P79_NEXT_VAL'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3569299958133545)
,p_name=>'P79_INSPECT_NAME_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(3025066540620338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'INSPECT_NAME_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INSPECTION_NAME, INSPECT_NAME_ID',
'FROM bg_qcis.QCIS_INSPECTION_NAMES '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3452108595729902)
,p_validation_name=>'P79_DEFECT_HEADER_ID_Save'
,p_validation_sequence=>10
,p_validation=>'P79_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect Classification is Mandatory.'
,p_validation_condition=>':P79_MAP_TYPE = ''I'''
,p_when_button_pressed=>wwv_flow_api.id(3427322770729850)
,p_associated_item=>wwv_flow_api.id(3437765821729871)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3452569907729903)
,p_validation_name=>'P79_DEFECT_ID_Save'
,p_validation_sequence=>20
,p_validation=>'P79_DEFECT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3427322770729850)
,p_associated_item=>wwv_flow_api.id(3438559823729872)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3452973988729903)
,p_validation_name=>'P79_DEFECT_HEADER_ID_SS'
,p_validation_sequence=>50
,p_validation=>'P79_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect Classification is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3428505684729853)
,p_associated_item=>wwv_flow_api.id(3437765821729871)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3453384509729903)
,p_validation_name=>'P79_DEFECT_ID_SS'
,p_validation_sequence=>60
,p_validation=>'P79_DEFECT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3428505684729853)
,p_associated_item=>wwv_flow_api.id(3438559823729872)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3453762527729904)
,p_validation_name=>'P79_DEFECT_HEADER_ID_MultiSave'
,p_validation_sequence=>70
,p_validation=>'P79_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect Classification is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3428125332729853)
,p_associated_item=>wwv_flow_api.id(3437765821729871)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3454163130729904)
,p_validation_name=>'P79_DEFECT_ID_MultiSave'
,p_validation_sequence=>80
,p_validation=>'P79_DEFECT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3428125332729853)
,p_associated_item=>wwv_flow_api.id(3438559823729872)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3454500081729904)
,p_validation_name=>'P79_DEFECT_HEADER_ID_SaveImage'
,p_validation_sequence=>90
,p_validation=>'P79_DEFECT_HEADER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect Classification is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3427752136729853)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3454986927729904)
,p_validation_name=>'P79_DEFECT_ID_SaveImage'
,p_validation_sequence=>100
,p_validation=>'P79_DEFECT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3427752136729853)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3455380916729905)
,p_validation_name=>'Rework Time Mandatory'
,p_validation_sequence=>110
,p_validation=>'P79_REWORK_TIME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Entry of rework time is mandatory for this model.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:request like (''SAVE_DEFECT'') and :P79_REWORK_TIME_MANDATORY = ''Y'') or ',
'(:request like (''SAVE_DEFECT_UPLOAD_IMAGE'') and :P79_REWORK_TIME_MANDATORY = ''Y'') or',
'(:request like (''SAVE_DEFECT_MULTI'') and :P79_REWORK_TIME_MANDATORY = ''Y'')'))
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3458820392729922)
,p_name=>'Populate Defect Header from Component Selected'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_COMPONENT_ID'
,p_condition_element=>'P79_COMPONENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3025124582620339)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3459381297729925)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select defect_header_id ',
'from bg_qcis.qcis_component_master ',
'where component_id = to_number(:P79_COMPONENT_ID);'))
,p_attribute_07=>'P79_COMPONENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3025277769620340)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID_DSP'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3459888746729925)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3025317201620341)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select defect_header_id ',
'from bg_qcis.qcis_component_master ',
'where component_id = to_number(:P79_COMPONENT_ID);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3460365462729926)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID_DSP'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sub_com_desc||'' - ''||commodity_desc',
'from qcis_defect_code_header ',
'where defect_code_header_id = :P79_DEFECT_HEADER_ID'))
,p_attribute_07=>'P79_DEFECT_HEADER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3460843436729926)
,p_event_id=>wwv_flow_api.id(3458820392729922)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_HEADER_ID_DSP'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3461261765729926)
,p_name=>'Set Default Values based on Defect'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_DEFECT_ID'
,p_condition_element=>'P79_DEFECT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P79_DEFECT_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3461706726729927)
,p_event_id=>wwv_flow_api.id(3461261765729926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_RESPONSIBLE_AREA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ram.responsible_area',
'  FROM QCIS_DEFECT_CODE_DETAIL dcd, QCIS_RESP_AREA_MASTER ram',
' WHERE     dcd.DEFECT_CODE_DETAIL_ID = TO_NUMBER (:P79_DEFECT_ID)',
'       AND dcd.default_resp_area_id = ram.ra_id'))
,p_attribute_07=>'P79_DEFECT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3462233809729927)
,p_event_id=>wwv_flow_api.id(3461261765729926)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DEFECT_CATEGORY,P79_INSPECTION_TYPE,P79_DEFECT_DEFINITION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_defect_category, defect_type, defect_definition ',
'  from QCIS_DEFECT_CODE_DETAIL ',
'where DEFECT_CODE_DETAIL_ID = to_number(:P79_DEFECT_ID);'))
,p_attribute_07=>'P79_DEFECT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3462601494729928)
,p_name=>'Populate Help Link Page Item'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_DEFECT_HEADER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3463146393729928)
,p_event_id=>wwv_flow_api.id(3462601494729928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_HELP_LINK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HELP_LINK from QCIS_DEFECT_CODE_HEADER ',
'where DEFECT_CODE_HEADER_ID = to_number(:P79_DEFECT_HEADER_ID)'))
,p_attribute_07=>'P79_DEFECT_HEADER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3456047836729919)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P79_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3456822188729920)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert IM Detail Row Defect'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  v_line NUMBER;',
'  v_qty NUMBER := 1;',
'BEGIN',
'',
'WHILE v_qty <= to_number(:P79_QTY)',
'LOOP ',
'',
'v_qty := v_qty + 1;',
'',
'Select NVL(MAX(line_number),0) + 1 into v_line ',
'from qcis_im_detail where header_id = :P79_HEADER_ID;',
'',
'insert into qcis_im_detail (header_id, line_number, section_name, defect_hdr_id, defect_id, status, repair_type, defect_category, defect_comment, responsible_area, inactive_date, last_update_date, last_updated_by, creation_date, created_by, failed_da'
||'te, failed_username, component_id, rework_time) ',
'values(:P79_HEADER_ID, v_line, :P79_CELL_TITLE, :P79_DEFECT_HEADER_ID, :P79_DEFECT_ID, :P79_STATUS, :P79_INSPECTION_TYPE, :P79_DEFECT_CATEGORY, :P79_DEFECT_COMMENT, :P79_RESPONSIBLE_AREA, NULL, SYSDATE, :APP_USER, SYSDATE, :APP_USER, SYSDATE, :APP_US'
||'ER, :P79_COMPONENT_ID, :P79_REWORK_TIME);',
'',
'-- get the ID after the row is inserted, will be used if images are added to the defect...',
'select detail_id into :P79_NEXT_VAL from qcis_im_detail where header_id=:P79_HEADER_ID and line_number=v_line;',
'',
'-- this procedure call added for prj 30201. it adds HTML to color the cell with the defect',
'create_defect_html(:P79_HEADER_ID, :P79_CELL_TITLE, ''D''); -- D for Defect',
'',
'END LOOP;',
'',
'-- Include the line number in the success message...',
'apex_application.g_print_success_message := ''-- Defect entered under line # '' || v_line || '' --'';',
'',
'-- the below is JavaScript and would need to be in a DA',
'-- apex.message.showPageSuccess := ''Defect entered under line # '' || v_line;',
'',
':P79_DEFECT_DEFINITION := ''- None -'';',
'',
'END;'))
,p_process_when=>':request like (''SAVE_DEFECT'') or :request like ''SAVE_DEFECT_UPLOAD_IMAGE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3025896166620346)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert IM Dtl Row and Multi'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_line         NUMBER;',
'    v_html         VARCHAR2 (4000);',
'    v_prefix       VARCHAR2 (4000); ',
'    v_line_type    VARCHAR2 (12);',
'    v_position     NUMBER;',
'    v_text_found   NUMBER;',
'BEGIN',
'    SELECT NVL (MAX (line_number), 0) + 1',
'      INTO v_line',
'      FROM qcis_im_detail',
'     WHERE header_id = :P79_HEADER_ID;',
'',
'    INSERT INTO qcis_im_detail (header_id,',
'                                line_number,',
'                                section_name,',
'                                defect_hdr_id,',
'                                defect_id,',
'                                status,',
'                                repair_type,',
'                                defect_category,',
'                                defect_comment,',
'                                responsible_area,',
'                                inactive_date,',
'                                last_update_date,',
'                                last_updated_by,',
'                                creation_date,',
'                                created_by,',
'                                failed_date,',
'                                failed_username,',
'                                rework_time)',
'         VALUES ( :P79_HEADER_ID,',
'                 v_line,',
'                 :P79_CELL_TITLE,',
'                 :P79_DEFECT_HEADER_ID,',
'                 :P79_DEFECT_ID,',
'                 :P79_STATUS,',
'                 :P79_INSPECTION_TYPE,',
'                 :P79_DEFECT_CATEGORY,',
'                 :P79_DEFECT_COMMENT,',
'                 :P79_RESPONSIBLE_AREA,',
'                 NULL,',
'                 SYSDATE,',
'                 :APP_USER,',
'                 SYSDATE,',
'                 :APP_USER,',
'                 SYSDATE,',
'                 :APP_USER,',
'                 :P79_REWORK_TIME);',
'',
'',
'    create_defect_html ( :P79_HEADER_ID, :P79_CELL_TITLE, ''D'');',
'',
'    FOR ih IN (SELECT *',
'                 FROM qcis_inspection_html',
'                WHERE header_id = :P79_HEADER_ID)',
'    LOOP',
'        v_line_type := SUBSTR (ih.html, 0, 12);',
'',
'        IF v_line_type = ''<area shape=''',
'        THEN',
'            v_position := (INSTR (ih.html, ''href='')) + 4;',
'            v_prefix := SUBSTR (ih.html, 0, v_position);',
'',
'            v_html :=',
'                   v_prefix',
'                || ''f?p=2032:0:''',
'                || :APP_SESSION',
'                || '':CREATE_DEFECT_R5:::p_cell,p_header_id,p_line,p_session,p_user:''',
'                || ih.cell_title',
'                || '',''',
'                || ih.header_id',
'                || '',''',
'                || v_line',
'                || '',''',
'                || :APP_SESSION',
'                || '',''',
'                || :APP_USER',
'                || '' alt="''',
'                || ih.cell_title',
'                || ''"></a>'';',
'',
'',
'            v_text_found := INSTR (ih.html, ''{"fillColor":"ff6600"''); --ORANGE',
'',
'            IF v_text_found <> 0',
'            THEN',
'                v_html :=',
'                    REPLACE (',
'                        v_html,',
'                        ''></a>'',',
'                           '' data-maphilight=''''{"fillColor":"ff6600","shadow":true,"shadowBackground":"ffffff","alwaysOn":true}''''''',
'                        || ''></a>'');',
'            END IF;',
'',
'            v_text_found := INSTR (ih.html, ''{"fillColor":"00ff00"'');  --GREEN',
'',
'            IF v_text_found <> 0',
'            THEN',
'                v_html :=',
'                    REPLACE (',
'                        v_html,',
'                        ''></a>'',',
'                           '' data-maphilight=''''{"fillColor":"00ff00","shadow":true,"shadowBackground":"ffffff","alwaysOn":true}''''''',
'                        || ''></a>'');',
'            END IF;',
'',
'            v_text_found := INSTR (ih.html, ''{"fillColor":"ffff00"''); --YELLOW',
'',
'            IF v_text_found <> 0',
'            THEN',
'                v_html :=',
'                    REPLACE (',
'                        v_html,',
'                        ''></a>'',',
'                           '' data-maphilight=''''{"fillColor":"ffff00","shadow":true,"shadowBackground":"ffffff","alwaysOn":true}''''''',
'                        || ''></a>'');',
'            END IF;',
'        ELSE',
'            v_html := ih.html;',
'        END IF;',
'',
'        INSERT INTO qcis_html_multi (header_id,',
'                                     defect_line_nbr,',
'                                     inspect_html_id,',
'                                     line_nbr,',
'                                     html,',
'                                     cell_title,',
'                                     session_id)',
'             VALUES (ih.header_id,',
'                     v_line,',
'                     ih.html_id,',
'                     ih.line_nbr,',
'                     v_html,',
'                     ih.cell_title,',
'                     ih.session_id);',
'    END LOOP;',
'',
'    :P79_DEFECT_LINE_NBR := v_line;',
'END;'))
,p_process_error_message=>'Error Insert IM Detail Row and Multi'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3428125332729853)
,p_process_success_message=>'- Initial Defect Entered - Multi-Cell Section Mode On -'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3457661039729921)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert IM Detail Row Short Stock'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'v_line NUMBER;',
'',
'BEGIN',
'',
'Select NVL(MAX(line_number),0) + 1 into v_line ',
'from qcis_im_detail where header_id = :P79_HEADER_ID;',
'',
'insert into qcis_im_detail (header_id, line_number, section_name, defect_hdr_id, defect_id, status, repair_type, defect_category, defect_comment, responsible_area, inactive_date, last_update_date, last_updated_by, creation_date, created_by, SS_DATE, '
||'SS_USERNAME, COMPONENT_ID, REWORK_TIME) ',
'values(:P79_HEADER_ID, v_line, :P79_CELL_TITLE, :P79_DEFECT_HEADER_ID, :P79_DEFECT_ID, ''S'', :P79_INSPECTION_TYPE, :P79_DEFECT_CATEGORY, :P79_DEFECT_COMMENT, :P79_RESPONSIBLE_AREA, NULL, SYSDATE, :APP_USER, SYSDATE, :APP_USER, SYSDATE, :APP_USER, :P79'
||'_COMPONENT_ID, :P79_REWORK_TIME);',
'',
'-- this procedure call added for prj 30201. it adds HTML to color the cell with the defect',
'create_defect_html(:P79_HEADER_ID, :P79_CELL_TITLE, ''S''); -- S for Short Stock',
'',
'-- populate the html_multi table from the inspection_html table and change the hotspot URL to call',
'-- a function instead of going to a page.',
'--  FOR ih IN (SELECT * FROM qcis_inspection_html where header_id=:P79_HEADER_ID)',
'--  LOOP',
'--',
'--    insert into qcis_html_multi (header_id, inspect_html_id, line_nbr, html, cell_title, session_id)  ',
'--    values(ih.header_id, ih.html_id, ih.line_nbr, ih.html, ih.cell_title, ih.session_id);',
'--',
'--  END LOOP;',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(3428505684729853)
,p_process_success_message=>'Short Stock Entered'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3457276910729920)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Overall Statuses'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'  inspection_utilities.update_inspection_status (:P79_HEADER_ID);',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3458460901729922)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete HTML_MULTI Rows'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'  ',
'-- clean up all those rows of HTML.  ',
'-- the HTML_MULTI rows are for a specific boat and defect line number and can be re-created',
'-- so, get rid of them.  otherwise, they will just pile up and up.  they are not needed now.',
'',
'delete from QCIS_HTML_MULTI ',
'where header_id = :P79_HEADER_ID',
'-- and defect_line_nbr = :P79_DEFECT_LINE_NBR',
';',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(3429307272729855)
,p_process_success_message=>'- Multi-Cell Selection Mode Exited -'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3456442493729919)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Header Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  Begin',
'      Select ih.division_id,',
'             dm.division_code || '' - '' || dm.division_name,',
'             bm.brand_code || '' - '' || bm.brand_name,',
'             ih.plant_id,',
'             pm.plant_code || '' - '' || pm.plant_name,',
'             mm.model_year || '' - '' || mm.model_name,',
'             sm.station_code || '' - '' || sm.station_name,',
'             ss.substation_code || '' - '' || ss.substation_name,',
'             ih.sequence_nbr,',
'             ih.acc_group,',
'             ih.accessory,',
'             ih.hull_number,',
'             ih.responsible_area,',
'             im.image_name,',
'             ''- None -''',
'        into :P79_DIVISION_ID,',
'             :P79_DIVISION,',
'             :P79_BRAND_ID,',
'             :P79_PLANT_ID,',
'             :P79_PLANT,',
'             :P79_MODEL_ID,',
'             :P79_STATION_ID,',
'             :P79_SUBSTATION_ID,',
'             :P79_SEQUENCE_NBR,',
'             :P79_ACC_GROUP,',
'             :P79_ACCESSORY,',
'             :P79_HULL_NUMBER,',
'             :P79_HDR_RESPONSIBLE_AREA,',
'             :P79_IMAGE_NAME,',
'             :P79_DEFECT_DEFINITION',
'        from qcis_inspection_header ih,',
'             qcis_division_master   dm,',
'             qcis_brand_master      bm,',
'             qcis_plant_master      pm,',
'             qcis_model_master      mm,',
'             qcis_station_master    sm,',
'             qcis_substation        ss,',
'             qcis_images            im',
'       where ih.header_id = :P79_HEADER_ID',
'         and ih.INACTIVE_DATE IS NULL',
'         and dm.qcis_division_master_id = ih.division_id',
'         and bm.qcis_brand_master_id = ih.brand_id',
'         and pm.qcis_plant_master_id = ih.plant_id',
'         and mm.model_master_id = ih.model_id',
'         and sm.station_master_id = ih.station_id',
'         and ss.substation_id = ih.substation_id',
'         and im.images_id = ih.image_id;',
'    Exception',
'      When Others then',
'        :P79_DIVISION_ID := ''ERROR'';',
'  End;',
'',
'-- reset component ID, it was not being reset from previous defect',
'   :P79_COMPONENT_ID := NULL ;',
'END;'))
,p_process_error_message=>'Preload SQL error.'
,p_process_success_message=>'Preload SQL success.'
);
end;
/
