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
  <div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs7">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel5">
    <div class="x-panel-top" xid="top5">
     <ul class="nav nav-tabs" xid="navs4">
      <li class="active" xid="li17">
       <a content="tabContent_1" xid="tabItem12">d</a></li> </ul> </div> 
    <div class="x-panel-content" xid="content9">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents5">
      <div class="x-contents-content active" xid="content1"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="button123" xid="button3">
   <i xid="i4"></i>
   <span xid="span6">button123</span></a>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="regionData">
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li18">
     <div xid="div13" class="list-group-item" style="padding:0px 0px 0px 0px;" bind-css="{'current2':val(&quot;id&quot;) == $model.regionData.val(&quot;id&quot;)}">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
       <div class="x-col" xid="col10">
        <span xid="span7" bind-text='val("name")' style="font-family:“Microsoft YaHei”;font-size:16px;"></span></div> 
       <div class="x-col x-col-25" xid="col9">
        <i xid="i5" class="e-commerce e-commerce-gou" style="color:#FF6C21;" bind-visible=' val("id") == $model.regionData.val("id")'></i></div> </div> </div> </li> </ul> </div></div>
  <div class="x-contents-content" xid="content10"><div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs5">
   <ul class="nav nav-tabs" xid="ul2" style="position:relative;top:0px;">
    <li class="active" xid="li12">
     <a content="tabContent5" xid="tabItem8">tab1</a></li> 
    <li role="presentation" xid="li13">
     <a content="tabContent6" xid="tabItem9">tab2</a></li> </ul> 
   <div class="tab-content" xid="div10">
    <div class="tab-pane active" xid="tabContent5">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="regionData">
      <ul class="x-list-template" xid="listTemplateUl5">
       <li xid="li14">
        <div xid="div11" class="list-group-item" style="padding:0px 0px 0px 0px;" bind-css="{'current2':val(&quot;id&quot;) == $model.regionData.val(&quot;id&quot;)}">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
          <div class="x-col" xid="col7">
           <span xid="span5" bind-text='val("name")' style="font-family:“Microsoft YaHei”;font-size:16px;"></span></div> 
          <div class="x-col x-col-25" xid="col8">
           <i xid="i3" class="e-commerce e-commerce-gou" style="color:#FF6C21;" bind-visible=' val("id") == $model.regionData.val("id")'></i></div> </div> </div> </li> </ul> </div> </div> 
    <div class="tab-pane" xid="tabContent6"></div></div> </div></div></div> </div> </div> </div></div>
