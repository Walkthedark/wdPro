<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <title>商品分类</title>
  <link rel="stylesheet" type="text/css" href="https://www.jq22.com/jquery/font-awesome.4.6.0.css"/>  
  <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"/>  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="categoryData" idColumn="cate_id" onCustomRefresh="categoryDataCustomRefresh"> 
      <column name="cate_id" type="String" xid="xid37"/>  
      <column name="cate_name" type="String" xid="xid38"/>  
      <column name="parent_id" type="String" xid="xid41"/>  
      <column name="children" type="String" xid="xid42"/> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid">
   <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
   <column name="goods_name" type="String" xid="xid19"></column>
   <column name="goods_img" type="String" xid="xid20"></column>
   <column name="goods_inventory" type="String" xid="xid21"></column>
   <column name="goods_sn" type="String" xid="xid22"></column>
   <column name="order_num" type="String" xid="xid23"></column>
   <column name="price" type="String" xid="xid24"></column>
   <column name="quantity" type="String" xid="xid25"></column>
   <column name="show_name" type="String" xid="xid26"></column>
   <column name="specification1_name" type="String" xid="xid27"></column>
   <column name="specification1_value" type="String" xid="xid28"></column>
   <column name="specification2_name" type="String" xid="xid29"></column>
   <column name="specification2_value" type="String" xid="xid30"></column>
   <column name="specification3_name" type="String" xid="xid31"></column>
   <column name="specification3_value" type="String" xid="xid32"></column>
   <column name="specification_id" type="String" xid="xid33"></column>
   <column name="unit_id" type="String" xid="xid34"></column>
   <column name="unit_name" type="String" xid="xid35"></column>
   <column name="unit" type="String" xid="xid36"></column>
   <column name="uuid" type="String" xid="xid95"></column>
   <rule xid="rule2">
    <col name="uuid" xid="ruleCol2">
     <defaultValue xid="default9">
      <expr xid="default10"></expr></defaultValue> 
     <calculate xid="calculate2">
      <expr xid="default11">justep.UUID.createUUID()</expr></calculate> </col> </rule> </div></div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1"> 
    <div class="x-contents-content" xid="content1"> 
    
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#D6D6D6;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="默认" xid="button1" icon="dataControl dataControl-arrowdownl">
    <span xid="span5">默认</span>
    <i xid="i1" class="dataControl dataControl-arrowdownl" style="font-size:14px;"></i></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="筛选" xid="button2" icon="dataControl dataControl-filter" >
    <span xid="span2">筛选</span>
    <i xid="i2" class="dataControl dataControl-filter" style="font-size:14px;"></i></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="搜索" xid="button3" icon="dataControl dataControl-search24">
    <span xid="span4">搜索</span>
    <i xid="i3" class="dataControl dataControl-search24" style="font-size:14px;"></i></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" icon="dataControl dataControl-thumnail">
    <span xid="span4"></span>
    <i xid="i4" class="dataControl dataControl-thumnail" style="font-size:15px;"></i></a> </div></div>
   <div class="x-panel-content" xid="content3"><div xid="div2" style="height:100%;width:100%;padding:3px 3px 3px 3px;"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1" style="height:100%;"> 
        <div class="col col-xs-4" xid="col1" style="height:100%;padding-right: 5px"><div xid="div1" id="test" style="background-color:#F4F3F4;"></div>
  </div>  
        <div class="col col-xs-8  " xid="col3" style="height:100%;">
  
  <div xid="div6" style="padding:0px 3px 0px 0px;height:100%;width:100%;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div4"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsDataM" style="overflow:auto" limit="20">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" bind-click="li2Click">
     <div xid="div26">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0px 0px 0px 0px;">
       <div class="x-col x-col-80" xid="col25">
        <div class="media" xid="media8">
         <div class="media-left" xid="mediaLeft6">
          <a href="#" xid="a6">
           <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic1.png" alt="" xid="image6" style="width:80px;" height="80px" bind-attr-src=' val("goods_img")'></img></a> </div> 
         <div class="media-body" xid="mediaBody8">
          <h4 xid="h47" class="media-heading" style="font-size:15px;color:#292929;" bind-text=' val("goods_name")'>澳大利亚牛肉</h4>
          <h5 xid="h521">
           <h5 xid="h523" style="margin-top:20px;">
            <span xid="span42" style="color:#cf0202;font-size:14px;">¥</span>
            <span xid="span41" style="color:#cf0202;font-size:14px;" bind-text='val("price")'>90.00</span></h5> 
           </h5> </div> </div> </div> 
       <div class="x-col" xid="col24">
        <div xid="div27" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart">
         <i xid="i16" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div5">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div></div> 
      </div></div></div>
   </div></div> 
  <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:60px;">
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col4"></div>
   <div class="x-col" xid="col5"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col6"></div>
   <div class="x-col" xid="col7"><span xid="span1"><![CDATA[无任何分类，请添加分类！]]></span></div>
   <div class="x-col" xid="col8"></div></div></div></div> 
</div>
