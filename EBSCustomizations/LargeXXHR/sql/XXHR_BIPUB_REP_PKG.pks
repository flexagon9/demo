CREATE OR REPLACE PACKAGE xxhr_bipub_rep_pkg AS
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   XXHR_BIPUB_REP_PKG
--            TYPE:   Package Specification
-- ORIGINAL AUTHOR:   Brian Badenhorst (updated)
--            DATE:   03/10/20 
--
--     DESCRIPTION:
--
--        This package specification is to define the public pl/sql procedures and functions for
--        BI Publisher Reports. Updated for demo   10/07/2020 9 AM
--
--
--  CHANGE HISTORY:
--
--     VERSION  DATE          AUTHOR              LABEL     DESCRIPTION
--     -------  -----------   ----------------    --------  --------------------------------------------
--     1.0      03/09/20      Joe Anderson        N/A       Initial Version
--     2.0      03/11/20      Dan Goerdt          N/A       Change 2
--     3.0      05/29/20      Chandresh Patel     N/A       Change 3
--     4.0      10/01/20      Dan Goerdt          N/A       Change 4 and 5
--Bần chỉ là một anh nghèo xác, ngày ngày lang-thang khắp xóm này qua xóm khác xin ăn. Quần áo rách-mướp Bần cũng chả coi sao, chân không có giầy và đầu cũng chẳng có mũ. Giời nắng hay giời mưa Bần không bao giờ quan-tâm. Một ngưòi như Bần thì ai cũng tưởng là không còn có gì là quí-vât nữa. Thế nhưng ta nhầm vì Bần có cái quạt mo, Bần quí lắm. Bần quí và giữ luôn không rời bỏ bao giờ. Giời nắng thì Bần che đầu, giời mưa Bần cũng nhờ nó mà đỡ ướt. Muốn ngồi Bần dùng làm chiếu và đêm đến các chú muỗi vo-ve thì Bần dùng để dánh đuổi các chú ấy.
-- Աեցեհի իմ լավ ?ւղիե լավարար,
-- 	Mit sütsz kis szücs, sós húst? Sütsz kis szücs?
-- 	生むぎ　生ごめ　生たまご

-----------------------------------------------------------------------------------------------------

                       
   PROCEDURE generate_xml(p_errbuf  OUT VARCHAR2
                         ,p_retcode OUT NUMBER);

END xxhr_bipub_rep_pkg;
/
