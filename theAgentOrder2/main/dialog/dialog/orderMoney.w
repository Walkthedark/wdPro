<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dataInfo" idColumn="order_id"><column name="order_id" type="String" xid="xid1"></column>
  <column name="order_sn" type="String" xid="xid2"></column>
  <column name="order_time" type="String" xid="xid3"></column>
  <column name="discount_price" type="String" xid="xid4"></column>
  <column name="has_pay" type="String" xid="xid5"></column>
  <column name="no_pay" type="String" xid="xid6"></column>
  <column name="price" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="hostryData" idColumn="receipt_id"><column name="receipt_id" type="String" xid="xid8"></column>
  <column name="pay_money" type="String" xid="xid9"></column>
  <column name="receipt_date" type="String" xid="xid10"></column>
  <column name="receipt_sn" type="String" xid="xid11"></column>
  <column name="receipt_type" type="String" xid="xid12"></column>
  <column name="state" type="String" xid="xid13"></column></div></div> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F2F1F2;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:20px;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3"></div></div><div xid="div1" style="background-color:white;"><div xid="div3" style="padding:5px 5px 5px 10px;"><span xid="span1" style="font-size:16px;color:#363636;"><![CDATA[应收金额:]]></span>
  <span xid="span2" bind-text='$model.dataInfo.val("discount_price")' style="font-size:16px;color:#363636;"></span><span xid="span3" style="font-size:16px;color:#363636;"><![CDATA[(已收金额:]]></span>
  <span xid="span4" bind-text='$model.dataInfo.val("has_pay")+")"' style="font-size:16px;color:#363636;"></span>
  </div>
  <div xid="div4" style="padding:5px 10px 5px 10px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6" style="text-align:center;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group " tabbed="true" xid="buttonGroup1" style="width:80%;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="button" xid="button1" style="width:50%;border-right-style:solid;border-right-width:thin;border-right-color:#D4D4D4;color:#7D7D7D;">
    <i xid="i1"></i>
    <span xid="span5" bind-text='"¥"+$model.dataInfo.val("no_pay")' style="font-size:20px;color:#363636;"></span><h5 xid="h51" style="color:#7D7D7D"><![CDATA[待收款金额]]></h5></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="¥0.0" xid="button2" style="width:50%;border-right-width:thin;color:#7D7D7D;font-size:16px;">
    <i xid="i2"></i>
    <span xid="span6" style="font-size:20px;color:#363636;">¥0.0</span><h5 xid="h52" style="color:#7D7D7D"><![CDATA[待收款运费]]></h5></a> 
  </div></div></div></div></div>
  <div xid="div2" style="padding:5px 5px 5px 5px;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="hostryData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li2"><div xid="div5" class="list-group-item" style="padding:5px 15px 5px 15px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="height:35px;">
   <label class="x-label" xid="label1" style="width:80px;"><![CDATA[收货款]]></label>
   <div class="x-edit" xid="div6"><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-left" label="button" xid="button3" bind-text=' val("pay_money")' style="font-size:16px;color:#363636;">
   <i xid="i3"></i>
   <span xid="span8"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="button" xid="button4" bind-text=' val("state")'>
   <i xid="i4"></i>
   <span xid="span9"></span></a></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="height:35px;">
   <label class="x-label" xid="label2" style="width:80px;"><![CDATA[收货方式]]></label>
   <div class="x-edit" xid="div7">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-left" label="button" xid="button6" bind-text=' val("receipt_type")' style="font-size:16px;color:#363636;">
     <i xid="i5"></i>
     <span xid="span10"></span></a> 
    </div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="height:35px;">
   <label class="x-label" xid="label3" style="width:80px;"><![CDATA[收款日期]]></label>
   <div class="x-edit" xid="div8">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-left" label="button" xid="button8" bind-text=' val("receipt_date")' style="font-size:16px;color:#363636;">
     <i xid="i7"></i>
     <span xid="span12"></span></a> 
    </div> </div></div></li></ul> </div></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius" label="收款" xid="button9" style="width:80%;margin-top:5px;background-color:#00BFFF;" bind-click="button3Click">
   <i xid="i9"></i>
   <span xid="span14">收款</span></a></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/theAgentOrder2/main/dialog/dialog/dialog/collectMoney.w" routable="true"></span></div>