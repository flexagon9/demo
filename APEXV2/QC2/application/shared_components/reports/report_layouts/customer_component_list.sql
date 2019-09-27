prompt --application/shared_components/reports/report_layouts/customer_component_list
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version="1.0" encoding="UTF-8"?>'||wwv_flow.LF||
'<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/199';
    wwv_flow_api.g_varchar2_table(2) := '9/XSL/Transform" xmlns:j4lext="xalan://com.java4less.xreport.fop.XLSTExtension" extension-element-pr';
    wwv_flow_api.g_varchar2_table(3) := 'efixes="j4lext"  >'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'<xsl:variable name="_XDOFOPOS" select="''''"/>'||wwv_flow.LF||
'    <xsl:variable name="_XDOFOPOS';
    wwv_flow_api.g_varchar2_table(4) := '2" select="number(1)"/>'||wwv_flow.LF||
'    <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'    <xsl:variable ';
    wwv_flow_api.g_varchar2_table(5) := 'name="_XDOFOOSTOTAL" select="number(0)"/>'||wwv_flow.LF||
'	'||wwv_flow.LF||
'	<xsl:attribute-set name="border">'||wwv_flow.LF||
'      <xsl:attribute ';
    wwv_flow_api.g_varchar2_table(6) := 'name="border-top">1pt solid black</xsl:attribute>'||wwv_flow.LF||
'        <xsl:attribute name="border-bottom">1pt so';
    wwv_flow_api.g_varchar2_table(7) := 'lid black</xsl:attribute>'||wwv_flow.LF||
'        <xsl:attribute name="border-start-width">1pt</xsl:attribute>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(8) := '   <xsl:attribute name="border-start-color">black</xsl:attribute>'||wwv_flow.LF||
'        <xsl:attribute name="borde';
    wwv_flow_api.g_varchar2_table(9) := 'r-start-style">solid</xsl:attribute>'||wwv_flow.LF||
'        <xsl:attribute name="border-end-width">1pt</xsl:attribu';
    wwv_flow_api.g_varchar2_table(10) := 'te>'||wwv_flow.LF||
'        <xsl:attribute name="border-end-color">black</xsl:attribute>'||wwv_flow.LF||
'        <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(11) := '="border-end-style">solid</xsl:attribute>'||wwv_flow.LF||
'    </xsl:attribute-set>'||wwv_flow.LF||
' '||wwv_flow.LF||
'    <xsl:attribute-set name="ce';
    wwv_flow_api.g_varchar2_table(12) := 'll-q4">'||wwv_flow.LF||
'       <xsl:attribute name="font-size">10pt</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name="font';
    wwv_flow_api.g_varchar2_table(13) := '-family">Times</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name="border-width">0.2mm</xsl:attribute>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(14) := '  <xsl:attribute name="border-style">solid</xsl:attribute>'||wwv_flow.LF||
'    </xsl:attribute-set>'||wwv_flow.LF||
'	'||wwv_flow.LF||
'	<xsl:attribut';
    wwv_flow_api.g_varchar2_table(15) := 'e-set name="cell-q5">'||wwv_flow.LF||
'       <xsl:attribute name="background-color">white</xsl:attribute>'||wwv_flow.LF||
'       <xs';
    wwv_flow_api.g_varchar2_table(16) := 'l:attribute name="color">black</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name="padding-start">1pt</xsl:a';
    wwv_flow_api.g_varchar2_table(17) := 'ttribute>'||wwv_flow.LF||
'       <xsl:attribute name="vertical-align">top</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(18) := '="padding-top">1pt</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name="padding-end">0</xsl:attribute>'||wwv_flow.LF||
'      ';
    wwv_flow_api.g_varchar2_table(19) := ' <xsl:attribute name="number-columns-spanned">1</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name="height">';
    wwv_flow_api.g_varchar2_table(20) := '8pt</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attribute name="padding-bottom">1pt</xsl:attribute>'||wwv_flow.LF||
'       <xsl:attr';
    wwv_flow_api.g_varchar2_table(21) := 'ibute name="font-size">8pt</xsl:attribute>'||wwv_flow.LF||
'	   <xsl:attribute name="font-family">Times</xsl:attribut';
    wwv_flow_api.g_varchar2_table(22) := 'e>'||wwv_flow.LF||
'       <xsl:attribute name="font-weight">normal</xsl:attribute>'||wwv_flow.LF||
'    </xsl:attribute-set>'||wwv_flow.LF||
'	'||wwv_flow.LF||
'	<xsl:';
    wwv_flow_api.g_varchar2_table(23) := 'attribute-set name="header-color">'||wwv_flow.LF||
'         <xsl:attribute name="background-color">white</xsl:attrib';
    wwv_flow_api.g_varchar2_table(24) := 'ute>'||wwv_flow.LF||
'         <xsl:attribute name="color">black</xsl:attribute>'||wwv_flow.LF||
'		 <xsl:attribute name="font-family"';
    wwv_flow_api.g_varchar2_table(25) := '>arial</xsl:attribute>'||wwv_flow.LF||
'         <xsl:attribute name="font-size">10pt</xsl:attribute>'||wwv_flow.LF||
'         <xsl:a';
    wwv_flow_api.g_varchar2_table(26) := 'ttribute name="font-weight">bold</xsl:attribute>'||wwv_flow.LF||
'    </xsl:attribute-set>'||wwv_flow.LF||
''||wwv_flow.LF||
'	'||wwv_flow.LF||
' <xsl:template match="/';
    wwv_flow_api.g_varchar2_table(27) := '">'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">'||wwv_flow.LF||
'        <fo:layout-master-set>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(28) := '          <fo:simple-page-master master-name="A4" margin-left="10mm" margin-right="10mm" page-height';
    wwv_flow_api.g_varchar2_table(29) := '="11.0in" page-width="8.5in" margin-top=".25in" margin-bottom=".25in">'||wwv_flow.LF||
'                <fo:region-be';
    wwv_flow_api.g_varchar2_table(30) := 'fore region-name="region-header" extent="24.0pt"/>'||wwv_flow.LF||
'                <fo:region-body region-name="regi';
    wwv_flow_api.g_varchar2_table(31) := 'on-body" margin-top="24.0pt" margin-bottom="24.0pt"/>'||wwv_flow.LF||
'                <fo:region-after region-name="';
    wwv_flow_api.g_varchar2_table(32) := 'region-footer" extent="24.0pt" display-align="after"/>'||wwv_flow.LF||
'            </fo:simple-page-master>'||wwv_flow.LF||
'      </';
    wwv_flow_api.g_varchar2_table(33) := 'fo:layout-master-set>'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    <fo:page-sequence master-reference="A4">'||wwv_flow.LF||
'        <xsl:variable name="';
    wwv_flow_api.g_varchar2_table(34) := '_PW" select="number(842)"/>'||wwv_flow.LF||
'        <xsl:variable name="_PH" select="number(595)"/>'||wwv_flow.LF||
'        <xsl:var';
    wwv_flow_api.g_varchar2_table(35) := 'iable name="_ML" select="number(72.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_MR" select="number(72.0)"/>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(36) := '      <xsl:variable name="_MT" select="number(90.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_MB" select="numb';
    wwv_flow_api.g_varchar2_table(37) := 'er(90.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_HY" select="number(36.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_FY';
    wwv_flow_api.g_varchar2_table(38) := '" select="number(36.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_SECTION_NAME" select="string(''A4'')"/>'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	   '||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(39) := '<!-- get logo --> 		'||wwv_flow.LF||
'    <fo:flow flow-name="region-body">'||wwv_flow.LF||
'     '||wwv_flow.LF||
'        <xsl:if test="DOCUMENT/DATA';
    wwv_flow_api.g_varchar2_table(40) := '/ROWSET1/ROWSET1_ROW | /DATA/ROWSET1/ROWSET1_ROW">'||wwv_flow.LF||
'            <xsl:for-each select="DOCUMENT/DATA/R';
    wwv_flow_api.g_varchar2_table(41) := 'OWSET1/ROWSET1_ROW | /DATA/ROWSET1/ROWSET1_ROW">'||wwv_flow.LF||
'                <fo:block text-align="center" width';
    wwv_flow_api.g_varchar2_table(42) := '="20px" height="20px" white-space-collapse="true">'||wwv_flow.LF||
'  '||wwv_flow.LF||
'                <xsl:element name="fo:external';
    wwv_flow_api.g_varchar2_table(43) := '-graphic">'||wwv_flow.LF||
'                    <xsl:attribute name="src">'||wwv_flow.LF||
'			'||wwv_flow.LF||
'                        <xsl:value-of ';
    wwv_flow_api.g_varchar2_table(44) := 'select="P1_LOGO" /> '||wwv_flow.LF||
'                    </xsl:attribute>'||wwv_flow.LF||
'                </xsl:element>'||wwv_flow.LF||
' '||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(45) := '       <fo:block color="white">.</fo:block>'||wwv_flow.LF||
'		        <fo:block color="white">.</fo:block>'||wwv_flow.LF||
'       '||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(46) := '               </fo:block>'||wwv_flow.LF||
'            </xsl:for-each>'||wwv_flow.LF||
'        </xsl:if>'||wwv_flow.LF||
'<!-- END get logo --> '||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(47) := '       <fo:block font-weight="normal" font-size="14pt" font-family="courier" text-align="center" col';
    wwv_flow_api.g_varchar2_table(48) := 'or="red" text-decoration="none" font-style="normal">Customer Copy</fo:block>'||wwv_flow.LF||
'			 			 		 '||wwv_flow.LF||
'        <fo';
    wwv_flow_api.g_varchar2_table(49) := ':block color="white">.</fo:block>'||wwv_flow.LF||
'	    <fo:block color="white">.</fo:block>'||wwv_flow.LF||
'			 '||wwv_flow.LF||
'			 '||wwv_flow.LF||
'			 '||wwv_flow.LF||
'<!-- STAR';
    wwv_flow_api.g_varchar2_table(50) := 'T get Header --> 			 '||wwv_flow.LF||
'	    <xsl:variable name="BRAND_TITLE" select="DOCUMENT/DATA/ROWSET1/ROWSET1_RO';
    wwv_flow_api.g_varchar2_table(51) := 'W/HDG1"/>'||wwv_flow.LF||
'		<fo:block font-weight="bold" font-size="10pt" font-family="courier" color="black" text-d';
    wwv_flow_api.g_varchar2_table(52) := 'ecoration="none" font-style="normal">'||wwv_flow.LF||
'			<xsl:value-of select="$BRAND_TITLE" />  '||wwv_flow.LF||
'		</fo:block>'||wwv_flow.LF||
'<!--';
    wwv_flow_api.g_varchar2_table(53) := ' END get Header --> '||wwv_flow.LF||
'		'||wwv_flow.LF||
'			 '||wwv_flow.LF||
'			 '||wwv_flow.LF||
'			<fo:block xsl:use-attribute-sets="padding">'||wwv_flow.LF||
'			'||wwv_flow.LF||
'			   <fo:block';
    wwv_flow_api.g_varchar2_table(54) := ' color="white">.</fo:block> '||wwv_flow.LF||
'			   <fo:block color="white">.</fo:block>'||wwv_flow.LF||
'               <fo:table sta';
    wwv_flow_api.g_varchar2_table(55) := 'rt-indent="0.0pt" width="190">'||wwv_flow.LF||
'                     <xsl:variable name="_XDOFOPOS2" select="number(1';
    wwv_flow_api.g_varchar2_table(56) := ')"/>'||wwv_flow.LF||
'                     <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'                 <fo';
    wwv_flow_api.g_varchar2_table(57) := ':table-column column-width="40mm"/> '||wwv_flow.LF||
'                 <fo:table-column column-width="50mm"/> '||wwv_flow.LF||
'				 <';
    wwv_flow_api.g_varchar2_table(58) := 'fo:table-column column-width="30mm"/> '||wwv_flow.LF||
'                 <fo:table-column column-width="30mm"/> '||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(59) := '             <fo:table-column column-width="40mm"/> '||wwv_flow.LF||
''||wwv_flow.LF||
'<!-- START get Conditional values for showing ';
    wwv_flow_api.g_varchar2_table(60) := 'fields --> 				'||wwv_flow.LF||
'        <xsl:variable name="Product_Brand_Count" select="DOCUMENT/DATA/ROWSET3/ROWSE';
    wwv_flow_api.g_varchar2_table(61) := 'T3_ROW/PRODUCT_BRAND"/>'||wwv_flow.LF||
'		<xsl:variable name="Product_Model_Count" select="DOCUMENT/DATA/ROWSET3/ROW';
    wwv_flow_api.g_varchar2_table(62) := 'SET3_ROW/PRODUCT_MODEL"/>'||wwv_flow.LF||
'		<xsl:variable name="Comments_Count"      select="DOCUMENT/DATA/ROWSET3/R';
    wwv_flow_api.g_varchar2_table(63) := 'OWSET3_ROW/COMMENTS"/>'||wwv_flow.LF||
'		'||wwv_flow.LF||
'<!-- START get Details--> '||wwv_flow.LF||
'        <fo:table-header> '||wwv_flow.LF||
'		    <fo:table-row>';
    wwv_flow_api.g_varchar2_table(64) := ''||wwv_flow.LF||
'                <fo:table-cell xsl:use-attribute-sets="header-color"><fo:block>Description</fo:bloc';
    wwv_flow_api.g_varchar2_table(65) := 'k></fo:table-cell>'||wwv_flow.LF||
'                <fo:table-cell xsl:use-attribute-sets="header-color"><fo:block>Va';
    wwv_flow_api.g_varchar2_table(66) := 'lue</fo:block></fo:table-cell>'||wwv_flow.LF||
'                       '||wwv_flow.LF||
'					   '||wwv_flow.LF||
'			<xsl:if test="$Product_Brand_Coun';
    wwv_flow_api.g_varchar2_table(67) := 't!=0">'||wwv_flow.LF||
'				<fo:table-cell xsl:use-attribute-sets="header-color">'||wwv_flow.LF||
'					<fo:block>Product Brand</fo:bl';
    wwv_flow_api.g_varchar2_table(68) := 'ock>'||wwv_flow.LF||
'				</fo:table-cell>                       '||wwv_flow.LF||
'			</xsl:if>'||wwv_flow.LF||
'					   '||wwv_flow.LF||
'			<xsl:if test="$Product_Mod';
    wwv_flow_api.g_varchar2_table(69) := 'el_Count!=0">'||wwv_flow.LF||
'                <fo:table-cell xsl:use-attribute-sets="header-color">'||wwv_flow.LF||
'				    <fo:bloc';
    wwv_flow_api.g_varchar2_table(70) := 'k>Product Model</fo:block>'||wwv_flow.LF||
'				</fo:table-cell>'||wwv_flow.LF||
'            </xsl:if>						   '||wwv_flow.LF||
'					     				   '||wwv_flow.LF||
'			';
    wwv_flow_api.g_varchar2_table(71) := '<xsl:if test="$Comments_Count!=0">'||wwv_flow.LF||
'                <fo:table-cell xsl:use-attribute-sets="header-col';
    wwv_flow_api.g_varchar2_table(72) := 'or">'||wwv_flow.LF||
'					<fo:block>Comments</fo:block>'||wwv_flow.LF||
'				</fo:table-cell>   '||wwv_flow.LF||
'            </xsl:if>						   '||wwv_flow.LF||
'					';
    wwv_flow_api.g_varchar2_table(73) := '      '||wwv_flow.LF||
'<!-- END get Conditional values for showing fields --> 					   '||wwv_flow.LF||
'					                  					'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(74) := '					</fo:table-row>'||wwv_flow.LF||
'                </fo:table-header>'||wwv_flow.LF||
'<!-- END get Details--> 				'||wwv_flow.LF||
'				'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(75) := '      <fo:block>'||wwv_flow.LF||
'                   <fo:leader leader-pattern="space" leader-length="1.0cm" /> '||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(76) := '            </fo:block>'||wwv_flow.LF||
'				'||wwv_flow.LF||
'                <fo:table-body> '||wwv_flow.LF||
'			       <xsl:for-each select="DOCUME';
    wwv_flow_api.g_varchar2_table(77) := 'NT/DATA/ROWSET2/ROWSET2_ROW"><!-- start of second query to get detail --> '||wwv_flow.LF||
'                    <fo:t';
    wwv_flow_api.g_varchar2_table(78) := 'able-row>'||wwv_flow.LF||
'                       <fo:table-cell>'||wwv_flow.LF||
'					      		<fo:block margin-left="0.0cm" white-sp';
    wwv_flow_api.g_varchar2_table(79) := 'ace-collapse="false" margin-right="0.1cm"  margin-top="0.0cm"  font-size="8pt" font-weight="normal" ';
    wwv_flow_api.g_varchar2_table(80) := ' font-family="Times"  color="#000000"  text-align="left"> <xsl:value-of select="DESCRIPTION"></xsl:v';
    wwv_flow_api.g_varchar2_table(81) := 'alue-of></fo:block>'||wwv_flow.LF||
'					   </fo:table-cell>'||wwv_flow.LF||
'					   <fo:table-cell>'||wwv_flow.LF||
'					      		<fo:block margin-l';
    wwv_flow_api.g_varchar2_table(82) := 'eft="0.0cm" white-space-collapse="false" margin-right="0.1cm"  margin-top="0.0cm"  font-size="8pt" f';
    wwv_flow_api.g_varchar2_table(83) := 'ont-weight="normal"  font-family="Times"  color="#000000"  text-align="left"> <xsl:value-of select="';
    wwv_flow_api.g_varchar2_table(84) := 'VD_VALUE"></xsl:value-of></fo:block>'||wwv_flow.LF||
'					   </fo:table-cell>'||wwv_flow.LF||
'					   '||wwv_flow.LF||
'					   <xsl:if test="$Produc';
    wwv_flow_api.g_varchar2_table(85) := 't_Brand_Count!=0">'||wwv_flow.LF||
'					   <fo:table-cell>'||wwv_flow.LF||
'					      		<fo:block margin-left="0.0cm" white-space-co';
    wwv_flow_api.g_varchar2_table(86) := 'llapse="false" margin-right="0.1cm"  margin-top="0.0cm"  font-size="8pt" font-weight="normal"  font-';
    wwv_flow_api.g_varchar2_table(87) := 'family="Times"  color="#000000"  text-align="left"> <xsl:value-of select="PRODUCT_BRAND"></xsl:value';
    wwv_flow_api.g_varchar2_table(88) := '-of></fo:block>'||wwv_flow.LF||
'					   </fo:table-cell>'||wwv_flow.LF||
'					   </xsl:if>'||wwv_flow.LF||
'					   '||wwv_flow.LF||
'					   <xsl:if test="$Product_M';
    wwv_flow_api.g_varchar2_table(89) := 'odel_Count!=0">'||wwv_flow.LF||
'					   <fo:table-cell>'||wwv_flow.LF||
'					      		<fo:block margin-left="0.0cm" white-space-colla';
    wwv_flow_api.g_varchar2_table(90) := 'pse="false" margin-right="0.1cm"  margin-top="0.0cm"  font-size="8pt" font-weight="normal"  font-fam';
    wwv_flow_api.g_varchar2_table(91) := 'ily="Times"  color="#000000"  text-align="left"> <xsl:value-of select="PRODUCT_MODEL"></xsl:value-of';
    wwv_flow_api.g_varchar2_table(92) := '></fo:block>'||wwv_flow.LF||
'					   </fo:table-cell>'||wwv_flow.LF||
'					   </xsl:if>'||wwv_flow.LF||
'					   '||wwv_flow.LF||
'					   '||wwv_flow.LF||
'					   <xsl:if test="$Com';
    wwv_flow_api.g_varchar2_table(93) := 'ments_Count!=0">'||wwv_flow.LF||
'					   <fo:table-cell>'||wwv_flow.LF||
'					      		<fo:block margin-left="0.0cm" white-space-coll';
    wwv_flow_api.g_varchar2_table(94) := 'apse="false" margin-right="0.1cm"  margin-top="0.0cm"  font-size="8pt" font-weight="normal"  font-fa';
    wwv_flow_api.g_varchar2_table(95) := 'mily="Times"  color="#000000"  text-align="left"> <xsl:value-of select="COMMENTS"></xsl:value-of></f';
    wwv_flow_api.g_varchar2_table(96) := 'o:block>'||wwv_flow.LF||
'					   </fo:table-cell>'||wwv_flow.LF||
'					   </xsl:if>'||wwv_flow.LF||
'					   '||wwv_flow.LF||
'					   '||wwv_flow.LF||
'                   </fo:table-';
    wwv_flow_api.g_varchar2_table(97) := 'row>'||wwv_flow.LF||
'                  </xsl:for-each> <!-- end of second query  -->'||wwv_flow.LF||
'			    </fo:table-body> '||wwv_flow.LF||
'			  <';
    wwv_flow_api.g_varchar2_table(98) := '/fo:table> '||wwv_flow.LF||
'			 </fo:block>'||wwv_flow.LF||
'			 '||wwv_flow.LF||
'	'||wwv_flow.LF||
'         </fo:flow>'||wwv_flow.LF||
'		 '||wwv_flow.LF||
'		 '||wwv_flow.LF||
'		 '||wwv_flow.LF||
'    </fo:page-sequence>'||wwv_flow.LF||
'    </fo:';
    wwv_flow_api.g_varchar2_table(99) := 'root>'||wwv_flow.LF||
'</xsl:template>'||wwv_flow.LF||
'</xsl:transform>';
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(26711397258995658)
,p_report_layout_name=>'CUSTOMER_COMPONENT_LIST'
,p_report_layout_type=>'RTF_FILE'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
);
end;
/
