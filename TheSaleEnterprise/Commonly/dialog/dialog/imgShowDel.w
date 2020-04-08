<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"
    onParamsReceive="modelParamsReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"> 
          <div id="title" xid="div1"/> 
        </div>  
        <div class="x-titlebar-right reverse">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="删除" xid="button1" onClick="button1Click" style="margin-right:5%;background-color:transparent;"> 
            <i xid="i1"/>  
            <span xid="span1">删除</span>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <img src="" alt="" xid="image1" height="100%" style="width:100%;" id="img1"/>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive" style="top:184px;left:320px;"/>
</div>
