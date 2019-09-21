prompt --application/pages/page_00201
begin
wwv_flow_api.create_page(
 p_id=>201
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Create Models'
,p_page_mode=>'MODAL'
,p_step_title=>'Create  Model'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190906151758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15325283313074013)
,p_plug_name=>'Create Model'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17587261476357217)
,p_plug_name=>'Models'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17592667485366886)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P201_MODEL_MASTER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15956847097645735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15325283313074013)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_MODEL_MASTER_ID,P20_MODEL_NAME,P20_MODEL_DESC:&P201_MODEL_MASTER_ID.,&P201_MODEL_NAME.,&P201_MODEL_DESC.'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'title="Cancel any unsaved changes and close window."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23345232167048322)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15325283313074013)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15957237091645736)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(15325283313074013)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Model"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37785946120255400)
,p_branch_name=>'After CANCEL'
,p_branch_action=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(23345232167048322)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25080767776196195)
,p_branch_name=>'After Create'
,p_branch_action=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:RP:P204_MODEL_MASTER_ID:&P201_NEW_MODEL_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15957237091645736)
,p_branch_sequence=>130
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15325802724074018)
,p_name=>'P201_PLANT_CODE'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_LOC_CODE;',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15325936530074019)
,p_name=>'P201_BRAND_CODE'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15957579622645737)
,p_name=>'P201_MODEL_MASTER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15958367262645738)
,p_name=>'P201_INITIAL_INACTIVE_DATE'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15958816819645739)
,p_name=>'P201_PLANT_ID'
,p_is_required=>true
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15959210144645740)
,p_name=>'P201_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_BRAND_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_CODE||'' - ''||BRAND_NAME display_value, ',
'       QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where QCIS_PLANT_MASTER_ID = :P201_PLANT_ID and INACTIVE_DATE IS NULL order by 1'))
,p_lov_cascade_parent_items=>'P201_PLANT_ID'
,p_ajax_items_to_submit=>'P201_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P201_MODEL_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15959644014645741)
,p_name=>'P201_DIVISION_ID'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN  :G_DEFAULT_DIVISION_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15960022727645741)
,p_name=>'P201_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_prompt=>'Model Year:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_read_only_when=>'P201_MODEL_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15960435038645742)
,p_name=>'P201_MODEL_NAME'
,p_is_required=>true
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_prompt=>'Model:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.MODEL d, TRIM(v.MODEL) r',
'    FROM bg_shared_admin.SHARED_OBMS_BOAT_MODELS_ALL_MV v',
'   WHERE     MODEL_YEAR =  :P201_MODEL_YEAR',
'         AND PLANT = :P201_PLANT_CODE',
'         AND BRAND = :P201_BRAND_CODE',
'         AND TRIM(v.MODEL) NOT IN',
'                 (SELECT MODEL_NAME',
'                    FROM bg_qcis.QCIS_MODEL_MASTER',
'                   WHERE     MODEL_YEAR = :P201_MODEL_YEAR',
'                         AND MODEL_NAME = TRIM(v.MODEL)',
'                         AND PLANT_ID = :G_DEFAULT_PLANT_ID',
'                         AND BRAND_ID = :P201_BRAND_ID) ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P201_MODEL_YEAR,P201_BRAND_CODE'
,p_ajax_items_to_submit=>'P201_PLANT_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'readonly="true" tabindex=-1'
,p_begin_on_new_line=>'N'
,p_display_when=>'G_MARINE_DIVISION_TYPE'
,p_display_when2=>'BME'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_read_only_when=>'P201_MODEL_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'CAUTION: This QCIS Model must exactly match the OBMS model. Do not leave any spaces after the model name. That will prevent inspection sheets from being created later.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15960810175645743)
,p_name=>'P201_MODEL_DESC'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_prompt=>'Model Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'input type="text" readonly="readonly" style="background:white;" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15961644160645744)
,p_name=>'P201_REWORK_TIME_MANDATORY'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_item_default=>'N'
,p_prompt=>'Rework Time Mandatory:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15976633719645764)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Is the selection of Rework Time mandatory on defects entered for this model?'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15963204974645745)
,p_name=>'P201_PDE_MODEL_NAME'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15963853492645747)
,p_name=>'P201_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(17592667485366886)
,p_prompt=>'Last Update Date:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15964311002645747)
,p_name=>'P201_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(17592667485366886)
,p_prompt=>'Last Updated By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15964695569645747)
,p_name=>'P201_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(17592667485366886)
,p_prompt=>'Creation Date:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15965125655645748)
,p_name=>'P201_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(17592667485366886)
,p_prompt=>'Created By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23544288919658508)
,p_name=>'P201_DIVISION_NAME'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_tag_attributes=>'input type="text" readonly="readonly" style="background:white;" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25080989620196197)
,p_name=>'P201_NEW_MODEL_ID'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25489874428093089)
,p_name=>'P201_ALT_MODEL_NAME'
,p_item_sequence=>102
,p_item_plug_id=>wwv_flow_api.id(17587261476357217)
,p_prompt=>'Model:'
,p_source=>'P201_ALT_MODEL_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_display_when=>'G_MARINE_DIVISION_TYPE'
,p_display_when2=>'BME'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'BME model name is used only when OBMS is not the source for boat information'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15967935701645753)
,p_computation_sequence=>10
,p_computation_item=>'P201_LAST_UPDATE_DATE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(sysdate,''MM/DD/YYYY HH12:MI'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15968282970645753)
,p_computation_sequence=>20
,p_computation_item=>'P201_LAST_UPDATED_BY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>':APP_USER'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15968674118645754)
,p_computation_sequence=>30
,p_computation_item=>'P201_CREATION_DATE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(sysdate,''MM/DD/YYYY HH12:MI'')'
,p_compute_when=>'P201_MODEL_MASTER_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15969067992645754)
,p_computation_sequence=>40
,p_computation_item=>'P201_CREATED_BY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>':APP_USER'
,p_compute_when=>'P201_MODEL_MASTER_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25525291609988056)
,p_validation_name=>'Duplicate Alt Model - Create'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM qcis_alt_model_xref am',
' WHERE     (   :P201_alt_model_name IS NOT NULL)',
'       AND am.ALT_MODEL_YEAR = :P201_MODEL_YEAR',
'       AND (   am.ALT_MODEL_NAME = :P201_ALT_MODEL_NAME)',
'       AND (   :P201_model_master_id IS NULL',
'            OR :P201_model_master_id <> am.model_master_id)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'An Alternate Model/Description can only be linked to 1 Model/Description.'
,p_associated_item=>wwv_flow_api.id(25489874428093089)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25530787690009087)
,p_validation_name=>'Duplicate Alt Model - Save'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM qcis_alt_model_xref am',
' WHERE     ALT_MODEL_YEAR = :P201_MODEL_YEAR',
'       AND ALT_MODEL_NAME = :P201_ALT_MODEL_NAME',
'       AND (   :P201_model_master_id IS NULL',
'            OR :P201_model_master_id <> am.model_master_id)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'An Alternate Model can only be linked to 1 Model.'
,p_validation_condition=>'G_MARINE_DIVISION_TYPE'
,p_validation_condition2=>'BME'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15326159632074022)
,p_name=>'POPULATE BRAND INFO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_BRAND_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15326269595074023)
,p_event_id=>wwv_flow_api.id(15326159632074022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_BRAND_CODE,G_DEFAULT_DIVISION_ID,P201_DIVISION_ID,P201_DIVISION_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.BRAND_CODE, d.QCIS_DIVISION_MASTER_ID def_id, d.QCIS_DIVISION_MASTER_ID, d.DIVISION_NAME',
'  FROM bg_qcis.QCIS_DIVISION_MASTER d, bg_qcis.QCIS_BRAND_MASTER b',
' WHERE     b.QCIS_BRAND_MASTER_ID = :P201_BRAND_ID',
'       AND d.QCIS_DIVISION_MASTER_ID = b.DIVISION_MASTER_ID'))
,p_attribute_07=>'P201_BRAND_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15326414941074024)
,p_name=>'POPUALTE MODEL DESCRIPTION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_MODEL_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15326454368074025)
,p_event_id=>wwv_flow_api.id(15326414941074024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_MODEL_DESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION ',
'FROM bg_shared_admin.SHARED_OBMS_OPMHP_VW',
'WHERE MODEL_YEAR = :P201_MODEL_YEAR',
'  AND MODEL = :P201_MODEL_NAME'))
,p_attribute_07=>'P201_MODEL_YEAR,P201_MODEL_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25527527355003703)
,p_process_sequence=>25
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get New Model ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT QCIS_MODEL_MASTER_SEQ.NEXTVAL INTO :P201_NEW_MODEL_ID FROM DUAL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15957237091645736)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15973382767645758)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Model Master record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO BG_QCIS.QCIS_MODEL_MASTER (MODEL_MASTER_ID,',
'                                           BRAND_ID,',
'                                           DIVISION_ID,',
'                                           PLANT_ID,',
'                                           MODEL_YEAR,',
'                                           MODEL_NAME,',
'                                           ALT_MODEL_NAME,',
'                                           MODEL_DESC,',
'                                           REWORK_TIME_MANDATORY,',
'                                           READY_FOR_INSPECTIONS)',
'         VALUES (:P201_NEW_MODEL_ID,',
'                 :P201_BRAND_ID,',
'                 :P201_DIVISION_ID,',
'                 :P201_PLANT_ID,',
'                 :P201_MODEL_YEAR,',
'                 TRIM(:P201_MODEL_NAME),',
'                 TRIM(SUBSTR(:P201_ALT_MODEL_NAME,1,6)),',
'                 TRIM(:P201_MODEL_DESC),',
'                 :P201_REWORK_TIME_MANDATORY,',
'                  ''N'');',
'                 ',
'                 ',
'          ',
'          :P201_MODEL_MASTER_ID := :P201_NEW_MODEL_ID;',
'                 ',
'END;'))
,p_process_error_message=>'Unable to create New Model. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15957237091645736)
,p_process_success_message=>'Model &P201_MODEL_NAME. has been created.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25527617741003704)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Alt Model Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO qcis_alt_model_xref (alt_model_year,',
'                                     alt_model_name,',
'                                     alt_model_description,',
'                                     model_master_id)',
'         VALUES (:P201_MODEL_YEAR,',
'                 :P201_ALT_MODEL_NAME,',
'                 :P201_MODEL_DESC,',
'                 :P201_NEW_MODEL_ID);',
'END;'))
,p_process_error_message=>'Unable to create Alt New Model. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15957237091645736)
,p_process_when=>':G_MARINE_DIVISION_TYPE = ''BME'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Model &P201_MODEL_NAME. has been created.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16126295104229731)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Back'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15956847097645735)
);
end;
/
