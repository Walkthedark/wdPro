<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="relevanceDlientData" idColumn="client_id" confirmRefresh="false" confirmDelete="false">
   <column name="client_id" type="String" xid="xid76"></column>
   <column name="client_name" type="String" xid="xid77"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F3F4F3;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="relevanceDlientData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1" class="list-group-item"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="客户名称" xid="button2" style="color:#585958;font-size:16px" bind-text=' val("client_name")'>
   <i xid="i2"></i>
   <span xid="span2">客户名称</span></a></div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="解除关联" xid="button1" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1">解除关联</span></a></div></div></div></li></ul> </div></div></div></div>