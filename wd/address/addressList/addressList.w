<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:56px;left:163px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="address" idColumn="id" onCustomRefresh="addressCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="tell" type="String" xid="xid3"></column>
  <column name="address_area" type="String" xid="xid4"></column>
  <column name="is_default" type="Integer" xid="xid5"></column>
  <column name="address_detail" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="adressData" idColumn="address_id">
   <column name="address" type="String" xid="xid37"></column>
   <column name="address_id" type="String" xid="xid38"></column>
   <column name="client_id" type="String" xid="xid39"></column>
   <column name="client_name" type="String" xid="xid40"></column>
   <column name="consignee" type="String" xid="xid41"></column>
   <column name="is_default" type="String" xid="xid42"></column>
   <column name="is_delete" type="String" xid="xid43"></column>
   <column name="mobile" type="String" xid="xid44"></column>
   <column name="phone" type="String" xid="xid45"></column>
   <column name="area" type="String" xid="xid46"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="收货地址"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">收货地址</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="adressData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom:1px solid #e6e7e8;box-shadow:1px 2px 2px #ccc;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding-top:2px;padding-bottom:2px;" bind-click="row1Click">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding-top:2px;padding-bottom:2px;">
   <div class="x-col" xid="col2"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("consignee")'></div></div>
   <div class="x-col" xid="col4"><div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output2" bind-ref='ref("mobile")'></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding-top:2px;padding-bottom:2px;">
   <div class="x-col" xid="col5">
  <span xid="span5" style="display:inline-block;"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("address")'></div></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding-top:2px;padding-bottom:2px;">
   <div class="x-col" xid="col8"></div>
   <div class="x-col x-col-20" xid="col9"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="编辑" xid="button1" icon="icon-compose" bind-click="button1Click">
   <i xid="i1" class="icon-compose"></i>
   <span xid="span1">编辑</span></a></div>
   <div class="x-col x-col-20" xid="col10"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="删除" xid="button2" icon="linear linear-trash" bind-click="button2Click">
   <i xid="i2" class="linear linear-trash"></i>
   <span xid="span2">删除</span></a></div></div></div>
   </div></li></ul> </div></div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="添加新地址" xid="addAddress" style="border-top:0;border-left:0;border-right:0;background-color:#f66;width:100%;margin-top:-5px;box-shadow:2px 3px 6px #e6e7e8;" onClick="addAddressClick">
   <i xid="i7"></i>
   <span xid="span10">添加新地址</span></a>
  </div>
   </div></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:8px;left:75px;" src="$UI/wd/address/addressEdit/addressEdit.w"></span></div>