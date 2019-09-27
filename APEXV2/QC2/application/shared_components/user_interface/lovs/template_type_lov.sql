prompt --application/shared_components/user_interface/lovs/template_type_lov
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15855932013236660)
,p_lov_name=>'TEMPLATE TYPE LOV'
,p_lov_query=>'.'||wwv_flow_api.id(15855932013236660)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15856276484236660)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Var Data'
,p_lov_return_value=>'V'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15856693847236662)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Gig Sheet'
,p_lov_return_value=>'G'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15857062368236662)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Pin Map'
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15857496315236662)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Image Map'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15860369058306799)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Gig Sheet/Var Data'
,p_lov_return_value=>'G/V'
);
end;
/
