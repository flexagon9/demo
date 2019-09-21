prompt --application/pages/page_00071
begin
wwv_flow_api.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Defects - Defect Maint'
,p_page_mode=>'MODAL'
,p_step_title=>'Defects - Defect Maint'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190911134719'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25836265214199381)
,p_plug_name=>'Defects - Defect Maint'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>7
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25837043752199383)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25968835457983012)
,p_plug_name=>'Found on These D-Lists'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DCH.defect_code_header_id,',
'       DCH.defect_list_name',
'  from bg_qcis.qcis_defect_code_header DCH',
' where DCH.plant_id = :G_DEFAULT_PLANT_ID',
'--   and DCH.division_id = :G_DEFAULT_DIVISION_ID',
'   and DCH.inactive_date is null',
'   and EXISTS (select ''Y''',
'                 from bg_qcis.qcis_defect_hdr_dtl_xref DHX',
'                where DHX.defect_code_header_id = DCH.defect_code_header_id',
'                  and DHX.defect_code_detail_id = :P71_defect_code_detail_id',
'                  and DHX.inactive_date is null)',
'order by DCH.defect_list_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P71_DEFECT_CODE_DETAIL_ID'
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
'<div style="font-size: 16px; color: steelblue"><b>Found on These D-Lists</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25969205804983016)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Not found on any D-Lists'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP,74:P74_DEFECT_CODE_HEADER_ID:#DEFECT_CODE_HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'SGRAY'
,p_internal_uid=>14677857409649032
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25969298039983017)
,p_db_column_name=>'DEFECT_LIST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'D-List Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25969354055983018)
,p_db_column_name=>'DEFECT_CODE_HEADER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Defect Code Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27489480489958346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'161982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DEFECT_LIST_NAME:DEFECT_CODE_HEADER_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41088892520068417)
,p_plug_name=>'Add to/Remove from D-Lists'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P71_DEFECT_CODE_DETAIL_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54403605374181461)
,p_plug_name=>'Defect Codes Buttons'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64228817243809716)
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
,p_plug_display_when_condition=>'P71_DEFECT_CODE_DETAIL_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27086145628637753)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(54403605374181461)
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
 p_id=>wwv_flow_api.id(27087307691637755)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(54403605374181461)
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
 p_id=>wwv_flow_api.id(27086465597637754)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(54403605374181461)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P71_DEFECT_CODE_DETAIL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Inspection Name Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27086907127637755)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(54403605374181461)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P71_DEFECT_CODE_DETAIL_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Inspection Name"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27430562840988906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41088892520068417)
,p_button_name=>'APPLY_DLIST_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply D-Lists Changes'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37347442668937705)
,p_branch_name=>'Cancel - Refresh - Redisplay the page'
,p_branch_action=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(27087307691637755)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25839816465199409)
,p_name=>'P71_DEFECT_CODE_DETAIL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_source=>'DEFECT_CODE_DETAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25840160059199464)
,p_name=>'P71_DEFECT_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_source=>'DEFECT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25840528642199472)
,p_name=>'P71_DEFECT_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description:'
,p_source=>'DEFECT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>100
,p_cattributes_element=>'title="Enter the Defect Description"'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25840848599199476)
,p_name=>'P71_DEFECT_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type:'
,p_source=>'DEFECT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEFECT_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_code d, keyword_code r',
'from   qcis_keywords',
'where keyword_type = ''Defect_Type'' and inactive_date IS NULL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'title="Select the Defect Type if desired"'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25841293228199476)
,p_name=>'P71_DEFECT_DEFINITION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Definition:'
,p_source=>'DEFECT_DEFINITION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>50
,p_cMaxlength=>1000
,p_cHeight=>5
,p_cattributes_element=>'title="Enter more details to define the defect"'
,p_colspan=>12
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'Intermediate'
,p_attribute_03=>'Y'
,p_attribute_04=>'moonocolor'
,p_attribute_05=>'top'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25841731248199477)
,p_name=>'P71_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_prompt=>'Status:'
,p_source=>'P71_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'title="Select Active or Inactive Status"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25842147163199478)
,p_name=>'P71_DEFAULT_RESP_AREA_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Responsible Area:'
,p_source=>'DEFAULT_RESP_AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select responsible_area d, ra_id r',
'  from qcis_resp_area_master',
' where plant_id = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'title="Select the Default Responsible Area if desired"'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25842528551199478)
,p_name=>'P71_DEFAULT_DEFECT_CATEGORY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Category:'
,p_source=>'DEFAULT_DEFECT_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:S;S,W;W'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'title="Select the Default Category if desired"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25842941912199478)
,p_name=>'P71_DIVISION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_DEFAULT_DIVISION_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Division:'
,p_source=>'DIVISION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DIVISION_CODE||'' - ''||DIVISION_NAME display_value, QCIS_DIVISION_MASTER_ID return_value ',
'from QCIS_DIVISION_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P71_DEFECT_CODE_DETAIL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25843258106199479)
,p_name=>'P71_PLANT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
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
 p_id=>wwv_flow_api.id(25843672039199480)
,p_name=>'P71_DEFAULT_REWORK_TIME_HRS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Rework Hr-Min:'
,p_source=>'DEFAULT_REWORK_TIME_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cattributes_element=>'title="Default Rework Hours"'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25844135348199481)
,p_name=>'P71_DEFAULT_REWORK_TIME_MINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mins:'
,p_source=>'DEFAULT_REWORK_TIME_MINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cattributes_element=>'title="Default Rework Minutes"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25968604577983010)
,p_name=>'P71_INACTIVE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25836265214199381)
,p_use_cache_before_default=>'NO'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27431004508988907)
,p_name=>'P71_DEFECT_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41088892520068417)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_return_value     varchar2(5000);',
'  Cursor c_get_current_def_lists is',
'    Select defect_code_header_id',
'      from bg_qcis.qcis_defect_code_header DCH',
'     where DCH.plant_id = :G_DEFAULT_PLANT_ID',
'--       and DCH.division_id = :G_DEFAULT_DIVISION_ID',
'       and DCH.inactive_date is null',
'       and EXISTS (select ''Y''',
'                 from bg_qcis.qcis_defect_hdr_dtl_xref DHX',
'                where DHX.defect_code_header_id = DCH.defect_code_header_id',
'                  and DHX.defect_code_detail_id = :P71_defect_code_detail_id',
'                  and DHX.inactive_date is null)',
'    order by defect_list_name;',
'BEGIN',
'  v_return_value := NULL;',
'  For sel1 in c_get_current_def_lists',
'    LOOP',
'      v_return_value := v_return_value || sel1.defect_code_header_id || '':'';',
'    END LOOP;',
'  return (v_return_value);',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'D-Lists'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DCH.defect_list_name d, DCH.defect_code_header_id r',
'  from bg_qcis.qcis_defect_code_header DCH',
' where DCH.plant_id = :G_DEFAULT_PLANT_ID',
'--   and DCH.division_id = :G_DEFAULT_DIVISION_ID',
'   and DCH.inactive_date is null',
'order by DCH.defect_list_name'))
,p_cHeight=>34
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27804232230689200)
,p_name=>'P71_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(64228817243809716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(27804555555689201)
,p_name=>'P71_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(64228817243809716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(27805047273689202)
,p_name=>'P71_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(64228817243809716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(27805447434689202)
,p_name=>'P71_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(64228817243809716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(36533507295358993)
,p_validation_name=>'Inactivate not allowed when defect used on Active D-List or Component'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Y''',
'  from dual',
' where :p71_status = ''Inactive''',
'   and (exists (select ''Y''',
'                  from bg_qcis.qcis_defect_hdr_dtl_xref',
'                 where defect_code_detail_id = :p71_defect_code_detail_id',
'                   and inactive_date is null)',
'        or exists (select ''Y''',
'                     from bg_qcis.qcis_comp_defect_xref',
'                    where defect_code_detail_id = :p71_defect_code_detail_id',
'                      and inactive_date is null))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Inactivate not allowed when defect used on Active D-List or Component'
,p_when_button_pressed=>wwv_flow_api.id(27086465597637754)
,p_associated_item=>wwv_flow_api.id(25841731248199477)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27089805240688569)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27086145628637753)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27090149784688571)
,p_event_id=>wwv_flow_api.id(27089805240688569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27495895173091247)
,p_name=>'Jump-to Defect List PopUp Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27496249173091248)
,p_event_id=>wwv_flow_api.id(27495895173091247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(25836265214199381)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25969529488983019)
,p_event_id=>wwv_flow_api.id(27495895173091247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(25968835457983012)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25969606537983020)
,p_event_id=>wwv_flow_api.id(27495895173091247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41088892520068417)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25848167014199493)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_DEFECT_CODE_DETAIL'
,p_attribute_02=>'QCIS_DEFECT_CODE_DETAIL'
,p_attribute_03=>'P71_DEFECT_CODE_DETAIL_ID'
,p_attribute_04=>'DEFECT_CODE_DETAIL_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25968530462983009)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select decode(:p71_inactive_date,null,''A'',''I'') into :p71_status from dual;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36532683928358985)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Translate status for Inactive Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :p71_status = ''I'' and :p71_inactive_date is null then',
'  :p71_inactive_date := sysdate;',
'else',
'if :p71_status = ''A'' and :p71_inactive_date is not null then',
'  :p71_inactive_date := null;',
'end if;',
'end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''SAVE'',''CREATE'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25969812685983022)
,p_process_sequence=>20
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
'  v_selected := APEX_UTIL.STRING_TO_TABLE(:P71_DEFECT_LIST);',
'',
'-- Loop over array and apply d-list additions',
'  FOR i IN 1..v_selected.count LOOP ',
'    select count(*)',
'      into v_count',
'      from bg_qcis.qcis_defect_hdr_dtl_xref',
'     where defect_code_detail_id = :p71_defect_code_detail_id',
'       and defect_code_header_id = v_selected(i);',
'    if v_count = 0 then',
'      insert into bg_qcis.qcis_defect_hdr_dtl_xref (defect_code_header_id, defect_code_detail_id)',
'                                            values (v_selected(i), :p71_defect_code_detail_id);',
'      -- After the defect is added to a d-list, check all Components containing that d-list.',
'      -- Then add the defect to all of those Components where the defect isn''t already present.',
'      FOR rec_comp',
'          IN (SELECT component_id',
'                FROM bg_qcis.qcis_component_master A',
'               WHERE a.defect_header_id = v_selected (i)',
'                 AND NOT EXISTS (SELECT ''Y''',
'                                   FROM bg_qcis.qcis_comp_defect_xref b',
'                                  WHERE b.component_id = a.component_id',
'                                    AND b.defect_code_detail_id = :p71_defect_code_detail_id))',
'      LOOP',
'          INSERT INTO bg_qcis.qcis_comp_defect_xref (component_id, defect_code_detail_id)',
'                                             values (rec_comp.component_id, :p71_defect_code_detail_id);',
'      END LOOP;',
'    end if;',
'  END LOOP; ',
'',
'',
'-- Now delete all the D-List entries from the xref table that are no longer among those ''selected''',
'  for rec_xref in (select ID, defect_code_header_id',
'                     from bg_qcis.qcis_defect_hdr_dtl_xref',
'                    where defect_code_detail_id = :p71_defect_code_detail_id',
'                      and inactive_date is null)',
'  loop',
'    v_found := ''N'';',
'    for i IN 1..v_selected.count LOOP ',
'      if rec_xref.defect_code_header_id = v_selected(i) then',
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
,p_process_when_button_id=>wwv_flow_api.id(27430562840988906)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25848962828199495)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_DEFECT_CODE_DETAIL'
,p_attribute_02=>'QCIS_DEFECT_CODE_DETAIL'
,p_attribute_03=>'P71_DEFECT_CODE_DETAIL_ID'
,p_attribute_04=>'DEFECT_CODE_DETAIL_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''SAVE'',''CREATE'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Action Processed.'
);
end;
/
