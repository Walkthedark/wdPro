<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"></column>
  <column name="col1" type="String" xid="xid2"></column>
  <column name="col2" type="String" xid="xid3"></column>
  <column name="col3" type="String" xid="xid4"></column>
  <column name="col4" type="String" xid="xid5"></column>
  <column name="col5" type="String" xid="xid6"></column>
  <column name="col6" type="String" xid="xid7"></column>
  <column name="col7" type="String" xid="xid8"></column>
  <column name="col8" type="String" xid="xid9"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;李四&quot;,&quot;col2&quot;:&quot;东南大区&quot;,&quot;col3&quot;:&quot;2018-02-17 14:00&quot;,&quot;col4&quot;:&quot;2018021700001&quot;,&quot;col5&quot;:&quot;2018-02-17 14:00至2018-02-17 15:00&quot;,&quot;col6&quot;:&quot;共（0天1小时）&quot;,&quot;col7&quot;:&quot;测试&quot;,&quot;col8&quot;:&quot;../TheSaleEnterprise/Commonly/img/006.png&quot;}]</data></div>  
    </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="退货单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">退货单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2" xid="row1" style="width:100%;">
   <div class="x-col" xid="col1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="width:90%;margin-left:5%;">
   <div class="col col-xs-12" xid="col4" style="text-align:center;"><label xid="label1" class="font-One"><![CDATA[请选择退货的经销商]]></label></div>
   <div class="col col-xs-12" xid="col5"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label2" style="text-align:right;"><![CDATA[经销商：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1"></input></div></div>
   <div class="col col-xs-12" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="提交" xid="button2" style="width:100%;" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span1">提交</span></a></div></div>
  </div>
   </div></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/salesReturnNew.w"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
