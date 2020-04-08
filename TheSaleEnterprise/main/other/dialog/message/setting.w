<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id" autoNew="false"> 
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="set1" autoNew="true">
      <column name="set1" type="String" xid="xid3"/>  
      <column name="set2" type="String" xid="xid4"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="企业营销门户 EMP"> 
        <div class="x-titlebar-left" xid="left2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span>
          </a>
        </div>  
        <div class="x-titlebar-title" xid="title2">企业营销门户 EMP</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row "
        xid="row2" style="background-color:#FFFFFF;padding:10px;"> 
        <div class="col col-xs-7" xid="col4" style="padding:20px;"> 
          <span xid="span1" class="font-One"><![CDATA[每天16：00待办任务提醒]]></span> 
        </div>  
        <div class="col col-xs-5" xid="col5" style="padding:20px;"> 
          <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group"
            xid="radioGroup1" bind-ref="$model.cDate.ref(&quot;set1&quot;)" bind-itemset="CData"
            bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;text&quot;)"/> 
        </div>  
        <div class="col col-xs-7" xid="col1" style="padding:20px;"> 
          <span xid="span3" class="font-One"><![CDATA[每5分钟待办任务提醒]]></span>
        </div>  
        <div class="col col-xs-5" xid="col2" style="padding:20px;"> 
          <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group"
            xid="radioGroup2" bind-ref="$model.cDate.ref(&quot;set2&quot;)" bind-itemset="CData"
            bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;text&quot;)"/>
        </div>  
        <div class="col col-xs-12" xid="col3" style="padding:20px;text-align:center;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
            label="保 存" xid="button2" style="width:100%;" onClick="button2Click"> 
            <i xid="i2"/>  
            <span xid="span5">保 存</span>
          </a>
        </div>
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
