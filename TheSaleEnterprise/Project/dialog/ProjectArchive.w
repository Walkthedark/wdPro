<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="InData" idColumn="id">
   <column name="id" type="String" xid="column12"></column>
   <column name="name" type="String" xid="column16"></column>
   <column name="address" type="String" xid="column15"></column>
   <column name="state" type="String" xid="column14"></column>
   <column name="code" type="String" xid="column13"></column>
   <column name="daogou" type="String" xid="column21"></column>
   <column name="zhongdian" type="String" xid="column20"></column>
   <column name="time" type="String" xid="column19"></column>
   <column name="col8" type="String" xid="column18"></column>
   <column name="col9" type="String" xid="column17"></column>
   <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;万家公用分店&quot;,&quot;address&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;code&quot;:&quot;&quot;,&quot;daogou&quot;:&quot;&quot;,&quot;zhongdian&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;,&quot;col9&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;长城饭店&quot;,&quot;address&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;code&quot;:&quot;&quot;,&quot;daogou&quot;:&quot;&quot;,&quot;zhongdian&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="ProjectActivationDialog" src="$UI/TheSaleEnterprise/Project/dialog/ProjectActivation.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="已归档项目"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">已归档项目</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="InData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" bind-click="li2Click">
     <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row22">
      <div class="x-col x-col-10" xid="col47" style="text-align:center;">
       <img src="$UI/TheSaleEnterprise/Project/dialog/img/menu_emp_huoDongShenQing.png" alt="" xid="image3" style="width:30px;"></img></div> 
      <div class="x-col" xid="col48">
       <div component="$UI/system/components/justep/output/output" class="x-output font-One" xid="output4" bind-ref='ref("name")'></div></div> 
      <div class="x-col x-col-10" xid="col49">
       <img src="$UI/TheSaleEnterprise/Project/dialog/img/menu_emp_khgl_xtgl.png" alt="" xid="image4" style="width:30px;"></img></div> </div> </li> </ul> </div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
