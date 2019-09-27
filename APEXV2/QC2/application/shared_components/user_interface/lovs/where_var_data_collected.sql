prompt --application/shared_components/user_interface/lovs/where_var_data_collected
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12023374858144939)
,p_lov_name=>'WHERE_VAR_DATA_COLLECTED'
,p_lov_query=>'.'||wwv_flow_api.id(12023374858144939)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12023677603144940)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'QCIS'
,p_lov_return_value=>'QCIS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12024000747144941)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Shop Floor'
,p_lov_return_value=>'SFM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12024402264144941)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Both Applications'
,p_lov_return_value=>'BOTH'
);
end;
/
