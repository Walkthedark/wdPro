<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button2" icon="icon-arrow-left-b" style="color:#4E4E4E;font-size:14px">
   <i xid="i2" class="icon-arrow-left-b"></i>
   <span xid="span2"></span></a></div>
   <div class="x-col x-col-50" xid="col2"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="height:100%;"></div></div>
   <div class="x-col" xid="col3" style="text-align:left;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button1" icon="icon-arrow-right-b" style="color:#4E4E4E;font-size:14px">
   <i xid="i1" class="icon-arrow-right-b"></i>
   <span xid="span1"></span></a></div></div></div>
   <div class="x-panel-content" xid="content1" style="background-color:#EBEAF0;"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2"><div class="btn-group btn-group-justified x-card" component="$UI/system/components/fragment/bottomNavBar" xid="bottomNavBar1" style="background-color:white;">
   
   <a class="btn btn-link" component="$UI/system/components/justep/button/button" label="列表" xid="button3" target="content3">
    <i class="icon" xid="i4" style="font-size:12px;"></i>
    <span xid="span5">列表</span></a> 
   <a class="btn btn-link" component="$UI/system/components/justep/button/button" label="轨迹" xid="button5" target="content4">
    <i class="icon" xid="i5" style="font-size:12px;"></i>
    <span xid="span4">轨迹</span></a> </div></div>
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content3"></div>
  <div class="x-contents-content" xid="content4"></div></div></div>
   </div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="新增" xid="addWorkPlan" icon="icon-plus-round" onClick="addWorkPlanClick">
    <i xid="i3" class="icon-plus-round"></i>
    <span xid="span3" style="font-size:16px;">新增</span></a> </div></div></div></div>