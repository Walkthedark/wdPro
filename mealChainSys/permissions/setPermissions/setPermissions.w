<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#272F2C;">
     <div class="x-titlebar-left" xid="left2"></div>
     <div class="x-titlebar-title" xid="title2"><![CDATA[发起申购-权限设置]]></div>
     <div class="x-titlebar-right reverse" xid="right2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label btn_radius" label="操作" xid="caozuoBtn" icon="icon-android-settings" style="font-size:14px;line-height:27px;height:30px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;width:45px;" onClick='{"operation":"popMenu1.show"}'>
       <i xid="i4" class="icon-android-settings"></i>
       <span xid="span16">操作</span></a> </div> </div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#EEEEEE;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top3" style="background-color:white;" height="52">
    
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5"></div>
   <div class="x-col x-col-90" xid="col6"><div class="content_bg input_radius form-group has-feedback text-muted" xid="formGroup1" style="height:40;">
       <input component="$UI/system/components/justep/input/input" class="input_radius form-control x-inputText" xid="key" placeHolder="请输入物料名称" style="background-color:#EEEEEE;"></input>
       <i class="icon-ios7-search-strong form-control-feedback" xid="col4"></i></div></div>
   <div class="x-col" xid="col7"></div></div></div> 
   <div class="x-panel-content" xid="content5">
    </div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:100%;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col x-col-80" xid="col2" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-radius1" label="设置" xid="button2" style="background-color:#407422;color:#FFFFFF;width:100%;">
     <i xid="i2"></i>
     <span xid="span2">设置</span></a> </div> 
   <div class="x-col" xid="col3"></div></div></div></div></div> </div>
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="right-bottom" xid="popMenu1" anchor="caozuoBtn" opacity="0.1">
   <div class="x-popMenu-overlay" xid="div12"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu1" style="background-color:#272F2C;">
    <li class="x-menu-item" xid="item1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="已授权" xid="faqiShenGouBtn" icon="linear linear-pencil" style="color:#FFFFFF;" onClick="faqiShenGouBtnClick">
      <i xid="i3" class="linear linear-pencil"></i>
      <span xid="span25">已授权</span></a> </li> 
    <li class="x-menu-divider divider" xid="divider1"></li>
    <li class="x-menu-item" xid="item2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="全部" xid="button4" icon="e-commerce e-commerce-gou" style="color:#FFFFFF;" >
      <i xid="i3" class="e-commerce e-commerce-gou"></i>
      <span xid="span26">全部</span></a> </li> </ul> </div></div>