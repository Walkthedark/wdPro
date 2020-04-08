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
     <div class="x-titlebar-title" xid="title2"><![CDATA[新增物料]]></div>
     <div class="x-titlebar-right reverse" xid="right2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="e-commerce e-commerce-fangdajing">
   <i xid="i5" class="e-commerce e-commerce-fangdajing"></i>
   <span xid="span5"></span></a></div> </div> </div> 
   <div class="x-panel-content" xid="content4" style="background-color:#EEEEEE;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:10px;"></div><div xid="div3" style="background-color:white;width:100%;height:100%;">
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
     <h5 xid="h52" class="media-heading" style="color:#989898;"><![CDATA[1个=3斤]]></h5></div> </div> 
   <div xid="div8" style="height:10px;"></div>
   <div xid="div7" style="text-align:right;margin-right:5px;height:40px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon btn-radius" label="button" xid="button9" icon=" icon-plus-round" style="background-color:#407422;color:#FFFFFF;;margin-top:13px;float:right;">
     <i xid="i9" class="icon-plus-round" style="font-size:16px;"></i>
     <span xid="span10"></span></a> 
    <div xid="div14" style="float:right;width:40px;" class="input-group">
     <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="compNoInp" style="width:80px;border-style:none none solid none;border-bottom-width:thin;border-bottom-color:#407422;"></input>
     <span xid="span7" class="input-group-addon" style="background-color:white;border-style:none none none none;font-size:12px;font-weight:bold;color:#333333;"><![CDATA[个]]></span></div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon btn-radius" label="button" xid="button11" icon="icon-minus-round" style="float:right;color:#407422;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;margin-top:10px;margin-right:10px;">
     <i xid="i11" class="icon-minus-round" style="font-size:16px;"></i>
     <span xid="span12"></span></a> </div> 
   <div xid="div9" style="height:10px;"></div>
   <div xid="div6">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="备注" xid="button10" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;color:#407422;" onClick="button10Click">
     <i xid="i10"></i>
     <span xid="span11">备注</span></a> </div> </div>
  <div xid="div16" class="list-group-item" style="padding:7px 3px 7px 3px;border-left-style:none;">
   <div class="media" xid="media2">
    <div class="media-left" xid="mediaLeft2">
     <a href="#" xid="a2">
      <img class="media-object" src="$UI/mealChainSys/img/ji.jpg" alt="" xid="image2" style="width:60px;height:45px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E6E6E6 #E6E6E6 #E6E6E6 #E6E6E6;color:#DEDEDE;"></img></a> </div> 
    <div class="media-body" xid="mediaBody2">
     <h5 xid="h54" class="media-heading  btn-color" style="font-size:18px;">白斩鸡</h5>
     <h5 xid="h53" class="media-heading" style="color:#989898;">1个=3斤</h5></div> </div> 
   <div xid="div12" style="height:10px;"></div>
   <div xid="div13" style="text-align:right;margin-right:5px;height:40px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon btn-radius" label="button" xid="button3" icon=" icon-plus-round" style="background-color:#407422;color:#FFFFFF;;margin-top:13px;float:right;">
     <i xid="i4" class="icon-plus-round" style="font-size:16px;"></i>
     <span xid="span1"></span></a> 
    <div xid="div10" style="float:right;width:40px;" class="input-group">
     <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="input1" style="width:80px;border-style:none none solid none;border-bottom-width:thin;border-bottom-color:#407422;"></input>
     <span xid="span4" class="input-group-addon" style="background-color:white;border-style:none none none none;font-size:12px;font-weight:bold;color:#333333;"><![CDATA[个]]></span></div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon btn-radius" label="button" xid="button4" icon="icon-minus-round" style="float:right;color:#407422;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;margin-top:10px;margin-right:10px;">
     <i xid="i2" class="icon-minus-round" style="font-size:16px;"></i>
     <span xid="span2"></span></a> </div> 
   <div xid="div11" style="height:10px;"></div>
   <div xid="div15">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="备注" xid="button2" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;color:#407422;" onClick="button10Click">
     <i xid="i3"></i>
     <span xid="span3">备注</span></a> </div> </div></div> </div>
  </div> 
   <div class="x-panel-bottom" xid="bottom2" height="52">
    <div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row3" style="width:100%;">
     <div class="x-col x-col-20 x-col-center" xid="col5" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn-radius1 btn btn-link btn-only-icon" label="button" xid="button8" icon="e-commerce e-commerce-shangpin1" style="background-color:#407422;color:#FFFFFF;">
       <i xid="i8" class="e-commerce e-commerce-shangpin1"></i>
       <span xid="span14"></span></a> </div> 
     <div class="x-col " xid="col8" style="line-height:40px; font-size:16px;">
      <span xid="span17">已选择</span>
      <span xid="number" class="allNumber" style="color:#FF5A1D;">3</span>
      <span xid="span16">项</span></div> 
     <div class="x-col x-col-50 text-center tb-settlement" xid="col9" bind-click="settlementClick">
      <span xid="span13"><![CDATA[完成]]></span></div> </div> </div> </div>
  <resource xid="resource2"><require xid="require1" url="css!$UI/mealChainSys/common/common"></require></resource></div>