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
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="已归档项目"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">已归档项目</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="text-align:center;">
   <div class="x-col" xid="col1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
   <div class="col col-xs-12" xid="col4"><span xid="span1" class="font-One"><![CDATA[项目米送达方]]></span></div>
   <div class="col col-xs-12 border-Two" xid="col5"><span xid="span2"><![CDATA[松岛枫是这个]]></span></div>
   <div class="col col-xs-12" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="重新激活" xid="button2" style="width:100%;">
   <i xid="i2"></i>
   <span xid="span3">重新激活</span></a></div></div></div>
   </div></div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row9" bind-click="row9Click">
   <div class="x-col" xid="col20">
    <span xid="span25" style="display:block;color:#999999;font-size:16px;"><![CDATA[查看已完成项目]]></span></div> </div></div></div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
