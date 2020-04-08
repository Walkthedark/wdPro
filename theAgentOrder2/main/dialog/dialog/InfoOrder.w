<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:293px;left:429px;height:auto;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="order_id"><column name="bill_message" type="String" xid="xid1"></column>
  <column name="cancel_reason" type="String" xid="xid2"></column>
  <column name="client_id" type="String" xid="xid3"></column>
  <column name="deliver_goods" type="String" xid="xid4"></column>
  <column name="delivery_time" type="String" xid="xid5"></column>
  <column name="discount_price" type="String" xid="xid6"></column>
  <column name="gathering_type" type="String" xid="xid7"></column>
  <column name="is_discount" type="String" xid="xid8"></column>
  <column name="is_instead" type="String" xid="xid9"></column>
  <column name="logistics_cn" type="String" xid="xid10"></column>
  <column name="make" type="String" xid="xid11"></column>
  <column name="num" type="String" xid="xid12"></column>
  <column name="order_des" type="String" xid="xid13"></column>
  <column name="order_id" type="String" xid="xid14"></column>
  <column name="order_sn" type="String" xid="xid15"></column>
  <column name="order_time" type="String" xid="xid16"></column>
  <column name="out_warehouse" type="String" xid="xid17"></column>
  <column name="price" type="String" xid="xid18"></column>
  <column name="print_type" type="String" xid="xid19"></column>
  <column name="promotion" type="String" xid="xid20"></column>
  <column name="search_goods" type="String" xid="xid21"></column>
  <column name="type" type="String" xid="xid22"></column>
  <column name="type_trans" type="String" xid="xid23"></column>
  <column name="client_name" type="String" xid="xid24"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="id"><column name="goods_id" type="String" xid="xid25"></column>
  <column name="goods_img" type="String" xid="xid26"></column>
  <column name="goods_name" type="String" xid="xid27"></column>
  <column name="goods_num" type="Float" xid="xid28"></column>
  <column name="goods_price" type="String" xid="xid29"></column>
  <column name="goods_sn" type="String" xid="xid30"></column>
  <column name="goods_special_price" type="String" xid="xid31"></column>
  <column name="goods_subtotal" type="String" xid="xid32"></column>
  <column name="goods_type" type="String" xid="xid33"></column>
  <column name="id" type="String" xid="xid34"></column>
  <column name="order_goods_des" type="String" xid="xid35"></column>
  <column name="order_id" type="String" xid="xid36"></column>
  <column name="promotion" type="String" xid="xid37"></column>
  <column name="promotion_id" type="String" xid="xid38"></column>
  <column name="unit_id" type="String" xid="xid39"></column>
  <column name="unit_name" type="String" xid="xid40"></column>
  <column name="fsum" type="Integer" xid="xid49"></column>
  <rule xid="rule2">
   <col name="fsum" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default2">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="id"><column name="id" type="String" xid="xid41"></column>
  <column name="order_id" type="String" xid="xid42"></column>
  <column name="phone" type="String" xid="xid43"></column>
  <column name="create_time" type="String" xid="xid44"></column>
  <column name="consignee" type="String" xid="xid45"></column>
  <column name="address" type="String" xid="xid46"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="numData" idColumn="Id"><column name="Id" type="String" xid="xid47"></column>
  <column name="Num" type="Float" xid="xid48"></column>
  <rule xid="rule1">
   <col name="Num" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1"><![CDATA[$model.goodsData.sum("fsum")]]></expr></calculate> </col> </rule>
  <data xid="default5">[{&quot;Id&quot;:&quot;1&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="logData" idColumn="log_id">
   <column name="log_id" type="String" xid="xid50"></column>
   <column name="company_name" type="String" xid="xid51"></column>
   <column name="create_at" type="String" xid="xid52"></column>
   <column name="desc" type="String" xid="xid53"></column>
   <column name="operator" type="String" xid="xid54"></column>
   <column name="order_id" type="String" xid="xid55"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="gift_id" confirmDelete="false" confirmRefresh="false">
   <rule xid="rule3">
    <col name="fsum" xid="ruleCol5" expr='$model.goodsDataM.sum("fsum")'>
     <calculate xid="calculate5">
      <expr xid="default11">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> 
    <col name="fsumMoney" xid="ruleCol6">
     <calculate xid="calculate6">
      <expr xid="default10">$row.val(&quot;total_price&quot;)</expr></calculate> </col> </rule> 
   <column label="商品ID" name="goods_id" type="String" xid="column46"></column>
  <column name="goods_name" type="String" xid="column47"></column>
  <column name="goods_img" type="String" xid="column39"></column>
  <column name="goods_inventory" type="String" xid="column41"></column>
  <column name="goods_sn" type="String" xid="column43"></column>
  <column name="show_name" type="String" xid="column36"></column>
  <column name="specification_id" type="String" xid="column55"></column>
  <column name="num" type="Integer" xid="column48"></column>
  <column name="specification" type="String" xid="column49"></column>
  <column name="fsum" type="Float" xid="column52"></column>
  <column name="fsumMoney" type="Float" xid="column50"></column>
  <column name="price" type="Float" xid="column51"></column>
  <column name="remark" type="String" xid="column45"></column>
  <column name="unit_id" type="String" xid="column32"></column>
  <column name="uuid" type="String" xid="column38"></column>
  <column name="specification1" type="String" xid="column40"></column>
  <column name="specification2" type="String" xid="column42"></column>
  <column name="specification3" type="String" xid="column44"></column>
  <column name="promotion_id" type="String" xid="column33"></column>
  <column label="促销的价格" name="specification1_name" type="Float" xid="column34"></column>
  <column label="是否是促销商品" name="specification1_value" type="String" xid="column35"></column>
  <column label="总价" name="specification2_name" type="Float" xid="column37"></column>
  <column name="specification2_value" type="String" xid="column53"></column>
  <column name="specification3_name" type="String" xid="column54"></column>
  <column name="specification3_value" type="String" xid="column56"></column>
  <column name="gift_id" type="String" xid="xid56"></column></div></div>  
  <title>订货单</title>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1" style="background-color:#F2F1F2;">
      <div xid="div6" style="padding:5px 5px 5px 5px;background-color:#F2F1F2;"> 
        <div xid="div5" class="box " style="background-color:white;padding-right:8px;padding-left:8px;"> 
          <em class="first" xid="default3"/>  
          <em class="last" xid="default4"/>  
          <div class="media" xid="media1" style="margin-top:5px;"> 
            <div class="media-body" xid="mediaBody2"> 
              <h4 class="media-heading" xid="h42"> 
                <span xid="span8" style="font-size:16px;color:#242424;margin-left:3px;"><![CDATA[单号:]]></span>  
                <span xid="span5" style="font-size:16px;color:#242424;margin-left:3px;" bind-text='$model.orderData.val("order_sn")'><![CDATA[]]></span>
              </h4> 
            </div>  
            <div class="media-right" xid="mediaRight1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs"
                label="待出库" xid="button4" style="font-size:16px;background-color:white;color:#00BFFF;border-style:none none none none;" bind-text=' $model.orderData.val("type_trans")'> 
                <i xid="i4"/>  
                <span xid="span7">待出库</span>
              </a> 
            </div> 
          </div>  
          <div class="media" xid="media2" style="margin-top:1px;"> 
            <div class="media-body" xid="mediaBody1"> 
              <h4 class="media-heading" xid="h41"> 
                <span xid="span9" style="font-size:16px;color:#242424;margin-left:3px;"><![CDATA[时间:]]></span>  
                <span xid="span6" style="font-size:16px;color:#242424;margin-left:3px;" bind-text='$model.orderData.val("order_time")'><![CDATA[]]></span>
              </h4>  
              <h4 class="media-heading" xid="h43"> 
                <span xid="span11" style="font-size:16px;color:#242424;margin-left:3px;"><![CDATA[客户:]]></span>  
                <span xid="span10" style="font-size:16px;color:#242424;margin-left:3px;" bind-text='$model.orderData.val("client_name")'><![CDATA[]]></span>
              </h4>
            </div> 
          </div> 
        <div class="media" xid="media3" style="margin-top:5px;border-top-style:solid;border-top-width:thin;border-top-color:#E6E6E6;" bind-click="media3Click">
   <div class="media-body" xid="mediaBody3">
    <h4 xid="h44" class="media-heading">
     <span xid="span12" style="font-size:14px;color:#545454;margin-left:3px;"><![CDATA[查看状态跟踪]]></span></h4> </div> 
   <div class="media-right" xid="mediaRight2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="待出库" xid="button5" style="color:#545454;font-size:14px;background-color:white;border-style:none none none none;" icon="icon-arrow-right-b">
     <i xid="i5" class="icon-arrow-right-b"></i>
     <span xid="span13">待出库</span></a> </div> </div></div> 
      </div>
    <div xid="div1" style="padding:5px 5px 5px 5px;background-color:#F2F1F2;">
  <div xid="div2" style="background-color:white;padding-right:8px;padding-left:8px;padding-top:3px;height:60px;"><div class="media" xid="media4" style="margin-top:3px;">
   <div class="media-body" xid="mediaBody4">
    <h4 class="media-heading" xid="h45">
     <span xid="span15" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[订货单合计]]></span></h4> </div> 
   <div class="media-right" xid="mediaRight3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="¥88.00" xid="button6" style="font-size:16px;background-color:white;color:#00BFFF;border-style:none none none none;" bind-text=' $model.orderData.val("is_discount")==1?"¥" + $model.orderData.val("discount_price") :"¥" + $model.orderData.val("price")'>
     <i xid="i6"></i>
     <span xid="span16">¥88.00</span></a> </div> </div>
  <div class="media" xid="media5" style="margin-top:1px;">
   <div class="media-body" xid="mediaBody5">
    <h4 xid="h46" class="media-heading">
     <span xid="span19" style="font-size:14px;color:#545454;margin-left:3px;"><![CDATA[商品总价]]></span></h4> </div> 
   <div class="media-right" xid="mediaRight4">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs " label="¥88.00" xid="button7" style="color:#545454;font-size:14px;background-color:white;border-style:none none none none;" bind-text='"¥" + $model.orderData.val("price")'>
     <i xid="i7"></i>
     <span xid="span18">¥88.00</span></a> </div> </div>
  </div></div>
  <div xid="div4" style="padding:5px 5px 5px 5px;background-color:#F2F1F2;">
   <div xid="div3" style="background-color:white;padding-right:8px;padding-left:8px;padding-top:3px;" class="list-group-item">
    <div class="media" xid="media6" style="margin-top:3px;">
     <div class="media-body" xid="mediaBody6">
      <h4 class="media-heading" xid="h47">
       <span xid="span23" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[商品清单]]></span><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs pull-right" label="数量6" xid="button8" style="font-size:16px;background-color:white;color:#242424;border-style:none none none none;" icon="icon-chevron-down" onClick="button8Click">
       
       <span xid="span22" bind-text='"数量"+ $model.numData.val("Num")'><![CDATA[]]></span><i xid="i8" class="icon-chevron-down"></i></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs pull-right" label="种类2" xid="button10" style="font-size:16px;background-color:white;color:#242424;border-style:none none none none;">
   <i xid="i10"></i>
   <span xid="span24" bind-text='"种类"+$model.goodsData.getCount()'>种类2</span></a>
  </h4> </div> 
     </div> 
    <div xid="div13" style="display:none">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsData">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1">
      <div class="media" xid="media7">
       <div class="media-left" xid="mediaLeft1">
        <a href="#" xid="a1">
         <img class="media-object" alt="" xid="image1" style="height:63px;" bind-attr-src=' val("goods_img")'></img></a> </div> 
       <div class="media-body" xid="mediaBody7">
        <h4 class="media-heading" xid="h48">
         <span xid="span4" style="font-size:16px;color:#242424;" bind-text='val("goods_name")'></span></h4> 
        <h4 xid="h410" class="media-heading">
         <span xid="span14" style="font-size:14px;color:#888888;" bind-text=' val("goods_type")==""?"":val("goods_type")'></span></h4> 
        <h4 xid="h414" class="media-heading">
         <span xid="span17" style="font-size:14px;margin-left:7px;" bind-text='"¥"+val("goods_price")' class="text-danger"></span>
         <span xid="span20" style="font-size:14px;color:#242424;margin-left:7px;" bind-text='"X"+val("goods_num")' class="pull-right"></span></h4> </div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:3px;">
       <div class="x-col" xid="col1"></div>
       <div class="x-col" xid="col2"></div>
       <div class="x-col" xid="col3"></div></div> </li> </ul> </div> 
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="data2">
    <ul class="x-list-template" xid="listTemplateUl5">
     <li xid="li4">
      <div xid="div36" style="padding:5px;border-right-style:none;border-left-style:none;" class="list-group-item">
       <div class="media-left" xid="mediaLeft11">
        <img src="" alt="" xid="image8" bind-attr-src=' val("goods_img")' class="tb-img-good div_radius" style="width:66px;height:66px;"></img>
        <img src="$UI/theAgentOrder/img/gifts.png" alt="" xid="image9" style="position:relative;right:6px;bottom:5px;width:56px;height:38px;left:3px;top:-55px;" class="tb-img-good div_radius"></img></div> 
       <div class="media-body" xid="mediaBody9">
        <div xid="div33" style="padding:3px 3px 3px 3px;">
         <span bind-text='val("goods_name")' class="text-black h5" xid="span59" style="font-size:16px;color:#242424;"></span></div> 
        <div class="text-muted" xid="div38">
         <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button28" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text=' val("specification1_value") +"/"+ val("specification2_value") +"/"+ val("specification3_value")'>
          <i xid="i28"></i>
          <span xid="span55"></span></a> </div> 
        <div class="text-muted" xid="div37">
         <h4 xid="h416" class="media-heading">
          <span xid="span25" style="font-size:14px;color:#242424;margin-left:7px;" bind-text='"X"+val("num")' class="pull-right"></span></h4> 
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0px 0px 0px 0px;">
          <div class="x-col x-col-33" xid="col7">
           <span xid="span57" class="text-danger pull-left  " style="font-size:16px;">￥</span>
           <span xid="span54" class=" text-danger pull-left" style="font-size:16px;">0.00</span></div> 
          <div class="x-col" xid="col13"></div></div> </div> </div> </div> </li> </ul> </div> </div></div> </div>
  <div xid="div8" style="padding:5px 5px 5px 5px;background-color:#F2F1F2;">
   <div xid="div7" style="background-color:white;padding-right:8px;padding-left:8px;padding-top:3px;height:60px;">
    <div class="media" xid="media8" style="margin-top:3px;">
     <div class="media-body" xid="mediaBody8">
      <h4 class="media-heading" xid="h49">
       <span xid="span28" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[经手人]]></span></h4> </div> 
     <div class="media-right" xid="mediaRight7">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="张三" xid="button11" style="font-size:16px;background-color:white;color:#242424;border-style:none none none none;" bind-text=' $model.orderData.val("make")'>
       <i xid="i11"></i>
       <span xid="span27">张三</span></a> </div> </div> 
    <div class="media" xid="media10" style="margin-top:3px;">
   <div class="media-body" xid="mediaBody10">
    <h4 class="media-heading" xid="h411">
     <span xid="span29" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[发货仓库]]></span></h4> </div> 
   <div class="media-right" xid="mediaRight9">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="默认仓库" xid="button13" style="font-size:16px;background-color:white;color:#242424;border-style:none none none none;">
     <i xid="i13"></i>
     <span xid="span30">默认仓库</span></a> </div> </div></div> </div>
  <div xid="div9" style="padding:5px 5px 5px 5px;background-color:#F2F1F2;">
   <div xid="div10" style="background-color:white;padding-right:8px;padding-left:8px;padding-top:3px;height:60px;">
    <div class="media" xid="media12" style="margin-top:3px;">
     <div class="media-body" xid="mediaBody11">
      <h4 class="media-heading" xid="h413">
       <span xid="span32" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[交货日期]]></span></h4> </div> 
     <div class="media-right" xid="mediaRight10">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="2019/09/21" xid="button15" style="font-size:16px;background-color:white;color:#242424;border-style:none none none none;" bind-text=' $model.orderData.val("delivery_time")'>
       <i xid="i14"></i>
       <span xid="span33">2019/09/21</span></a> </div> </div> 
    <div class="media" xid="media11" style="margin-top:3px;">
     <div class="media-body" xid="mediaBody12">
      <h4 class="media-heading" xid="h412">
       <span xid="span31" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[发票类型]]></span></h4> </div> 
     <div class="media-right" xid="mediaRight11">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="不开发票" xid="button14" style="font-size:16px;background-color:white;color:#242424;border-style:none none none none;">
       <i xid="i15"></i>
       <span xid="span34">不开发票</span></a> </div> </div> </div> </div>
  <div xid="div12" style="padding:5px 5px 5px 5px;background-color:#F2F1F2;">
   <div xid="div11" style="background-color:white;padding-right:8px;padding-left:8px;padding-top:3px;">
    <div class="media" xid="media13" style="margin-top:3px;">
     <div class="media-body" xid="mediaBody13">
      <h4 class="media-heading" xid="h415">
       <span xid="span35" style="font-size:16px;color:#545454;margin-left:3px;"><![CDATA[发货信息]]></span></h4> </div> 
     <div class="media-right" xid="mediaRight13">
      </div> </div> 
    <div class="media" xid="media14" style="margin-top:3px;">
     
     <div class="media-body" xid="mediaBody15">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="height:35px;">
   <label class="x-label" xid="label1" style="margin-left:4px;"><![CDATA[发货方式]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="物流" style="border-style:none none none none;background-color:white;text-align:right;" bind-ref='"物流"' disabled="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="height:35px;">
   <label class="x-label" xid="label2" style="margin-left:4px;"><![CDATA[收货单位]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" style="border-style:none none none none;background-color:white;text-align:right;" placeHolder="上海物流责任有限科技公司" bind-ref='$model.addressData.ref("consignee")' disabled="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="height:35px;">
   <label class="x-label" xid="label3" style="margin-left:4px;"><![CDATA[收货人]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" style="border-style:none none none none;background-color:white;text-align:right;" bind-text='$model.addressData.val("phone")' bind-ref='$model.addressData.ref("phone")' disabled="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="height:35px;">
   <label class="x-label" xid="label4" style="margin-left:4px;"><![CDATA[地址]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" style="border-style:none none none none;background-color:white;text-align:right;" placeHolder="上海杨浦区黄兴路217号201" bind-ref='$model.addressData.ref("address")' disabled="true"></input></div></div>
  </div> </div> </div></div>  
    </div>
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1">
   <div class="x-popOver-overlay" xid="div14"></div>
   <div class="x-popOver-content" xid="div15" style="height:60%;width:75%;">
    <div xid="div16" style="height:100%;width:100%;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
      <div class="x-panel-top" xid="top1">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#170153;">
        <div class="x-titlebar-left" xid="left1"></div>
        <div class="x-titlebar-title" xid="title1">状态跟踪</div>
        <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
      <div class="x-panel-content" xid="content2" style="background-color:white;">
       <div xid="div18" style="padding:8px 3px 3px 5px;background-color:#EEEEEE;">
        <ul xid="ul2">
         <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="logData">
          <ul class="x-list-template" xid="listTemplateUl2">
           <li xid="li3">
            <li xid="li2" class="li_class2">
             <div xid="div18">
              <div class="media" xid="media16" style="margin-left:2px;">
               <div class="media-body" xid="mediaBody17">
                <h5 xid="h58" class="media-heading" style="font-size:14px;color:#407422;" bind-text=' val("create_at")'></h5>
                <h5 xid="h520" class="media-heading" style="color:#545454;;font-size:14px;" bind-text=' val("operator")'></h5>
                <h5 xid="h51" class="media-heading" style="color:#545454;;font-size:14px;" bind-text=' val("desc")'></h5></div> </div> </div> </li> </li> </ul> </div> </ul> </div> </div> </div> </div> </div> </div></div>
