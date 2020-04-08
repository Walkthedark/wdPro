<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id">
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="企业营销门户 EMP"> 
        <div class="x-titlebar-left" xid="left2"/>  
        <div class="x-titlebar-title" xid="title2">企业营销门户 EMP</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;">
      <div component="$UI/system/components/bootstrap/row/row" class="row "
        xid="row2" style="background-color:#FFFFFF;margin-top:30px;padding:10px;"> 
        <div class="col col-xs-7" xid="col4">
          <span xid="span1" class="font-One"><![CDATA[拍照提交时是否有闪退现象]]></span>
        </div>  
        <div class="col col-xs-5" xid="col5">
          <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group"
            xid="radioGroup1" bind-ref="$model.CData.ref(&quot;id&quot;)" bind-itemset="CData"
            bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;text&quot;)"/>
        </div>  
        <div class="col col-xs-12" xid="col6">
          <span xid="span2"><![CDATA[拍照时如果页面出现闪退无法显示照片，请选择“是”并且拍照前降低相机分辨率]]></span>
        </div>
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
