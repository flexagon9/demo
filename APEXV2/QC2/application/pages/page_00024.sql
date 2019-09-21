prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Green Tag Report'
,p_step_title=>'Green Tag Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190919175825'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178172796201096710)
,p_plug_name=>'Tag Header'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<span style="font-weight: bold; color:GREEN; font-size:30px" >',
'&P24_TITLE.',
'</span>',
'',
'<span style="font-size:1px" >',
'<br></br>',
'</span>',
'',
'<span style="font-weight: bold; color:GREEN; font-size:30px" >',
'&P24_STATUS.',
'</span>',
'',
'<br></br>',
'<br></br>',
'',
'',
'<span style="font-weight: bold; color:black; font-size:18px" > ',
'Model:&#160;&P24_MODEL_NAME. &#160; &#160; &#160; &#160; ',
'MY:&#160;&P24_MODEL_YEAR. &#160; &#160; &#160; &#160; ',
'Hull:&#160;&P24_HULL. &#160; &#160; &#160; &#160; ',
'HIN:&#160;&P24_HIN. &#160; &#160; &#160; &#160;',
'</span>',
' ',
'<br></br>',
'',
'<span style="font-weight: bold; color:black; font-size:16px" > ',
'Engine Type:&#160;&P24_ENGINE_TYPE. &#160; &#160; &#160; &#160; ',
'<br></br>',
'Engine SN:&#160; &P24_ENGINE_SN.',
'',
'<br></br>',
'Order Number:&#160;&P24_ORDER_NUMBER. &#160; &#160; &#160; ',
'Order Due Date:&#160;&P24_ORDER_DUE_DATE. &#160; &#160; &#160;',
'',
'</center>',
'',
'<br></br>',
'Rack Date:&#160; &P24_RACK_DATE. &#160; &#160; &#160;&#160; &#160; &#160;Racked By:&#160;&P24_RACKED_BY.',
'',
'<br></br>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178502592656899205)
,p_plug_name=>'Page Items'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178502982183915092)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13697038627364913)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(178502982183915092)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:&G_CALLING_PAGE.:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'title="Back to Set Rack Date"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13697283817364914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(178502982183915092)
,p_button_name=>'Print_Header'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Print Header'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'title="Print Only Red Tag Header"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13690699614364902)
,p_name=>'P24_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_item_default=>'Quality Assurance'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13691055149364905)
,p_name=>'P24_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_item_default=>'APPROVED TO SHIP'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13691524314364906)
,p_name=>'P24_ROWID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90736865129242511)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13691883185364907)
,p_name=>'P24_BOAT_MASTER_ID'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_prompt=>'Boat Master Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13692336930364907)
,p_name=>'P24_BOAT_STATUS'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_prompt=>'Boat Status'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13692685287364907)
,p_name=>'P24_MODEL_NAME'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Boat Model</span>'
,p_source=>'MODEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13693109995364908)
,p_name=>'P24_MODEL_YEAR'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Model Year</span>'
,p_source=>'MODEL_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13693517477364908)
,p_name=>'P24_HULL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Hull No.</span>'
,p_source=>'HULL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13693902061364909)
,p_name=>'P24_HIN'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">HIN</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OHHIN ',
'FROM OPDTA.OPOHP@obms ',
'WHERE OHORD = trim(:P24_ORDER_NUMBER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13694338504364909)
,p_name=>'P24_ORDER_NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_prompt=>'<span style="color:#0000A0">Order Number</span>'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13694707177364910)
,p_name=>'P24_ORDER_DUE_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_date(OHGMM || ''/'' || OHGDD || ''/'' || OHGYY, ''MM/DD/RRRR'') ',
'from opdta.opohp@obms ',
'WHERE OHORD = trim(:P24_ORDER_NUMBER)'))
,p_source_type=>'QUERY'
,p_source_post_computation=>'TO_CHAR(TO_DATE(:P24_ORDER_DUE_DATE),''MON-DD-RRRR'')'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13695067764364911)
,p_name=>'P24_ENGINE_TYPE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Engine Type</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AMDES',
'  from OPDTA.OPAMP@obms',
' where AMYR = trim(:P24_MODEL_YEAR)',
'   and AMGRUP = 20',
'   and AMACC = (select ODACC',
'                  from OPDTA.OPODP@obms',
'                 where ODORD = trim(:P24_ORDER_NUMBER)',
'                   and ODGRUP = 20)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13695455882364911)
,p_name=>'P24_ENGINE_SN'
,p_item_sequence=>375
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Engine SN</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S#SERL ENG_SN',
'          FROM OPDTA.OPS#P@obms',
'         WHERE     S#MYR = TO_NUMBER ( :P24_MODEL_YEAR)',
'               AND S#MDL = TRIM ( :P24_MODEL_NAME)',
'               AND S#ORD = TRIM ( :P24_ORDER_NUMBER)',
'               AND S##TYP IN (SELECT DISTINCT SYKEY',
'                                FROM gpdtalib.gpsyp@obms',
'                               WHERE sytype IN (''SRLNO''))'))
,p_source_type=>'QUERY_COLON'
,p_source_post_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'REPLACE (:P24_ENGINE_SN, '':'', '', '')',
''))
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13695849250364912)
,p_name=>'P24_RACK_DATE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RACK_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13696267346364912)
,p_name=>'P24_RACKED_BY'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_use_cache_before_default=>'NO'
,p_source=>'RACKED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14441206245760212)
,p_name=>'P24_PAGE_BACK_TO'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(178502592656899205)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13698162642364915)
,p_computation_sequence=>10
,p_computation_item=>'P24_ORDER_DUE_DATE'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'TO_CHAR(:P24_ORDER_DUE_DATE,''MM-DD-RRRR'')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13698858476364917)
,p_name=>'Print Header'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13697283817364914)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13699398643364918)
,p_event_id=>wwv_flow_api.id(13698858476364917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'window.open("f?p=&APP_ID.:183:&SESSION.::::P183_BOAT_MASTER_ID,P183_BOAT_STATUS,P183_ORDER_NUMBER:&P24_BOAT_MASTER_ID.,&P24_BOAT_STATUS.,&P24_ORDER_NUMBER.","print_screen_popup","location=5,status=1, scrollbars=0, width=1500,height=600"); mywindow.mo'
||'veTo(10, 10);'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13698466521364915)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_BOAT_MASTER'
,p_attribute_02=>'QCIS_BOAT_MASTER'
,p_attribute_03=>'P24_BOAT_MASTER_ID'
,p_attribute_04=>'BOAT_MASTER_ID'
);
end;
/
