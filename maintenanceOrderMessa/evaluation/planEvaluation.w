<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:170px;left:1px;height:auto;" onParamsReceive="modelParamsReceive"/> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F4F4F4;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:10px;">
   </div><div xid="div1" class="list-group-item" style="padding:0px 0px 0px 0px;border-top-style:none;">
  
  <div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="维保服务评价" xid="button6" style="line-height:30px;color:#B1B1B1;font-size:14px;">
   <i xid="i6"></i>
   <span xid="span6">维保服务评价</span></a></div> 
   <div class="media-body" xid="mediaBody1" style="text-align:center;">
    
  
  
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon btn-color" label="button" xid="button8" icon="dataControl dataControl-star" onClick="button8Click" style="font-size:18px;">
    <i xid="i8" class="dataControl dataControl-star"></i>
    <span xid="span8"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon btn-color" label="button" xid="button9" icon="dataControl dataControl-star" onClick="button9Click" style="font-size:18px;">
    <i xid="i9" class="dataControl dataControl-star"></i>
    <span xid="span9"></span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon btn-color" label="button" xid="button10" icon="dataControl dataControl-star" onClick="button10Click" style="font-size:18px;">
   <i xid="i10" class="dataControl dataControl-star"></i>
   <span xid="span10"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon btn-color" label="button" xid="button1" icon="dataControl dataControl-star" onClick="button1Click" style="font-size:18px;">
   <i xid="i1" class="dataControl dataControl-star"></i>
   <span xid="span1"></span></a></div></div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="优秀" xid="button7" style="width:60px;line-height:30px;color:#B1B1B1;font-size:14px;">
   <i xid="i7"></i>
   <span xid="span7">优秀</span></a></div></div></div>
  <div xid="div3" class="list-group-item" style="padding:0px 0px 0px 0px">
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:200px;background-color:white;border-style:none none none none;" placeHolder="您的评价对维保工人有很大的作用哦！"></textarea></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="position:fixed;bottom:30px;left:0px;">
   <div class="x-col" xid="col17"></div>
   <div class="x-col" xid="col18" style="text-align:center;">
    <div xid="addLogDiv" style="height:100%;width:100%;">
     <div xid="addLogDiv1" style="height:80px;width:80px;background-color:transparent;" class=" div_zuyou div-back " bind-click="addLogDiv_infoClick">
      <span xid="span12" style="line-height:80px;color:#FFFFFF;"><![CDATA[发布]]></span></div> </div> </div> 
   <div class="x-col" xid="col19"></div></div>
  </div></div>
  <span component="$UI/system/components/justep/timer/timer" xid="timer1" times="3" enabled="false" onStop="timer1Stop"></span></div>