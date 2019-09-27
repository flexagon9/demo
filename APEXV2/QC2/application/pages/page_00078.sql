prompt --application/pages/page_00078
begin
wwv_flow_api.create_page(
 p_id=>78
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'GS Detail Defect Entry'
,p_step_title=>'GS Detail Defect Entry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(81618079231725991)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190925231232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9146353077641076)
,p_plug_name=>'Inspection Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Inspection Details</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9602967849564215)
,p_plug_name=>'Defect'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b> Defect </b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9605456383608307)
,p_plug_name=>'Good, Short Stocked, Repaired, NA'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Good, Short Stocked, Repaired, NA</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9727065900091633)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10309132419832511)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3782153241946031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10309132419832511)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3781313297946030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10309132419832511)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3354800074274891)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10309132419832511)
,p_button_name=>'FAILED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Failed'
,p_button_position=>'BOTTOM'
,p_button_condition=>':P78_STATUS = ''I'' or :P78_STATUS = ''S'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-times-circle'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3356839901274894)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(10309132419832511)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Print'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:Print();'
,p_button_condition=>'P78_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-print'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3378617167274921)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::#r-&P18_DETAIL_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3025958709620347)
,p_name=>'P78_BRAND_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_prompt=>'Brand Id'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT bm.brand_code || ''-'' || bm.brand_name',
'  FROM bg_qcis.qcis_inspection_header  ih,',
'       bg_qcis.qcis_gs_detail          gsd,',
'       bg_qcis.qcis_model_master       mm,',
'       bg_qcis.qcis_brand_master       bm',
' WHERE     ih.header_id = gsd.HEADER_ID',
'       AND gsd.detail_id = :P78_DETAIL_ID',
'       AND ih.model_id = mm.model_master_id',
'       AND mm.brand_id = bm.QCIS_BRAND_MASTER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3026024123620348)
,p_name=>'P78_MODEL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT mm.MODEL_MASTER_ID',
'  FROM bg_qcis.qcis_inspection_header  IH,',
'       bg_qcis.qcis_gs_detail          gsd,',
'       bg_qcis.qcis_model_master       mm',
' WHERE     IH.header_id = gsd.HEADER_ID',
'       AND gsd.detail_id = :P78_DETAIL_ID',
'       AND IH.model_id = mm.model_master_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3358074101274895)
,p_name=>'P78_YEAR_MODEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_prompt=>'Model'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select mm.model_year || ''-'' || mm.model_name from',
'bg_qcis.qcis_inspection_header IH,',
'bg_qcis.qcis_gs_detail gsd,',
'bg_qcis.qcis_model_master mm',
'where ',
'IH.header_id = gsd.HEADER_ID and',
'gsd.detail_id = :P78_DETAIL_ID and',
'IH.model_id = mm.model_master_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
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
 p_id=>wwv_flow_api.id(3358411368274895)
,p_name=>'P78_HULL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_prompt=>'Hull'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IH.HULL_NUMBER from',
'bg_qcis.qcis_inspection_header IH,',
'bg_qcis.qcis_gs_detail gsd',
'where ',
'IH.header_id = gsd.HEADER_ID and',
'gsd.detail_id = :P78_DETAIL_ID'))
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
 p_id=>wwv_flow_api.id(3358872788274896)
,p_name=>'P78_HIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_prompt=>'HIN'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OHP.OHHIN from opdta.opohp@obms OHP, ',
'bg_qcis.qcis_inspection_header IH,',
'bg_qcis.qcis_gs_detail gsd',
'where OHP.OHORD = IH.ORDER_NUMBER and',
'IH.header_id = gsd.HEADER_ID and',
'gsd.detail_id = :P78_DETAIL_ID'))
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
 p_id=>wwv_flow_api.id(3359250258274896)
,p_name=>'P78_HIN_ORDER_NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_prompt=>'Order Number'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IH.ORDER_NUMBER from',
'bg_qcis.qcis_inspection_header IH,',
'bg_qcis.qcis_gs_detail gsd',
'where ',
'IH.header_id = gsd.HEADER_ID and',
'gsd.detail_id = :P78_DETAIL_ID'))
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
 p_id=>wwv_flow_api.id(3359652078274896)
,p_name=>'P78_SEQUENCE_NUMBER'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sequence #'
,p_source=>'SEQUENCE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3360006358274897)
,p_name=>'P78_INSPECTION_TASK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task'
,p_source=>'INSPECTION_TASK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3360460096274897)
,p_name=>'P78_ACCESSORY_GROUP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grp/Acc'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'ACCESSORY_GROUP'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(3360899084274898)
,p_name=>'P78_ACCESSORY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acc'
,p_source=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(3361267496274898)
,p_name=>'P78_MANDATORY_YN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mandatory'
,p_source=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
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
 p_id=>wwv_flow_api.id(3361637792274898)
,p_name=>'P78_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
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
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3362039236274898)
,p_name=>'P78_HELP_LINK'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Help Link'
,p_source=>'HELP_LINK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>4
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'Basic'
,p_attribute_03=>'Y'
,p_attribute_04=>'moono'
,p_attribute_05=>'top'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3362706450274900)
,p_name=>'P78_FAILED_DATE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'FAILED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>1
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3363199013274900)
,p_name=>'P78_FAILED_USERNAME'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered By'
,p_source=>'FAILED_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3363534381274900)
,p_name=>'P78_DEFECT_HDR_ID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defect Code'
,p_source=>'DEFECT_HDR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sub_com_desc||'' - ''||commodity_desc d, defect_code_header_id r',
'from   qcis_defect_code_header',
'where inactive_date IS NULL ',
'and division_id=:P78_DIVISION_ID ',
'and plant_id=:P78_PLANT_ID',
'and plant_id IS NOT NULL',
'order by sub_com_desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P78_STATUS'
,p_read_only_when2=>'I'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3363987705274901)
,p_name=>'P78_DEFECT_ID'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_item_default=>'-Select-'
,p_prompt=>'Defect'
,p_source=>'DEFECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEFECT_DESCRIPTION d, DEFECT_CODE_DETAIL_ID r',
'from   QCIS_DEFECT_CODE_DETAIL',
'where DEFECT_CODE_HEADER_ID=:P78_DEFECT_HDR_ID and INACTIVE_DATE IS NULL',
'order by DEFECT_DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P78_DEFECT_HDR_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P78_STATUS'
,p_read_only_when2=>'I'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3364322762274901)
,p_name=>'P78_REPAIR_TYPE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Repair Type'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'REPAIR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P78_STATUS'
,p_read_only_when2=>'I'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3364710067274901)
,p_name=>'P78_DEFECT_CATEGORY'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_item_default=>'W'
,p_prompt=>'Defect Category'
,p_source=>'DEFECT_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEFECT_CATEGORY'
,p_lov=>'.'||wwv_flow_api.id(3379208593274923)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>3
,p_read_only_when=>'P78_STATUS'
,p_read_only_when2=>'I'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3365172458274902)
,p_name=>'P78_RESPONSIBLE_AREA'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Area'
,p_source=>'RESPONSIBLE_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RESPONSIBLE_AREA d, RESPONSIBLE_AREA r',
'from   QCIS_RESP_AREA_MASTER ',
'where PLANT_ID = :P78_PLANT_ID and',
'INACTIVE_DATE IS NULL',
'order by RESPONSIBLE_AREA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seelct -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P78_STATUS'
,p_read_only_when2=>'I'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3365531805274902)
,p_name=>'P78_DEFECT_COMMENT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(9602967849564215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defect Comment'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'DEFECT_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>4
,p_colspan=>5
,p_read_only_when=>'P78_STATUS'
,p_read_only_when2=>'I'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3366284640274904)
,p_name=>'P78_GOOD_DATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Good Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'GOOD_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>1
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
 p_id=>wwv_flow_api.id(3366676960274904)
,p_name=>'P78_GOOD_USERNAME'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_source=>'GOOD_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3367071359274904)
,p_name=>'P78_SS_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'SS Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'SS_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>14
,p_cMaxlength=>1
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
 p_id=>wwv_flow_api.id(3367441099274905)
,p_name=>'P78_SS_USERNAME'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_source=>'SS_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3367865673274905)
,p_name=>'P78_REPAIR_DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Repaired Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'REPAIR_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>1
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
 p_id=>wwv_flow_api.id(3368299924274906)
,p_name=>'P78_REPAIR_USERNAME'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'REPAIR_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3368642873274906)
,p_name=>'P78_NA_DATE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'N/A Date'
,p_source=>'NA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>14
,p_cMaxlength=>1
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
 p_id=>wwv_flow_api.id(3369096964274906)
,p_name=>'P78_NA_USERNAME'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_source=>'NA_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3369407441274907)
,p_name=>'P78_NA_YN'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(9605456383608307)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'N/A'
,p_source=>'NA_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3370179307274908)
,p_name=>'P78_LAST_UPDATE_DATE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(9727065900091633)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Last Update Date:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3370523875274908)
,p_name=>'P78_LAST_UPDATED_BY'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(9727065900091633)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Last Updated By:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3370941239274908)
,p_name=>'P78_CREATION_DATE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(9727065900091633)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Creation Date:<span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3371341450274909)
,p_name=>'P78_CREATED_BY'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(9727065900091633)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Created By:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3371784012274909)
,p_name=>'P78_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3372176988274910)
,p_name=>'P78_PLANT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_source=>'G_DEFAULT_PLANT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3372524728274911)
,p_name=>'P78_DIVISION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_source=>'select th.DIVISION_ID from QCIS_INSPECTION_HEADER th where th.header_id = :P78_HEADER_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3372907129274911)
,p_name=>'P78_DETAIL_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9146353077641076)
,p_use_cache_before_default=>'NO'
,p_source=>'DETAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3373480064274913)
,p_computation_sequence=>10
,p_computation_item=>'P78_LAST_UPDATE_DATE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(sysdate,''MM/DD/YYYY HH12:MI'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3373810790274914)
,p_computation_sequence=>20
,p_computation_item=>'P78_LAST_UPDATED_BY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>':APP_USER'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3374223954274914)
,p_computation_sequence=>30
,p_computation_item=>'P78_FAILED_DATE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(sysdate,''MM/DD/YYYY HH12:MI'')'
);
end;
/
begin
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3374640829274915)
,p_computation_sequence=>40
,p_computation_item=>'P78_FAILED_USERNAME'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>':APP_USER'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3375061434274915)
,p_computation_sequence=>50
,p_computation_item=>'P78_STATUS'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'O'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3375319092274915)
,p_validation_name=>'P78_DEFECT_HDR_ID_Save'
,p_validation_sequence=>10
,p_validation=>'P78_DEFECT_HDR_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect Code is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3354800074274891)
,p_associated_item=>wwv_flow_api.id(3363534381274900)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3375725323274916)
,p_validation_name=>'P78_DEFECT_ID_Save'
,p_validation_sequence=>20
,p_validation=>'P78_DEFECT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Defect is Mandatory.'
,p_when_button_pressed=>wwv_flow_api.id(3354800074274891)
,p_associated_item=>wwv_flow_api.id(3363534381274900)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3377682557274919)
,p_name=>'Set Responsible Area Default Based on Selected Defect'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_DEFECT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3378151647274920)
,p_event_id=>wwv_flow_api.id(3377682557274919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_RESPONSIBLE_AREA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ram.responsible_area from QCIS_DEFECT_CODE_DETAIL dcd, QCIS_RESP_AREA_MASTER ram',
'where dcd.DEFECT_CODE_DETAIL_ID = to_number(:P78_DEFECT_ID) and',
'dcd.default_resp_area_id=ram.ra_id;'))
,p_attribute_07=>'P78_DEFECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3376088629274917)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_GS_DETAIL'
,p_attribute_02=>'QCIS_GS_DETAIL'
,p_attribute_03=>'P78_DETAIL_ID'
,p_attribute_04=>'DETAIL_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3376497203274917)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_GS_DETAIL'
,p_attribute_02=>'QCIS_GS_DETAIL'
,p_attribute_03=>'P78_DETAIL_ID'
,p_attribute_04=>'DETAIL_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table QCIS_GS_DETAIL.'
,p_process_when_button_id=>wwv_flow_api.id(3354800074274891)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3377293175274918)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Overall Statuses'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'  inspection_utilities.update_inspection_status (:P78_HEADER_ID);',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3376873172274918)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
end;
/
