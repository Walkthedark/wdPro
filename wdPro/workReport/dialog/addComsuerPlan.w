<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="rlinkManList" idColumn="client_id" confirmDelete="false">
   <column name="client_id" type="String" xid="xid1"></column>
   <column name="client_name" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ListData" idColumn="staff_id" confirmDelete="false">
   <column name="client" type="String" xid="column3"></column>
   <column name="duty" type="String" xid="column4"></column>
   <column name="head_img" type="String" xid="xid3"></column>
   <column name="staff_id" type="String" xid="xid4"></column>
   <column name="staff_name" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="client" idColumn="staff_id">
   <column name="staff_id" type="String" xid="column1"></column>
   <column name="staff_name" type="String" xid="column2"></column>
   <column name="choose" type="Integer" xid="column5"></column>
   <column name="department_name" type="String" xid="column6"></column>
   <column name="head_img" type="String" xid="column7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imageData" idColumn="id"><column name="id" type="String" xid="xid6"></column>
  <column name="url" type="String" xid="xid7"></column></div></div> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F3F4F3;"><div xid="div1" class="list-group-item">
  <div xid="div2"><label xid="label1" class="x-label" style="font-weight:bold;"><![CDATA[汇报内容]]></label></div>
  <div xid="div3"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:40px;border-style:none none none none;"></textarea></div></div>
  <div xid="div6" class="list-group-item">
   <div xid="div5">
    <label xid="label4" class="x-label" style="font-weight:bold;"><![CDATA[开始时间]]></label></div> 
   <div xid="div4">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" dataType="Date" style="border-style:none none none none;"></input></div> </div>
  <div xid="div13" class="list-group-item">
   <div xid="div14">
    <label xid="label7" class="x-label" style="font-weight:bold;"><![CDATA[结束时间]]></label></div> 
   <div xid="div15">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4" dataType="Date" style="border-style:none none none none;"></input></div> </div>
  
  <div xid="div27"><div xid="div7" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;border-top-style:none;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="添加关联附件" xid="button1" icon="dataControl dataControl-plus" onClick="button1Click">
   <i xid="i1" class="dataControl dataControl-plus"></i>
   <span xid="span1" style="color:#2D2D2D;font-weight:bold;">添加关联附件</span></a>
  </div><div xid="div25" style="width:100%;background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="imageData">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li5"><div xid="div26">
   <img src="$UI/wdPro/common/img/head4.jpeg" alt="" class="img-responsive" xid="image4" style="margin-top:5px;width:61px;height:61px;" bind-attr-src='val("url")'></img>
   </div></li></ul> </div></div></div>
  <div xid="div28"><div xid="div8" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="添加关联客户" xid="button2" icon="dataControl dataControl-plus" onClick="button2Click">
    <i xid="i2" class="dataControl dataControl-plus"></i>
    <span xid="span2" style="color:#2D2D2D;font-weight:bold;">添加关联客户</span></a> 
  </div><div xid="div20" style="background-color:white;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="rlinkManList">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1">
      <div xid="div21" style="padding:5px 5px 5px 5px;" class="list-group-item">
       <div class="media" xid="media1">
        <div class="media-left" xid="mediaLeft1">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="linear linear-trash" style="color:#181919;" onClick="button4Click">
          <i xid="i7" class="linear linear-trash"></i>
          <span xid="span7"></span></a> </div> 
        <div class="media-body" xid="mediaBody1">
         <h4 xid="h41" bind-text=' val("client_name")' style="color:#181919;"></h4></div> </div> </div> </li> </ul> </div> </div></div>
  <div xid="div29"><div xid="div10" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;border-bottom-style:none;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="添加关联联系人" xid="button3" icon="dataControl dataControl-plus" onClick="button3Click">
    <i xid="i3" class="dataControl dataControl-plus"></i>
    <span xid="span3" style="color:#2D2D2D;font-weight:bold;">添加关联联系人</span></a> 
  
  </div><div xid="div18" style="background-color:white;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="ListData">
    <ul class="x-list-template" xid="listTemplateUl2">
     <li xid="li2">
      <div xid="div17" style="padding:5px 5px 5px 5px;" class="list-group-item">
       <div class="media" xid="media2">
        <div class="media-left" xid="mediaLeft2">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="linear linear-trash" style="color:#181919;" onClick="button5Click">
          <i xid="i4" class="linear linear-trash"></i>
          <span xid="span4"></span></a> </div> 
        <div class="media-body" xid="mediaBody2">
         <h4 xid="h42" bind-text=' val("staff_name")' style="color:#181919;"></h4></div> </div> </div> </li> </ul> </div> </div></div><div xid="div11" style="height:10px;"></div><div xid="div12" class="list-group-item"><div xid="div16">
   <label xid="label2" class="x-label" style="font-weight:bold;"><![CDATA[抄送]]></label>
  </div>
  <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="threeClassList" data="client" dataItemAlias="threeClassRow">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" class="col col-xs-3 text-center tb-listBox text-black">
     <div xid="div19">
      <img src="$UI/wdPro/common/img/head4.jpeg" alt="" class="img-responsive" xid="image2" style=";margin-top:5px;width:61px;height:61px;"></img>
  <h5 xid="h51" bind-text=' val("staff_name")' style="text-align:left;">h5</h5></div> </li> </ul> </div><div xid="div22" class="col col-xs-3 text-center tb-listBox text-black" align="left" style="text-align:left;"><img src="$UI/wdPro/common/img/add.png" alt="" xid="image1" style="border-style:dotted dotted dotted dotted;border-width:thin thin thin thin;border-color:#D0D0D0 #D0D0D0 #D0D0D0 #D0D0D0;margin-top:5px;width:61px;height:61px;" bind-click="image1Click"></img>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3"></div></div></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="保存" xid="button6" onClick="button6Click" style="color:white;background-color:#4B76AE;">
    <i xid="i6"></i>
    <span xid="span6">保存</span></a> </div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="alreadyWinDialog" src="$UI/wdPro/contactPep/dialog/dialog/linkManPop.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="linkWinDialog" src="$UI/wdPro/workReport/dialog/dialog/staffList.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="addTongWinDialog" src="$UI/wdPro/workReport/dialog/dialog/addTongshi.w" forceRefreshOnOpen="true"></span></div>