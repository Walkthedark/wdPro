<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:261px;left:317px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" onCustomRefresh="data1CustomRefresh" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="first_title" type="String" xid="xid3"/>  
      <column name="icon" type="String" xid="xid4"/>  
      <column name="bg" type="String" xid="xid5"/>  
      <column name="list_num" type="String" xid="xid6"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel5"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar2" style="height:100%;width:100%;background-color:#47D1D1;"> 
        <div class="x-titlebar-left" xid="left2"/>  
        <div class="x-titlebar-title" xid="title2">消息</div>  
        <div class="x-titlebar-right reverse" xid="right2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button1" icon="linear linear-cart"> 
            <i xid="i3" class="linear linear-cart"/>  
            <span xid="span5"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content5"> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding-top:0;padding-bottom:0;">
   <div class="x-col" xid="col4" style="padding-top:0 !important;padding-bottom:0 !important;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding-top:0;padding-bottom:0;">
     <div class="x-col x-col-10 x-col-center" xid="col7" style="position:relative;top:0;right:0">
      <span class="badge" xid="badge1" style="position:absolute;right:0px;top:-3px;left:14px;background-color:#f66;color:#fff;" bind-text=' val("list_num")'>2</span>
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon pull-left" xid="button4" style="border-radius:20%;color:#fff;width:27px;" bind-style="{ 'background-color':val(&quot;bg&quot;)}" icon="icon-chatbox-working">
       <i xid="i10" class="icon-chatbox-working"></i>
       <span xid="span15"></span></a> </div> 
     <div class="x-col" xid="col13">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
       <div class="x-col" xid="col21" bind-text=' val("title")' style="font-size:13px"></div></div> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
       <div class="x-col" xid="col26" bind-text=' val("first_title")==""?"暂无数据": val("first_title")' style="font-size:12px;color:#ccc;"></div></div> </div> 
     <div class="x-col x-col-10 x-col-center" xid="col14">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="linear linear-chevronright" style="height:38px;">
       <i xid="i1" class="linear linear-chevronright"></i>
       <span xid="span1"></span></a> </div> </div> </div> </div></li></ul> </div></div> 
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/wd/messageList/messageList.w"></span></div>
