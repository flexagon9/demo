CREATE OR REPLACE PACKAGE nice.cust_sal AS 
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   cust_sal
--            TYPE:   Package Specification
--            ORIGINAL AUTHOR:   Chandresh Patel
--            DATE:   2/16/2021 04:26 PM 
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
--     1.0      2/11/2019    Chandresh Patel      N/A       Initial Version
-----------------------------------------------------------------------------------------------------

    PROCEDURE find_sal(e_id NUMBER); 
END cust_sal; 
/
