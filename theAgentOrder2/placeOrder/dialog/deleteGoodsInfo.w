<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid" confirmDelete="false" confirmRefresh="false">
   <rule xid="rule1">
    <col name="fsum" xid="ruleCol1" expr='$model.goodsDataM.sum("fsum")'>
     <calculate xid="calculate1">
      <expr xid="default4">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> 
    <col name="fsumMoney" xid="ruleCol3">
     <calculate xid="calculate3">
      <expr xid="default7">$row.val(&quot;total_price&quot;)</expr></calculate> </col> </rule><column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
   <column name="goods_name" type="String" xid="xid19"></column>
   <column name="goods_img" type="String" xid="xid20"></column>
   <column name="goods_inventory" type="String" xid="xid21"></column>
   <column name="goods_sn" type="String" xid="xid22"></column>
   <column name="show_name" type="String" xid="xid26"></column>
   <column name="specification_id" type="String" xid="xid33"></column>
   <column name="goods_num" type="Integer" xid="xid34"></column>
   <column name="specification" type="String" xid="xid35"></column>
   <column name="fsum" type="Float" xid="xid30"></column>
   <column name="fsumMoney" type="Float" xid="xid36"></column>
   <column name="price" type="Float" xid="xid37"></column>
   <column name="remark" type="String" xid="xid39"></column>
   <column name="unit_id" type="String" xid="xid40"></column>
   <column name="uuid" type="String" xid="xid41"></column>
   <column name="specification1" type="String" xid="xid42"></column>
   <column name="specification2" type="String" xid="xid43"></column>
   <column name="specification3" type="String" xid="xid44"></column>
   <column name="dis_tag" type="String" xid="xid45"></column>
   <column label="促销的价格" name="sales_price" type="Float" xid="xid46"></column>
   <column label="是否是促销商品" name="sales_flag" type="String" xid="xid47"></column>
   <column label="总价" name="total_price" type="Float" xid="xid48"></column>
   <column name="sales_flag_num" type="String" xid="xid52"></column>
   <column name="promotion" type="String" xid="xid54"></column>
   <column name="promotion_id" type="String" xid="xid55"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2" style="background-color:#F2F1F2;"><div xid="div1" style="height:10px;"></div><div xid="div2" style="padding:5px 5px 5px 5px;">
  <div xid="div3" class="list-group-item" style="padding:5px 5px 5px 5px;"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object" src="" alt="" xid="image1" style="width:67px;height:67px;" bind-attr-src=' $model.goodsDataM.val("goods_img")'></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41" style="color:#3E3E3E;font-size:16px;" bind-text=' $model.goodsDataM.val("goods_name")'>Media heading</h4></div> </div></div></div>
  <div xid="div13" style="padding-left:5px;background-color:white;">
   
   <div xid="div14" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
     <label class="x-label" xid="label7"><![CDATA[单价]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.goodsDataM.ref("price")' readonly="true" disabled="true" style="background-color:white;"></input></div> </div> 
   
   
   <div xid="div4" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
    <label xid="label1" class="x-label"><![CDATA[商品编码]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.goodsDataM.ref("goods_sn")' readonly="true" disabled="true" style="background-color:white;"></input></div> </div>
  <div xid="div5" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[数量]]></label>
   <div class="x-edit" xid="div6"><div class="text-muted" xid="div8">
   
   <div class="tb-numberOperation" xid="div7" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button4" icon="icon-android-add" bind-click="button4Click">
     <i xid="i4" class="icon-android-add"></i>
     <span xid="span8"></span></a> 
    <span xid="span3" class="pull-right" style="line-height:0.8;height:22px;" bind-text=' $model.goodsDataM.val("goods_num")'></span>
    <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button5" icon="icon-android-remove" bind-click="button5Click">
     <i xid="i4" class="icon-android-remove"></i>
     <span xid="span6"></span></a> </div> </div></div></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="删除" xid="button1" style="color:#FF2320;background-color:white;" onClick="button1Click">
    <i xid="i1"></i>
    <span xid="span1">删除</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="button2" style="background-color:#67C9FF;color:#FFFFFF;" onClick="button2Click">
    <i xid="i2"></i>
    <span xid="span2">确定</span></a> </div></div></div></div>