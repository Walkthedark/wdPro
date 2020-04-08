<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1"> 
      <div id="signature" class="signature" style="width:100%;"> 
        <!-- <input type="button" onclick="saveSignature()" value="保存坐标" /> -->  
        <input type="hidden" class="output"/>  
        <canvas class="pad" width="370" height="700"/> 
      </div>  
      <div class="signature-image"/>  
      <!-- <script src="jquery.signaturepad.js"></script>
    <script src="assets/json2.min.js"></script>
    <script type="text/javascript"> --> 
    </div> 
  <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="返回" xid="resetBtn" style="width:30%;margin-top:8px;background-color:#D3D9D2;color:#838683;" onClick="resetBtnClick">
   <i xid="i25"></i>
   <span xid="span25">返回</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="确定签字" xid="okBtn" style="width:30%;margin-left:4px;margin-top:8px;" onClick="okBtnClick">
   <i xid="i26"></i>
   <span xid="span26">确定签字</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="清除" xid="button1" onClick="button1Click" style="width:30%;margin-left:4px;margin-top:8px;"> 
          <i xid="i1" />  
          <span xid="span1">清除</span> 
        </a></div></div>  
  <resource xid="resource2">
    <require xid="require1" url="$UI/maintenanceOrderMessa/signature-pad/jquery.signaturepad"/>  
    <require xid="require2" url="$UI/maintenanceOrderMessa/signature-pad/assets/json2.min"/>
  <require xid="require3" url="css!$UI/maintenanceOrderMessa/signature-pad/assets/jquery.signaturepad"></require>
  <require xid="require4" url="$UI/maintenanceOrderMessa/signature-pad/jquery.min"></require></resource>
<span component="$UI/system/components/justep/timer/timer" xid="timer1" times="3" enabled="false" onStop="timer1Stop"></span></div>
