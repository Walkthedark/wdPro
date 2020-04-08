<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid">
   <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
   <column name="goods_name" type="String" xid="xid19"></column>
   <column name="goods_img" type="String" xid="xid20"></column>
   <column name="goods_inventory" type="String" xid="xid21"></column>
   <column name="goods_sn" type="String" xid="xid22"></column>
   <column name="order_num" type="String" xid="xid23"></column>
   <column name="price" type="String" xid="xid24"></column>
   <column name="quantity" type="String" xid="xid25"></column>
   <column name="show_name" type="String" xid="xid26"></column>
   <column name="specification1_name" type="String" xid="xid27"></column>
   <column name="specification1_value" type="String" xid="xid28"></column>
   <column name="specification2_name" type="String" xid="xid29"></column>
   <column name="specification2_value" type="String" xid="xid30"></column>
   <column name="specification3_name" type="String" xid="xid31"></column>
   <column name="specification3_value" type="String" xid="xid32"></column>
   <column name="specification_id" type="String" xid="xid33"></column>
   <column name="unit_id" type="String" xid="xid34"></column>
   <column name="unit_name" type="String" xid="xid35"></column>
   <column name="unit" type="String" xid="xid36"></column>
   <column name="uuid" type="String" xid="xid95"></column>
   <rule xid="rule2">
    <col name="uuid" xid="ruleCol2">
     <defaultValue xid="default9">
      <expr xid="default10"></expr></defaultValue> 
     <calculate xid="calculate2">
      <expr xid="default11">justep.UUID.createUUID()</expr></calculate> </col> </rule> </div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsDataM" style="overflow:auto" limit="20">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2">
     <div xid="div26">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0px 0px 0px 0px;">
       <div class="x-col x-col-80" xid="col25">
        <div class="media" xid="media8">
         <div class="media-left" xid="mediaLeft6">
          <a href="#" xid="a6">
           <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic1.png" alt="" xid="image6" style="width:80px;" height="80px" bind-attr-src=' val("goods_img")'></img></a> </div> 
         <div class="media-body" xid="mediaBody8">
          <h4 xid="h47" class="media-heading" style="font-size:15px;color:#292929;" bind-text=' val("goods_name")'>澳大利亚牛肉</h4>
          <h5 xid="h521">
           <h5 xid="h523" style="margin-top:20px;">
            <span xid="span42" style="color:#cf0202;font-size:14px;">¥</span>
            <span xid="span41" style="color:#cf0202;font-size:14px;" bind-text='val("price")'>90.00</span></h5> </h5> </div> </div> </div> 
       <div class="x-col" xid="col24">
        <div xid="div27" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart">
         <i xid="i16" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div> </li> </ul> </div></div></div></div>