prompt --application/shared_components/user_interface/lovs/units_of_measure
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(23317150262540758)
,p_lov_name=>'UNITS_OF_MEASURE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select INITCAP(keyword_value) d, ',
'       keyword_value r',
'  from qcis_keywords',
' where upper(keyword_type) = ''UOM''',
'   and inactive_date is NULL',
' order by 1'))
);
end;
/
