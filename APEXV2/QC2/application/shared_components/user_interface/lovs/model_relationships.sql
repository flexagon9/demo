prompt --application/shared_components/user_interface/lovs/model_relationships
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(23069792610415462)
,p_lov_name=>'MODEL_RELATIONSHIPS'
,p_lov_query=>'.'||wwv_flow_api.id(23069792610415462)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23080108818504832)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'All'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23070133371415464)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Stations'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23070451431415466)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Images'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23070903060415466)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Image Map Templates'
,p_lov_return_value=>'IM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23071301679415466)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Pin Map Templates'
,p_lov_return_value=>'PM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23071707739415467)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Gig Sheet Templates'
,p_lov_return_value=>'GS'
);
end;
/
