<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" style="top:27px;left:261px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="linkManData" idColumn="staff_id" confirmRefresh="false" confirmDelete="false">
   <column name="staff_id" type="String" xid="xid1"></column>
  <column name="staff_name" type="String" xid="xid2"></column>
  <column name="duty" type="String" xid="xid3"></column>
  <column name="phone" type="String" xid="xid4"></column>
  <column name="special_plane" type="String" xid="xid5"></column>
  <column name="create_staff" type="String" xid="xid6"></column>
  <column name="attention_type" type="String" xid="xid7"></column>
  <column name="is_audit" type="String" xid="xid8"></column>
  <column name="last_contract_staff" type="String" xid="xid9"></column>
  <column name="last_contract_time" type="String" xid="xid10"></column>
  <column name="client_arr" type="String" xid="xid11"></column>
  <column name="client" type="String" xid="xid12"></column>
  <column name="category" type="String" xid="xid13"></column>
  <column name="tag" type="String" xid="xid14"></column>
  <column name="is_checked" type="String" xid="xid15"></column>
  <column name="head_img" type="String" xid="xid16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="relevanceDlientData" idColumn="client_id" confirmRefresh="false" confirmDelete="false">
   <column name="client_id" type="String" xid="xid76"></column>
  <column name="client_name" type="String" xid="xid77"></column>
  <column name="choose" type="Integer" xid="xid17"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F3F4F3;"><div xid="div1" style="padding:5px 5px 5px 5px;"><div xid="div2" class="list-group-item"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object" src="" alt="" xid="image1" style="width:50px;height:45px;" bind-attr-src=' $model.linkManData.val("head_img")'></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    
  <h4 class="media-heading" xid="h42"><![CDATA[]]><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="姓名" xid="button1" style="color:#585958;font-size:16px" bind-text=' $model.linkManData.val("staff_name")'>
   <i xid="i1"></i>
   <span xid="span1">姓名</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="手机号" xid="button2" icon="icon-android-social-user">
   <i xid="i2" class="icon-android-social-user"></i>
   <span xid="span2" bind-text=' $model.linkManData.val("phone")'>手机号</span></a></h4></div> </div>
  </div></div>
  <div xid="div3" style="height:15px;"></div>
  <div xid="div4" class="list-group-item"><div class="media" xid="media2">
   
   <div class="media-body" xid="mediaBody2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="所属客户" xid="button3" style="color:#585958;font-size:16px">
   <i xid="i3"></i>
   <span xid="span3">所属客户</span></a></div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="编辑" xid="button4" onClick="button4Click">
   <i xid="i4"></i>
   <span xid="span4">编辑</span></a></div></div>
  <div xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="relevanceDlientData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div6" class="list-group-item" style="padding:5px 5px 5px 5px;;border-top-style:none;border-right-style:none;border-left-style:none;">
   <div class="media" xid="media3">
    <div class="media-body" xid="mediaBody3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="客户名称" xid="button5" style=";font-size:16px" bind-text=' val("client_name")' onClick="button5Click">
      <i xid="i6"></i>
      <span xid="span5">客户名称</span></a> </div> 
    <div class="media-right" xid="mediaRight2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="解除关联" xid="button6" onClick="button1Click" bind-visible=' val("choose")==1'>
      <i xid="i5"></i>
      <span xid="span6">解除关联</span></a> </div> </div> </div></li></ul> </div></div>
  <div xid="div7" style="text-align:center;display:none"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="关联客户" xid="button7" style="color:#585958" icon="icon-plus" onClick='{"operation":"popOver6.show"}'>
   <i xid="i7" class="icon-plus"></i>
   <span xid="span7">关联客户</span></a></div></div>
  <div xid="div8" style="height:15px;"></div>
  <div xid="div9" class="list-group-item" style="padding:0px 0px 0px 0px;"><div xid="div10" class="list-group-item"><span xid="span8" style="color:#6B6C6C;"><![CDATA[状态]]></span></div><div xid="div11" class="list-group-item"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:140px;"><![CDATA[是否成为下游人员]]></label>
   <div class="x-edit" xid="div12" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="否" xid="button8" style="color:#585958">
   <i xid="i8"></i>
   <span xid="span9">否</span></a></div></div></div>
  <div xid="div14" class="list-group-item">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2" style="width:140px;"><![CDATA[绑定外部联系人]]></label>
    <div class="x-edit" xid="div13" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="未绑定" xid="button9" style="color:#585958">
      <i xid="i9"></i>
      <span xid="span10">未绑定</span></a> </div> </div> </div></div></div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver6" anchor="bottom1" position="bottom">
   <div class="x-popOver-overlay" xid="div52"></div>
   <div class="x-popOver-content ddd" xid="div53" style="width:100%;height:30%;">
    <div xid="div54" style="height:100%;width:100%;background-color:white;">
     <div component="$UI/system/components/justep/panel/panel" class=" x-full" xid="panel6">
      <div class="x-panel-content" xid="content6">
       
       
       
       <div xid="div15" class="list-group-item" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="直接新增" xid="button10" style="color:#585958" onClick="button10Click">
   <i xid="i10"></i>
   <span xid="span11">直接新增</span></a></div>
  <div xid="div16" class="list-group-item" style="text-align:center;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="关联现有" xid="button11" style="color:#585958" onClick="button11Click">
    <i xid="i11"></i>
    <span xid="span12">关联现有</span></a> </div></div> 
      <div class="x-panel-bottom" xid="bottom6">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0px 0px 0px 0px;">
        <div class="x-col" xid="col29" style="text-align:center;"></div>
        <div class="x-col" xid="col28" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top btn-only-label" label="取消" xid="button28" icon="linear linear-phonehandset" style="color:#181919;" onClick='{"operation":"popOver6.hide"}'>
          <i xid="i28" class="linear linear-phonehandset"></i>
          <span xid="span59">取消</span></a> </div> 
        <div class="x-col" xid="col27" style="text-align:center;"></div></div> </div> </div> </div> </div> </div></div>