prompt --application/pages/page_00084
begin
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'IM Wizard'
,p_page_mode=>'MODAL'
,p_step_title=>'IM Wizard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'',
'<script type="text/javascript">',
'var canvas, ctx, flag = false,',
'    prevX = 0,',
'    currX = 0,',
'    prevY = 0,',
'    currY = 0,',
'    prex = 0,',
'    prey = 0,',
'    firstx = 0,',
'    firsty = 0,',
'    clickcount = 0,',
'    position_XY = '''',',
'    imgSrc = '''';    ',
'    dot_flag = false;',
'',
'function init() {    ',
'    canvas = document.getElementById(''can'');',
'    canvas.addEventListener("mousedown", function (e) {',
'        getPosition(e)',
'    }, false);',
'    $x(''P39_MESSAGE'').value = '''';',
'    $x(''P39_HOTSPOT_TITLE'').value = '''';',
'}',
'',
'function loadImage() {    ',
'    canvas = document.getElementById(''can'');',
'    ctx = canvas.getContext("2d");    ',
'',
'//    canvas.width = $v(''P39_IMAGE_WIDTH''); ',
'//    canvas.height = $v(''P39_IMAGE_HEIGHT'');',
'//    w = canvas.width;',
'//    h = canvas.height;',
'',
'    var canvasimg = new Image();',
'',
'//    canvasimg.src = '':APPLICATION_PROCESS=DOWNLOAD_IMAGE?p_id='' + $v(''P39_IMG_ID'');',
'//    canvasimg.src = ''bg_qcis.download_image?p_id='' + $v(''P39_IMG_ID'');',
'//    canvasimg.src = ''DOWNLOAD_IMAGE:::P_ID:'' + $v(''P39_IMG_ID'');',
'      canvasimg.src = ''f?p=2031:0:'' + $v(''pInstance'') + '':DOWNLOAD_IMAGE:::P_ID:'' + $v(''P39_IMG_ID'');',
'    canvas.width = canvasimg.naturalWidth; ',
'    canvas.height = canvasimg.naturalHeight;',
'    w = canvas.width;',
'    h = canvas.height;',
'    ctx.drawImage(canvasimg, 0 , 0);',
'    $x(''P39_XY_COORD'').value = '''';',
'    $x(''P39_MESSAGE'').value = '''';',
'//    ctx.beginPath();',
'',
'}',
'',
'function draw() {',
'    ctx.beginPath();',
'    ctx.moveTo(prevX, prevY);',
'    ctx.lineTo(currX, currY);',
'    ctx.stroke();',
'    ctx.closePath();',
'}',
'',
'      function getPosition(e)',
'      {',
'        var x = new Number();',
'        var y = new Number();',
'',
'    var rect = canvas.getBoundingClientRect();',
'//    var left = rect.left;',
'//    var right = rect.right;',
'//    var top = rect.top;',
'//    var bottom = rect.bottom;',
'//    alert("left " + left +'' - ''+ right +'' - ''+ top +'' - ''+ bottom); ',
'',
'        if (e.x != undefined && event.y != undefined)',
'        {',
'          x = e.x;',
'          y = e.y;',
'//          alert("x and y: " + x +'' - '' + y);',
'        }',
'        else // Firefox method to get the position',
'        {',
'          x = e.clientX + document.body.scrollLeft +',
'              document.documentElement.scrollLeft;',
'          y = e.clientY + document.body.scrollTop +',
'              document.documentElement.scrollTop;',
'        }',
'',
'        x -= canvas.offsetLeft;',
'        y -= canvas.offsetTop;',
'//          alert("x and y: " + x +'' - '' + y);',
'        ',
'        if (clickcount == 0)',
'        {',
'        firstx = x;',
'        firsty = y;',
'        }',
'',
'        if (clickcount != 0)',
'        {',
'        ctx.beginPath ();',
'        ctx.moveTo (prex,prey);',
'        ctx.lineTo (x,y);',
'',
'        // set line width...',
'        ctx.lineWidth = 2;',
'',
'        // set line color...',
'        ctx.strokeStyle = ''#ff0000'';  //red',
'        ctx.stroke ();',
'        }',
'        prex = x;',
'        prey = y;',
'        clickcount = clickcount + 1;',
'',
'        position_XY = position_XY + "," + x + "," + y ;',
'        document.getElementById(''P39_XY_COORD'').value = position_XY;',
'//        $s(''P39_XY_COORD'') = position_XY;',
'      $x(''P39_MESSAGE'').value = '''';',
'      }',
'',
'function closePolygon() {',
'      position_XY = '''';',
'      ctx.lineTo (firstx, firsty);',
'//      ctx.fillStyle = ''A9F5E1'';',
'//      ctx.fill();',
'//      ctx.closePath();',
'      ctx.stroke(); ',
'      clickcount = 0;',
'      $x(''P39_MESSAGE'').value = ''Polygon Closed.'';',
'}',
'',
'function findxy(res, e) {',
'    if (res == ''down'') {',
'        prevX = currX;',
'        prevY = currY;',
'        currX = e.clientX - canvas.offsetLeft;',
'        currY = e.clientY - canvas.offsetTop;',
'',
'        flag = true;',
'        dot_flag = true;',
'        if (dot_flag) {',
'            ctx.beginPath();',
'            ctx.fillStyle = x;',
'            ctx.fillRect(currX, currY, 2, 2);',
'            ctx.closePath();',
'            dot_flag = false;',
'        }',
'    }',
'    if (res == ''up'' || res == "out") {',
'        flag = false;',
'    }',
'    if (res == ''move'') {',
'        if (flag) {',
'            prevX = currX;',
'            prevY = currY;',
'            currX = e.clientX - canvas.offsetLeft;',
'            currY = e.clientY - canvas.offsetTop;',
'            draw();',
'        }',
'    }',
'}',
'</script>',
'',
'<body onload="init()">',
'</body>',
'</html>',
'',
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.maphilight.min.js"></script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'  $(''img[usemap]'').maphilight({',
'    fillColor: ''faac58'',',
'    strokeColor: ''ff6600'',',
'    strokeWidth: 1,',
'    alwaysOn: false',
'  })',
'',
'  var area = $(''#area-&P1_AREA_ID.'');',
'  if (area) {',
'    var data = area.data(''maphilight'') || {};',
'    data.alwaysOn = true;',
'    data.fillColor = ''000000'';',
'    data.strokeColor = ''000000'';',
'    area.data(''maphilight'', data).trigger(''alwaysOn.maphilight'');',
'  }',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBOWERS'
,p_last_upd_yyyymmddhh24miss=>'20190906132118'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43646777631594714)
,p_plug_name=>'Pinmap Wizard'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <head>',
'    <style>',
'      body {',
'        margin: 0px;',
'        padding: 0px;',
'      }',
'    </style>',
'  </head>',
'',
'<body>',
'',
'    <canvas id="can" width="800" height="600"style="position:relative;top:1;left:1;border:2px solid;">',
'    <center><font color="red" size="4">Warning! Your browser does not support HTML5 Canvas!</font></center>',
'    </canvas>',
'',
'<!-- commented out',
'    <p id="btncan">',
'    <input type="button" value="Close Polygon" id="btn" size="40" onclick="closePolygon()">  ',
'    </p>',
'-->',
'',
'</body>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43642802295594692)
,p_plug_name=>'Title & Coordinates'
,p_parent_plug_id=>wwv_flow_api.id(43646777631594714)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79428381810908472)
,p_plug_display_sequence=>35
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&nbsp;&nbsp;&nbsp; <span style="color:#ff0000"><B>CELL TITLE - </B>Only letters (upper and lower case), numbers,',
' space, and dash are valid characters. Length is limited to <b>30</b> characters.</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83007278401118497)
,p_plug_name=>'Template Information'
,p_parent_plug_id=>wwv_flow_api.id(43646777631594714)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79428381810908472)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26981295103449852)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43646777631594714)
,p_button_name=>'DELETE_IMAGEMAP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Delete Imagemap Data'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26981612093449854)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43646777631594714)
,p_button_name=>'LOAD_IMAGE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Load Image'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:loadImage();'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26982090444449855)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43646777631594714)
,p_button_name=>'CLOSE_POLYGON'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Close Polygon'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:closePolygon();'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26982413723449855)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(43646777631594714)
,p_button_name=>'CREATE_HOTSPOT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Create Cell'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26982861240449855)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(43646777631594714)
,p_button_name=>'COMPLETE_IMAGEMAP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Complete Imagemap'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select html_id from qcis_draft_html ',
'where draft_id = :P84_HEADER_ID and ',
'(line_nbr = 1 or line_nbr = 5);'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26983285477449856)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(43646777631594714)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Return to IM Creation Page'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26983985029449858)
,p_name=>'P84_HOTSPOT_TITLE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(43642802295594692)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Cell Title:</span>'
,p_source=>'P84_HOTSPOT_TITLE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'style="color: navy"'
,p_grid_column=>4
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26984394327449860)
,p_name=>'P84_MESSAGE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(43642802295594692)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Message:</span>'
,p_source=>'P84_MESSAGE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-size:14px;font-weight:bold;color: green"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26984710282449861)
,p_name=>'P84_XY_COORD'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(43642802295594692)
,p_use_cache_before_default=>'NO'
,p_source=>'P84_XY_COORD'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_tag_attributes=>'style="visibility: hidden;font-size:0px"'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26985452289449862)
,p_name=>'P84_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_prompt=>'Header ID'
,p_source=>'P84_HEADER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26985803333449863)
,p_name=>'P84_IMG_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Img ID'
,p_source=>'select image_id from qcis_im_template_draft where to_number(header_id) = to_number(:P84_HEADER_ID)'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26986246544449864)
,p_name=>'P84_IMAGE_WIDTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_prompt=>'Img Width'
,p_source=>'P84_IMAGE_WIDTH'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
,p_cMaxlength=>5
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26986627896449864)
,p_name=>'P84_IMAGE_HEIGHT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_prompt=>'Img Height'
,p_source=>'P84_IMAGE_HEIGHT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
,p_cMaxlength=>5
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987001977449864)
,p_name=>'P84_MODEL_YEAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Year:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_MODEL_YEAR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987491843449865)
,p_name=>'P84_MODEL_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Model:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_MODEL_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987823871449865)
,p_name=>'P84_ACC_GROUP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Acc Group:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_ACC_GROUP'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988258645449866)
,p_name=>'P84_ACCESSORY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Acc:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_ACCESSORY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988669346449866)
,p_name=>'P84_STATION_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Station:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_STATION_CODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26989054195449867)
,p_name=>'P84_SUBSTATION_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Substation:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_SUBSTATION_CODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26989484061449867)
,p_name=>'P84_IMAGE_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Image:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_IMAGE_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26989868770449867)
,p_name=>'P84_INSPECTION_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(83007278401118497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Inspection:</span>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'P84_INSPECTION_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26990394694449873)
,p_validation_name=>'P84_HOTSPOT_TITLE Required'
,p_validation_sequence=>10
,p_validation=>'P84_HOTSPOT_TITLE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Hotspot Title Required.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(26982413723449855)
,p_associated_item=>wwv_flow_api.id(26983985029449858)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26990690220449874)
,p_validation_name=>'<NOT RUN> Special characters not allowed in Hotspot Title'
,p_validation_sequence=>20
,p_validation=>'P84_HOTSPOT_TITLE'
,p_validation2=>'~,`,@,#,%,^,&,/,\,{,},[,],;,:,=,<,>,",'',|'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_NO_CHAR_IN_STRING2'
,p_error_message=>'Cell Title cannot contain special characters.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(26982413723449855)
,p_associated_item=>wwv_flow_api.id(26983985029449858)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26992540548449877)
,p_name=>'Set Image Width'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_IMG_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26993013917449878)
,p_event_id=>wwv_flow_api.id(26992540548449877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_IMAGE_WIDTH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select pixel_width from qcis_images where images_id = :P84_IMG_ID'
,p_attribute_07=>'P84_IMG_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26993516233449879)
,p_event_id=>wwv_flow_api.id(26992540548449877)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_IMAGE_HEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select pixel_height from qcis_images where images_id = :P84_IMG_ID'
,p_attribute_07=>'P84_IMG_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26993902907449879)
,p_name=>'Dynamic_Action'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26982413723449855)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26994488762449880)
,p_event_id=>wwv_flow_api.id(26993902907449879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update the CELL_TITLE column from the TITLE attribute in the HTML column.',
'',
'declare',
'v_href varchar2(10) := ''href="'';',
'v_poly varchar2(1000) := ''<area shape="poly" coords="'';',
'v_coords varchar2(1000) := '''';',
'v_fp varchar2(400) := NULL;',
'v_session integer := v(''APP_SESSION''); ',
'v_debug varchar2(50) := ''::NO::P10_HEADER_ID,P10_CELL_TITLE:'';',
'v_id varchar2(20) := NULL;',
'v_title varchar2(40) := trim(:P84_HOTSPOT_TITLE);',
'v_url varchar2(1000) := NULL;',
'v_url2 varchar2(1000) := NULL;',
'v_html varchar2(1000) := NULL;',
'v_line_nbr integer := 5;',
'',
'-- Used for special character (which give HTML trouble) check.',
'v_special_char_check integer := 1;',
'',
'-- Used for duplicate cell title check.',
'v_duplicate_cell_title_check varchar2(40) := NULL;',
' ',
'begin',
'',
'-- blank out message page item...',
'   :P84_MESSAGE := '''' ;',
'',
'-- typical html data in this table looks like this the syntax below',
'-- the first line will be entered by the user, we will append the rest',
'-- <area shape="rect" coords="178,133,222,177"',
'-- href="f?p=2031:10:168591775188478::NO::P10_HEADER_ID,P10_CELL_TITLE:854,5-4" alt="5-4" title="5-4"/>',
'',
'-- Added Nov/2017 by Tony. Check for special characters in the hotspot title, since this is run in a DA it must be done here, because a validation process will NOT work',
'-- If REGEXP_INSTR returns 0 then only character(s) in the list were found, if it is not 0 then character(s) NOT in the list were found.',
'-- So, the only valid characters are A to Z, upper and lower; numbers; space; - (dash).  Those should be sufficient for a Cell Title.  ',
'-- If others, like paren, are needed they may be added to the list, but only if they are HTML compatabile.',
'   select REGEXP_INSTR(v_title, ''[^abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789 -]'') into v_special_char_check from dual;',
'   ',
'-- check to see if the cell title entered on the page is a duplicate of an existing cell title in the draft HTML....',
'   BEGIN',
'   ',
'     select cell_title into v_duplicate_cell_title_check from qcis_draft_html where draft_id = :P84_HEADER_ID and UPPER(CELL_TITLE) = UPPER(:P84_HOTSPOT_TITLE);',
'     ',
'   EXCEPTION ',
'     WHEN OTHERS',
'       THEN NULL;',
'   END;',
'       ',
'IF v_duplicate_cell_title_check IS NULL THEN',
'',
'IF v_special_char_check = 0 THEN',
'',
'-- start by getting the f?p= part from a control record...',
'   select keyword_value into v_fp from qcis_keywords ',
'   where keyword_type = ''Control'' and keyword_code = ''URL_PATH_IM'';',
'',
'-- build the <area shape> part...',
'   v_coords := SUBSTR(:P84_XY_COORD,2);',
'   v_poly := v_poly || v_coords || ''"'';',
'',
'-- put it all together...',
'   v_id := :P84_HEADER_ID;',
'   v_url := v_href||v_fp||v_session||v_debug||v_id||'',''||v_title||''" alt="''||v_title||''" title="''||v_title||''"/>'';',
'',
'-- put the two parts together...',
'   v_url2 := v_poly||v_url;',
'',
'-- get the next line number...',
'   select (max(LINE_NBR) + 2) into v_line_nbr ',
'     from qcis_draft_html ',
'     where draft_id = :P84_HEADER_ID and cell_title IS NOT NULL;',
'',
'-- set the line number to 10 if it is NULL after the SQL above, which means it is the first line...',
'   if v_line_nbr IS NULL then ',
'       v_line_nbr := 10; ',
'   end if;',
'',
'-- now insert new row into table...',
'   INSERT INTO qcis_draft_html ',
'          (DRAFT_ID, LINE_NBR, HTML, CELL_TITLE, SESSION_ID, INACTIVE_DATE, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY) ',
'          VALUES (:P84_HEADER_ID, v_line_nbr, v_url2, v_title, v_session, NULL, SYSDATE, :APP_USER, SYSDATE, :APP_USER);',
'',
'-- return completion message...',
'   :P84_MESSAGE := ''Hotspot created.'' ;',
'   ',
'ELSE -- IF v_special_char_check = 0 THEN',
'',
'-- return completion message...',
'   :P84_MESSAGE := ''!!! Special characters in Cell Title !!!'' ;',
'   ',
'END IF; -- IF v_special_char_check = 0 THEN',
'',
'ELSE -- IF v_duplicate_cell_title_check IS NULL THEN',
'',
'   -- return completion message...',
'   :P84_MESSAGE := ''!!! Duplicate Cell Title !!!'' ;',
'',
'END IF; -- IF v_duplicate_cell_title_check IS NULL THEN',
'',
'end;'))
,p_attribute_02=>'P84_HOTSPOT_TITLE,P84_XY_COORD'
,p_attribute_03=>'P84_XY_COORD,P84_MESSAGE'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26992115966449877)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Template Draft Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'',
'  Begin',
'',
'      Select mm.model_year,',
'             mm.model_name,',
'             td.acc_group,',
'             td.accessory,',
'             sm.station_code||'' - ''||sm.station_name,',
'             ssm.substation_code||'' - ''||ssm.substation_name,',
'             im.image_name,',
'             insp.inspection_name',
'        into :P84_MODEL_YEAR,',
'             :P84_MODEL_NAME,',
'             :P84_ACC_GROUP,',
'             :P84_ACCESSORY,',
'             :P84_STATION_CODE,',
'             :P84_SUBSTATION_CODE,',
'             :P84_IMAGE_NAME, ',
'             :P84_INSPECTION_NAME  ',
'        from qcis_im_template_draft td,',
'             qcis_model_master mm,',
'             qcis_station_master sm,',
'             qcis_substation ssm,',
'             qcis_images im,',
'             qcis_inspection_names insp             ',
'       where mm.model_master_id = td.model_id and',
'             sm.station_master_id = td.station_id and',
'             ssm.substation_id = td.substation_id and',
'             im.images_id = td.image_id and ',
'             insp.inspect_name_id = td.inspect_name_id and',
'             td.header_id = :P84_HEADER_ID;',
'',
'     :P84_MESSAGE := NULL;',
'',
'    Exception',
'      When Others then',
'        :P84_MODEL_YEAR := NULL;',
'  End;',
'',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26990984052449874)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate DRAFT_HTML'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--           *** W A R N I N G ***',
'-- THIS CODE IS NOW RUN IN A DYNAMIC ACTION.',
'-- CHANGING THIS CODE HAS NO AFFECT.  IS HERE ONLY FOR HISTORY.  IS NEVER RUN.',
'',
'-- update the CELL_TITLE column from the TITLE attribute in the HTML column.',
'',
'declare',
'v_href varchar2(10) := ''href="'';',
'v_poly varchar2(400) := ''<area shape="poly" coords="'';',
'v_coords varchar2(400) := '''';',
'v_fp varchar2(200) := NULL;',
'v_session integer := v(''APP_SESSION''); ',
'v_debug varchar2(50) := ''::NO::P10_HEADER_ID,P10_CELL_TITLE:'';',
'v_id varchar2(20) := NULL;',
'v_title varchar2(40) := :P84_HOTSPOT_TITLE;',
'v_url varchar2(400) := NULL;',
'v_url2 varchar2(400) := NULL;',
'v_html varchar2(400) := NULL;',
' ',
'begin',
'-- typical html data in this table looks like this the syntax below',
'-- the first line will be entered by the user, we will append the rest',
'-- <area shape="rect" coords="178,133,222,177"',
'-- href="f?p=2031:10:168591775188478::NO::P10_HEADER_ID,P10_CELL_TITLE:854,5-4" alt="5-4" title="5-4"/>',
'',
'-- start by getting the f?p= part from a control record...',
'   select keyword_value into v_fp from qcis_keywords ',
'   where keyword_type = ''Control'' and keyword_code = ''URL_PATH_IM'';',
'',
'-- build the <area shape> part...',
'   v_coords := SUBSTR(:P84_XY_COORD,2);',
'   v_poly := v_poly || v_coords || ''"'';',
'',
'-- put it all together...',
'   v_url := v_href||v_fp||v_session||v_debug||v_id||'',''||v_title||''" alt="''||v_title||''" title="''||v_title||''"/>'';',
'',
'-- put the two parts together...',
'   v_url2 := v_poly||v_url;',
'',
'-- now insert new row into table...',
'   INSERT INTO qcis_draft_html ',
'          (DRAFT_ID, LINE_NBR, HTML, CELL_TITLE, SESSION_ID, INACTIVE_DATE, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY) ',
'          VALUES (2541, 778, v_url2, v_title, v_session, NULL, SYSDATE, :APP_USER, SYSDATE, :APP_USER);',
'end;'))
,p_process_error_message=>'Error creating hotspot.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26982413723449855)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Hotspot Line Added.'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26991372915449876)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate DRAFT_HTML Div Tags'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_line_nbr integer := 0;',
'    v_width integer := 720;',
'    v_height integer := 520; ',
'    v_url_1 varchar2(100) := NULL; ',
'    v_url_2 varchar2(100) := NULL;',
'    v_url_3 varchar2(100) := NULL;  ',
'    v_image_id integer := 0;',
'    v_html varchar(4000) := NULL;',
'    v_session integer := v(''APP_SESSION'');',
'  begin',
'',
'-- get the image id of the image map row ',
'v_image_id := :P84_IMG_ID;',
'  ',
'  BEGIN',
'  select pixel_width, pixel_height into v_width, v_height from qcis_images ',
'  where images_id = v_image_id;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    v_height := 720;',
'    v_width := 520;',
'  END;',
'',
'-- the first part of the href for the image is stored in the keyword table and put into v_url_1 for use later',
'  BEGIN',
'  select keyword_value into v_url_1 from qcis_keywords ',
'  where keyword_type = ''Control'' and keyword_code = ''URL_PATH'';',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    v_url_1 := ''f?p=2031:10:'';',
'  END;  ',
'  ',
'-- construct the first three lines of the div tag  ',
'  v_html := ''<div style="text-align:center; width:''||v_width||''px; margin-left:auto; margin-right:auto;">'';',
'  v_html := v_html || chr(10) || ''<img id="ImageMap" src="f?p=2031:0:'' || v_session || '':DOWNLOAD_IMAGE:::P_ID:''||v_image_id||''" usemap="#ImageMap" border="0" width="''||v_width||''" height="''||v_height||''" alt="" />'';',
'--  v_html := v_html || chr(10) || ''<img id="ImageMap" src="bg_qcis.download_image?p_id=''||v_image_id||''" usemap="#ImageMap" border="0" width="''||v_width||''" height="''||v_height||''" alt="" />'';',
'  v_html := v_html || chr(10) || ''<map id="_ImageMap" name="ImageMap">'';',
'  v_line_nbr := 1;',
'  insert into BG_QCIS.QCIS_DRAFT_HTML (DRAFT_ID, HTML, LINE_NBR, SESSION_ID) values(:P84_HEADER_ID, v_html, v_line_nbr, v_session);   ',
'  v_html := NULL;',
'   ',
'  v_html := ''</div>''; ',
'  v_line_nbr := 995;',
'  insert into BG_QCIS.QCIS_DRAFT_HTML (DRAFT_ID, HTML, LINE_NBR, SESSION_ID) values(:P84_HEADER_ID, v_html, v_line_nbr, v_session); ',
'  v_html := NULL;',
'',
'   :P84_MESSAGE := ''Imagemap Created.'';',
'   ',
'END;'))
,p_process_error_message=>'Imagemap Creation Failure.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26982861240449855)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26991730639449876)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete DRAFT_ID Rows'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'-- first delete the components, the children of the HTML line(s)...',
'delete from qcis_cell_comp_draft ',
'where draft_id in ',
'(select html_id from bg_qcis.qcis_draft_html ',
'where draft_id = :P84_HEADER_ID);',
'',
'-- second, delete the HTML line(s)...',
'delete from bg_qcis.qcis_draft_html ',
'where DRAFT_ID = :P84_HEADER_ID;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26981295103449852)
);
end;
/
