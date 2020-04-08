<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;沙田柚&quot;,&quot;col2&quot;:&quot;20180203&quot;,&quot;col3&quot;:&quot;已归档&quot;,&quot;col4&quot;:&quot;2018-02-03 09:51&quot;,&quot;col5&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;椰子冻&quot;,&quot;col2&quot;:&quot;20180204&quot;,&quot;col3&quot;:&quot;已打回&quot;,&quot;col4&quot;:&quot;2018-02-03 09:51&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;大肉粽&quot;,&quot;col2&quot;:&quot;20180205&quot;,&quot;col3&quot;:&quot;已归档&quot;,&quot;col4&quot;:&quot;2018-02-03 09:51&quot;,&quot;col5&quot;:&quot;&quot;}]</data></div>  
    </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersNewInfo.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="填写资料"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">填写资料</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2" xid="row1" style="text-align:center;">
   <div class="x-col" xid="col1"><span xid="span1" class="font-One"><![CDATA[请上传导购员照片]]></span>
  <span xid="span2" style="display:block;" class="mar2"><![CDATA[（大一寸近照）]]></span>
  <img src="$UI/TheSaleEnterprise/Shoppers/dialog/img/001.jpg" alt="" xid="image1" class="mar2"></img>
  <span xid="span3" style="display:block;" class="mar2"><![CDATA[为了审核顺利，请确保照片清晰！]]>
  </span>
  
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col3">
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row3" style="text-align:center;">
   <div class="col col-xs-12" xid="col5"><a component="$UI/system/components/justep/button/button" class="btn btn-default mar2" label="点击拍照或上传照片" xid="button7" style="width:200px;">
   <i xid="i6"></i>
   <span xid="span9">点击拍照或上传照片</span></a></div>
   <div class="col col-xs-12" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-default3 mar2" label="跳过此步骤" xid="button2" style="width:200px;" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span5">跳过此步骤</span></a></div>
   </div></div>
   </div></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersInfo.w"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
