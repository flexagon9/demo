CREATE OR REPLACE PACKAGE xxhr_bipub_rep_pkg AS
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   XXHR_BIPUB_REP_PKG
--            TYPE:   Package Specification
-- ORIGINAL AUTHOR:   Rama Rimmalapudi (updated)
--            DATE:   03/07/20 
--
--     DESCRIPTION:
--
--        This package specification is to define the public pl/sql procedures and functions for
--        BI Publisher Reports. Updated for demo   4/30/2022 11:54 AM
--
--
--  CHANGE HISTORY:
--
--     VERSION  DATE          AUTHOR              LABEL     DESCRIPTION
--     -------  -----------   ----------------    --------  --------------------------------------------
--     1.0      03/09/20      Joe Anderson        N/A       Initial Version
--     2.0      03/11/20      Dan Goerdt          N/A       Change 2
--     3.0      05/29/20      Chandresh Patel     N/A       Change 3
--     4.0      12/28/21      Dan Goerdt          N/A       Change 4, 5, 7
--     5.0      02/22/22      Dan Goerdt          N/A       Change 8
-----------------------------------------------------------------------------------------------------

                       
   PROCEDURE generate_xml(p_errbuf  OUT VARCHAR2
                         ,p_retcode OUT NUMBER);

END xxhr_bipub_rep_pkg;
/
