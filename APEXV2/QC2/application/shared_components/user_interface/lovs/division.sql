prompt --application/shared_components/user_interface/lovs/division
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15978933318645775)
,p_lov_name=>'DIVISION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DIVISION_CODE||'' - ''||DIVISION_NAME display_value, QCIS_DIVISION_MASTER_ID return_value ',
'from QCIS_DIVISION_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
);
end;
/
