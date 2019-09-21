prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>1250430451235357
,p_default_application_id=>102
,p_default_owner=>'NICE'
);
end;
/
 
prompt APPLICATION 102 - QC2
--
-- Application Export:
--   Application:     102
--   Name:            QC2
--   Exported By:     NICE
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     248362027330078
--

-- Application Statistics:
--   Pages:                     98
--     Items:                  674
--     Computations:            10
--     Validations:             51
--     Processes:              213
--     Regions:                300
--     Buttons:                269
--     Dynamic Actions:        177
--   Shared Components:
--     Logic:
--       Items:                 26
--       Processes:              6
--     Navigation:
--       Lists:                  6
--       Breadcrumbs:            1
--         Entries:              4
--     Security:
--       Authentication:         2
--       Authorization:         10
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                11
--         Region:              15
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:              10
--         Report:              10
--       LOVs:                  23
--       Shortcuts:              1
--       Plug-ins:               3
--     Globalization:
--       Messages:               1
--     Reports:
--       Queries:                1
--       Layouts:                1
--     E-Mail:
--   Supporting Objects:  Excluded

