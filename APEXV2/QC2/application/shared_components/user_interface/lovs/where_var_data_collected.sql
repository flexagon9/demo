prompt --application/shared_components/user_interface/lovs/where_var_data_collected
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(23314723253478923)
,p_lov_name=>'WHERE_VAR_DATA_COLLECTED'
,p_lov_query=>'.'||wwv_flow_api.id(23314723253478923)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23315025998478924)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'QCIS'
,p_lov_return_value=>'QCIS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23315349142478925)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Shop Floor'
,p_lov_return_value=>'SFM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23315750659478925)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Both Applications'
,p_lov_return_value=>'BOTH'
);
end;
/
