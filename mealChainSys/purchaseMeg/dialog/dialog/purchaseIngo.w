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
     <div class="x-titlebar-title" xid="title2"><![CDATA[申购详情]]></div>
     <div class="x-titlebar-right reverse" xid="right2">
      </div> </div> </div> 
   <div class="x-panel-content" xid="content4" style="background-color:#EEEEEE;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
     <div class="x-panel-top" xid="top3" style="background-color:white;" height="144">
      <div class="media" xid="media3" style="padding:0px 0px 0px 0px;">
       <div class="media-left" xid="mediaLeft3">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="09/13 09:44" xid="button13" icon="e-commerce e-commerce-shizhong" style="color:#939393;">
         <i xid="i12" class="e-commerce e-commerce-shizhong"></i>
         <span xid="span19">09/13 09:44</span></a> </div> 
       <div class="media-body" xid="mediaBody3" style="text-align:center;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="厨房" xid="button12" icon="e-commerce e-commerce-shizhong" style="color:#407422;">
         <i xid="i13" class="e-commerce e-commerce-shizhong"></i>
         <span xid="span18">厨房</span></a> </div> 
       <div class="media-right" xid="mediaRight1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" label="已下单" xid="button12" icon="dataControl dataControl-arrowrightl" style="color:#939393;" onClick="button12Click">
         <i xid="i12" class="dataControl dataControl-arrowrightl"></i>
         <span xid="span15">已下单</span></a> </div> </div> 
      <div class="media" xid="media5" style="padding:0px 0px 0px 0px;">
   <div class="media-left" xid="mediaLeft5">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="交货时间：09/13 13:00" xid="button1" icon="e-commerce e-commerce-shizhong" style="color:#939393;">
     <i xid="i2" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span2">交货时间：09/13 13:00</span></a> </div> 
   <div class="media-body" xid="mediaBody5" style="text-align:right;">
    </div> 
   <div class="media-right" xid="mediaRight2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="收购人：张三" xid="button2" icon="e-commerce e-commerce-shizhong" style="color:#939393;">
     <i xid="i2" class="e-commerce e-commerce-shizhong"></i>
     <span xid="span7">收购人：张三</span></a> </div> </div><div class="media" xid="media4" style="background-color:#EEEEEE;">
       <div class="media-left" xid="mediaLeft4">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" xid="button14" icon="e-commerce e-commerce-shizhong" style="color:#939393;font-size:14px;" label="申购列表（3）">
         <i xid="i15" class="e-commerce e-commerce-shizhong"></i>
         <span xid="span21">申购列表（3）</span></a> </div> 
       <div class="media-body" xid="mediaBody4" style="text-align:right;">
        
        </div> </div> 
  </div> 
     <div class="x-panel-content" xid="content5">
      <div xid="div3" style="background-color:white;width:100%;height:100%;">
       <div xid="div1" style="width:30%;height:100%;float:left;background-color:#EEEEEE;">
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
         <ul class="x-list-template" xid="listTemplateUl1">
          <li xid="li1" bind-css="{'listxz':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
           <div xid="div4" class="list-group-item div-color" style="padding:3px 3px 3px 3px;border-right-style:none;" bind-css="{'listxz3':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label  btn-color" label="鸡" xid="button7" bind-text=' val("col1")' target="content2" bind-css="{'listxz2':   $model.data1.val(&quot;col0&quot;)==$object.val('col0')}">
             <i xid="i7"></i>
             <span xid="span8">鸡</span></a> </div> </li> </ul> </div> </div> 
       <div xid="div2" style="height:100%;float:left;background-color:white;width:70%;">
        <div xid="div5" class="list-group-item" style="padding:7px 3px 7px 3px;border-left-style:none;">
         <div class="media" xid="media1">
          <div class="media-left" xid="mediaLeft1">
           <a href="#" xid="a1">
            <img class="media-object" src="$UI/mealChainSys/img/ji.jpg" alt="" xid="image1" style="width:60px;height:45px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E6E6E6 #E6E6E6 #E6E6E6 #E6E6E6;color:#DEDEDE;"></img></a> </div> 
          <div class="media-body" xid="mediaBody1">
           <h5 xid="h51" class="media-heading  btn-color" style="font-size:18px;">白斩鸡</h5>
           <h5 xid="h52" class="media-heading" style="color:#989898;">1个等于3斤</h5></div> </div> 
         <div xid="div8" style="text-align:right;">
          <span xid="span3" style="color:#FF5A1D;font-size:18px;font-weight:bold;">2</span>
          <span xid="span4" style=";font-size:16px;">个=</span>
          <span xid="span5" style="color:#FF5A1D;font-size:18px;font-weight:bold;">6</span>
          <span xid="span6" style="font-size:16px;">斤</span></div> 
         <div xid="div6" style="text-align:right;">
          <span xid="span9" style="font-size:12px;color:#BABABA;margin-right:5px;">¥0.00/斤</span>
          <span xid="span10" style="font-size:12px;color:#BABABA;">¥120.00</span></div> </div> 
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
          <span xid="span12" style="font-size:12px;color:#BABABA;">¥120.00</span></div> </div> </div> </div> </div> </div> </div> 
   </div></div>