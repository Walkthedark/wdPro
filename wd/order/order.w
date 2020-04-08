<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:9px;left:125px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderGoodsList" idColumn="id" onCustomRefresh="orderGoodsListCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column name="order_coding" type="String" xid="xid2"></column>
  <column name="order_quantity" type="Integer" xid="xid3"></column>
  <column name="order_create_time" type="String" xid="xid4"></column>
  <column name="order_sum" type="Float" xid="xid5"></column>
  <column name="order_auting_state" type="String" xid="xid6"></column>
  <column name="order_money_state" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="order_id" onCustomRefresh="orderDataCustomRefresh">
   <column name="bill_message" type="String" xid="column1"></column>
   <column name="order_id" type="String" xid="column2"></column>
   <column name="cancel_reason" type="String" xid="column3"></column>
   <column name="client_id" type="String" xid="column4"></column>
   <column name="deliver_goods" type="String" xid="column5"></column>
   <column name="delivery_time" type="String" xid="column6"></column>
   <column name="discount_price" type="String" xid="column7"></column>
   <column name="gathering_type" type="String" xid="xid8"></column>
   <column name="is_discount" type="String" xid="xid9"></column>
   <column name="is_instead" type="String" xid="xid10"></column>
   <column name="logistics_cn" type="String" xid="xid11"></column>
   <column name="make" type="String" xid="xid12"></column>
   <column name="name" type="String" xid="xid13"></column>
   <column name="num" type="String" xid="xid14"></column>
   <column name="order_des" type="String" xid="xid15"></column>
   <column name="print_type" type="String" xid="xid16"></column>
   <column name="order_sn" type="String" xid="xid17"></column>
   <column name="order_time" type="String" xid="xid18"></column>
   <column name="out_warehouse" type="String" xid="xid19"></column>
   <column name="price" type="String" xid="xid20"></column>
   <column name="search_goods" type="String" xid="xid21"></column>
   <column name="type" type="String" xid="xid22"></column>
   <column name="type_trans" type="String" xid="xid23"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   <div class="x-panel-top" xid="top4">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar4" style="background-color:#47D1D1;">
     <div class="x-titlebar-left" xid="left4">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="seachBtn" icon="linear linear-magnifier" onClick="seachBtnClick">
       <i xid="i9" class="linear linear-magnifier"></i>
       <span xid="span14"></span></a> </div> 
     <div class="x-titlebar-title" xid="title4">订货单</div>
     <div class="x-titlebar-right reverse" xid="right4">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="cartBtn" icon="linear linear-cart">
       <i xid="i7" class="linear linear-cart"></i>
       <span xid="span12"></span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="orderStaticBtn" icon="dataControl dataControl-report" onClick="orderStaticBtnClick">
       <i xid="i8" class="dataControl dataControl-report"></i>
       <span xid="span13"></span></a></div> </div> </div> 
   <div class="x-panel-content  x-scroll-view" xid="content4" _xid="C85DE7522A8000011552F0305BEF11D5" style="background-color:#e6e7e8;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="orderData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li2" bind-click="li2Click">
     <div xid="div11" style="padding:5px 5px 5px 5px;">
      <div xid="div10" class="box " style="background-color:white;padding-right:8px;padding-left:8px;">
       <em class="first" xid="default1"></em>
       <em class="last" xid="default2"></em>
       <div class="media" xid="media4" style="margin-top:5px;">
        <div class="media-body" xid="mediaBody4">
         <h4 class="media-heading" xid="h44">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="订" xid="button5" style="background-color:white;color:#00BFFF;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#00BFFF #00BFFF #00BFFF #00BFFF;">
           <i xid="i5"></i>
           <span xid="span22">订</span></a> 
          <span xid="span17" style="font-size:16px;color:#242424;margin-left:3px;" bind-text='val("name")'>瑞龙商务公司</span></h4> </div> 
        <div class="media-right" xid="mediaRight3">
         </div> </div> 
       <div class="media" xid="media3" style="margin-top:5px;">
        <div class="media-body" xid="mediaBody3">
         <h4 class="media-heading" xid="h46" style="font-size:14px;color:#818181;">
          <span xid="span19">应收：¥</span>
          <span xid="span20" bind-text='val("price")+"元"'>80元</span>
          <span xid="span21">(待收</span>
          <span xid="span27" style="color:#00BFFF" bind-text=' val("is_discount")==0?"¥"+val("price"):val("discount_price")'>¥80.00</span>
          <span xid="span29">)</span></h4> 
         <h4 class="media-heading" xid="h45" style="font-size:14px;color:#818181;">
          <span xid="span28" bind-text=' val("make") +""'>张三 2019/09/26 15:43</span>
          <span xid="span16" bind-text='val("order_time")'></span></h4> </div> </div> </div> </div> </li> </ul> </div></div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div></div></div>