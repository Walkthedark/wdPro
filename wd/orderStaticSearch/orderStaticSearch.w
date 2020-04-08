<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单统计查询"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订单统计查询</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="一周内" xid="button1" style="color:#555;border-color:#07AD9E;width:100%;">
   <i xid="i1"></i>
   <span xid="span1">一周内</span></a></div>
   <div class="x-col" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="一个月内" xid="button2" style="color:#555;border-color:#07AD9E;width:100%;">
   <i xid="i2"></i>
   <span xid="span2">一个月内</span></a></div>
   <div class="x-col" xid="col3"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="3个月内" xid="button3" style="color:#555;border-color:#07AD9E;width:100%;">
   <i xid="i3"></i>
   <span xid="span3">3个月内</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10"><span xid="span4"><![CDATA[开始时间]]></span></div>
   <div class="x-col" xid="col12" style="text-align:right;"><span xid="span6"><![CDATA[2019-03-15]]></span></div></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13"><![CDATA[结束时间]]></div>
   <div class="x-col" xid="col15" style="text-align:right;"><span xid="span7"><![CDATA[2019-03-22]]></span></div></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col16"><div xid="div2" style="padding-top:30px;text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="统计查询" xid="staticSearchBtn" style="box-shadow:2px 4px 8px #e6e7e8;border-color:#07AD9E;width:80%;" onClick="staticSearchBtnClick">
   <i xid="i4"></i>
   <span xid="span8">统计查询</span></a></div></div>
   </div></div></div>
  </div> 
</div>