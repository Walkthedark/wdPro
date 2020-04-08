<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" style="top:28px;left:114px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="blankData" idColumn="id" confirmRefresh="false">
   <column name="id" type="String" xid="xid5"></column>
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
   <column name="tax_num" type="String" xid="xid17"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="发票类型选择" style="background-color:#00BFFF;">
     <div class="x-titlebar-left" xid="left1">
      </div> 
     <div class="x-titlebar-title" xid="title1">发票类型选择</div>
     <div class="x-titlebar-right reverse" xid="right1">
      </div> </div> </div> 
   <div class="x-panel-content" xid="content2" style="background-color:#F4F3F4;border-style:none none none none;height:100%;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
     <div class="x-col" xid="col3">
      <div xid="div1" class="list-group-item div_radius">
       
       <div xid="div20">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
         <label class="x-label" xid="label2">发票方式</label>
         <div class="x-edit" xid="div3" style="text-align:right;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right btn-only-label" label="纸质" xid="button2" icon="linear linear-chevronright" style="color:#212121;">
           <i xid="i2" class="linear linear-chevronright"></i>
           <span xid="span2">纸质</span></a> </div> </div> 
        
        <div xid="div21">
         
         
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
   <label class="x-label" xid="label10">发票抬头</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.blankData.ref("invoice")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11">税号</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.blankData.ref("tax_num")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
   <label class="x-label" xid="label12"><![CDATA[开户名称]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" bind-ref='$model.blankData.ref("bank_name")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label9"><![CDATA[开户银行]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.blankData.ref("bank")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[银行帐号]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.blankData.ref("bank_account")'></input></div>
  </div> 
  
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[企业地址]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.blankData.ref("invoice_address")'></input></div>
  </div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:10px;">
       <div class="x-col" xid="col4"></div>
       <div class="x-col" xid="col5"></div>
       <div class="x-col" xid="col6"></div></div> 
      </div> </div> </div> 
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius" label="确定" xid="button3" style="width:80%;margin-top:5px;background-color:#00BFFF;" bind-click="button3Click">
     <i xid="i3"></i>
     <span xid="span3">确定</span></a> </div> </div></div></div></div>