<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="promotion_id">
   <column name="end_time" type="String" xid="xid1"></column>
   <column name="group_goods_count" type="String" xid="xid2"></column>
   <column name="promotion_cate" type="String" xid="xid3"></column>
   <column name="promotion_detail" type="String" xid="xid4"></column>
   <column name="promotion_id" type="String" xid="xid5"></column>
   <column name="promotion_rule" type="String" xid="xid6"></column>
   <column name="promotion_title" type="String" xid="xid7"></column>
   <column name="promotion_type" type="String" xid="xid8"></column>
   <column name="start_time" type="String" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="goods_id">
   <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
   <column name="goods_img" type="String" xid="xid19"></column>
   <column name="specification_id" type="String" xid="xid20"></column>
   <column name="cost_price" type="String" xid="xid21"></column>
   <column name="goods_name" type="String" xid="xid22"></column>
   <column name="specification1_name" type="String" xid="xid23"></column>
   <column name="specification1_value" type="String" xid="xid24"></column>
   <column name="specification2_name" type="String" xid="xid25"></column>
   <column name="specification2_value" type="String" xid="xid26"></column>
   <column name="specification3_name" type="String" xid="xid27"></column>
   <column name="specification3_value" type="String" xid="xid28"></column>
   <column name="unit" type="String" xid="xid29"></column>
   <column name="price" type="String" xid="xid30"></column>
   <column name="set_specs" type="String" xid="xid31"></column>
   <column name="guige" type="String" xid="xid32"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F2F1F2;">
  <div xid="div1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   <div class="x-col x-col-80" xid="col2" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="button" xid="button1" style="color:#EB7795;" icon="linear linear-clock" bind-text='"结束时间" +  $model.data1.val("end_time")'>
   <i xid="i1" class="linear linear-clock"></i>
   <span xid="span1"></span></a></div>
   <div class="x-col" xid="col3"></div></div></div>
  <div xid="div2" style="padding:10px 10px 10px 10px;"><div xid="div3" style="padding:10px 10px 10px 10px;background-color:white;height:200px;" class="btn_radius"><h4 class="media-heading" xid="h41">
   <a component="$UI/system/components/justep/button/button" class="btn btn-warning btn-xs" label="组合" xid="button2" bind-visible=' $model.data1.val("promotion_cate") ==3' style="display:none">
    <i xid="i2"></i>
    <span xid="span2">组合</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-warning btn-xs" label="单品" xid="button3" bind-visible=' $model.data1.val("promotion_cate") ==1' style="display:none">
    <i xid="i4"></i>
    <span xid="span3">单品</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn x-blue btn-xs" label="订单" xid="button7" bind-visible=' $model.data1.val("promotion_cate") ==2' style="display:none">
    <i xid="i5"></i>
    <span xid="span7">订单</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" xid="button2" style="font-family:“Microsoft YaHei”;font-size:16px;color:#212121;" bind-text=' $model.data1.val("promotion_title")'>
    <i xid="i2"></i>
    <span xid="span2"></span></a> </h4>
  <h5 xid="h51"><![CDATA[]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="活动内容" xid="button4" style="color:#6B6B6B;font-size:14px;">
   <i xid="i3"></i>
   <span xid="span4">活动内容</span></a><h5 xid="h52" style="font-family:“Microsoft YaHei”;font-size:14px;color:#212121;">
   </h5></h5>
  <h5 xid="h54">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="活动时间" xid="button6" style="color:#6B6B6B;font-size:14px;">
    <i xid="i7"></i>
    <span xid="span6">活动时间</span></a> 
   <h5 xid="h53" style="font-family:“Microsoft YaHei”;font-size:14px;color:#212121;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="button" xid="button5" bind-text='$model.data1.val("start_time")' style="font-family:“Microsoft YaHei”;font-size:14px;color:#212121;">
   <i xid="i6"></i>
   <span xid="span5"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="～" xid="button8" style="font-family:“Microsoft YaHei”;font-size:14px;color:#212121;">
   <i xid="i8"></i>
   <span xid="span8">～</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" xid="button9" bind-text=' $model.data1.val("end_time")' style="font-family:“Microsoft YaHei”;font-size:14px;color:#212121;">
   <i xid="i9"></i>
   <span xid="span9"></span></a></h5></h5></div></div>
  <div xid="div4" style="padding:10px 10px 10px 10px;background-color:white;" class="btn_radius">
   
   
   <h5 xid="h57">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="参见活动的商品" xid="button11" style="color:#6B6B6B;font-size:14px;">
    <i xid="i10"></i>
    <span xid="span11">参见活动的商品</span></a> 
   </h5><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsDataM" limit="10">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="media">
     <div xid="div10" class="media-left">
      <img alt="" xid="image1" class="img-rounded media-object" height="80px" bind-attr-src=' val("goods_img")' style="width:80px;"></img></div> 
     <div class="media-body" xid="div14">
      <h5 class="media-heading lead text-black" bind-text=' val("goods_name")' xid="h55" style="color:black;font-size:16px;"></h5>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:2px;">
       <div class="x-col" xid="col4"></div></div> 
      <div class="text-muted" xid="div16">
       <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button10" style="background-color:white;border-style:none none none none;border-width:thin thin thin thin;border-color:#C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0;color:#9F9F9F;font-size:14px;" bind-text=' val("guige") '>
        <i xid="i12"></i>
        <span xid="span13"></span></a> </div> 
      <div class="text-muted" xid="div15">
       
       <div class="tb-numberOperation" xid="div21" style="text-align:right;">
        
        <span xid="span30" class="pull-right" style="line-height:0.8;height:22px;"></span>
        </div> </div> </div> </li> </ul> </div>
  </div></div></div></div>