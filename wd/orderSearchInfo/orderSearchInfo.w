<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderGoodsList" idColumn="id" onCustomRefresh="orderGoodsListCustomRefresh">
   <column name="id" type="String" xid="xid1"></column>
   <column name="order_coding" type="String" xid="xid2"></column>
   <column name="order_quantity" type="Integer" xid="xid3"></column>
   <column name="order_create_time" type="String" xid="xid4"></column>
   <column name="order_sum" type="Float" xid="xid5"></column>
   <column name="order_auting_state" type="String" xid="xid6"></column>
   <column name="order_money_state" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订货单"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订货单</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C85E90BF5A800001E569817212F7B140" style="background-color:#e6e7e8;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><ul class="x-list x-list-template" component="$UI/system/components/justep/list/list" limit="-1" xid="list1" data="orderGoodsList">
   <li xid="li2" style="margin-top:10px;background-color:#fff;" bind-click="li2Click">
    <div xid="div4">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
      <div class="x-col" xid="col1" style="display:flex">
       <div xid="div5" style="flex:2;">
        <span xid="span11" style="font-size:16px;color:#333;" bind-text='ref("order_coding")'></span></div> 
       <div xid="div6" style="flex:1;text-align:right;">
        <span xid="span3" style="color:#f66;font-size;14px;" bind-text='ref("order_auting_state")'></span></div> </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
      <div class="x-col" xid="col6">
       <div xid="div7" class="h-style">
        <span xid="span4">数量：</span>
        <span xid="span7" bind-text='ref("order_quantity")'></span></div> 
       <div xid="div8" class="h-style">
        <span xid="span5">时间：</span>
        <span xid="span8" bind-text='ref("order_create_time")'></span></div> 
       <div xid="div9" class="h-style">
        <span xid="span6">金额：¥</span>
        <span xid="span9" bind-text='ref("order_sum")'></span>
        <span xid="span10" bind-text='"(" +val("order_money_state") +")"'></span></div> </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
      <div class="x-col" xid="col4" style="text-align:right;">
       <a component="$UI/system/components/justep/button/button" class="btn   btn-link btn-xs btn-only-label" label="再次购买" xid="againShop" style="border:1px solid #2fa4e7;">
        <i xid="i2"></i>
        <span xid="span15">再次购买</span></a> </div> </div> </div> </li> </ul></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>