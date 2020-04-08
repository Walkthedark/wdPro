<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="returnOrderList" idColumn="id" onCustomRefresh="returnOrderListCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column name="re_coding" type="String" xid="xid2"></column>
  <column name="re_quantity" type="Integer" xid="xid3"></column>
  <column name="re_time" type="String" xid="xid4"></column>
  <column name="re_sum" type="Float" xid="xid5"></column>
  <column name="re_money_state" type="String" xid="xid6"></column>
  <column name="re_auditing_state" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="background-color:#F0F4F7;"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="退货单"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">退货单</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="searchBtn" icon="linear linear-magnifier">
   <i xid="i1" class="linear linear-magnifier"></i>
   <span xid="span1"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C85DA08984900001D7C9104DC1D7105E"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span2">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="returnOrderList">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color:#fff;margin-top:10px;" bind-click="li1Click"><div xid="div4"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" style="display:flex"><div xid="div5" style="flex:2;"><span xid="span11" style="font-size:16px;color:#333;" bind-text=' ref("re_coding")'></span></div>
  <div xid="div6" style="flex:1;text-align:right;"><span xid="span12" style="color:#f66;font-size;14px;" bind-text=' ref("re_auditing_state")'></span></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6"><div xid="div7" class="h-style"><span xid="span4"><![CDATA[数量：]]></span>
  <span xid="span7" bind-text=' ref("re_quantity")'></span></div>
  <div xid="div8" class="h-style"><span xid="span5"><![CDATA[时间：]]></span>
  <span xid="span8" bind-text=' ref("re_time")'></span></div>
  <div xid="div9" class="h-style"><span xid="span6"><![CDATA[金额：¥]]></span>
  <span xid="span9" bind-text=' ref("re_sum")'></span>
  <span xid="span10"></span></div></div></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div>
  </div> 
</div>