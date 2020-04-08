<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" title="填写订单" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">填写订单</div>  
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
          <span xid="span3">订单状态</span></div> 
         <div xid="div6" style="flex:1;text-align:right;">
          <span xid="span4"><![CDATA[¥]]></span>
  <span xid="span1"><![CDATA[0.02]]></span></div> </div> 
        
        
        </div> </div> </div> </div> 
    <div xid="div10">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
      <div class="x-col x-col-center" xid="col2">
       <span xid="span11"><![CDATA[申请特价]]></span></div> 
      <div class="x-col x-col-20" xid="col4" style="text-align:right;">
       <input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input1" placeHolder="请输入"></input></div> </div> 
     </div> </div><div xid="div19" style="background-color:#fff;margin-top:10px;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
     <div class="x-col x-col-center" xid="col7">
      <span xid="span27"><![CDATA[备注信息]]></span></div> 
     <div class="x-col" xid="col3" style="text-align:right;">
      <input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input3"></input></div> </div> </div><div xid="div11" style="background-color:#fff;margin-top:10px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col x-col-center" xid="col5">
     <span xid="span2"><![CDATA[交货日期]]></span></div> 
    <div class="x-col" xid="col6" style="text-align:right;">
     <input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input4"></input></div> </div> </div><div xid="div12" style="background-color:#fff;margin-top:10px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
    <div class="x-col x-col-center" xid="col8">
     <span xid="span5"><![CDATA[附件]]></span></div> 
    <div class="x-col" xid="col9" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button6" icon="linear linear-chevronright">
   <i xid="i2" class="linear linear-chevronright"></i>
   <span xid="span6"></span></a></div> </div> </div><div xid="div55" style="margin-top:10px;background-color:#fff;">
    <div xid="div58">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
      <div class="x-col" xid="col22">
       <span xid="span49">收货信息</span></div> 
      <div class="x-col" xid="col20" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button7" icon="linear linear-chevronright">
   <i xid="i3" class="linear linear-chevronright"></i>
   <span xid="span7"></span></a></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
      <div class="x-col" xid="col21">
       <div xid="div59" class="h-style" style="display:flex">
        <div xid="div57" style="flex:1">
         <span xid="span44">客户名称</span></div> 
        <div xid="div61" style="flex:1;text-align:right;">
         <span xid="span47">眉县向阳果业有限公司</span></div> </div> 
       <div xid="div64" class="h-style" style="display:flex">
        <div xid="div63" style="flex:1">
         <span xid="span52">收货人</span></div> 
        <div xid="div65" style="flex:1;text-align:right;">
         <span xid="span50">18213213245</span></div> </div> </div> </div> </div> </div><div xid="div67" style="margin-top:10px;background-color:#fff;">
    <div xid="div68">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
      <div class="x-col" xid="col25">
       <span xid="span54">发票信息</span></div> 
      <div class="x-col" xid="col24" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button8" icon="linear linear-chevronright">
   <i xid="i4" class="linear linear-chevronright"></i>
   <span xid="span8"></span></a></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
      <div class="x-col" xid="col23">
       <div xid="div69" class="h-style" style="display:flex">
        <div xid="div66" style="flex:1">
         <span xid="span55">发票类型</span></div> 
        <div xid="div73" style="flex:1;text-align:right;">
         <span xid="span53">不需要发票</span></div> </div> </div> </div> </div> </div>
  <div xid="div13" style="background-color:#fff;margin-top:10px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
    <div class="x-col x-col-center" xid="col10">
     <span xid="span9"><![CDATA[商品清单]]></span></div> 
    <div class="x-col" xid="col11" style="display:flex;text-align:right;">
     <div xid="div37" style="flex:1;line-height:2;text-align:right;">
   <span xid="span29">共</span>
   <span xid="span37">1</span>
   <span xid="span38">款，总数</span>
   <span xid="span39">2</span></div><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button9" icon="linear linear-chevronright">
      <i xid="i5" class="linear linear-chevronright"></i>
      <span xid="span10"></span></a> 
  </div> </div> </div></div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="height:100%;padding:0;">
   <div class="x-col x-col-center" xid="col12"><span xid="span13"><![CDATA[应付金额：]]></span>
  <span xid="span14" style="color:#f66;"><![CDATA[¥]]></span>
  <span xid="span15" style="color:#f66;"><![CDATA[0.01]]></span></div>
   <div class="x-col x-col-25" xid="col14" style="padding:0;text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="提交订单" xid="button10" style="line-height:2;height:100%;width:100%;color:#fff;background-color:#f66;">
   <i xid="i6"></i>
   <span xid="span12">提交订单</span></a></div></div></div></div> 
<div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="datePicker1">
   <div class="x-popPicker-overlay" xid="div7"></div>
   <div class="x-popPicker-content" xid="div8">
    <div class="x-poppicker-header" xid="div9">
     <button class="btn btn-default x-btn-ok" xid="button5">确定</button></div> </div> </div></div>