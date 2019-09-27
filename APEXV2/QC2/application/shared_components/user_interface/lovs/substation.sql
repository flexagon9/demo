prompt --application/shared_components/user_interface/lovs/substation
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(2854601618449595)
,p_lov_name=>'SUBSTATION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substation_code d, substation_id r',
'from   qcis_substation',
'order by 1'))
);
end;
/
