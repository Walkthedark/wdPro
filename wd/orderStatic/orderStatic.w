<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:5px;left:136px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="year" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="year" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="monthOrder" idColumn="id" onCustomRefresh="monthOrderCustomRefresh"><column name="id" type="String" xid="xid3"></column>
  <column name="month" type="Integer" xid="xid4"></column>
  <column name="order_quantity" type="Integer" xid="xid5"></column>
  <column name="return_quantity" type="Integer" xid="xid6"></column>
  <column name="order_sum" type="Float" xid="xid7"></column>
  <column name="return_sum" type="Float" xid="xid8"></column>
  <column name="bg" type="String" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单统计"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订单统计</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="筛选" xid="orderFilterBtn" style="font-size:14px;text-align:center;" onClick="orderFilterBtnClick">
   <i xid="i1"></i>
   <span xid="span1">筛选</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C85E5B32A9800001EA93139D1DD91517" style="background-color:#e6e7e8;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span2">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="year">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><h5 xid="h52" bind-text='  val("year") +"年"' style="text-indent:15px;color:#333;">h5</h5><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="$model.monthOrder">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color:#fff;padding:5px 10px;"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <div xid="div4" style="text-align:center;" class="center-block"><span xid="span4" style="background-color:#e6e7e8;line-height:40px;display:block;border-radius:50%;height:40px;width:40px;" bind-text=" val(&quot;month&quot;) +'月'"></span></div></div> 
   <div class="media-body" xid="mediaBody1">
    <div xid="div5" style="padding:2px 8px;display:flex;"><div xid="div6" style="flex:1;"><div xid="div8" style="padding:2px 3px;"><span xid="span5"><![CDATA[订货]]></span>
  <span xid="span6" bind-text=' ref("order_quantity")'></span>
  <span xid="span7"><![CDATA[笔]]></span></div>
  <div xid="div9" style="font-size:12px;color:#666;padding:2px 3px;"><span xid="span8"><![CDATA[退货]]></span>
  <span xid="span9" bind-text='ref("return_quantity")'></span>
  <span xid="span10"><![CDATA[笔]]></span></div></div>
  <div xid="div14" style="flex:1;">
   <div xid="div13" style="padding:2px 3px;">
    <span xid="span18"><![CDATA[¥]]></span>
    <span xid="span19" bind-text=' ref("order_sum")'></span>
    <span xid="span20"><![CDATA[元]]></span></div> 
   <div xid="div12" style="font-size:12px;color:#666;padding:2px 3px;">
    <span xid="span21"><![CDATA[¥]]></span>
    <span xid="span22" bind-text='ref("return_sum")'></span>
    <span xid="span17"><![CDATA[元]]></span></div> </div></div></div> </div></li></ul> </div>
  </li></ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div>
  </div> 
</div>