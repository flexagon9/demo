prompt --application/shared_components/user_interface/lovs/brand1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4196286219088335)
,p_lov_name=>'BRAND1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT BRAND_CODE||'' - ''||BRAND_NAME display_value, QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
);
end;
/
