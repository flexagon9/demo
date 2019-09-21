prompt --application/pages/page_00123
begin
wwv_flow_api.create_page(
 p_id=>123
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Red Tag Header Print'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Red Tag Header Print'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_html_page_onload=>'onload="Print()"'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190919182326'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176247789940891384)
,p_plug_name=>'Page Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16652175827676647)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176248410236891395)
,p_plug_name=>'Tag Header'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>20
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<span style="font-weight: bold; color:BLACK; font-size:30px" >',
'&P123_TITLE.',
'</span>',
'',
'<span style="font-size:1px" >',
'<br></br>',
'</span>',
'',
'<span style="font-weight: bold; color:BLACK; font-size:30px" >',
'&P123_STATUS.',
'</span>',
'',
'<br></br>',
'<br></br>',
'',
'',
'<span style="font-weight: bold; color:black; font-size:18px" > ',
'Model:&#160;&P123_MODEL_NAME. &#160; &#160; &#160; &#160; ',
'MY:&#160;&P123_MODEL_YEAR. &#160; &#160; &#160; &#160; ',
'Hull:&#160;&P123_HULL. &#160; &#160; &#160; &#160; ',
'HIN:&#160;&P123_HIN. &#160; &#160; &#160; &#160;',
'</span>',
' ',
'<br></br>',
'',
'<span style="font-weight: bold; color:black; font-size:16px" > ',
'Engine Type:&#160;&P123_ENGINE_TYPE. &#160; &#160; &#160; &#160; ',
'<br></br>',
'Engine SN:&#160; &P123_ENGINE_SN.',
'',
'',
'<br></br>',
'Order Number:&#160;&P123_ORDER_NUMBER. &#160; &#160; &#160; ',
'Order Due Date:&#160;&P123_ORDER_DUE_DATE. &#160; &#160; &#160;',
'',
'</center>',
'',
'',
'<br></br>',
'Rack Date:&#160; &P123_RACK_DATE. &#160; &#160; &#160;&#160; &#160; &#160;Racked By:&#160;&P123_RACKED_BY.',
'',
'',
'<br></br>',
'</span>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13706635955523864)
,p_name=>'P123_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_item_default=>'Quality Assurance'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13707020354523865)
,p_name=>'P123_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_item_default=>'DO NOT SHIP'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13707381721523865)
,p_name=>'P123_ROWID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13707754974523866)
,p_name=>'P123_BOAT_MASTER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13708200565523866)
,p_name=>'P123_BOAT_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13709436965523867)
,p_name=>'P123_MODEL_NAME'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>'MODEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13709847738523867)
,p_name=>'P123_MODEL_YEAR'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>'MODEL_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13710207921523868)
,p_name=>'P123_HULL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>'HULL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13710634656523868)
,p_name=>'P123_HIN'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OHHIN ',
'FROM OPDTA.OPOHP@obms ',
'WHERE OHORD = trim(:P123_ORDER_NUMBER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13711000823523868)
,p_name=>'P123_ORDER_NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13711374117523869)
,p_name=>'P123_ORDER_DUE_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-RRRR'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(to_date(OHGMM || ''/'' || OHGDD || ''/'' || OHGYY, ''MM/DD/YY''),''MM/DD/RRRR'') ',
'from opdta.opohp@obms ',
'WHERE OHORD = trim(:P123_ORDER_NUMBER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13711758372523869)
,p_name=>'P123_ENGINE_TYPE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AMDES',
'  from OPDTA.OPAMP@obms',
' where AMYR = trim(:P123_MODEL_YEAR)',
'   and AMGRUP = 20',
'   and AMACC = (select ODACC',
'                  from OPDTA.OPODP@obms',
'                 where ODORD = trim(:P123_ORDER_NUMBER)',
'                   and ODGRUP = 20)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13712207848523869)
,p_name=>'P123_ENGINE_SN'
,p_item_sequence=>375
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S#SERL ENG_SN',
'          FROM OPDTA.OPS#P@obms',
'         WHERE     S#MYR = TO_NUMBER ( :P123_MODEL_YEAR)',
'               AND S#MDL = TRIM ( :P123_MODEL_NAME)',
'               AND S#ORD = TRIM ( :P123_ORDER_NUMBER)',
'               AND S##TYP IN (SELECT DISTINCT SYKEY',
'                                FROM gpdtalib.gpsyp@obms',
'                               WHERE sytype IN (''SRLNO''))'))
,p_source_type=>'QUERY_COLON'
,p_source_post_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'REPLACE (:P123_ENGINE_SN, '':'', '', '')',
''))
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13712989143523870)
,p_name=>'P123_RACK_DATE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RACK_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13713397437523871)
,p_name=>'P123_RACKED_BY'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(176247789940891384)
,p_use_cache_before_default=>'NO'
,p_source=>'RACKED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14314078377954299)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14314233202954300)
,p_event_id=>wwv_flow_api.id(14314078377954299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13714091507523872)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_BOAT_MASTER'
,p_attribute_02=>'QCIS_BOAT_MASTER'
,p_attribute_03=>'P123_BOAT_MASTER_ID'
,p_attribute_04=>'BOAT_MASTER_ID'
);
end;
/
