<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="col0">
   <column name="col0" type="String" xid="xid1"></column>
   <column name="col1" type="String" xid="xid2"></column>
   <data xid="default1">[{&quot;col0&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;加工食品&quot;},{&quot;col0&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;新鲜水果&quot;},{&quot;col0&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;水产大类&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="48" style="background-color:#439657;">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#439657;">
     <div class="x-titlebar-left" xid="left1"></div>
     <div class="x-titlebar-title" xid="title1"><![CDATA[添加商品]]></div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="background-color:#EEEEEE;">
    
    
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top3" style="background-color:white;" height="52">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
     <div class="x-col" xid="col1"></div>
     <div class="x-col x-col-90" xid="col6">
      <div class="content_bg input_radius form-group has-feedback text-muted" xid="formGroup1" style="height:40;">
       <input component="$UI/system/components/justep/input/input" class="input_radius form-control x-inputText" xid="key" placeHolder="搜索分类、商品分类" style="background-color:#EEEEEE;"></input>
       <i class="icon-ios7-search-strong form-control-feedback" xid="col4"></i></div> </div> 
     <div class="x-col" xid="col7"></div></div> </div> 
   <div class="x-panel-content" xid="content5"><div xid="div1" style="width:30%;height:100%;float:left;background-color:white;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1" bind-css="{'listxz':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
      <div xid="div4" class="list-group-item" style="padding:3px 3px 3px 3px;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label  btn-color" label="鸡" xid="button7" bind-text=' val("col1")' target="content2" bind-css="{'listxz2':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
        <i xid="i7"></i>
        <span xid="span8">鸡</span></a> </div> </li> </ul> </div> </div>
  <div xid="div2" style="height:100%;float:right;background-color:white;width:67%;">
   <div xid="div3" class="list-group-item"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    <h5 xid="h51" class="media-heading" style="color:#505050;"><![CDATA[补3月份小菜新菜差价]]></h5>
  <h5 xid="h52" class="media-heading" style="color:#C5C5C5;"><![CDATA[单位：元]]></h5></div> 
  <div class="media-right" xid="mediaRight1">
   <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1"></span></div>
  </div></div>
  <div xid="div5" class="list-group-item">
   <div class="media" xid="media2">
    <div class="media-body" xid="mediaBody3">
     <h5 xid="h54" class="media-heading" style="color:#505050;"><![CDATA[困鸡]]></h5>
     <h5 xid="h53" class="media-heading" style="color:#C5C5C5;">单位：元</h5></div> 
    <div class="media-right" xid="mediaRight2">
     <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2"></span></div> </div> </div>
  <div xid="div6" class="list-group-item">
   <div class="media" xid="media3">
    <div class="media-body" xid="mediaBody4">
     <h5 xid="h56" class="media-heading" style="color:#505050;"><![CDATA[白豆腐]]></h5>
     <h5 xid="h55" class="media-heading" style="color:#C5C5C5;">单位：元</h5></div> 
    <div class="media-right" xid="mediaRight3">
     <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio3"></span></div> </div> </div></div></div></div></div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row3" style="width:100%;">
   <div class="x-col x-col-20 x-col-center" xid="col5" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn-radius1 btn btn-link btn-only-icon" label="button" xid="button8" icon="e-commerce e-commerce-shangpin1" style="background-color:#407422;color:#FFFFFF;">
     <i xid="i8" class="e-commerce e-commerce-shangpin1"></i>
     <span xid="span14"></span></a> </div> 
   <div class="x-col " xid="col8" style="line-height:40px; font-size:16px;">
    <span xid="span17">已选择</span>
    <span xid="number" class="allNumber" style="color:#FF5A1D;">3</span>
    <span xid="span16">项</span></div> 
   <div class="x-col x-col-50 text-center tb-settlement" xid="col9" bind-click="settlementClick">
    <span xid="span13"><![CDATA[我选好了]]></span></div> </div></div></div></div>