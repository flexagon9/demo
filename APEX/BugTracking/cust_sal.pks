CREATE OR REPLACE PACKAGE nice.cust_sal AS 
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   cust_sal
--            TYPE:   Package Specification
--            ORIGINAL AUTHOR:   Chandresh Patel
--            DATE:   4/17/2021 2:45 PM
--
--     DESCRIPTION:
--
--        This package specification is to define the public pl/sql procedures and functions.
--
--
--  CHANGE HISTORY:
--
--     VERSION  DATE          AUTHOR              LABEL     DESCRIPTION
--     -------  -----------   ----------------    --------  -----------------------------------------
--     1.0      2/11/2022    Chandresh Patel      N/A       Initial Version
--     2.0      2/18/2022    Dan Goerdt           N/A       Made a change 2
-----------------------------------------------------------------------------------------------------

    PROCEDURE find_sal(e_id NUMBER); 
END cust_sal; 
/
