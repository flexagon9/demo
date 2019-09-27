prompt --application/shared_components/user_interface/lovs/substation1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4198072371088337)
,p_lov_name=>'SUBSTATION1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substation_code d, substation_id r',
'from   qcis_substation',
'order by 1'))
);
end;
/
