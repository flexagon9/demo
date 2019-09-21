prompt --application/pages/page_00200
begin
wwv_flow_api.create_page(
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Model Setup Decision'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Setup Decision'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15904114236306873)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190624100925'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18089381614758498)
,p_plug_name=>'Model Setup Decision'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></br>',
'<center><div style="font-size: 16px; color: steelblue"> ',
'How would you like to continue? ',
'<br></br> ',
'Press the <b> Back </b> Button to Return to the Model Create Page to <b>Continue Creating or performing the Clone All</b> process.',
'<br>or</br> ',
'Press <b>Clone </b> Button to Navigate to the Model Maintenance page to Use the <b>Manual Clone</b> process? ',
'<br>or</br>',
'Press the <b>Done</b> Button if you are finished with Create Model and would like to <b>Perform other Model Maintenace</b>. ',
'</div> ',
'<br></br> <center>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18089770497758502)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_display_column=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18089602234758500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18089770497758502)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'TITLE="Navigate back Create Model and continue or perform Clone ALl Process."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18089545116758499)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18089770497758502)
,p_button_name=>'MANUAL_CLONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:RP:P204_MODEL_MASTER_ID:&P200_MODEL_MASTER_ID.'
,p_icon_css_classes=>'fa-copy'
,p_button_cattributes=>'TITLE="Close Window and Navigate to Model Maintenance to Clone Individual Model Relationships."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23346105106048331)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18089770497758502)
,p_button_name=>'SETUP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set Up'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_MODEL_MASTER_ID:&P200_MODEL_MASTER_ID.'
,p_icon_css_classes=>'fa-magic'
,p_button_cattributes=>'TITLE="Close Window and Navigate to the Model Set up Page."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23345118469048321)
,p_name=>'P200_MODEL_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18089381614758498)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23345494900048325)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18089602234758500)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23345621112048326)
,p_event_id=>wwv_flow_api.id(23345494900048325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23346250433048333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
