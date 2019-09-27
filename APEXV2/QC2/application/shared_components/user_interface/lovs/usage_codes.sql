prompt --application/shared_components/user_interface/lovs/usage_codes
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14084533382014137)
,p_lov_name=>'USAGE_CODES'
,p_lov_query=>'.'||wwv_flow_api.id(14084533382014137)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14084839815014139)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'QCIS Only'
,p_lov_return_value=>'Q'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14085291111014140)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'SFM Only '
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14085667229014140)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Both'
,p_lov_return_value=>'B'
);
end;
/
