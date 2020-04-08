<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:12px;left:63px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="MsgData" idColumn="id" limit="-1" autoNew="true"> 
      <data xid="default1">[]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="is_read" type="String" xid="xid3"/>  
      <column name="fssj" type="String" xid="xid4"/>  
      <column name="fsr" type="String" xid="xid5"/>  
      <column name="fsr_name" type="String" xid="xid6"/>  
      <column name="content" type="String" xid="xid7"/>  
      <column name="txry" type="String" xid="xid8"/>  
      <column name="txrq" type="String" xid="xid9"/>  
      <column name="txfs" type="String" xid="xid10"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        title="消息详情" xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span1">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">消息详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;">
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row2" style="text-align:center;background-color:#FFFFFF;"> 
        <div class="col col-xs-12" xid="col4">
          <div component="$UI/system/components/justep/output/output" class="x-output font-One"
            xid="output1" bind-ref='$model.MsgData.ref("title")'/>
        </div>  
        <div class="col col-xs-12" xid="col5"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='$model.MsgData.ref("fssj")' onRender="output2Render" style="text-align:right"/></div>  
        </div>  
      <div xid="div1" style="width:100%;">
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" onRender="output3Render" bind-ref='$model.MsgData.ref("content")'></div><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
          label="点击这里" xid="button2" onClick="button2Click" style="display:none"> 
          <i xid="i2"/>  
          <span xid="span6">点击这里</span>
        </a>
        </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="setDialog"
    src="$UI/TheSaleEnterprise/main/other/dialog/message/setting.w" forceRefreshOnOpen="true"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>
</div>
