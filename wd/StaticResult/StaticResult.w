<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
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
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1" style="height:100%;display:flex;flex-direction:column;"><div xid="div2" style="flex:1;background-color:#23DCDC;color:#fff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-top:22%;">
   <div class="x-col" xid="col1" style="text-align:center;"><span xid="span1"><![CDATA[订单金额(¥)]]></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4" style="font-size:22px;text-align:center;"><span xid="span3"><![CDATA[0.00]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7" style="text-align:center;"><span xid="span8"><![CDATA[0]]></span>
  <span xid="span9"><![CDATA[笔]]></span></div>
   </div></div>
  <div xid="div3" style="flex:1;position:relative;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:20%;">
   <div class="x-col" xid="col10" style="text-align:center;"><span xid="span4"><![CDATA[退货金额(¥)]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13" style="font-size:22px;text-align:center;"><span xid="span5"><![CDATA[0.00]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col14" style="text-align:center;"><span xid="span6"><![CDATA[0]]></span>
  <span xid="span7"><![CDATA[笔]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="position:absolute;bottom:0;">
   <div class="x-col" xid="col15" style="text-align:center;"><span xid="span10"><![CDATA[2019年03月15日]]></span>
  <span xid="span11"><![CDATA[-]]></span>
  <span xid="span12"><![CDATA[2019年03月16日]]></span></div>
   </div></div></div></div>
  </div> 
</div>