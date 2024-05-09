CREATE OR REPLACE PACKAGE xxhr_bipub_rep_pkg AS
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   XXHR_BIPUB_REP_PKG
--            TYPE:   Package Specification
-- ORIGINAL AUTHOR:   Joe Anderson
--            DATE:   3/7/2020
--
--     DESCRIPTION:
--
--        This package specification is to define the public pl/sql procedures and functions for
--        BI Publisher Reports
--  test 4
--
--  CHANGE HISTORY:
--
--     VERSION  DATE          AUTHOR              LABEL     DESCRIPTION
--     -------  -----------   ----------------    --------  --------------------------------------------
--     1.0      03/07/2020    Joe Anderson        N/A       Initial Version
--     2.0      03/12/2021    Dan Goerdt          N/A       Inject the issue/failure
-----------------------------------------------------------------------------------------------------
--prod
                       
   PROCEDURE generate_xml(p_errbuf  OUT VARCHAR2
                         ,p_retcode OUT NUMBER);

END xxhr_bipub_rep_pkg;
/
