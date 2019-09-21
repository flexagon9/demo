prompt --application/shared_components/user_interface/lovs/usage_codes
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25375881777348121)
,p_lov_name=>'USAGE_CODES'
,p_lov_query=>'.'||wwv_flow_api.id(25375881777348121)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25376188210348123)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'QCIS Only'
,p_lov_return_value=>'Q'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25376639506348124)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'SFM Only '
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25377015624348124)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Both'
,p_lov_return_value=>'B'
);
end;
/
