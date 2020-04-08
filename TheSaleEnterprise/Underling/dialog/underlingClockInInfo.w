<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;张三&quot;,&quot;col2&quot;:&quot;1&quot;,&quot;col3&quot;:&quot;1&quot;,&quot;col4&quot;:&quot;0&quot;,&quot;col5&quot;:&quot;0&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="CData" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
   <column name="text" type="String" xid="column2"></column>
   <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;text&quot;:&quot;只看直接下属&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;text&quot;:&quot;查看所有下属&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="InData" idColumn="id">
   <column name="id" type="String" xid="column3"></column>
   <column name="col1" type="String" xid="column4"></column>
   <column name="col2" type="String" xid="column5"></column>
   <column name="col3" type="String" xid="column6"></column>
   <column name="col4" type="String" xid="column7"></column>
   <column name="col5" type="String" xid="column8"></column>
   <column name="col6" type="String" xid="column9"></column>
   <column name="col7" type="String" xid="column10"></column>
   <column name="col8" type="String" xid="column11"></column>
   <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;2018-01-01&quot;,&quot;col2&quot;:&quot;上班打卡&quot;,&quot;col3&quot;:&quot;下班打卡&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;缺勤&quot;,&quot;col2&quot;:&quot;无&quot;,&quot;col3&quot;:&quot;无&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;迟到下班未打卡&quot;,&quot;col2&quot;:&quot;15：29：30广东省广州市&quot;,&quot;col3&quot;:&quot;无&quot;},{&quot;id&quot;:&quot;4&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingClockInMap.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="张三"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">张三</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
   <div class="x-panel-top border-Two" xid="top2" height="96"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="text-align:center;">
   <div class="x-col" xid="col8"><span xid="span14" class="font-One"><![CDATA[出勤]]></span></div>
   <div class="x-col" xid="col9"><span xid="span15" class="font-One"><![CDATA[迟到]]></span></div>
  <div class="x-col" xid="col10"><span xid="span16" class="font-One"><![CDATA[早退]]></span>
  </div>
  <div class="x-col" xid="col11"><span xid="span17" class="font-One"><![CDATA[请假]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="text-align:center;">
   <div class="x-col" xid="col17">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='$model.pData.ref("col2")'></div></div> 
   <div class="x-col" xid="col18">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output7" bind-ref='$model.pData.ref("col3")'></div></div> 
   <div class="x-col" xid="col20">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='$model.pData.ref("col4")'></div></div> 
   <div class="x-col" xid="col19">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='$model.pData.ref("col5")'></div></div> </div></div><div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2">
     <div class="x-content-center x-pull-down container" xid="div6">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"></i>
      <span class="x-pull-down-label" xid="span10">下拉刷新...</span></div> 
     <div class="x-scroll-content" xid="div5">
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="InData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" class="border-Two"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="text-align:center;">
   <div class="x-col" xid="col3">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("col1")'></div></div> 
   <div class="x-col" xid="col2">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("col2")'></div></div> 
   <div class="x-col" xid="col1">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("col3")'></div></div> 
   
   </div></li></ul> </div></div> 
     <div class="x-content-center x-pull-up" xid="div4">
      <span class="x-pull-up-label" xid="span8">加载更多...</span></div> </div> </div> </div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
