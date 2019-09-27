prompt --application/shared_components/user_interface/lovs/models1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4200430191088339)
,p_lov_name=>'MODELS1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_YEAR||'' - ''||MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'from QCIS_MODEL_MASTER where INACTIVE_DATE IS NULL',
'order by 1'))
);
end;
/
