<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="checkData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;张三&quot;,&quot;col2&quot;:&quot;上海&quot;,&quot;col3&quot;:&quot;专职白班&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;李四&quot;,&quot;col2&quot;:&quot;上海22&quot;,&quot;col3&quot;:&quot;临时白班&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersSalesCheck.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="48"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属导购考勤记录查询"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属导购考勤记录查询</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col4" style="text-align:center;">
    <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
     <div class="input-group-btn" xid="layoutWizard2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="glyphicon glyphicon-triangle-left" style="color: #8FC41C;" onClick="button4Click">
       <i xid="i4" class="glyphicon glyphicon-triangle-left"></i>
       <span xid="span3"></span></a> </div> 
     <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="cdateInput"></input>
     <div class="input-group-btn" xid="layoutWizard1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" icon="glyphicon glyphicon-triangle-right" style="color: #8FC41C;" onClick="button7Click">
       <i xid="i9" class="glyphicon glyphicon-triangle-right"></i>
       <span xid="span11"></span></a> </div> </div> 
    </div> </div><div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
        altRows="true" class="x-grid-no-bordered" xid="grid1" data="checkData" height="auto"
        width="100%" useFooter="false" frozenColumnCount="1"> 
        <columns xid="columns1">
          <column width="100" name="col1" xid="column26" label="导购姓名"/>  
          <column width="100" name="col2" xid="column27" label="网点"/>  
          <column width="100" name="col3" xid="column28" label="班次"/>  
          </columns>
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  </div>
