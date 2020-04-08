<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="regionData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cityData" idColumn="id"><column name="id" type="String" xid="xid3"></column>
  <column name="name" type="String" xid="xid4"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="areaData" idColumn="id"><column name="id" type="String" xid="xid5"></column>
  <column name="name" type="String" xid="xid6"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
   <div class="x-panel-top" xid="top6"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group " tabbed="true" xid="buttonGroup1" style="height:100%;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="选择省/直辖市" xid="button5" target="content12" style="color:#404040;font-size:16px;" onClick="button5Click">
    <i xid="i7"></i>
    <span xid="span9">选择省/直辖市</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="选择市" xid="button6" target="content13" style="display:none;color:#404040;font-size:16px;" onClick="button6Click">
    <i xid="i8"></i>
    <span xid="span10">选择市</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="选择镇/区" xid="button7" target="content14" style="display:none;color:#404040;font-size:16px;">
   <i xid="i9"></i>
   <span xid="span11">选择镇/区</span></a></div></div>
   <div class="x-panel-content" xid="content11"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents6" swipe="false" wrap="false" routable="false">
   <div class="x-contents-content" xid="content12"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="regionData">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li14" bind-click="li14Click">
     <div xid="div11" class="list-group-item" style="padding:0px 0px 0px 0px;border-style:none none none none;" bind-css="{'current2':val(&quot;id&quot;) == $model.regionData.val(&quot;id&quot;)}">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
       <div class="x-col" xid="col7">
        <span xid="span5" bind-text='val("name")' style="font-family:“Microsoft YaHei”;font-size:16px;"></span></div> 
       <div class="x-col x-col-25" xid="col8">
        <i xid="i3" class="e-commerce e-commerce-gou" style="color:#FF6C21;" bind-visible=' val("id") == $model.regionData.val("id")'></i></div> </div> </div> </li> </ul> </div></div>
  <div class="x-contents-content" xid="content13"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list7" data="cityData">
   <ul class="x-list-template" xid="listTemplateUl7">
    <li xid="li19" bind-click="li19Click">
     <div xid="div14" class="list-group-item" style="padding:0px 0px 0px 0px;border-style:none none none none;" bind-css="{'current2':val(&quot;id&quot;) == $model.cityData.val(&quot;id&quot;)}">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
       <div class="x-col" xid="col12">
        <span xid="span12" bind-text='val("name")' style="font-family:“Microsoft YaHei”;font-size:16px;"></span></div> 
       <div class="x-col x-col-25" xid="col11">
        <i xid="i10" class="e-commerce e-commerce-gou" style="color:#FF6C21;" bind-visible=' val("id") == $model.cityData.val("id")'></i></div> </div> </div> </li> </ul> </div></div>
  <div class="x-contents-content" xid="content14"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="areaData">
   <ul class="x-list-template" xid="listTemplateUl8">
    <li xid="li20" bind-click="li20Click">
     <div xid="div15" class="list-group-item" style="padding:0px 0px 0px 0px;border-style:none none none none;" bind-css="{'current2':val(&quot;id&quot;) == $model.areaData.val(&quot;id&quot;)}">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
       <div class="x-col" xid="col14">
        <span xid="span13" bind-text='val("name")' style="font-family:“Microsoft YaHei”;font-size:16px;"></span></div> 
       <div class="x-col x-col-25" xid="col13">
        <i xid="i11" class="e-commerce e-commerce-gou" style="color:#FF6C21;" bind-visible=' val("id") == $model.areaData.val("id")'></i></div> </div> </div> </li> </ul> </div></div></div></div>
   </div></div>
