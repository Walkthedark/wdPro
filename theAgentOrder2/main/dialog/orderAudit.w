<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"/>  
  <title>订单详情</title>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1">
      <div class="btn-group btn-group-justified x-card" component="$UI/system/components/fragment/bottomNavBar"
        xid="bottomNavBar1" style="background-color:transparent;"> 
        <a class="btn btn-default btn-xs active" component="$UI/system/components/justep/button/button"
          label="订货单" xid="button3" target="content3"> 
          <i class="icon" xid="i3" style="font-size:12px;"/>  
          <span xid="span5">订货单</span>
        </a>  
        <a class="btn btn-link" component="$UI/system/components/justep/button/button"
          label="收款记录" xid="button4" target="content4"> 
          <i class="icon" xid="i3" style="font-size:12px;"/>  
          <span xid="span5">收款记录</span>
        </a> 
      </div>
    </div>  
    <div class="x-panel-content" xid="content2" style="background-color:#F2F1F2;">
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2"> 
        <div class="x-contents-content" xid="content3" onActive="content3Active">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer1" autoLoad="false" src="$UI/theAgentOrder2/main/dialog/dialog/placeAnOrder.w"/>
        </div>  
        <div class="x-contents-content" xid="content4" onActive="content4Active"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="$UI/theAgentOrder2/main/dialog/dialog/orderMoney.w" autoLoad="false"></div></div>
      </div>
    </div> 
  </div>
</div>
