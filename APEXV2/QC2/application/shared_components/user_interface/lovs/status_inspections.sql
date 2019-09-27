prompt --application/shared_components/user_interface/lovs/status_inspections
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(2854314169449595)
,p_lov_name=>'STATUS_INSPECTIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_value d, keyword_code r',
'from   qcis_keywords',
'where keyword_type=''Status_Inspections''',
'order by 1'))
);
end;
/
