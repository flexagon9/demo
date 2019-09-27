prompt --application/shared_components/user_interface/lovs/inspection_names1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4199841568088339)
,p_lov_name=>'INSPECTION_NAMES1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select inspection_name d, inspect_name_id r',
'from   qcis_inspection_names',
'order by inspection_name'))
);
end;
/
