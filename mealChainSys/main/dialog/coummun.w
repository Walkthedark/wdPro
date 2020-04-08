<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" style="background-color:#272F2C;" height="55">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   <div class="x-col x-col-90" xid="col2"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group  btn-group-justified" tabbed="true" xid="buttonGroup2">
   <a component="$UI/system/components/justep/button/button" class="btn active btn-link btn-color" xid="sortingBtn" label="对话" target="content2">
    <i xid="i6"></i>
    <span xid="span3">对话</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-color" label="联系人" xid="button6"  target="content3">
    <i xid="i7"></i>
    <span xid="span6">联系人</span></a> 
  </div></div>
   <div class="x-col" xid="col3"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><a component="$UI/system/components/justep/button/button" class="btn x-orange" label="对话" xid="button1">
   <i xid="i1"></i>
   <span xid="span1">对话</span></a></div>
  <div class="x-contents-content" xid="content3"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" height="48"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;height:100%;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-col active" label="供应商" xid="button3" style="border-right-style:solid;border-right-width:thin;border-right-color:#E0DFE1;" target="content5">
    <i xid="i3"></i>
    <span xid="span5">供应商</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-col" label="客户" xid="button4" style="border-right-style:solid;border-right-width:thin;border-right-color:#E0DFE1;" target="content6">
    <i xid="i4"></i>
    <span xid="span7">客户</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-col" label="同事" xid="button5" target="content7">
   <i xid="i5"></i>
   <span xid="span8">同事</span></a></div></div><div class="x-panel-content" xid="content4" style="background-color:#F4F4F4;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content" xid="content5"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:7px;">
   </div>
  <div xid="div1" class="list-group-item" style="padding:0px 0px 0px 5px;" bind-click="div1Click"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="宁国路" xid="button7" icon="icon-arrow-right-b" style="color:#333233;font-size:16px;">
   <i xid="i8" class="icon-arrow-right-b"></i>
   <span xid="span9">宁国路</span></a></div>
  <div xid="div4" class="list-group-item" style="padding:0px 0px 0px 5px; display:none" bind-click="div4Click">
   <div class="media" xid="media3">
    <div class="media-left" xid="mediaLeft3">
     <img src="$UI/propertyElevatorMag/common/img/head.jpeg" alt="" xid="image6" height="40px" style="width:40px;height:40px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FDFCFF #FDFCFF #FDFCFF #FDFCFF;" class="image-radius"></img></div> 
    <div class="media-body" xid="mediaBody3">
     <h5 xid="h55" class="media-heading" style="color:#555455;font-weight:bold;line-height:37px">张三</h5>
     </div> 
    </div> </div>
  <div xid="div2" class="list-group-item" style="padding:0px 0px 0px 5px;display:none">
   <div class="media" xid="media1">
    <div class="media-left" xid="mediaLeft1">
     <img src="$UI/propertyElevatorMag/common/img/head.jpeg" alt="" xid="image1" height="40px" style="width:40px;height:40px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FDFCFF #FDFCFF #FDFCFF #FDFCFF;" class="image-radius"></img></div> 
    <div class="media-body" xid="mediaBody1">
     <h5 xid="h51" class="media-heading" style="color:#555455;font-weight:bold;line-height:37px">张三</h5></div> </div> </div>
  <div xid="div3" class="list-group-item" style="padding:0px 0px 0px 5px;display:none">
   <div class="media" xid="media2">
    <div class="media-left" xid="mediaLeft2">
     <img src="$UI/propertyElevatorMag/common/img/head.jpeg" alt="" xid="image2" height="40px" style="width:40px;height:40px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FDFCFF #FDFCFF #FDFCFF #FDFCFF;" class="image-radius"></img></div> 
    <div class="media-body" xid="mediaBody2">
     <h5 xid="h52" class="media-heading" style="color:#555455;font-weight:bold;line-height:37px">张三</h5></div> </div> </div></div>
  <div class="x-contents-content" xid="content6"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:7px;"></div>
  <div xid="div5" class="list-group-item" style="padding:0px 0px 0px 5px;" bind-click="div1Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="宁国路" xid="button2" icon="icon-arrow-right-b" style="color:#333233;font-size:16px;">
    <i xid="i2" class="icon-arrow-right-b"></i>
    <span xid="span2">宁国路</span></a> </div>
  <div xid="div6" class="list-group-item" style="padding:0px 0px 0px 5px; display:none">
   <div class="media" xid="media4">
    <div class="media-left" xid="mediaLeft4">
     <img src="$UI/propertyElevatorMag/common/img/head.jpeg" alt="" xid="image3" height="40px" style="width:40px;height:40px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FDFCFF #FDFCFF #FDFCFF #FDFCFF;" class="image-radius"></img></div> 
    <div class="media-body" xid="mediaBody4">
     <h5 xid="h53" class="media-heading" style="color:#555455;font-weight:bold;line-height:37px">张三</h5></div> </div> </div>
  <div xid="div7" class="list-group-item" style="padding:0px 0px 0px 5px;display:none">
   <div class="media" xid="media5">
    <div class="media-left" xid="mediaLeft5">
     <img src="$UI/propertyElevatorMag/common/img/head.jpeg" alt="" xid="image4" height="40px" style="width:40px;height:40px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FDFCFF #FDFCFF #FDFCFF #FDFCFF;" class="image-radius"></img></div> 
    <div class="media-body" xid="mediaBody5">
     <h5 xid="h54" class="media-heading" style="color:#555455;font-weight:bold;line-height:37px">张三</h5></div> </div> </div>
  <div xid="div8" class="list-group-item" style="padding:0px 0px 0px 5px;display:none">
   <div class="media" xid="media6">
    <div class="media-left" xid="mediaLeft6">
     <img src="$UI/propertyElevatorMag/common/img/head.jpeg" alt="" xid="image5" height="40px" style="width:40px;height:40px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FDFCFF #FDFCFF #FDFCFF #FDFCFF;" class="image-radius"></img></div> 
    <div class="media-body" xid="mediaBody6">
     <h5 xid="h56" class="media-heading" style="color:#555455;font-weight:bold;line-height:37px">张三</h5></div> </div> </div></div>
  <div class="x-contents-content" xid="content7"></div></div></div>
   </div></div></div></div>
   </div></div>