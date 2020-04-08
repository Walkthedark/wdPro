<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:56px;left:163px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="address" idColumn="id" onCustomRefresh="addressCustomRefresh" limit="-1"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="tell" type="String" xid="xid3"></column>
  <column name="address_area" type="String" xid="xid4"></column>
  <column name="is_default" type="Integer" xid="xid5"></column>
  <column name="address_detail" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="adressData" idColumn="client_address_id">
   <column name="address" type="String" xid="xid37"></column>
   <column name="client_address_id" type="String" xid="xid38"></column>
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
          class="x-titlebar" style="background-color:#00BFFF;">
          <div class="x-titlebar-left"> 
            </div>  
          <div class="x-titlebar-title">收货地址</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C8BC393539100001D7971F10AEC01941">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div4"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="adressData" limit="10">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom:1px solid #e6e7e8;box-shadow:1px 2px 2px #ccc;">
  <div xid="div1"><div xid="div2" style="padding-left:10px;padding-top:5px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs " label="默认地址" xid="button4" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FF3616 #FF3616 #FF3616 #FF3616;background-color:white;color:#FF3715;" bind-visible=' val("is_default") ==1'>
   <i xid="i4"></i>
   <span xid="span2">默认地址</span></a></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding-top:2px;padding-bottom:2px;" bind-click="row1Click">
   <div class="x-col " xid="col3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding-top:2px;padding-bottom:2px;">
   <div class="x-col" xid="col2"><span xid="span1" style="display:inline-block;font-size:16px;color:#292929;" bind-text='"收货人："+val("consignee")'></span></div>
   <div class="x-col" xid="col4" style="text-align:left;"><div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output2" bind-ref='ref("phone")'></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="padding-top:2px;padding-bottom:2px;">
   <div class="x-col" xid="col5">
  <span xid="span5" style="display:inline-block;" bind-text='"收货地址："+val("address")'></span></div></div></div></div>
  </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div5">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div>
  <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius" label="添加新地址" xid="button3" style="width:80%;margin-top:5px;background-color:#00BFFF;" bind-click="button3Click">
   <i xid="i3"></i>
   <span xid="span3">添加新地址</span></a></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/theAgentOrder2/adress/dialog/addAdressInfo.w"></span></div>