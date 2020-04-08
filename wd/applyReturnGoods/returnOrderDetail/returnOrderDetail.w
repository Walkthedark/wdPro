<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:5px;left:431px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="退单详情"
          class="x-titlebar" style="background:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">退单详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#e6e7e8;"><div xid="div1" style="background-color:#fff;"><div xid="div2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><div xid="div3" style="border-bottom:1px solid #e6e7e8;padding:3px 0;"><div xid="div4" style="padding:3px 0;display:flex;"><div xid="div5" style="flex:1;"><span xid="span3"><![CDATA[退单状态]]></span></div>
  <div xid="div6" style="flex:1;text-align:right;"><span xid="span4" style="color:#f66;"><![CDATA[待退单审核]]></span></div></div>
  <div xid="div7" class="h-style"><span xid="span5"><![CDATA[公司名称：]]></span>
  <span xid="span2"><![CDATA[眉县向阳果业有限公司]]></span></div>
  <div xid="div8" class="h-style"><span xid="span6"><![CDATA[退货单号：]]></span>
  <span xid="span8"><![CDATA[DH-R-20190313-120432]]></span></div>
  <div xid="div9" class="h-style" style="position:relative;"><span xid="span7"><![CDATA[下单时间：]]></span>
  <span xid="span9"><![CDATA[2019-03-19 10:10:40]]></span>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" label="催办" xid="urge" style="border-radius:20px;position:absolute;right:0;top:-10px;background-color:#f66;color:#fff;">
   <i xid="i2"></i>
   <span xid="span10">催办</span></a></div></div></div>
   </div></div>
  <div xid="div10"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col2"><span xid="span11"><![CDATA[退款金额]]></span></div>
   <div class="x-col" xid="col4" style="text-align:right;"><span xid="span12"><![CDATA[¥]]></span>
  <span xid="span13"><![CDATA[30.00]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5"><div xid="div11" class="h-style" style="display:flex"><div xid="div13" style="flex:1"><span xid="span14"><![CDATA[商品金额]]></span>
  </div>
  <div xid="div14" style="flex:1;text-align:right;"><span xid="span15"><![CDATA[¥]]></span>
  <span xid="span18"><![CDATA[72.02]]></span></div></div>
  <div xid="div12" class="h-style" style="display:flex"><div xid="div15" style="flex:1"><span xid="span16"><![CDATA[审批金额]]></span></div>
  <div xid="div16" style="flex:1;text-align:right;"><span xid="span17"><![CDATA[¥]]></span>
  <span xid="span19"><![CDATA[30.00]]></span></div></div></div>
   </div></div></div>
  <div xid="div17" style="background-color:#fff;margin-top:10px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col8"><span xid="span20"><![CDATA[退款状态]]></span></div>
   <div class="x-col" xid="col10" style="text-align:right;"><span xid="span21" style="color:#666;"><![CDATA[未退款]]></span></div></div></div>
  <div xid="div18" style="background-color:#fff;margin-top:10px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" bind-click="row5Click">
    <div class="x-col x-col-center" xid="col11">
     <span xid="span23"><![CDATA[商品清单]]></span></div> 
    <div class="x-col x-col-center" xid="col12" style="text-align:right;">
     <span xid="span22" style="color:#666;"><![CDATA[共]]></span>
  <span xid="span25" style="color:#666;"><![CDATA[2]]></span>
  <span xid="span26" style="color:#666;"><![CDATA[款，总数]]></span>
  <span xid="span27" style="color:#666;"><![CDATA[4]]></span></div> 
  <div class="x-col x-col-10 x-col-center" xid="col13" style="width:30px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button2" icon="linear linear-chevronright" style="text-align:center;height:28px;">
   <i xid="i3" class="linear linear-chevronright"></i>
   <span xid="span24"></span></a></div></div> </div>
  <div xid="div21" style="margin-top:10px;background:#fff;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" bind-click="row7Click">
    <div class="x-col x-col-center" xid="col16">
     <span xid="span36"><![CDATA[退单备注]]></span></div> 
    <div class="x-col x-col-center" xid="col14" style="text-align:right;">
     <span xid="span35"><![CDATA[1]]></span>
     </div> 
  <div class="x-col x-col-10" xid="col17"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button3" icon="linear linear-chevronright">
   <i xid="i4" class="linear linear-chevronright"></i>
   <span xid="span37"></span></a></div></div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
    <div class="x-col" xid="col15">
     <div xid="div22" class="h-style" style="display:flex">
      <div xid="div20" style="flex:1">
       <span xid="span31"><![CDATA[备注填写的信息]]></span></div> 
      </div> 
     <div xid="div19" class="h-style" style="display:flex">
      <div xid="div25" style="flex:1">
       <span xid="span33"><![CDATA[18092337815]]></span></div> 
      <div xid="div23" style="flex:1;text-align:right;">
       <span xid="span29"><![CDATA[2019-03-13 10:10:40]]></span>
       </div> </div> </div> </div> </div>
  <div xid="div27" style="margin-top:10px;background:#fff;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
    <div class="x-col x-col-center" xid="col19">
     <span xid="span39"><![CDATA[退款信息]]></span></div> 
    
    </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
    <div class="x-col" xid="col20">
     
     <div xid="div30" class="h-style" style="display:flex">
      <div xid="div29" style="flex:1">
       <span xid="span43"><![CDATA[l联系人]]></span></div> 
      <div xid="div26" style="flex:1;text-align:right;">
       <span xid="span38"><![CDATA[18092337815]]></span></div> </div> 
  <div xid="div34" class="h-style" style="display:flex">
   <div xid="div33" style="flex:1">
    <span xid="span45"><![CDATA[联系电话]]></span></div> 
   <div xid="div32" style="flex:1;text-align:right;">
    <span xid="span44"><![CDATA[18092337815]]></span></div> </div>
  <div xid="div37" class="h-style" style="display:flex">
   <div xid="div36" style="flex:1">
    <span xid="span47"><![CDATA[开户名称]]></span></div> 
   <div xid="div35" style="flex:1;text-align:right;">
    <span xid="span46"><![CDATA[]]></span></div> </div>
  <div xid="div40" class="h-style" style="display:flex">
   <div xid="div39" style="flex:1">
    <span xid="span49"><![CDATA[开户银行]]></span></div> 
   <div xid="div38" style="flex:1;text-align:right;">
    <span xid="span48"><![CDATA[]]></span></div> </div>
  <div xid="div43" class="h-style" style="display:flex">
   <div xid="div42" style="flex:1">
    <span xid="span51"><![CDATA[银行账号]]></span></div> 
   <div xid="div41" style="flex:1;text-align:right;">
    <span xid="span50"><![CDATA[]]></span></div> </div></div> </div> </div>
  <div xid="div44" style="background-color:#fff;margin-top:10px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" bind-click="row10Click">
    <div class="x-col x-col-center" xid="col24">
     <span xid="span56"><![CDATA[操作日志]]></span></div> 
    <div class="x-col x-col-center" xid="col23" style="text-align:right;">
     <span xid="span57" style="color:#666;"><![CDATA[1]]></span>
     </div> 
    <div class="x-col x-col-10 x-col-center" xid="col22" style="width:30px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button5" icon="linear linear-chevronright" style="text-align:center;height:28px;">
      <i xid="i6" class="linear linear-chevronright"></i>
      <span xid="span53"></span></a> </div> </div> </div></div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="退单作废" style="color:#fff;background-color:#47D1D1;line-height:2;height:100%;" xid="cancellation">
    <i xid="i1"></i>
    <span xid="span1">退单作废</span></a></div></div> 
</div>