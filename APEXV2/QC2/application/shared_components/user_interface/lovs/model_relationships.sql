prompt --application/shared_components/user_interface/lovs/model_relationships
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(11778444215081478)
,p_lov_name=>'MODEL_RELATIONSHIPS'
,p_lov_query=>'.'||wwv_flow_api.id(11778444215081478)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11788760423170848)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'All'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11778784976081480)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Stations'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11779103036081482)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Images'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11779554665081482)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Image Map Templates'
,p_lov_return_value=>'IM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11779953284081482)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Pin Map Templates'
,p_lov_return_value=>'PM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11780359344081483)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Gig Sheet Templates'
,p_lov_return_value=>'GS'
);
end;
/
