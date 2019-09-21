prompt --application/pages/page_00114
begin
wwv_flow_api.create_page(
 p_id=>114
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Edit Substation Parent'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Substation Parent'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'900'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190822172143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36362235982537207)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P114_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36362535541537210)
,p_plug_name=>'SFM Stations'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>'(:G_SFM_FLAG = ''Y'') and (:P114_ID is NOT NULL)'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36387507006071662)
,p_plug_name=>'Edit Substation Parent'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50798516238369908)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36399250912106067)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50798516238369908)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36398926365106066)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50798516238369908)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36399686356106067)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(50798516238369908)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P114_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36400080816106068)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(50798516238369908)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P114_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37302426799389728)
,p_branch_name=>'Cancel Redirect'
,p_branch_action=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP,114:P114_ID:&P114_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36398926365106066)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36362607180537211)
,p_name=>'P114_SFM_STATIONS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36362535541537210)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_return_value   CLOB;',
'   v_checker_flag   VARCHAR2 (1);',
'',
'   CURSOR c_get_substation_parents',
'   IS',
'      SELECT obms_station_id',
'        FROM bg_qcis.qcis_sfm_station_xref',
'       WHERE substation_parent_id = :P114_ID;',
'       ',
'BEGIN',
'   v_return_value := NULL;',
'',
'   FOR sel1 IN c_get_substation_parents',
'   LOOP',
'      v_return_value := v_return_value || sel1.obms_station_id || '':'';',
'   END LOOP;',
'',
'   RETURN (v_return_value);',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'SFM Stations:'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (   TRIM (sfb.building_name)',
'        || '', ''',
'        || TRIM (sfb.line_name)',
'        || '', ''',
'        || TRIM (sfb.station_name))    d,',
'       sfb.station_id                  r',
'  FROM gpdtalib.sf_building_view@obms  sfb,',
'       qcis_station_parent             sp,',
'       qcis_plant_master               pm',
' WHERE     (    sp.id = :P114_station_parent_id',
'            AND pm.qcis_plant_master_id = sp.plant_id',
'            AND TRIM (sfb.plant) = pm.plant_code)',
'--       AND NOT EXISTS',
'--               (SELECT *',
'--                  FROM qcis_sfm_station_xref xref',
'--                 WHERE xref.obms_station_id = sfb.station_id)'))
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36362808804537213)
,p_name=>'P114_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  If :P114_INACTIVE_DATE is NULL then',
'    Return (''A'');',
'  Else',
'    Return (''I'');',
'  End if;',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36363793167537223)
,p_name=>'P114_STATION_SEQUENCE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_prompt=>'Station Sequence'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36363912029537224)
,p_name=>'P114_STATION_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_prompt=>'Station Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364024619537225)
,p_name=>'P114_PLANT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_prompt=>'Plant'
,p_source=>'G_DEFAULT_PLANT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36390981401071669)
,p_name=>'P114_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36391385201071695)
,p_name=>'P114_STATION_PARENT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_use_cache_before_default=>'NO'
,p_source=>'STATION_PARENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36391749221071700)
,p_name=>'P114_QCIS_SUBSTATION_CODE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_new_number   NUMBER;',
'BEGIN',
'    v_new_number := 10;',
'',
'    Begin',
'      SELECT NVL( ROUND (MAX (sp.qcis_substation_code) + 10, -1), 10)',
'        INTO v_new_number',
'        FROM bg_qcis.qcis_substation_parent sp',
'       WHERE sp.station_parent_id = :p114_station_parent_id;',
'    Exception',
'      When no_data_found then',
'        v_new_number := 10;',
'      When Others then',
'        v_new_number := 1000;',
'    End; ',
'',
'    -- We have a limit of 3 digits for the station code.  Lets make sure we',
'    -- don''t exceed the limit!',
'    IF v_new_number > 999',
'    THEN',
'        SELECT MAX (sp.qcis_substation_code) + 1',
'          INTO v_new_number',
'          FROM bg_qcis.qcis_substation_parent sp',
'         WHERE sp.station_parent_id = :p114_station_parent_id',
'           AND sp.qcis_substation_code < 999',
'           AND NOT EXISTS',
'                   (SELECT ''Y''',
'                      FROM bg_qcis.qcis_substation_parent qsp2',
'                     WHERE qsp2.station_parent_id = sp.station_parent_id',
'                       AND qsp2.qcis_substation_code =',
'                           (sp.qcis_substation_code + 1));',
'    END IF;',
'',
'    RETURN (v_new_number);',
'EXCEPTION',
'    WHEN OTHERS',
'    THEN',
'        RETURN (NULL);',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Substation Sequence'
,p_source=>'QCIS_SUBSTATION_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_read_only_when=>'P114_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36392219659071701)
,p_name=>'P114_QCIS_SUBSTATION_NAME'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Substation Name'
,p_source=>'QCIS_SUBSTATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>160
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36392572257071702)
,p_name=>'P114_USAGE_CODE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Q'
,p_prompt=>'Usage Code'
,p_source=>'USAGE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USAGE_CODES'
,p_lov=>'.'||wwv_flow_api.id(25375881777348121)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36392978990071703)
,p_name=>'P114_INACTIVE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_use_cache_before_default=>'NO'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36393442353071703)
,p_name=>'P114_LAST_UPDATE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36362235982537207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date:'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36393812425071704)
,p_name=>'P114_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36362235982537207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36394169765071704)
,p_name=>'P114_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36362235982537207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date:'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36394568307071705)
,p_name=>'P114_CREATED_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36362235982537207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36691496175731416)
,p_name=>'P114_ADD_TO_EXISTING'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_item_default=>'N'
,p_prompt=>'Add To Existing Stations?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15976633719645764)||'.'
,p_cHeight=>1
,p_tag_attributes=>'title="Add the new substation to all existing stations"'
,p_display_when=>'P114_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36691606316731417)
,p_name=>'P114_CHANGE_EXISTING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(36387507006071662)
,p_item_default=>'N'
,p_prompt=>'Apply Changes to Existing Substations?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15976633719645764)||'.'
,p_cHeight=>1
,p_tag_attributes=>'title="Apply the changes to all existing substations"'
,p_display_when=>'P114_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(36363427717537219)
,p_validation_name=>'Check for duplicates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_error_message   VARCHAR2 (1000);',
'    v_checker_flag    VARCHAR2 (1);',
'BEGIN',
'    v_error_message := NULL;',
'    v_checker_flag := ''N'';',
'',
'    -- Check to see if the sequence number is already in use',
'    BEGIN',
'        SELECT ''Y''',
'          INTO v_checker_flag',
'          FROM bg_qcis.qcis_substation_parent',
'         WHERE station_parent_id = :p114_station_parent_id',
'           AND qcis_substation_code = :p114_qcis_substation_code',
'           AND id <> NVL ( :p114_id, -99);',
'    EXCEPTION',
'        WHEN TOO_MANY_ROWS',
'        THEN',
'            v_checker_flag := ''Y'';',
'        WHEN OTHERS',
'        THEN',
'            v_checker_flag := ''N'';',
'    END;',
'',
'    IF v_checker_flag = ''Y''',
'    THEN',
'        v_error_message :=',
'               ''Substation Sequence ''',
'            || :p114_qcis_substation_code',
'            || '' already exists for this Station.'';',
'    END IF;',
'',
'    RETURN (v_error_message);',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(36391749221071700)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36362298651537208)
,p_name=>'Close Page'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36399250912106067)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36362377628537209)
,p_event_id=>wwv_flow_api.id(36362298651537208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36362938707537214)
,p_name=>'Update inactive date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_STATUS'
,p_condition_element=>'P114_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36363029198537215)
,p_event_id=>wwv_flow_api.id(36362938707537214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_INACTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select sysdate ',
'  from dual;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36363091969537216)
,p_event_id=>wwv_flow_api.id(36362938707537214)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_INACTIVE_DATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36395420662071707)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_SUBSTATION_PARENT'
,p_attribute_02=>'QCIS_SUBSTATION_PARENT'
,p_attribute_03=>'P114_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36395811310071707)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_SUBSTATION_PARENT'
,p_attribute_02=>'QCIS_SUBSTATION_PARENT'
,p_attribute_03=>'P114_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P114_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36363706521537222)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process SFM Stations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'',
'  -- Lets try a fancy, schmancy delete',
'    DELETE FROM bg_qcis.qcis_sfm_station_xref',
'          WHERE substation_parent_id = :p114_id',
'            AND obms_station_id NOT IN',
'                    (WITH',
'                         data',
'                         AS',
'                             (SELECT :p114_sfm_stations     sfm_station_id',
'                                FROM DUAL)',
'                         SELECT TRIM (REGEXP_SUBSTR (sfm_station_id,',
'                                                     ''[^:]+'',',
'                                                     1,',
'                                                     LEVEL))    sfm_station_id',
'                           FROM data',
'                     CONNECT BY INSTR (sfm_station_id,',
'                                       '':'',',
'                                       1,',
'                                       LEVEL - 1) > 0);',
'',
'  -- And a fancy, schmancy insert, too!',
'    INSERT INTO bg_qcis.qcis_sfm_station_xref (substation_parent_id,',
'                                               obms_station_id,',
'                                               obms_building_id,',
'                                               obms_building_name,',
'                                               obms_line_id,',
'                                               obms_line_name,',
'                                               obms_station_name,',
'                                               usage_code)',
'        WITH data AS (SELECT :p114_sfm_stations sfm_station_id FROM DUAL)',
'        (SELECT :p114_id,',
'                sfmt.sfm_station_id,',
'                building_id,',
'                TRIM (building_name),',
'                line_id,',
'                TRIM (line_name),',
'                TRIM (station_name),',
'                :p114_usage_code',
'           FROM (    SELECT TRIM (REGEXP_SUBSTR (sfm_station_id,',
'                                                 ''[^:]+'',',
'                                                 1,',
'                                                 LEVEL))    sfm_station_id',
'                       FROM data',
'                 CONNECT BY INSTR (sfm_station_id,',
'                                   '':'',',
'                                   1,',
'                                   LEVEL - 1) > 0) sfmt',
'                JOIN gpdtalib.sf_building_view@obms obms',
'                    ON obms.station_id = sfmt.sfm_station_id',
'          WHERE NOT EXISTS',
'                    (SELECT ''Y''',
'                       FROM bg_qcis.qcis_sfm_station_xref ssx',
'                      WHERE ssx.substation_parent_id = :p114_id',
'                        AND obms_station_id = sfmt.sfm_station_id));',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36399686356106067)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36691968531731421)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Push changes to existing data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  If :P114_ADD_TO_EXISTING = ''Y'' then',
'    bg_qcis.qc2_admin_utilities.push_parent_substation_changes(:p114_id,''A'');',
'  End if;',
'  ',
'  If :P114_CHANGE_EXISTING = ''Y'' then',
'    bg_qcis.qc2_admin_utilities.push_parent_substation_changes(:p114_id,''C'');',
'  End if;  ',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
