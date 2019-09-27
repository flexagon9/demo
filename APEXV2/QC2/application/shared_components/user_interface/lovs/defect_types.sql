prompt --application/shared_components/user_interface/lovs/defect_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16073557589416518)
,p_lov_name=>'DEFECT_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_code d, keyword_code r',
'from   qcis_keywords',
'where keyword_type = ''Defect_Type'' and inactive_date IS NULL',
'order by 1'))
);
end;
/
