<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:54px;left:308px;height:auto;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="promotion_id"><column name="end_time" type="String" xid="xid1"></column>
  <column name="group_goods_count" type="String" xid="xid2"></column>
  <column name="promotion_cate" type="String" xid="xid3"></column>
  <column name="promotion_detail" type="String" xid="xid4"></column>
  <column name="promotion_id" type="String" xid="xid5"></column>
  <column name="promotion_rule" type="String" xid="xid6"></column>
  <column name="promotion_title" type="String" xid="xid7"></column>
  <column name="promotion_type" type="String" xid="xid8"></column>
  <column name="start_time" type="String" xid="xid9"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F2F1F2;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1" class="list-group-item" bind-click="div1Click"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41"><![CDATA[]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-warning btn-xs" label="组合" xid="button1" bind-visible=' val("promotion_cate") ==3'>
   <i xid="i1"></i>
   <span xid="span1">组合</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-warning btn-xs" label="单品" xid="button3" bind-visible=' val("promotion_cate") ==1'>
   <i xid="i4"></i>
   <span xid="span3">单品</span></a><a component="$UI/system/components/justep/button/button" class="btn x-blue btn-xs" label="订单" xid="button7" bind-visible=' val("promotion_cate") ==2'>
       <i xid="i5"></i>
       <span xid="span7">订单</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" xid="button2" style="font-family:“Microsoft YaHei”;font-size:16px;color:#212121;" bind-text=' val("promotion_title")'>
   <i xid="i2"></i>
   <span xid="span2"></span></a>
  </h4>
  <h4 class="media-heading" xid="h42">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="结束时间:2019-11-11" xid="button4" icon="linear linear-clock" style="color:#EB7795;" bind-text='"结束时间" + val("end_time")'>
    <i xid="i3" class="linear linear-clock"></i>
    <span xid="span4">结束时间:2019-11-11</span></a> 
   </h4></div> </div></div></li></ul> </div></div></div>
  </div>