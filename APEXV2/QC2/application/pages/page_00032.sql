prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Images - Upload to Plant'
,p_alias=>'UPLOAD_PLANT_IMAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload Image For Location'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'450'
,p_dialog_width=>'700'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190905084129'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22569617755697336)
,p_plug_name=>'Upload Image'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22570311217697337)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22570660559697339)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22569617755697336)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23785713995484991)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22569617755697336)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22570124802697337)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22569617755697336)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22570037466697337)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22569617755697336)
,p_button_name=>'UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'TOP'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-upload'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21123029619200611)
,p_name=>'P32_MIME_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Type:'
,p_source=>'MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21123507540200616)
,p_name=>'P32_PLANT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_prompt=>'Plant:'
,p_source=>':G_CURRENT_LOCATION_FORMATTED'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22573084998697358)
,p_name=>'P32_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22573530202697419)
,p_name=>'P32_PLANT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_DEFAULT_PLANT_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22573821954697430)
,p_name=>'P32_IMAGE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Name:'
,p_source=>'IMAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>400
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22574223097697432)
,p_name=>'P32_FILE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name:'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>2000
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22574619711697433)
,p_name=>'P32_PIXEL_WIDTH'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pixel Width:'
,p_source=>'PIXEL_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22575019939697433)
,p_name=>'P32_PIXEL_HEIGHT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pixel Height:'
,p_source=>'PIXEL_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22575432441697435)
,p_name=>'P32_INACTIVE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22569617755697336)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inactive Date:'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>14
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21124474486200626)
,p_validation_name=>'Duplicate Image Name'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from QCIS_IMAGES_MASTER',
'where PLANT_ID = TO_NUMBER(:P32_PLANT_ID)',
'AND IMAGE_NAME = :P32_IMAGE_NAME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Image name must be unique.'
,p_when_button_pressed=>wwv_flow_api.id(22570037466697337)
,p_associated_item=>wwv_flow_api.id(22573821954697430)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22570822399697339)
,p_name=>'Return Clicked'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22570660559697339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22571565696697346)
,p_event_id=>wwv_flow_api.id(22570822399697339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21123251926200614)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22577138360697444)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_IMAGES_MASTER'
,p_attribute_02=>'QCIS_IMAGES_MASTER'
,p_attribute_03=>'P32_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21123217802200613)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF ( :P32_FILE_NAME is not null ) THEN ',
'     INSERT INTO qcis_images_master(IMAGE_NAME, FILE_NAME, BLOB_CONTENT, MIME_TYPE, IMAGE_SIZE, ',
'     PLANT_ID, PIXEL_WIDTH, PIXEL_HEIGHT, ',
'     LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY) ',
'      SELECT :P32_IMAGE_NAME, :P32_FILE_NAME, blob_content, mime_type, dbms_lob.getlength(blob_content),',
'      :P32_PLANT_ID, :P32_PIXEL_WIDTH, :P32_PIXEL_HEIGHT,',
'      SYSDATE, :APP_USER, SYSDATE, :APP_USER',
'            FROM APEX_APPLICATION_TEMP_FILES',
'            WHERE name = :P32_FILE_NAME; ',
'END IF;'))
,p_process_error_message=>'Error uploading image.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22570037466697337)
,p_process_success_message=>'Image uploaded.'
,p_security_scheme=>wwv_flow_api.id(15901823723215299)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21123348902200615)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get BLOB Properties of Uploaded Image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   imageblob             BLOB;',
'   metav                 xmlsequencetype;',
'   ns                    VARCHAR2 (4000);',
'   v_mimetype            VARCHAR2 (500);',
'   v_width               NUMBER;',
'   v_height              NUMBER;',
'   v_fileformat          VARCHAR2 (500);',
'   v_contentformat       VARCHAR2 (500);',
'   v_compressionformat   VARCHAR2 (500);',
'   v_contentlength       NUMBER;',
'BEGIN',
'   SELECT blob_content',
'     INTO imageblob',
'     FROM bg_qcis.qcis_images_master',
'    WHERE file_name = :P32_FILE_NAME;',
'',
'   -- get metadata from blob',
'   ordsys.ord_image.getproperties (imageblob,',
'                                   v_mimetype,',
'                                   v_width,',
'                                   v_height,',
'                                   v_fileformat,',
'                                   v_contentformat,',
'                                   v_compressionformat,',
'                                   v_contentlength);',
'',
'update bg_qcis.qcis_images_master set pixel_width=v_width, pixel_height=v_height, mime_type=v_mimetype WHERE file_name = :P32_FILE_NAME;',
'',
'EXCEPTION',
'   WHEN ordsys.ordimageexceptions.null_content THEN',
'      DBMS_OUTPUT.put_line (''imageBlob is null'');',
'   WHEN OTHERS THEN',
'      RAISE;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22570037466697337)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22577546504697444)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P32_ID is null then',
'        select "#OWNER#"."QCIS_IMAGES_MASTER_SEQ".nextval',
'          into :P32_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22570037466697337)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22577876251697445)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_IMAGES_MASTER'
,p_attribute_02=>'QCIS_IMAGES_MASTER'
,p_attribute_03=>'P32_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22570124802697337)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22578342833697446)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22578715904697447)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
