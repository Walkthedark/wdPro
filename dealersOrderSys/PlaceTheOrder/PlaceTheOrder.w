<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="rootClassData" idColumn="fID" onCustomRefresh="rootClassDataCustomRefresh">
   <column label="id" name="fID" type="String" xid="default6"></column>
   <column label="标题" name="fClassName" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="secondClassData" idColumn="fID" onCustomRefresh="secondClassDataCustomRefresh">
   <column label="id" name="fID" type="String" xid="xid1"></column>
   <column label="一级分类ID" name="fRootID" type="String" xid="xid2"></column>
   <column label="分类名称" name="fClassName" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="threeClassData" onCustomRefresh="threeClassDataCustomRefresh" idColumn="fID">
   <column label="id" name="fID" type="String" xid="xid4"></column>
   <column label="二级分类ID" name="fSecondID" type="String" xid="xid5"></column>
   <column label="分类名称" name="fClassName" type="String" xid="xid7"></column>
   <column label="分类图片" name="fClassImg" type="String" xid="xid8"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#D6D6D6;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="默认" xid="button1" icon="dataControl dataControl-arrowdownl">
    <span xid="span1">默认</span><i xid="i1" class="dataControl dataControl-arrowdownl" style="font-size:14px;"></i>
    </a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="筛选" xid="button2" icon="dataControl dataControl-filter">
    <span xid="span2">筛选</span><i xid="i2" class="dataControl dataControl-filter" style="font-size:14px;"></i>
    </a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="搜索" xid="button3" icon="dataControl dataControl-search24">
   <span xid="span3">搜索</span><i xid="i3" class="dataControl dataControl-search24" style="font-size:14px;"></i>
   </a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" icon="dataControl dataControl-thumnail">
   <span xid="span4"></span><i xid="i4" class="dataControl dataControl-thumnail" style="font-size:15px;"></i>
   </a></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="height:5px;">
   <div class="x-col" xid="col21"></div></div><div component="$UI/system/components/bootstrap/row/row" class="row tb-box" xid="row1">
   <div class="col col-xs-3" xid="col10" style="padding-right:0px;">
    <div component="$UI/system/components/justep/list/list" class="x-list tb-root" xid="rootClassList" data="rootClassData" dataItemAlias="rootClassRow">
     <ul class="x-list-template list-group" xid="listTemplateUl1">
      <li xid="li1" bind-css="{'current':rootClassRow.val('fID')==$model.rootClassData.val('fID')}" class="list-group-item text-center tb-nopadding" style="border-right-style:none;">
       <h5 xid="h52" bind-text="ref('fClassName')" class="text-black"></h5></li> </ul> </div> </div> 
   <div class="col col-xs-9" xid="col11" style="border-left-style:solid;border-left-width:thin;border-left-color:#D6D6D6;">
    <div xid="div10" class="list-group-item" style="padding:5px 5px 5px 7px;background-color:white;height:35px;border-top-style:none;border-right-style:none;border-left-style:none;"><div class="media" xid="media5">
   
   <div class="media-body" xid="mediaBody5">
    <h5 xid="h514" class="media-heading" style="margin-top:5px;"><![CDATA[]]>
  <span xid="span22" style="color:#3F3F3F;font-size:16px;"><![CDATA[展开下级分类]]></span>
  <div xid="div1" class="pull-right" style="color:#3F3F3F;height:100%;width:40px;text-align:center;" bind-click="button5Click"><i xid="i10" class="icon-arrow-right-b"></i></div></h5>
  </div> </div></div><div xid="div2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;">
   <div class="x-col x-col-80" xid="col1"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic3.png" alt="" xid="image2" style="width:80px;" height="80px"></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    <h4 xid="h41" class="media-heading" style="font-size:15px;color:#292929;"><![CDATA[澳大利亚牛肉]]></h4>
  
  
  <h5 xid="h51"><![CDATA[]]><h5 xid="h53" style="margin-top:20px;"><![CDATA[]]>
  <span xid="span5" style="color:#cf0202;font-size:14px;"><![CDATA[¥]]></span>
  <span xid="span6" style="color:#cf0202;font-size:14px;"><![CDATA[90.00]]></span></h5><h5 xid="h54"><![CDATA[
  ]]>
  <span xid="span9" style="font-size:14px;color:#505050;"><![CDATA[库存:]]></span><span xid="span8" style="font-size:14px;color:#505050;"><![CDATA[34]]></span>
  </h5></h5></div> 
  </div></div>
   <div class="x-col" xid="col3"><div xid="div3" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart" bind-click="div3Click"><i xid="i5" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div>
  </div></div></div>
  <div xid="div5">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding:0px 0px 0px 0px;">
    <div class="x-col x-col-80" xid="col5">
     <div class="media" xid="media2">
      <div class="media-left" xid="mediaLeft2">
       <a href="#" xid="a2">
        <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic2.png" alt="" xid="image1" style="width:80px;" height="80px" dir="ltr"></img></a> </div> 
      <div class="media-body" xid="mediaBody2">
       <h4 xid="h42" class="media-heading" style="font-size:15px;color:#292929;">澳大利亚牛肉</h4>
       <h5 xid="h55">
        <h5 xid="h57" style="margin-top:20px;">
         <span xid="span7" style="color:#cf0202;font-size:14px;">¥</span>
         <span xid="span10" style="color:#cf0202;font-size:14px;">90.00</span></h5> 
        <h5 xid="h56">
         <span xid="span12" style="font-size:14px;color:#505050;">库存:</span>
         <span xid="span11" style="font-size:14px;color:#505050;">34</span></h5> </h5> </div> </div> </div> 
    <div class="x-col" xid="col4">
     <div xid="div4" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart" dir="ltr">
      <i xid="i7" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div>
  <div xid="div7">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0px 0px 0px 0px;">
    <div class="x-col x-col-80" xid="col7">
     <div class="media" xid="media3">
      <div class="media-left" xid="mediaLeft3">
       <a href="#" xid="a3">
        <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic1.png" alt="" xid="image3" style="width:80px;" height="80px"></img></a> </div> 
      <div class="media-body" xid="mediaBody3">
       <h4 xid="h43" class="media-heading" style="font-size:15px;color:#292929;">澳大利亚牛肉</h4>
       <h5 xid="h58">
        <h5 xid="h510" style="margin-top:20px;">
         <span xid="span13" style="color:#cf0202;font-size:14px;">¥</span>
         <span xid="span14" style="color:#cf0202;font-size:14px;">90.00</span></h5> 
        <h5 xid="h59">
         <span xid="span16" style="font-size:14px;color:#505050;">库存:</span>
         <span xid="span15" style="font-size:14px;color:#505050;">34</span></h5> </h5> </div> </div> </div> 
    <div class="x-col" xid="col6">
     <div xid="div6" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart">
      <i xid="i8" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div>
  <div xid="div9">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0px 0px 0px 0px;">
    <div class="x-col x-col-80" xid="col9">
     <div class="media" xid="media4">
      <div class="media-left" xid="mediaLeft4">
       <a href="#" xid="a4">
        <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic3.png" alt="" xid="image4" style="width:80px;" height="80px"></img></a> </div> 
      <div class="media-body" xid="mediaBody4">
       <h4 xid="h44" class="media-heading" style="font-size:15px;color:#292929;">澳大利亚牛肉</h4>
       <h5 xid="h511">
        <h5 xid="h513" style="margin-top:20px;">
         <span xid="span17" style="color:#cf0202;font-size:14px;">¥</span>
         <span xid="span18" style="color:#cf0202;font-size:14px;">90.00</span></h5> 
        <h5 xid="h512">
         <span xid="span20" style="font-size:14px;color:#505050;">库存:</span>
         <span xid="span19" style="font-size:14px;color:#505050;">34</span></h5> </h5> </div> </div> </div> 
    <div class="x-col" xid="col8">
     <div xid="div8" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart">
      <i xid="i9" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div>
  <div xid="div24">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="padding:0px 0px 0px 0px;">
    <div class="x-col x-col-80" xid="col23">
     <div class="media" xid="media6">
      <div class="media-left" xid="mediaLeft5">
       <a href="#" xid="a5">
        <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic2.png" alt="" xid="image5" style="width:80px;" height="80px"></img></a> </div> 
      <div class="media-body" xid="mediaBody6">
       <h4 xid="h46" class="media-heading" style="font-size:15px;color:#292929;">澳大利亚牛肉</h4>
       <h5 xid="h518">
        <h5 xid="h520" style="margin-top:20px;">
         <span xid="span38" style="color:#cf0202;font-size:14px;">¥</span>
         <span xid="span37" style="color:#cf0202;font-size:14px;">90.00</span></h5> 
        <h5 xid="h519">
         <span xid="span40" style="font-size:14px;color:#505050;">库存:</span>
         <span xid="span39" style="font-size:14px;color:#505050;">34</span></h5> </h5> </div> </div> </div> 
    <div class="x-col" xid="col22">
     <div xid="div25" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart">
      <i xid="i14" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div><div xid="div26">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0px 0px 0px 0px;">
    <div class="x-col x-col-80" xid="col25">
     <div class="media" xid="media8">
      <div class="media-left" xid="mediaLeft6">
       <a href="#" xid="a6">
        <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic1.png" alt="" xid="image6" style="width:80px;" height="80px"></img></a> </div> 
      <div class="media-body" xid="mediaBody8">
       <h4 xid="h47" class="media-heading" style="font-size:15px;color:#292929;">澳大利亚牛肉</h4>
       <h5 xid="h521">
        <h5 xid="h523" style="margin-top:20px;">
         <span xid="span42" style="color:#cf0202;font-size:14px;">¥</span>
         <span xid="span41" style="color:#cf0202;font-size:14px;">90.00</span></h5> 
        <h5 xid="h522">
         <span xid="span44" style="font-size:14px;color:#505050;">库存:</span>
         <span xid="span43" style="font-size:14px;color:#505050;">34</span></h5> </h5> </div> </div> </div> 
    <div class="x-col" xid="col24">
     <div xid="div27" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart">
      <i xid="i16" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div><div xid="div13" style="z-index:2;position:absolute;right:0;bottom:0;left:0;width:100%;background-color:rgba(0,0,0,.5);display:none;top:35px;" class="pop-div"><div xid="div14" style="width:100%;height:70%;background-color:#f5f5f5;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="height:5px;">
   <div class="x-col" xid="col13"></div></div>
  <div xid="div19"><div xid="div17" class="list-group-item" style="padding:5px 5px 5px 7px;height:30px;background-color:white;border-top-style:none;border-right-style:none;border-left-style:none;">
   <div class="media" xid="media7">
    <div class="media-body" xid="mediaBody7">
     <h5 xid="h516" class="media-heading" style="margin-top:5px;">
      <span xid="span23" style="color:#565656;"><![CDATA[南方牛肉]]></span>
      <div xid="div18" class="pull-right" style="color:#565656;height:100%;width:40px;text-align:center;" bind-click="button5Click">
       <i xid="i11" class="icon-arrow-right-b"></i></div> </h5> </div> </div> </div>
  <div xid="div20" style="background-color:white;padding:5px 5px 5px 5px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="南方肥牛牛肉" xid="button5" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#CDCDCD #CDCDCD #CDCDCD #CDCDCD;background-color:white;color:#565656;">
   <i xid="i12"></i>
   <span xid="span24">南方肥牛牛肉</span></a></div></div></div></div>
  
  </div> </div>
  </div>
   </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" position="bottom">
   <div class="x-popOver-overlay" xid="div21"></div>
   <div class="x-popOver-content ddd" xid="div22" style="height:60%;width:100%;background-color:white;"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div xid="div35">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
    <div class="x-col x-col-20" xid="col14">
     <img src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic2.png" alt="" xid="image8" height="60px" style="width:60px;" class="img-rounded "></img></div> 
    <div class="x-col" xid="col2" style="text-align:left;">
     <h4 class="media-heading" xid="h45" style="color:#545454;font-size:16px;"><![CDATA[澳大利亚牛肉]]></h4></div> 
    <div class="x-col" xid="col12" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" icon="icon-android-close" style="color:#3F3F3F;" onClick="button8Click">
      <i xid="i20" class="icon-android-close"></i>
      <span xid="span34"></span></a> </div> </div> </div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col16"></div>
   <div class="x-col" xid="col18"><div xid="div23"><div class="tb-numberOperation" xid="div34" style="text-align:right;">
   <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button11" icon="icon-android-add" onClick="addBtnClick" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;color:#FFFEFF;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;color:#FFFEFF;background-color:#cf0202;">
    <i xid="i18" class="icon-android-add"></i>
    <span xid="span36"></span></a>
   <span xid="span32" class="pull-right" style="line-height:0.8;height:22px;"><![CDATA[2]]></span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right" label="button" xid="button12" icon="icon-android-remove" onClick="reductionBtnClick" style="background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;color:#cf0202">
    <i xid="i15" class="icon-android-remove"></i>
    <span xid="span33"></span></a> </div></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1">
  
  <div xid="div11" style="height:100%;width:100%;"><div xid="div12" style="height:100%;width:60%;float:left;border-right-style:solid;border-right-width:thin;border-right-color:#D6D6D6;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="height:100%;width:100%;">
   <div class="x-col " xid="col17">
  
  <div class="media" xid="media9">
   
   <div class="media-body" xid="mediaBody9">
    <h5 xid="h515" class="media-heading" style="color:#505050;"><![CDATA[]]>
  <span xid="span26"><![CDATA[已选种类]]></span>
  <span xid="span27"><![CDATA[3]]></span>
  <span xid="span28"><![CDATA[数量]]></span>
  <span xid="span29"><![CDATA[6]]></span></h5>
  <h5 xid="h517" class="media-heading">
   <span xid="span31" style="color:#cf0202;"><![CDATA[¥]]></span>
   <span xid="span30" style="color:#cf0202;"><![CDATA[4000]]></span></h5></div> </div></div>
   </div></div>
  <div xid="div15" style="height:100%;width:407;text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="进入购物车" xid="button6" icon="linear linear-cart" style="color:#505050;">
   <i xid="i6" class="linear linear-cart" style="font-size:18px;"></i>
   <span xid="span35">进入购物车</span></a></div></div></div></div></div></div></div>