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
     <div class="x-titlebar-title" xid="title2">厨房</div>
     <div class="x-titlebar-right reverse" xid="right2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label btn_radius" label="操作" xid="caozuoBtn" icon="icon-android-settings" style="font-size:14px;line-height:27px;height:30px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;width:45px;" onClick='{"operation":"popMenu1.show"}'>
       <i xid="i1" class="icon-android-settings"></i>
       <span xid="span1">操作</span></a> </div> </div> </div> 
   <div class="x-panel-content" xid="content4" style="background-color:#EEEEEE;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
     <div class="x-panel-top" xid="top3" style="background-color:white;" height="94">
      <div class="media" xid="media3">
   <div class="media-left" xid="mediaLeft3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="交货时间" xid="button13" icon="e-commerce e-commerce-shizhong" style="color:#939393;font-size:16px;">
     <i xid="i12" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span19">交货时间</span></a> </div> 
   <div class="media-body" xid="mediaBody3" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="2018-09-12" xid="button12" icon="e-commerce e-commerce-shizhong" style="color:#407422;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#407422;">
     <i xid="i13" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span18">2018-09-12</span></a> </div> 
   <div class="media-right" xid="mediaRight1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="06:30" xid="button12" icon="e-commerce e-commerce-shizhong" style="color:#407422;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#407422;">
     <i xid="i12" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span15">06:30</span></a> </div> </div>
  <div class="media" xid="media4" style="background-color:#EEEEEE;">
   <div class="media-left" xid="mediaLeft4">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" xid="button14" icon="e-commerce e-commerce-shizhong" style="color:#939393;font-size:14px;" label="申购列表（3）">
     <i xid="i15" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span21">申购列表（3）</span></a> </div> 
   <div class="media-body" xid="mediaBody4" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="总计：" xid="button15" icon="e-commerce e-commerce-shizhong" style="color:#407422;font-size:14px;">
     <i xid="i15" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span22">总计：</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="¥0.00" xid="button15" icon="e-commerce e-commerce-shizhong" style="color:#FF5A1D;font-size:14px;">
     <i xid="i14" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span20">¥0.00</span></a></div> 
   </div></div> 
     <div class="x-panel-content" xid="content5">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:10px;"></div>
       
       
  <div xid="div3" style="background-color:white;width:100%;height:100%;"><div xid="div1" style="width:30%;height:100%;float:left;background-color:#EEEEEE;">
       <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
        <ul class="x-list-template" xid="listTemplateUl1">
         <li xid="li1" bind-css="{'listxz':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
          <div xid="div4" class="list-group-item div-color" style="padding:3px 3px 3px 3px;border-right-style:none;" bind-css="{'listxz3':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label  btn-color" label="鸡" xid="button7" bind-text=' val("col1")' target="content2" bind-css="{'listxz2':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
            <i xid="i7"></i>
            <span xid="span8">鸡</span></a> </div> </li> </ul> </div> </div><div xid="div2" style="height:100%;float:left;background-color:white;width:70%;">
       <div xid="div5" class="list-group-item" style="padding:7px 3px 7px 3px;border-left-style:none;">
            <div class="media" xid="media1">
             <div class="media-left" xid="mediaLeft1">
              <a href="#" xid="a1">
               <img class="media-object" src="$UI/mealChainSys/img/ji.jpg" alt="" xid="image1" style="width:60px;height:45px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E6E6E6 #E6E6E6 #E6E6E6 #E6E6E6;color:#DEDEDE;"></img></a> </div> 
             <div class="media-body" xid="mediaBody1">
              <h5 xid="h51" class="media-heading  btn-color" style="font-size:18px;">白斩鸡</h5>
              <h5 xid="h52" class="media-heading" style="color:#989898;"><![CDATA[1个等于3斤]]></h5></div> </div> 
            <div xid="div8" style="text-align:right;"><span xid="span3" style="color:#FF5A1D;font-size:18px;font-weight:bold;"><![CDATA[2]]></span>
  <span xid="span4" style=";font-size:16px;"><![CDATA[个=]]></span>
  <span xid="span5" style="color:#FF5A1D;font-size:18px;font-weight:bold;"><![CDATA[6]]></span>
  <span xid="span6" style="font-size:16px;"><![CDATA[斤]]></span></div>
            <div xid="div6" style="text-align:right;">
   <span xid="span9" style="font-size:12px;color:#BABABA;margin-right:5px;"><![CDATA[¥0.00/斤]]></span>
   <span xid="span10" style="font-size:12px;color:#BABABA;"><![CDATA[¥120.00]]></span>
   </div></div>
  <div xid="div10" class="list-group-item" style="padding:7px 3px 7px 3px;border-left-style:none;">
   <div class="media" xid="media2">
    <div class="media-left" xid="mediaLeft2">
     <a href="#" xid="a2">
      <img class="media-object" src="$UI/mealChainSys/img/ji.jpg" alt="" xid="image2" style="width:60px;height:45px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E6E6E6 #E6E6E6 #E6E6E6 #E6E6E6;color:#DEDEDE;"></img></a> </div> 
    <div class="media-body" xid="mediaBody2">
     <h5 xid="h54" class="media-heading  btn-color" style="font-size:18px;">白斩鸡</h5>
     <h5 xid="h53" class="media-heading" style="color:#989898;">1个等于3斤</h5></div> </div> 
   <div xid="div7" style="text-align:right;">
    <span xid="span14" style="color:#FF5A1D;font-size:18px;font-weight:bold;">2</span>
    <span xid="span16" style=";font-size:16px;">个=</span>
    <span xid="span17" style="color:#FF5A1D;font-size:18px;font-weight:bold;">6</span>
    <span xid="span23" style="font-size:16px;">斤</span></div> 
   <div xid="div9" style="text-align:right;">
    <span xid="span24" style="font-size:12px;color:#BABABA;margin-right:5px;">¥0.00/斤</span>
    <span xid="span12" style="font-size:12px;color:#BABABA;">¥120.00</span></div> </div></div></div></div> </div> </div> 
   <div class="x-panel-bottom" xid="bottom2" height="52">
    <div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row3" style="width:100%;height:100%;">
     <div class="x-col x-col-center text-center tb-settlement" xid="col5" style="text-align:center;">
      <span xid="span2"><![CDATA[审核通过]]></span></div> 
     <div class="x-col x-col-33 text-center tb-settlement" xid="col9" bind-click="settlementClick" style="background-color:white;">
      <span xid="span13" style="color:#407422;"><![CDATA[不通过]]></span></div> </div> </div> </div>
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="right-bottom" xid="popMenu1" anchor="caozuoBtn" opacity="0.1">
   <div class="x-popMenu-overlay" xid="div12"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu1" style="background-color:#272F2C;">
    <li class="x-menu-item" xid="item1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="编辑" xid="faqiShenGouBtn" icon="linear linear-pencil" style="color:#FFFFFF;" onClick="faqiShenGouBtnClick">
      <i xid="i2" class="linear linear-pencil"></i>
      <span xid="span25">编辑</span></a> </li> 
    <li class="x-menu-divider divider" xid="divider1"></li>
    <li class="x-menu-item" xid="item2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="新增" xid="button2" icon="e-commerce e-commerce-gou" style="color:#FFFFFF;">
      <i xid="i3" class="e-commerce e-commerce-gou"></i>
      <span xid="span26">新增</span></a> </li> </ul> </div></div>