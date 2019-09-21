prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190916142406'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16126023956229728)
,p_name=>'Phase Out Message'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16126074727229729)
,p_event_id=>wwv_flow_api.id(16126023956229728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() { ',
'        $(''.t-Alert'').fadeOut(''slow'');  ',
'      }, 2500);'))
,p_stop_execution_on_error=>'Y'
);
end;
/
