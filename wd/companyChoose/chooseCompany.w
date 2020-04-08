<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
<title>请选择公司</title>
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="client_id"><column name="client_id" type="String" xid="xid1"></column>
  <column name="client_name" type="String" xid="xid2"></column>
  <column name="system_id" type="String" xid="xid3"></column>
  <column name="create_time" type="String" xid="xid4"></column>
  <column name="database_id" type="String" xid="xid5"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1">
  <div xid="div1" class="list-group-item" style="padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   
   <div class="x-col" xid="col3"><span xid="span3" bind-text='val("client_name")' style="font-family:“Microsoft YaHei”;font-size:16px;"></span></div><div class="x-col x-col-25" xid="col2"><i xid="i3" class="e-commerce e-commerce-gou" style="color:#12BEFF;" bind-visible=' val("client_id") == $model.data1.val("client_id")'></i></div></div></div></li></ul> </div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="button1" style="background-color:#ff4400;color:#FFFFFF;" onClick="button1Click">
    <i xid="i1"></i>
    <span xid="span1">确定</span></a> 
   </div></div></div></div></div></div>