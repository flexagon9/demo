prompt --application/pages/page_00074
begin
wwv_flow_api.create_page(
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Defect List Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'D-List Maintenance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'750'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190912060959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41915664689982850)
,p_plug_name=>'D-Lists - D-List Maint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>7
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51222494396398707)
,p_plug_name=>'Found on These Components'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select component_number ||'' - ''|| component_name,',
'       component_id',
'  from bg_qcis.qcis_component_master',
' where inactive_date is null',
'   and defect_header_id = :P74_defect_code_header_id',
'order by component_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P74_DEFECT_CODE_HEADER_ID'
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
'<div style="font-size: 16px; color: steelblue"><b>Found on These Components</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(51222864743398711)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Not found on any Components'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_COMPONENT_ID:#COMPONENT_ID###COMPONENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'SGRAY'
,p_internal_uid=>39931516348064727
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36533192231358990)
,p_db_column_name=>'COMPONENT_NUMBER||''-''||COMPONENT_NAME'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Component'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36533335783358991)
,p_db_column_name=>'COMPONENT_ID'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Component Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52743139428374041)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'252547'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DEFECT_LIST_NAMEEFECT_CODE_HEADER_ID:COMPONENT_NUMBER||''-''||COMPONENT_NAME:COMPONENT_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57272518527538305)
,p_plug_name=>'Current D-List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>12
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P74_DEFECT_CODE_HEADER_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63816720560535968)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P74_PLANT_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70483004849964930)
,p_plug_name=>'Defect List Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27371284184117458)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70483004849964930)
,p_button_name=>'Back'
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
 p_id=>wwv_flow_api.id(27372502835117459)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(70483004849964930)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27371650141117459)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70483004849964930)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P74_DEFECT_CODE_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Inspection Name Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27372089816117459)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(70483004849964930)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P74_DEFECT_CODE_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Inspection Name"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27475257670803873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57272518527538305)
,p_button_name=>'ADD_TO_DLIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply D-List Changes'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36535878369359017)
,p_branch_name=>'Cancel - Refresh - Redisplay the page'
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(27372502835117459)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27373172225117464)
,p_name=>'P74_DEFECT_CODE_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_use_cache_before_default=>'NO'
,p_source=>'DEFECT_CODE_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27373994474117465)
,p_name=>'P74_PLANT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_DEFAULT_PLANT_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Plant:'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27374408443117466)
,p_name=>'P74_DIVISION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_DEFAULT_DIVISION_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Division:'
,p_source=>'DIVISION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DIVISION_CODE||'' - ''||DIVISION_NAME display_value, QCIS_DIVISION_MASTER_ID return_value ',
'from QCIS_DIVISION_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27374763062117466)
,p_name=>'P74_DEFECT_LIST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_use_cache_before_default=>'NO'
,p_prompt=>'D-List Name:'
,p_source=>'DEFECT_LIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27375192901117467)
,p_name=>'P74_DEFECT_COMMENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment:'
,p_source=>'DEFECT_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>200
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27375615472117467)
,p_name=>'P74_HELP_LINK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Help Link:'
,p_source=>'HELP_LINK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>300
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27377623312117469)
,p_name=>'P74_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_prompt=>'Status:'
,p_source=>'P74_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Active'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27392064879415451)
,p_name=>'P74_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(63816720560535968)
,p_prompt=>'Last Update Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_cattributes_element=>'title="The date that the entry was last altered"'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27392527889415453)
,p_name=>'P74_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(63816720560535968)
,p_prompt=>'Last Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that last altered the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27392913288415454)
,p_name=>'P74_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(63816720560535968)
,p_prompt=>'Creation Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>20
,p_cattributes_element=>'title="The date that the entry was created"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27393294940415455)
,p_name=>'P74_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(63816720560535968)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that created the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27393754426429196)
,p_name=>'P74_INACTIVE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(41915664689982850)
,p_source=>'P74_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27475655590803873)
,p_name=>'P74_DEFECT_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57272518527538305)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_return_value     varchar2(500);',
'  Cursor c_get_current_def_lists is',
'select DCD.defect_code_detail_id',
'  from bg_qcis.qcis_defect_code_detail DCD',
' where DCD.plant_id = :G_DEFAULT_PLANT_ID',
'--   and DCD.division_id = :G_DEFAULT_DIVISION_ID',
'   and DCD.inactive_date is null',
'   and EXISTS (select ''Y''',
'                 from bg_qcis.qcis_defect_hdr_dtl_xref DHX',
'                where DHX.defect_code_header_id = :p74_defect_code_header_id',
'                  and DHX.defect_code_detail_id = DCD.defect_code_detail_id',
'                  and DHX.inactive_date is null)',
'order by upper(DCD.defect_description);',
'BEGIN',
'  v_return_value := NULL;',
'  For sel1 in c_get_current_def_lists',
'    LOOP',
'      v_return_value := v_return_value || sel1.defect_code_detail_id || '':'';',
'    END LOOP;',
'  return (v_return_value);',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Defects'
,p_source=>'P74_DEFECT_LIST'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DCD.defect_description||'' - ''||DCD.defect_type||'' - ''||DCD.default_defect_category||'' - ''||substr(DCD.defect_definition,1,20) d, DCD.defect_code_detail_id r',
'  from bg_qcis.qcis_defect_code_detail DCD',
' where DCD.plant_id = :G_DEFAULT_PLANT_ID',
'   and DCD.inactive_date is null',
'order by upper(DCD.defect_description)'))
,p_cHeight=>34
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27396962883517195)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27371284184117458)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27397425717517195)
,p_event_id=>wwv_flow_api.id(27396962883517195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27380189223117475)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_DEFECT_CODE_HEADER'
,p_attribute_02=>'QCIS_DEFECT_CODE_HEADER'
,p_attribute_03=>'P74_DEFECT_CODE_HEADER_ID'
,p_attribute_04=>'DEFECT_CODE_HEADER_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27391227277231324)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Defect List Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   BEGIN',
'      SELECT plant_id,',
'--             division_id,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             decode(inactive_date,null,''A'',''I'') status,',
'             defect_list_name,',
'             defect_comment,',
'             help_link,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p74_plant_id,',
'--             :p74_division_id,',
'             :p74_inactive_date,',
'             :p74_status,',
'             :p74_defect_list_name,',
'             :p74_defect_comment,',
'             :p74_help_link,',
'             :p74_last_update_date,',
'             :p74_last_updated_by,',
'             :p74_creation_date,',
'             :p74_created_by',
'        FROM QCIS_DEFECT_CODE_HEADER',
'       WHERE defect_code_header_id = :p74_defect_code_header_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p74_plant_id := NULL;',
'--         :p74_division_id := NULL;',
'         :p74_inactive_date := NULL;',
'         :p74_status := NULL;',
'         :p74_defect_list_name := NULL;',
'         :p74_defect_comment := NULL;',
'         :p74_help_link := NULL;  ',
'         :p74_last_update_date := NULL;',
'         :p74_last_updated_by := NULL;',
'         :p74_creation_date := NULL;',
'         :p74_created_by := NULL;',
'   END;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36532067436281147)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply D-List Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  v_selected APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  v_error_flag   varchar2(1);',
'  v_error_message varchar2(500);',
'  v_count number;',
'  v_found varchar2(1);',
'',
'  v_loop_dat  varchar2(200);',
' ',
'BEGIN ',
'',
'    v_error_message := ''Initialize'';',
'',
'-- ',
'-- Convert the colon separated string into an array ',
'  v_selected := APEX_UTIL.STRING_TO_TABLE(:P74_DEFECT_LIST);',
'',
'-- Loop over array and apply d-list additions',
'  FOR i IN 1..v_selected.count LOOP ',
'    select count(*)',
'      into v_count',
'      from bg_qcis.qcis_defect_hdr_dtl_xref',
'     where defect_code_header_id = :p74_defect_code_header_id',
'       and defect_code_detail_id = v_selected(i);',
'    if v_count = 0 then',
'      insert into bg_qcis.qcis_defect_hdr_dtl_xref (defect_code_header_id, defect_code_detail_id)',
'                                            values (:p74_defect_code_header_id, v_selected(i));',
'    end if;',
'  END LOOP; ',
'',
'',
'-- Now delete all the D-List entries from the xref table that are no longer among those ''selected''',
'  for rec_xref in (select ID, defect_code_detail_id',
'                     from bg_qcis.qcis_defect_hdr_dtl_xref',
'                    where defect_code_header_id = :p74_defect_code_header_id',
'                      and inactive_date is null)',
'  loop',
'    v_found := ''N'';',
'    for i IN 1..v_selected.count LOOP ',
'      if rec_xref.defect_code_detail_id = v_selected(i) then',
'        v_found := ''Y'';',
'        exit;',
'      end if;',
'    end loop; ',
'    if v_found = ''N'' then',
'       delete bg_qcis.qcis_defect_hdr_dtl_xref where ID = rec_xref.ID;',
'    end if;',
'  end loop;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27475257670803873)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36538872052403027)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Translate status for Inactive Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :p74_status = ''I'' and :p74_inactive_date is null then',
'  :p74_inactive_date := sysdate;',
'else',
'if :p74_status = ''A'' and :p74_inactive_date is not null then',
'  :p74_inactive_date := null;',
'end if;',
'end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''SAVE'',''CREATE'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27381048370117476)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_DEFECT_CODE_HEADER'
,p_attribute_02=>'QCIS_DEFECT_CODE_HEADER'
,p_attribute_03=>'P74_DEFECT_CODE_HEADER_ID'
,p_attribute_04=>'DEFECT_CODE_HEADER_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27381418358117476)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27381846450117476)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
