<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#272F2C;">
     <div class="x-titlebar-left" xid="left2"></div>
     <div class="x-titlebar-title" xid="title2"><![CDATA[核账]]></div>
     <div class="x-titlebar-right reverse" xid="right2">
  <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" label="全部"></span></div></div> </div> 
   <div class="x-panel-content" xid="content1">
    
    
    
    
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top3" height="48">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:transparent;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#CDCDCD;height:100%;">
     
     
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="近三天" xid="button4" icon="icon-arrow-down-b" style="color:#8E8E8E;border-right-style:solid;border-right-width:thin;border-right-color:#CDCDCD;" onClick="button4Click">
   <i xid="i4" class="icon-arrow-down-b"></i>
   <span xid="span4">近三天</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="供应商(全部)" xid="button6" icon="icon-arrow-down-b" style="color:#8E8E8E;border-right-style:solid;border-right-width:thin;border-right-color:#CDCDCD;" onClick='{"operation":"popOver3.show"}'>
   <i xid="i6" class="icon-arrow-down-b"></i>
   <span xid="span5">供应商(全部)</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="全部单据" xid="button7" icon="icon-arrow-down-b" style="color:#8E8E8E;" onClick='{"operation":"popOver4.show"}'>
   <i xid="i7" class="icon-arrow-down-b"></i>
   <span xid="span6">全部单据</span></a></div> </div> 
   <div class="x-panel-content" xid="content5"><div xid="div1" bind-click="div1Click"><div xid="div2" class="list-group-item" style="padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px 0px 0px 0px;">
   <div class="x-col" xid="col1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="今天 09:38" xid="button8" style="btn btn-link btn-only-label">
   <i xid="i8"></i>
   <span xid="span9">今天 09:38</span></a></div>
   <div class="x-col" xid="col3" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="¥0.00" xid="button9" style="color:#8A8A8A;">
   <i xid="i9"></i>
   <span xid="span10">¥0.00</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label btn-radius" label="收" xid="button10" style="color:#407422;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;">
   <i xid="i10"></i>
   <span xid="span11">收</span></a></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;">
   <div class="x-col" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="上海熟食加工厂" xid="button11" style="color:#4B4B4B;">
   <i xid="i11"></i>
   <span xid="span12">上海熟食加工厂</span></a></div>
   <div class="x-col" xid="col5" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="未审核" xid="button12" style="color:#FF5A1D;font-size:14px;">
   <i xid="i12"></i>
   <span xid="span13">未审核</span></a></div></div></div>
  </div>
  <div xid="div5">
   <div xid="div4" class="list-group-item" style="padding:0px 0px 0px 0px;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0px 0px 0px 0px;">
     <div class="x-col" xid="col10">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="今天 09:38" xid="button13" style="btn btn-link btn-only-label">
       <i xid="i16"></i>
       <span xid="span14">今天 09:38</span></a> </div> 
     <div class="x-col" xid="col9" style="text-align:right;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="¥0.00" xid="button15" style="color:#8A8A8A;">
       <i xid="i17"></i>
       <span xid="span16">¥0.00</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label btn-radius" label="收" xid="button14" style="color:#407422;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;">
       <i xid="i14"></i>
       <span xid="span18">收</span></a> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0px 0px 0px 0px;">
     <div class="x-col" xid="col7">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="上海熟食加工厂" xid="button17" style="color:#4B4B4B;">
       <i xid="i13"></i>
       <span xid="span17">上海熟食加工厂</span></a> </div> 
     <div class="x-col" xid="col8" style="text-align:right;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="未审核" xid="button16" style="color:#FF5A1D;font-size:14px;">
       <i xid="i15"></i>
       <span xid="span15">未审核</span></a> </div> </div> </div> </div></div>
   </div></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" opacity="0.5">
   <div class="x-popOver-overlay" xid="div6"></div>
   <div class="x-popOver-content div-radius" xid="div7"><div xid="div11" style="height:400px;width:400px;background-color:white;"><div xid="div12" class="list-group-item"><span xid="span19"><![CDATA[操作时间]]></span>
  </div>
  <div xid="div13" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col11"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm " label="今天" xid="button18" style="background-color:#407422;color:#FFFFFF;width:60px;">
   <i xid="i18"></i>
   <span xid="span20">今天</span></a></div>
   <div class="x-col" xid="col12"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color" label="昨天" xid="button19" style="width:60px;">
   <i xid="i19"></i>
   <span xid="span21">昨天</span></a></div>
   <div class="x-col" xid="col13"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color" label="进3天" xid="button20" style="width:60px;">
   <i xid="i20"></i>
   <span xid="span22">进3天</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col16">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm " label="近7天" xid="button22" style="background-color:#407422;color:#FFFFFF;left:width:60px;;">
     <i xid="i22"></i>
     <span xid="span24">近7天</span></a> </div> 
   <div class="x-col" xid="col15">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color" label="近30天" xid="button23" style="width:60px;">
     <i xid="i21"></i>
     <span xid="span23">近30天</span></a> </div> 
   <div class="x-col" xid="col14">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color" label="自定义" xid="button21" style="width:60px;">
     <i xid="i23"></i>
     <span xid="span25">自定义</span></a> </div> </div></div></div>
  </div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver3" opacity="0.5">
   <div class="x-popOver-overlay" xid="div18"></div>
   <div class="x-popOver-content div-radius" xid="div17">
    <div xid="div16" style="height:400px;width:400px;background-color:white;">
     
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" height="53"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-bottom-width:thin;border-bottom-color:#A1A3A5;height:52;">
   <div xid="col24" style="width:0.5em;"></div>
   <div class="x-col x-col-90" xid="col2">
    <div class="content_bg input_radius form-group has-feedback text-muted" xid="formGroup1" style="height:40;">
     <input component="$UI/system/components/justep/input/input" class="input_radius form-control x-inputText" xid="key" placeHolder="请输入物料名称" style="background-color:#EEEEEE;"></input>
     <i class="icon-ios7-search-strong form-control-feedback" xid="col4"></i></div> </div> 
   <div xid="col23" style="width:0.5em;"></div></div></div>
   <div class="x-panel-content" xid="content2"><div xid="div19" class="list-group-item" style="padding:0px 0px 0px 0px;"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="供应商(全部)" xid="button30" style="color:#636363;">
   <i xid="i30"></i>
   <span xid="span33">供应商(全部)</span></a></div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button31" icon="icon-checkmark-circled" style="color:#407422;">
   <i xid="i31" class="icon-checkmark-circled"></i>
   <span xid="span34"></span></a></div></div></div>
  <div xid="div20" class="list-group-item" style="padding:0px 0px 0px 0px;">
   <div class="media" xid="media2">
    <div class="media-body" xid="mediaBody2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="供应商(全部)" xid="button33" style="color:#636363;">
      <i xid="i33"></i>
      <span xid="span36">供应商(全部)</span></a> </div> 
    <div class="media-right" xid="mediaRight2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button32" icon="icon-checkmark-circled" style="color:#407422;">
      <i xid="i32" class="icon-checkmark-circled"></i>
      <span xid="span35"></span></a> </div> </div> </div>
  <div xid="div21" class="list-group-item" style="padding:0px 0px 0px 0px;">
   <div class="media" xid="media3">
    <div class="media-body" xid="mediaBody3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="供应商(全部)" xid="button35" style="color:#636363;">
      <i xid="i35"></i>
      <span xid="span38">供应商(全部)</span></a> </div> 
    <div class="media-right" xid="mediaRight3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button34" icon="icon-checkmark-circled" style="color:#407422;">
      <i xid="i34" class="icon-checkmark-circled"></i>
      <span xid="span37"></span></a> </div> </div> </div></div>
   </div></div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver4" opacity="0.5">
   <div class="x-popOver-overlay" xid="div26"></div>
   <div class="x-popOver-content div-radius" xid="div25">
    <div xid="div24" style="height:400px;width:400px;background-color:white;">
     <div xid="div22" class="list-group-item">
      <span xid="span45"><![CDATA[采购状态]]></span></div> 
     <div xid="div23" class="list-group-item">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
       <div class="x-col" xid="col30">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm " label="全部单据" xid="button40" style="background-color:#407422;color:#FFFFFF;width:80px;">
         <i xid="i37"></i>
         <span xid="span42">全部单据</span></a> </div> 
       <div class="x-col" xid="col29">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color" label="收货单" xid="button41" style="width:80px;">
         <i xid="i36"></i>
         <span xid="span41">收货单</span></a> </div> 
       <div class="x-col" xid="col28">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color" label="对货单" xid="button37" style="width:80px;">
         <i xid="i38"></i>
         <span xid="span44">对货单</span></a> </div> </div> 
      </div> </div> </div> </div></div>