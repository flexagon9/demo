prompt --application/shared_components/user_interface/lovs/defect_codes
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4198607940088337)
,p_lov_name=>'DEFECT_CODES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sub_com_desc||'' - ''||commodity_desc d, defect_code_header_id r',
'from   qcis_defect_code_header',
'where inactive_date IS NULL',
'order by sub_com_desc'))
);
end;
/
