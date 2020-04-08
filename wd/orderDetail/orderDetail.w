<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="订单详情"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">订单详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#e6e7e8;"><div xid="div1" style="background-color:#fff;">
   <div xid="div2">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
     <div class="x-col" xid="col1">
      <div xid="div3" style="border-bottom:1px solid #e6e7e8;padding:3px 0;">
       <div xid="div4" style="padding:3px 0;display:flex;">
        <div xid="div5" style="flex:1;">
         <span xid="span3"><![CDATA[订单状态]]></span></div> 
        <div xid="div6" style="flex:1;text-align:right;">
         <span xid="span4" style="color:#f66;"><![CDATA[待订单审核]]></span></div> </div> 
       <div xid="div7" class="h-style">
        <span xid="span5">公司名称：</span>
        <span xid="span2">眉县向阳果业有限公司</span></div> 
       <div xid="div8" class="h-style">
        <span xid="span6"><![CDATA[订货单号：]]></span>
        <span xid="span8">DH-R-20190313-120432</span></div> 
       <div xid="div9" class="h-style" style="position:relative;">
        <span xid="span7">下单时间：</span>
        <span xid="span9">2019-03-19 10:10:40</span>
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" label="催办" xid="urge" style="border-radius:20px;position:absolute;right:0;top:-10px;background-color:#f66;color:#fff;">
         <i xid="i2"></i>
         <span xid="span10">催办</span></a> </div> </div> </div> </div> </div> 
   <div xid="div10">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
     <div class="x-col" xid="col2">
      <span xid="span11"><![CDATA[订单金额]]></span></div> 
     <div class="x-col" xid="col4" style="text-align:right;">
      <span xid="span12">¥</span>
      <span xid="span13">30.00</span></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
     <div class="x-col" xid="col5">
      <div xid="div11" class="h-style" style="display:flex">
       <div xid="div13" style="flex:1">
        <span xid="span14">商品金额</span></div> 
       <div xid="div14" style="flex:1;text-align:right;">
        <span xid="span15">¥</span>
        <span xid="span18"><![CDATA[30.00]]></span></div> </div> 
      <div xid="div12" class="h-style" style="display:flex" bind-if="false">
       <div xid="div15" style="flex:1">
        <span xid="span16">审批金额</span></div> 
       <div xid="div16" style="flex:1;text-align:right;">
        <span xid="span17">¥</span>
        <span xid="span19">30.00</span></div> </div> </div> </div> </div> 
  </div><div xid="div19" style="background-color:#fff;margin-top:10px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
    <div class="x-col" xid="col7">
     <span xid="span27"><![CDATA[出库/发货记录]]></span></div> 
    <div class="x-col" xid="col3" style="text-align:right;">
     <span xid="span23"><![CDATA[备货中/待发货]]></span></div> </div> 
   </div>
  <div xid="div24" style="background-color:#fff;margin-top:10px"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col10"><div xid="div51" style="display:flex;" class="div-border">
   <div xid="div52" style="line-height:2;flex:1;text-align:left;">
    <span xid="span35"><![CDATA[备注信息]]></span></div> 
   <div xid="div53" style="flex:1;line-height:2;text-align:right;">
    <span xid="span34"><![CDATA[0]]></span></div> 
   <div xid="div54">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button3" icon="linear linear-chevronright">
     <i xid="i4" class="linear linear-chevronright"></i>
     <span xid="span36"></span></a> </div> </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col13"><div xid="div38" style="display:flex;" class="div-border">
   <div xid="div39" style="flex:1;line-height:2;"><span xid="span28"><![CDATA[商品清单]]></span></div>
   <div xid="div37" style="flex:1;line-height:2;text-align:right;"><span xid="span29"><![CDATA[共]]></span>
  <span xid="span37"><![CDATA[1]]></span>
  <span xid="span38"><![CDATA[款，总数]]></span>
  <span xid="span39"><![CDATA[2]]></span></div>
  <div xid="div46"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button1" icon="linear linear-chevronright">
   <i xid="i1" class="linear linear-chevronright"></i>
   <span xid="span30"></span></a></div></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col14"><div xid="div47" style="display:flex;" class="div-border">
   <div xid="div48" style="flex:1;line-height:2;">
    <span xid="span32"><![CDATA[订单附件]]></span></div> 
   <div xid="div49" style="flex:1;line-height:2;text-align:right;">
    <span xid="span31"><![CDATA[0]]></span></div> 
   <div xid="div50">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button2" icon="linear linear-chevronright">
     <i xid="i3" class="linear linear-chevronright"></i>
     <span xid="span33"></span></a> </div> </div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col17"><div xid="div44" style="padding:3px 0;display:flex;">
   <div xid="div45" style="flex:1;"><span xid="span40"><![CDATA[交货日期]]></span></div>
   <div xid="div43" style="flex:1;"></div></div></div>
   </div></div>
  <div xid="div55" style="margin-top:10px;background-color:#fff;"><div xid="div58">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
    <div class="x-col" xid="col22">
     <span xid="span49"><![CDATA[收货信息]]></span></div> 
    <div class="x-col" xid="col20" style="text-align:right;">
     </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
    <div class="x-col" xid="col21">
     <div xid="div59" class="h-style" style="display:flex">
      <div xid="div57" style="flex:1">
       <span xid="span44"><![CDATA[客户名称]]></span></div> 
      <div xid="div61" style="flex:1;text-align:right;">
       <span xid="span47"><![CDATA[眉县向阳果业有限公司]]></span>
       </div> </div> 
     <div xid="div64" class="h-style" style="display:flex">
   <div xid="div63" style="flex:1">
    <span xid="span52"><![CDATA[收货人]]></span></div> 
   <div xid="div65" style="flex:1;text-align:right;">
    <span xid="span50"><![CDATA[18213213245]]></span></div> </div></div> </div> </div></div>
  <div xid="div67" style="margin-top:10px;background-color:#fff;">
   <div xid="div68">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
     <div class="x-col" xid="col25">
      <span xid="span54"><![CDATA[发票信息]]></span></div> 
     <div class="x-col" xid="col24" style="text-align:right;"></div></div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
     <div class="x-col" xid="col23">
      <div xid="div69" class="h-style" style="display:flex">
       <div xid="div66" style="flex:1">
        <span xid="span55"><![CDATA[发票类型]]></span></div> 
       <div xid="div73" style="flex:1;text-align:right;">
        <span xid="span53"><![CDATA[不需要发票]]></span></div> </div> 
      </div> </div></div> </div>
  <div xid="div74" style="margin:10px 0;background-color:#fff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14">
   <div class="x-col" xid="col26">
    <div xid="div78" style="display:flex;">
     <div xid="div76" style="line-height:2;flex:1;text-align:left;">
      <span xid="span59"><![CDATA[操作日志]]></span></div> 
     <div xid="div77" style="flex:1;line-height:2;text-align:right;">
      <span xid="span60">0</span></div> 
     <div xid="div75">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button4" icon="linear linear-chevronright">
       <i xid="i5" class="linear linear-chevronright"></i>
       <span xid="span58"></span></a> </div> </div> </div> </div></div></div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="padding:0;">
   <div class="x-col" xid="col27" style="padding:0;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="订单作废" xid="button5" style="color:#666;line-height:2;height:48px;width:100%;">
   <i xid="i6"></i>
   <span xid="span61">订单作废</span></a></div>
   <div class="x-col" xid="col29" style="padding:0;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="再次购买" xid="button6" style="color:#fff;background-color:#f66;line-height:2;height:48px;width:100%;">
   <i xid="i7"></i>
   <span xid="span62">再次购买</span></a></div></div></div></div> 
</div>