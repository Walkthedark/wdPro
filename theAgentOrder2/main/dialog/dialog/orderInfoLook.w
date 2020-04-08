<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" onActive="modelActive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="order_id">
   <column name="bill_message" type="String" xid="xid1"></column>
   <column name="order_id" type="String" xid="xid2"></column>
   <column name="cancel_reason" type="String" xid="xid3"></column>
   <column name="client_id" type="String" xid="xid4"></column>
   <column name="deliver_goods" type="String" xid="xid5"></column>
   <column name="delivery_time" type="String" xid="xid6"></column>
   <column name="discount_price" type="String" xid="xid7"></column>
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
   <column name="type_trans" type="String" xid="xid23"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
   <column name="name" type="String" xid="column2"></column>
   <column name="col2" type="String" xid="column3"></column>
   <data xid="default4">[]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:white;">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1" style="padding:5px 5px 5px 5px;"><![CDATA[]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right" label="全部状态" xid="button1" icon="icon-arrow-down-b" style="color:#4C4C4C;" onClick="button1Click">
   <i xid="i1" class="icon-arrow-down-b"></i>
   <span xid="span2">全部状态</span></a></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content2" style="background-color:#F2F1F2;" _xid="C8B621A7EB2000017295B4101BF01D27">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="orderData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click">
     <div xid="div3" style="padding:5px 5px 5px 5px;">
      <div xid="div4" class="box " style="background-color:white;padding-right:8px;padding-left:8px;">
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
         <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="待出库" xid="button6" style="font-size:16px;background-color:white;color:#00BFFF;border-style:none none none none;" bind-text=' val("type_trans")'>
          <i xid="i6"></i>
          <span xid="span18">待出库</span></a> </div> </div> 
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
          <span xid="span1" bind-text='val("order_time")'></span></h4> </div> </div> </div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div></div>
   </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver3">
   <div class="x-popOver-overlay" xid="div23"></div>
   <div class="x-popOver-content div_radius" xid="div24" style="height:60%;width:75%;">
    <div xid="div5" style="height:100%;width:100%;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
      <div class="x-panel-top" xid="top2">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#E1D6BD;">
        <div class="x-titlebar-left" xid="left2"></div>
        <div class="x-titlebar-title" xid="title2">订单状态</div>
        <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
      <div class="x-panel-content" xid="content7" style="background-color:white;">
       <div xid="div25" style="padding:8px 3px 3px 5px;background-color:#EEEEEE;">
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="data2">
         <ul class="x-list-template" xid="listTemplateUl5">
          <li xid="li6" bind-click="li3Click">
           <div xid="div26" class="list-group-item">
            <div class="media" xid="media9">
             <div class="media-body" xid="mediaBody9">
              <h4 class="media-heading" xid="h43" bind-text=' val("name")' style="text-align:center;font-size:18px;color:#484848;">Media heading</h4></div> </div> </div> </li> </ul> </div> </div> </div> </div> </div> </div> </div></div>