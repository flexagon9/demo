SELECT '神奈川県綾瀬市' FROM V$NLS_PARAMETERS;

select VALUE from nls_database_parameters where parameter='NLS_CHARACTERSET';

CREATE OR REPLACE PACKAGE BODY xxdon_sample_japanese_pkg IS 

PROCEDURE dummy IS 

l_my_japanese_string VARCHAR2(4000);

BEGIN 

  l_my_japanese_string := '神奈川県綾瀬市小園１１１６　相模事業所内　（株）日立産機システム　グローバル部品センタ';
 
END;

END;
/
