<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单查询"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订单查询</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1">
   
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
    <div class="x-col" xid="col4">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col" xid="col10">
       <span xid="span4">开始时间</span></div> 
      <div class="x-col" xid="col12" style="text-align:right;">
       <span xid="span6">2019-03-15</span></div> </div> </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col" xid="col9">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
      <div class="x-col" xid="col13">结束时间</div>
      <div class="x-col" xid="col15" style="text-align:right;">
       <span xid="span7">2019-03-22</span></div> </div> </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
     <div class="x-col" xid="col1" style="text-align:left;">
      <span xid="span5"><![CDATA[订单状态]]></span></div> 
  <div class="x-col" xid="col8" style="text-align:right;"><span xid="span1"><![CDATA[全部]]></span></div></div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col7">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
     <div class="x-col" xid="col5" style="text-align:left;">
      <span xid="span2"><![CDATA[下单方式]]></span></div> 
  <div class="x-col" xid="col14" style="text-align:right;"><span xid="span9"><![CDATA[全部]]></span></div></div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
    <div class="x-col" xid="col16">
     <div xid="div2" style="padding-top:30px;text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="订单查询" xid="orderSearchBtn" style="box-shadow:2px 4px 8px #e6e7e8;border-color:#07AD9E;width:80%;" onClick="orderSearchBtnClick">
       <i xid="i4"></i>
       <span xid="span8">订单查询</span></a> </div> </div> </div> 
  </div></div>
  </div> 
</div>