<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="col0">
   <column name="col0" type="String" xid="xid1"></column>
   <column name="col1" type="String" xid="xid2"></column>
   <data xid="default1">[{&quot;col0&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;鸡&quot;},{&quot;col0&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;鸭&quot;},{&quot;col0&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;牛肉&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#272F2C;">
   <div class="x-titlebar-left" xid="left2"></div>
   <div class="x-titlebar-title" xid="title2"><![CDATA[编辑订单]]></div>
   <div class="x-titlebar-right reverse" xid="right2">
    </div> </div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
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
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="总计：" xid="button15" icon="e-commerce e-commerce-shizhong" style="color:#407422;font-size:14px;width:50px;">
       <i xid="i15" class="e-commerce e-commerce-shizhong"></i>
       <span xid="span22">总计：</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="¥0.00" xid="button15" icon="e-commerce e-commerce-shizhong" style="color:#FF5A1D;font-size:14px;">
       <i xid="i14" class="e-commerce e-commerce-shizhong"></i>
       <span xid="span20">¥0.00</span></a> </div> </div> </div> 
   <div class="x-panel-content" xid="content5">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:10px;"></div>
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
     <h5 xid="h52" class="media-heading" style="color:#989898;"><![CDATA[1个=3斤]]></h5></div> 
  <div class="media-right" xid="mediaRight2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button1" icon="glyphicon glyphicon-trash" style="color:#9C9C9C;font-size:14px;">
   <i xid="i1" class="glyphicon glyphicon-trash"></i>
   <span xid="span1"></span></a>
  </div></div> 
   <div xid="div8" style="height:10px;"></div>
   <div xid="div7" style="text-align:right;margin-right:5px;height:40px;">
    
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="斤" xid="button3" style="float:right;color:#979797;">
   <i xid="i3"></i>
   <span xid="span3">斤</span></a>
  <div xid="div11" style="border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#C4C4C4;width:60px;float:right;">
   <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" style="width:60px;border-style:none none none none;"></input></div><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="个=" xid="button4" style="float:right;color:#979797;">
   <i xid="i4"></i>
   <span xid="span4">个=</span></a><div xid="div10" style="border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#C4C4C4;width:60px;float:right;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" style="width:60px;border-style:none none none none;"></input></div>
  </div> 
   <div xid="div9" style="height:10px;"></div>
   <div xid="div6">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="备注" xid="button10" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;color:#407422;" onClick="button10Click">
     <i xid="i10"></i>
     <span xid="span11">备注</span></a> </div> </div>
  <div xid="div18" class="list-group-item" style="padding:7px 3px 7px 3px;border-left-style:none;">
   <div class="media" xid="media2">
    <div class="media-left" xid="mediaLeft2">
     <a href="#" xid="a3">
      <img class="media-object" src="$UI/mealChainSys/img/ji.jpg" alt="" xid="image3" style="width:60px;height:45px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E6E6E6 #E6E6E6 #E6E6E6 #E6E6E6;color:#DEDEDE;"></img></a> </div> 
    <div class="media-body" xid="mediaBody2">
     <h5 xid="h54" class="media-heading  btn-color" style="font-size:18px;">白斩鸡</h5>
     <h5 xid="h53" class="media-heading" style="color:#989898;"><![CDATA[1个=3斤]]></h5></div> 
    <div class="media-right" xid="mediaRight3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button9" icon="glyphicon glyphicon-trash" style="color:#9C9C9C;font-size:14px;">
      <i xid="i6" class="glyphicon glyphicon-trash"></i>
      <span xid="span9"></span></a> </div> </div> 
   <div xid="div15" style="height:10px;"></div>
   <div xid="div16" style="text-align:right;margin-right:5px;height:40px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="斤" xid="button6" style="float:right;color:#979797;">
     <i xid="i8"></i>
     <span xid="span6">斤</span></a> 
    <div xid="div13" style="border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#C4C4C4;width:60px;float:right;">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4" style="width:60px;border-style:none none none none;"></input></div> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="个=" xid="button5" style="float:right;color:#979797;">
     <i xid="i9"></i>
     <span xid="span7">个=</span></a> 
    <div xid="div12" style="border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#C4C4C4;width:60px;float:right;">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="input5" style="width:60px;border-style:none none none none;"></input></div> </div> 
   <div xid="div14" style="height:10px;"></div>
   <div xid="div17">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="备注" xid="button8" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#407422 #407422 #407422 #407422;color:#407422;" onClick="button10Click">
     <i xid="i5"></i>
     <span xid="span5">备注</span></a> </div> </div></div> </div> </div> </div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:100%;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col x-col-80" xid="col2" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-radius" label="完成" xid="button2" style="background-color:#407422;color:#FFFFFF;width:100%;">
     <i xid="i2"></i>
     <span xid="span2">完成</span></a> </div> 
   <div class="x-col" xid="col3"></div></div></div></div></div>