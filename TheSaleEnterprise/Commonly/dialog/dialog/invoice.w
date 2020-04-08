<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" style="top:10px;left:108px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="invoiceData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="desc" type="String" xid="xid3"></column>
  <column name="choose" type="String" xid="xid4"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;name&quot;:&quot;不开发票&quot;,&quot;desc&quot;:&quot;默认不开具发票&quot;,&quot;choose&quot;:&quot;0&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;普通发票&quot;,&quot;desc&quot;:&quot;如需转票请填写完整购方信息并联系商家&quot;,&quot;choose&quot;:&quot;0&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;专用发票&quot;,&quot;desc&quot;:&quot;需要填写完整专票信息&quot;,&quot;choose&quot;:&quot;0&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="blankData" idColumn="id" confirmRefresh="false"><column name="id" type="String" xid="xid5"></column>
  <column name="bank" type="String" xid="xid6"></column>
  <column name="bank_account" type="String" xid="xid7"></column>
  <column name="bank_name" type="String" xid="xid8"></column>
  <column name="invoice" type="String" xid="xid9"></column>
  <column name="invoice_address" type="String" xid="xid10"></column>
  <column name="invoice_content" type="String" xid="xid11"></column>
  <column name="invoice_mobile" type="String" xid="xid12"></column>
  <column name="is_debt_init" type="String" xid="xid13"></column>
  <column name="last_reconciliation_time" type="String" xid="xid14"></column>
  <column name="pdt_id" type="String" xid="xid15"></column>
  <column name="search_goods" type="String" xid="xid16"></column>
  <column name="tax_num" type="String" xid="xid17"></column>
  </div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="发票类型选择" style="background-color:#56AEF7;">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-arrow-down-b">
   <i xid="i10" class="icon-arrow-down-b"></i>
   <span xid="span9"></span></a></div>
   <div class="x-titlebar-title" xid="title1">发票类型选择</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="content1" style="background-color:#F4F3F4;border-style:none none none none;height:100%;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3"><div xid="div1" class="list-group-item div_radius"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[发票类型]]></label>
   <div class="x-edit" xid="div2" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right" label="不开发票" xid="button1" icon="linear linear-chevronright" style="color:#212121;" bind-click="button1Click">
   <i xid="i1" class="linear linear-chevronright"></i>
   <span xid="span1">不开发票</span></a></div></div>
  
  
  
  
  
  
  <div xid="div20"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2"><![CDATA[发票方式]]></label>
    <div class="x-edit" xid="div3" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right btn-only-label" label="纸质" xid="button2" icon="linear linear-chevronright" style="color:#212121;">
      <i xid="i2" class="linear linear-chevronright"></i>
      <span xid="span2">纸质</span></a> </div> </div><div xid="div22" style="display:none"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[发票抬头]]></label>
   <div class="x-edit" xid="div6" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" xid="button4" icon="linear linear-chevronright" style="color:#212121;" bind-text=' $model.blankData.val("invoice")'>
     <i xid="i4" class="linear linear-chevronright"></i>
     <span xid="span4"></span></a> </div> </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5"><![CDATA[税号]]></label>
   <div class="x-edit" xid="div7" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" icon="linear linear-chevronright" style="color:#212121;" bind-text=' $model.blankData.val("tax_num")'>
     <i xid="i5" class="linear linear-chevronright"></i>
     <span xid="span5"></span></a> </div> </div></div><div xid="div21" style="display:none"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6"><![CDATA[开户银行]]></label>
   <div class="x-edit" xid="div8" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" xid="button6" icon="linear linear-chevronright" style="color:#212121;" bind-text=' $model.blankData.val("bank_name")'>
     <i xid="i6" class="linear linear-chevronright"></i>
     <span xid="span6"></span></a> </div> </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" xid="label7"><![CDATA[银行帐号]]></label>
   <div class="x-edit" xid="div9" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" xid="button7" icon="linear linear-chevronright" style="color:#212121;" bind-text=' $model.blankData.val("bank")'>
     <i xid="i7" class="linear linear-chevronright"></i>
     <span xid="span7"></span></a> </div> </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="label8"><![CDATA[企业地址]]></label>
   <div class="x-edit" xid="div10" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" xid="button8" icon="linear linear-chevronright" style="color:#212121;">
     <i xid="i8" class="linear linear-chevronright"></i>
     <span xid="span8"></span></a> </div> </div></div>
  </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:10px;">
   <div class="x-col" xid="col4"></div>
   <div class="x-col" xid="col5"></div>
   <div class="x-col" xid="col6"></div></div><div xid="div19" class="list-group-item div_radius">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
    <label class="x-label" xid="label14"><![CDATA[发票内容]]></label>
    <div class="x-edit" xid="div18" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right btn-only-label" label="明细" xid="button16" icon="linear linear-chevronright" style="color:#212121;">
      <i xid="i9" class="linear linear-chevronright"></i>
      <span xid="span16">明细</span></a> </div> </div> 
   
   
   
   
   
   
   </div>
  </div></div>
  </div>
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius" label="确定" xid="button3" style="width:80%;margin-top:5px;background-color:#56AEF7;" bind-click="button3Click">
   <i xid="i3"></i>
   <span xid="span3">确定</span></a></div></div>
  <div component="$UI/system/components/justep/picker/popPicker" class="x-popPicker" xid="popPicker1">
   <div class="x-popPicker-overlay" xid="div27"></div>
   <div class="x-popPicker-content" xid="div28">
    <div class="x-poppicker-header" xid="div29">
     <button class="btn btn-default x-btn-ok" xid="button18" bind-click="button18Click">确定</button></div> 
    <div component="$UI/system/components/justep/picker/picker" class="x-picker" xid="picker1" data="invoiceData">
     <div class="x-picker-inner" xid="div30">
      <div class="x-pciker-rule x-pciker-rule-ft" xid="div31"></div>
      <ul class="x-list-template x-pciker-list" xid="listTemplateUl2">
       <li xid="li2" bind-text='val("name")'></li></ul> 
      <div class="x-pciker-rule x-pciker-rule-bg" xid="div32"></div></div> </div> </div> </div></div>