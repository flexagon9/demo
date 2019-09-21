prompt --application/shared_components/user_interface/lovs/defect_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14142926701783568)
,p_lov_name=>'DEFECT STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select KEYWORD_CODE d, KEYWORD_VALUE r',
'from   QCIS_KEYWORDS',
'where KEYWORD_TYPE=''Status''',
'order by 1'))
);
end;
/
