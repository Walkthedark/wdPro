<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="col0">
   <column name="col0" type="String" xid="xid1"></column>
   <column name="col1" type="String" xid="xid2"></column>
   <data xid="default1">[{&quot;col0&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;鸡&quot;},{&quot;col0&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;鸭&quot;},{&quot;col0&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;牛肉&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#272F2C;">
     <div class="x-titlebar-left" xid="left2"></div>
     <div class="x-titlebar-title" xid="title2"><![CDATA[设置厨房物料]]></div>
     <div class="x-titlebar-right reverse" xid="right2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="保存" xid="button1" icon="linear linear-pencil">
       <i xid="i1" class="linear linear-pencil"></i>
       <span xid="span1">保存</span></a> </div> </div> 
  </div> 
   <div class="x-panel-content" xid="content4" style="background-color:#EEEEEE;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
     <div class="x-panel-top" xid="top3" style="background-color:white;" height="52">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:100%;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col x-col-75" xid="col2">
    <div class="content_bg input_radius form-group has-feedback text-muted" xid="formGroup1">
     <input component="$UI/system/components/justep/input/input" class="input_radius form-control x-inputText" xid="key" placeHolder="请输入无物料名称"></input>
     <i class="icon-ios7-search-strong form-control-feedback" xid="col4"></i></div> </div> 
   <div class="x-col" xid="col3"></div></div></div> 
     <div class="x-panel-content" xid="content5">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:10px;"></div>
      <div xid="div1" style="width:30%;height:100%;float:left;background-color:white;">
       <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
        <ul class="x-list-template" xid="listTemplateUl1">
         <li xid="li1" bind-css="{'listxz':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
          <div xid="div4" class="list-group-item" style="padding:3px 3px 3px 3px;">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label  btn-color" label="鸡" xid="button7" bind-text=' val("col1")' target="content2" bind-css="{'listxz2':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
            <i xid="i7"></i>
            <span xid="span8">鸡</span></a> </div> </li> </ul> </div> </div> 
      <div xid="div2" style="float:right;background-color:white;width:67%;">
       
       <div xid="div3" class="list-group-item"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" label="烧鸡" style="color:#111111;"></span></div>
  <div xid="div5" class="list-group-item">
   <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio3" label="闲鸡" style="color:#111111;"></span></div></div> </div> </div> </div> 
   </div></div>