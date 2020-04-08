<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
   <title class="color_css">代客户下单</title>
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <data xid="default2">[{"id":"1","col1":"李四","col2":"13888888888","col3":"上海市渭南路111号111"}]</data>  
      <column name="id" type="String" xid="column9"/>  
      <column name="customerName" type="String" xid="column10"/>  
      <column name="customerID" type="String" xid="column1"/>  
      <column name="shr" type="String" xid="column2"/>  
      <column name="shdh" type="String" xid="column3"/>  
      <column name="shdz" type="String" xid="column4"/>  
      <column name="ddtpj" type="String" xid="column5"/>  
      <column name="jhrq" type="Date" xid="column6"/>  
      <column name="bz" type="String" xid="column7"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" limit="-1" confirmRefresh="false" confirmDelete="false"
      onAfterRefresh="goodsDataAfterRefresh" onDataChange="goodsDataDataChange"> 
      <column name="id" type="String" xid="column31"/>  
      <column name="img" type="String" xid="xid1"/>  
      <column name="pro_name" type="String" xid="xid2"/>  
      <column name="pro_id" type="String" xid="xid3"/>  
      <column name="spec" type="String" xid="xid4"/>  
      <column name="price" type="String" xid="xid5"/>  
      <column name="qty" type="String" xid="xid6"/>  
      <column name="unit" type="String" xid="xid7"/>  
      <column name="unitm" type="String" xid="xid8"/>  
      <column name="remark" type="String" xid="xid9"/>  
      <data xid="default1">[{"id":"1","img":"1","pro_name":"1","pro_id":"1","spec":"1111","price":"1","qty":"2","unit":"1","unitm":"个","remark":"备注1"},{"id":"2","img":"2","pro_name":"2","pro_id":"2","spec":"2222","price":"2","qty":"3","unit":"2","unitm":"套","remark":"备注2"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cData" idColumn="id" limit="-1" confirmRefresh="false" confirmDelete="false"> 
      <data xid="default3">[{"id":"1","img":"1","pro_name":"1","pro_id":"1","spec":"1111","price":"1","qty":"2","unit":"1","unitm":"个","remark":"备注1"},{"id":"2","img":"2","pro_name":"2","pro_id":"2","spec":"2222","price":"2","qty":"3","unit":"2","unitm":"套","remark":"备注2"}]</data>  
      <column name="id" type="String" xid="column11"/>  
      <column name="img" type="String" xid="column12"/>  
      <column name="pro_name" type="String" xid="column13"/>  
      <column name="pro_id" type="String" xid="column14"/>  
      <column name="spec" type="String" xid="column15"/>  
      <column name="price" type="String" xid="column16"/>  
      <column name="qty" type="String" xid="column17"/>  
      <column name="unit" type="String" xid="column18"/>  
      <column name="unitm" type="String" xid="column19"/>  
      <column name="remark" type="String" xid="column20"/>  
      <column name="rate" type="String" xid="xid10"/>  
      <column name="story" type="String" xid="xid11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="uuid" confirmDelete="false" confirmRefresh="false"> 
      <rule xid="rule1">
   <col name="fsum" xid="ruleCol1" expr='$model.goodsDataM.sum("fsum")'>
    <calculate xid="calculate1">
     <expr xid="default4">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> 
   <col name="fsumMoney" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default7"><![CDATA[$row.val("total_price")]]></expr></calculate> </col> </rule>
  <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
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
  <column name="promotion_id" type="String" xid="xid55"></column>
  <column name="goods_subtotal" type="String" xid="xid59"></column>
  <column name="id" type="String" xid="xid60"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="clientData" idColumn="client_id"><column name="client_id" type="String" xid="xid12"></column>
  <column name="client_name" type="String" xid="xid13"></column>
  <column name="level_id" type="String" xid="xid14"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="client_address_id"><column name="client_address_id" type="String" xid="xid15"></column>
  <column name="client_id" type="String" xid="xid16"></column>
  <column name="client_name" type="String" xid="xid17"></column>
  <column name="consignee" type="String" xid="xid23"></column>
  <column name="is_default" type="String" xid="xid24"></column>
  <column name="mobile" type="String" xid="xid25"></column>
  <column name="phone" type="String" xid="xid27"></column>
  <column name="address" type="String" xid="xid28"></column>
  <column name="area" type="String" xid="xid29"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sumdata" idColumn="id"><column name="id" type="String" xid="xid31"></column>
  <column name="Value" type="Integer" xid="xid32"></column>
  <column name="moeny" type="Float" xid="xid38"></column>
  <data xid="default6">[{&quot;id&quot;:&quot;1&quot;,&quot;Value&quot;:0,&quot;moeny&quot;:0}]</data>
  <rule xid="rule2">
   <col name="Value" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default5">$model.goodsDataM.sum(&quot;fsum&quot;)</expr></calculate> </col> 
   <col name="moeny" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default8">$model.goodsDataM.sum(&quot;fsumMoney&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderFlagData" idColumn="id"><data xid="default9">[{&quot;id&quot;:&quot;1&quot;,&quot;flag&quot;:&quot;0&quot;}]</data>
  <column name="id" type="String" xid="xid49"></column>
  <column name="flag" type="String" xid="xid50"></column>
  <column name="newPrice" type="String" xid="xid51"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="protionData" idColumn="goods_id">
   <column name="goods_id" type="String" xid="xid53"></column>
   <column name="goods_img" type="String" xid="xid63"></column>
   <column name="goods_name" type="String" xid="xid64"></column>
   <column name="guige" type="String" xid="xid65"></column>
   <column name="pid" type="String" xid="xid67"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="pdata" idColumn="goods_id">
   <column name="goods_id" type="String" xid="column8"></column>
  <column name="goods_img" type="String" xid="column21"></column>
  <column name="goods_name" type="String" xid="column24"></column>
  <column name="guige" type="String" xid="column23"></column>
  <column name="pid" type="String" xid="column22"></column>
  <column name="goods_num" type="String" xid="xid56"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="gift2data" idColumn="goods_id">
   <column name="goods_id" type="String" xid="column29"></column>
   <column name="goods_img" type="String" xid="column27"></column>
   <column name="goods_name" type="String" xid="column30"></column>
   <column name="guige" type="String" xid="column25"></column>
   <column name="pid" type="String" xid="column26"></column>
   <column name="goods_num" type="String" xid="column28"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="uuid" confirmDelete="false" confirmRefresh="false">
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
   <column name="goods_num" type="Integer" xid="column48"></column>
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
   <column name="dis_tag" type="String" xid="column33"></column>
   <column label="促销的价格" name="sales_price" type="Float" xid="column34"></column>
   <column label="是否是促销商品" name="sales_flag" type="String" xid="column35"></column>
   <column label="总价" name="total_price" type="Float" xid="column37"></column>
   <column name="sales_flag_num" type="String" xid="column53"></column>
   <column name="promotion" type="String" xid="column54"></column>
   <column name="promotion_id" type="String" xid="column56"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="PaymenTypeData" onCustomRefresh="PaymenTypeDataCustomRefresh" idColumn="id"><column name="id" type="String" xid="xid57"></column>
  <column name="name" type="String" xid="xid58"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="order_id"><column name="order_des" type="String" xid="xid61"></column>
  <column name="order_id" type="String" xid="xid62"></column>
  <column name="order_sn" type="String" xid="xid66"></column>
  <column name="price" type="String" xid="xid68"></column>
  <column name="discount_price" type="String" xid="xid69"></column>
  <column name="delivery_time" type="Date" xid="xid70"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-content" xid="content6" style="background-color:#F1EFF5;"> 
      <div xid="div17" style="padding:5px 5px 5px 5px;"><div xid="div18" class="list-group-item div_radius"><div class="media" xid="media2" bind-click="row9Click">
     <div class="media-body" xid="mediaBody4">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
       <label xid="label4" style="width:6em;">客户信息：</label>
       <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref='$model.clientData.ref("client_name")'></div></div> </div> 
     <div class="media-right" xid="mediaRight2" style="line-height:30px">
      <a component="$UI/system/components/justep/button/button" class="btn-only-icon" xid="button7" icon="linear linear-chevronright" style="color:#A9A8AC;font-weight:bold;">
       <i xid="i7" class="linear linear-chevronright"></i>
       <span xid="span8"></span></a> </div> </div></div><div xid="div23" class="list-group-item div_radius"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
       <label xid="label7" style="width:6em;">收货信息</label>
       <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7"></div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" limit="1" data="addressData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1">
       <div xid="div12" style="padding:5px 5px 5px 5px;border-style:none none none none;">
        <div class="media" xid="media1">
         <div class="media-left" xid="mediaLeft3">
          <img class="media-object" src="$UI/TheSaleEnterprise/img/address.png" alt="" xid="image2" height="30px" style="width:30px;height:30px;margin-top:12px;"></img></div> 
         <div class="media-body" xid="mediaBody3">
          <h5 xid="h51" class="media-heading">
           <span xid="span26" style="font-size:16px;color:#272727;" bind-text='val("consignee")'>胡云卓玛</span>
           <span xid="span27" bind-text='val("phone")' style="color:#787878;">18921619426</span>
           <span xid="span30" style="color:#FF6760;margin-left:10px;background-color:#FFEDF3;width:88px;" bind-visible=' val("is_default")==1'>默认</span></h5> 
          <h5 xid="h52" class="media-heading" style="color:#838383;" bind-text=' val("address")'>上海市，浦东新区宁国路，二岗明珠楼</h5>
          <h5 xid="h53" class="media-heading" style="color:#D67D51;">收获不便时请联系管理员</h5></div> 
         <div class="media-right" xid="mediaRight1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button14" style="margin-top:12px;color:#A9A8AC;font-weight:bold;color:#A9A8AC;font-weight:bold;" icon="linear linear-chevronright" onClick="button14Click">
           <i xid="i14" class="linear linear-chevronright"></i>
           <span xid="span28"></span></a> </div> </div> </div> </li> </ul> </div>
  <div xid="div19" bind-visible=" $model.addressData.getCount() ==0" style="display:none">
   <div class="media" xid="media5">
    <div class="media-left" xid="mediaLeft6">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black" label="button" xid="button18" icon="icon-ios7-location">
      <i xid="i16" class="icon-ios7-location"></i>
      <span xid="span23"></span></a> </div> 
    <div class="media-body" xid="mediaBody7">
     <h5 class="text-black" style="width:100%;" xid="h54">未填写地址,请去填写地址</h5></div> 
    <div class="media-right" xid="mediaRight5">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black" label="button" xid="button16" icon="icon-ios7-arrow-forward" onClick="button14Click">
      <i xid="i18" class="icon-ios7-arrow-forward"></i>
      <span xid="span24"></span></a> </div> </div> </div></div><div xid="div30" style="padding:5px 10px 5px 10px;" class="list-group-item div_radius">
   <div class="media" xid="media8">
    <div class="media-left" xid="mediaLeft9">
     <a component="$UI/system/components/justep/button/button" class="btn" label="发货仓库" xid="button26" onClick="button2Click" style="color:black">
      <i xid="i26"></i>
      <span xid="span41">发货仓库</span></a> </div> 
    <div class="media-body" xid="mediaBody10" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-icon-right" label="默认仓库" xid="button25" style="color:#212121;" icon="linear linear-chevronright">
      <i xid="i25" style="color:black;font-weight:bold;" class="linear linear-chevronright"></i>
      <span xid="span45">默认仓库</span></a> </div> 
    </div> </div><div xid="div10" class="div_radius list-group-item" style="padding:5px;width:100%;">
   <div xid="div7">
      
       
  <div xid="div27"><div class="media" xid="media3">
   <div class="media-left" xid="mediaLeft4">
    <a component="$UI/system/components/justep/button/button" class="btn" label="商品清单" xid="button1" onClick="button2Click" style="color:black">
   <i xid="i1"></i>
   <span xid="span4">商品清单</span></a></div> 
   <div class="media-body" xid="mediaBody5" style="text-align:right;">
    </div> 
  <div class="media-right" xid="mediaRight3">
   <a component="$UI/system/components/justep/button/button" class="btn" xid="button4" onClick="button4Click" icon="icon-arrow-down-b" style="color:#A9A8AC;font-weight:bold;">
         <i xid="i4" class="icon-arrow-down-b"></i>
         <span xid="span5"></span></a></div></div></div>
  <div xid="div29" style="text-align:center;"><div component="$UI/system/components/justep/button/buttonGroup" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="添加赠品" xid="button22" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#7B7B7B #7B7B7B #7B7B7B #7B7B7B;background-color:white;color:#7B7B7B" icon="glyphicon glyphicon-plus" onClick="button22Click">
    <i xid="i22" class="glyphicon glyphicon-plus"></i>
    <span xid="span38">添加赠品</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="扫描条码" xid="button23" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#7B7B7B #7B7B7B #7B7B7B #7B7B7B;background-color:white;color:#7B7B7B;margin-left:5px;margin-right:5px;" icon="glyphicon glyphicon-barcode">
    <i xid="i23" class="glyphicon glyphicon-barcode"></i>
    <span xid="span39">扫描条码</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="选择商品" xid="button24" onClick="button2Click" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#7B7B7B #7B7B7B #7B7B7B #7B7B7B;background-color:white;color:#7B7B7B" icon="glyphicon glyphicon-unchecked">
   <i xid="i24" class="glyphicon glyphicon-unchecked"></i>
   <span xid="span40">选择商品</span></a></div></div><div xid="div28"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="goodsDataM">
       <ul class="x-list-template" xid="listTemplateUl2">
        <li xid="li3">
         <div xid="div6" style="padding:5px;border-right-style:none;border-left-style:none;" class="list-group-item" bind-click="div6Click">
          <div class="media-left" xid="mediaLeft2">
           <img src="" alt="" xid="image4" bind-attr-src=' val("goods_img")' class="tb-img-good div_radius" style="width:66px;height:66px;"></img></div> 
          <div class="media-body" xid="mediaBody2">
           <div xid="div9" style="padding:3px 3px 3px 3px;">
            <span bind-text='val("goods_name")' class="text-black h5" xid="span33"></span></div> 
           <div class="text-muted" xid="div1">
            <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button13" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text='val("specification")' bind-visible='val("specification") != ""'>
             <i xid="i13"></i>
             <span xid="span17"></span></a> </div> 
           <div class="text-muted" xid="div2">
            <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0px 0px 0px 0px;">
             <div class="x-col x-col-33" xid="col18">
              <span xid="span32" class="text-danger pull-left  " style="font-size:16px;">￥</span>
              <span xid="span21" class=" text-danger pull-left" style="font-size:16px;" bind-text='val("price")'>0.00</span></div> 
             <div class="x-col" xid="col19">
              <div class="tb-numberOperation" xid="div8" style="text-align:right;">
               <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-right" label="button" xid="button11" icon="icon-android-add" bind-click="addBtnClick">
                <i xid="i12" class="icon-android-add"></i>
                <span xid="span29"></span></a> 
               <span bind-text='val("goods_num")' xid="span16" class="pull-right" style="line-height:0.8;height:30px;"></span>
               <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-right" label="button" xid="button12" icon="icon-android-remove" bind-click="reductionBtnClick">
                <i xid="i11" class="icon-android-remove"></i>
                <span xid="span10"></span></a> </div> </div> </div> </div> </div> </div> 
         <div xid="div16" class="list-group-item" style="padding:0px 0px 0px 20px;border-right-style:none;border-left-style:none;">
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
           <label class="x-label" xid="label2">商品备注</label>
           <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='ref("remark")' placeHolder="请输入"></input></div> </div> 
  <div class="panel-heading" xid="div26" bind-visible=' val("sales_flag") == 0' bind-click="div7Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-right pull-right" label="请选择赠品" xid="button21" icon="icon-ios7-arrow-right">
    <i class="icon-ios7-arrow-right text-muted" xid="i21"></i>
    <span xid="span25" style="color:#8B8B8B;">请选择赠品</span></a> 
   <span xid="span25">满赠</span>
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="$model.pdata" filter=' val("goods_id") ==  $row.val("pid")'>
    <ul class="x-list-template" xid="listTemplateUl6">
     <li xid="li8">
      <div class="media" xid="media7">
       <div class="media-left" xid="mediaLeft8">
        <a href="#" xid="a1">
         <img class="media-object" src="" alt="" xid="image5" height="40px" style="width:40px;height:46px;" bind-attr-src='val("goods_img")'></img></a> </div> 
       <div class="media-body" xid="mediaBody9">
        <h4 class="media-heading " xid="h49" bind-text=' val("goods_name")' style="width:100%;font-size:14px;color:#727274;">Media heading</h4></div> </div> </li> </ul> </div> </div></li> </ul> </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="data2">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li2">
     <div xid="div36" style="padding:5px;border-right-style:none;border-left-style:none;" class="list-group-item" bind-click="div6Click">
      <div class="media-left" xid="mediaLeft11">
       <img src="" alt="" xid="image8" bind-attr-src=' val("goods_img")' class="tb-img-good div_radius" style="width:66px;height:66px;"></img>
  <img src="$UI/theAgentOrder/img/gifts.png" alt="" xid="image9" style="position:relative;right:6px;bottom:5px;width:56px;height:38px;left:3px;top:-55px;" class="tb-img-good div_radius"></img></div> 
      <div class="media-body" xid="mediaBody11">
       <div xid="div33" style="padding:3px 3px 3px 3px;">
        <span bind-text='val("goods_name")' class="text-black h5" xid="span59"></span></div> 
       <div class="text-muted" xid="div38">
        <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button28" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text='val("specification")' bind-visible='val("specification") != ""'>
         <i xid="i28"></i>
         <span xid="span55"></span></a> </div> 
       <div class="text-muted" xid="div37">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0px 0px 0px 0px;">
         <div class="x-col x-col-33" xid="col7">
          <span xid="span57" class="text-danger pull-left  " style="font-size:16px;">￥</span>
          <span xid="span54" class=" text-danger pull-left" style="font-size:16px;">0.00</span></div> 
         <div class="x-col" xid="col13">
          <div class="tb-numberOperation" xid="div35" style="text-align:right;">
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-right" label="button" xid="button30" icon="icon-android-add" bind-click="button30Click">
            <i xid="i29" class="icon-android-add"></i>
            <span xid="span52"></span></a> 
           <span bind-text='val("goods_num")' xid="span56" class="pull-right" style="line-height:0.8;height:30px;"></span>
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-right" label="button" xid="button29" icon="icon-android-remove" bind-click="button29Click">
            <i xid="i8" class="icon-android-remove"></i>
            <span xid="span58"></span></a> </div> </div> </div> </div> </div> </div> 
     
     </li> </ul> </div></div>
  <div xid="div31" class="list-group-item" style="padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col3" style="text-align:center;">
  <span xid="span49" bind-text="$model.goodsDataM.getCount()"><![CDATA[0]]></span>
  <h5 xid="h55"><![CDATA[]]><span xid="span9" style="color:#7F7F7F;"><![CDATA[商品种类]]></span></h5></div>
   <div class="x-col" xid="col5" style="text-align:center;"><span xid="span46" bind-text='$model.sumdata.val("Value")'><![CDATA[0]]></span>
  <h5 xid="h56">
   <span xid="span50" style="color:#7F7F7F;"><![CDATA[商品数量]]></span></h5></div>
   <div class="x-col" xid="col6" style="text-align:center;"><span xid="span48" bind-text=' $model.orderFlagData.val("flag") == 0?$model.goodsDataM.sum("fsumMoney"): $model.orderFlagData.val("newPrice")'><![CDATA[0.00]]></span>
  <h5 xid="h57">
   <span xid="span51" style="color:#7F7F7F;"><![CDATA[金额合计]]></span></h5></div></div></div></div>
  <div xid="div15" style="padding:5px 10px 5px 10px;"><div class="media" xid="media4">
   <div class="media-left" xid="mediaLeft5">
    <a component="$UI/system/components/justep/button/button" class="btn" label="发票信息" xid="button6" onClick="button2Click" style="color:black">
   <i xid="i6"></i>
   <span xid="span19">发票信息</span></a></div> 
   <div class="media-body" xid="mediaBody6" style="text-align:right;">
    <a component="$UI/system/components/justep/button/button" class="btn  btn-icon-right" label="不开发票" xid="button15" style="color:#212121;" bind-click="button17Click" icon="linear linear-chevronright">
   <i xid="i15" style="color:black;font-weight:bold;" class="linear linear-chevronright"></i>
   <span xid="span20">不开发票</span></a></div> 
  </div></div><div xid="div13" style="padding:5px 10px 5px 20px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14">
     <label class="x-label" xid="label15" style="width:7em;">订单特批价</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="请输入" dataType="Float" bind-ref='$model.orderData.ref("discount_price")'></input>
     <label class="x-label" xid="label16" style="width:1em;color:#A9A8AC;font-weight:bold;">元</label></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label5" style="width:7em;"><![CDATA[收货金额]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" placeHolder="请输入" dataType="Float"></input>
   <label class="x-label" xid="label3" style="width:1em;color:#A9A8AC;font-weight:bold;">元</label></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label10"><![CDATA[收款账户]]></label>
   <div class="x-edit" xid="div34" style="text-align:right;" bind-click="div34Click"><a component="$UI/system/components/justep/button/button" class="btn  btn-icon-right" xid="button27" style="color:#212121;" icon="linear linear-chevronright" label="现金">
   <i xid="i30" style="color:black;font-weight:bold;" class="linear linear-chevronright"></i>
   <span xid="span53">现金</span></a></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit18">
       <label class="x-label" xid="label21" style="width:7em;">交货日期</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" dataType="Date" placeHolder="请选择" bind-ref='$model.orderData.ref("delivery_time")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit20">
       <label class="x-label" xid="label23" style="width:7em;">订单备注</label>
       <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea4" placeHolder="请输入" bind-ref='$model.orderData.ref("order_des")'></textarea></div>
  </div>
  </div>
  </div></div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row2" style="padding-right:0px;;padding-top:0px;">
   <div class="x-col x-col-20 x-col-center" xid="col4">
    </div> 
   <div class="x-col" xid="col4">
    <div class="text-right" xid="div14">
     <span xid="span35" class="text-muted">合计：</span>
     <span xid="span31" class="text-danger">￥</span>
     <span xid="sum" class="h4 text-danger" bind-text=' $model.orderFlagData.val("flag") == 0?$model.goodsDataM.sum("fsumMoney"): $model.orderFlagData.val("newPrice")'><![CDATA[0.00]]></span></div> 
    <div class="text-right" xid="div11">
     <span xid="span34">共</span>
     <span xid="span1" bind-text="$model.goodsDataM.getCount()"><![CDATA[]]></span>
     <span xid="span7">种</span>
     <span xid="span37" bind-text='$model.sumdata.val("Value")'></span>
     <span xid="span7">件商品</span></div> </div> 
   <div class="x-col x-col-33 text-center tb-settlement" xid="col9" bind-click="settlementClick" style="padding-right:0px">
    <span xid="span36"><![CDATA[确定]]></span></div> </div></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" position="bottom" dismissible="false" style="width:100%;background-color:white;"> 
    <div class="x-popOver-overlay" xid="div3"/>  
    <div class="x-popOver-content" xid="div4"> 
      <div xid="div5" style="padding:4px;background-color:white;"> 
        <div class="media-left" xid="mediaLeft1" style="padding:10px 4px;"> 
          <img src="" alt="" xid="image1" bind-attr-src="$model.getImageUrl( $model.cData.val(&quot;img&quot;))"
            class="tb-img-good" style="width:6em;"/> 
        </div>  
        <div class="media-body" xid="mediaBody1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row13"> 
            <div class="x-col" xid="col2"> 
              <span xid="span2" bind-text="$model.cData.val(&quot;pro_name&quot;)" class="h4"
                style="color:#000"/> 
            </div>  
            <div xid="col8"> 
              <a component="$UI/system/components/justep/button/button" class="btn pull-right"
                xid="button5" icon="linear linear-cross" onClick="button5Click"> 
                <i xid="i2" class="linear linear-cross"/>  
                <span xid="span43"/> 
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row14"> 
            <div class="x-col" xid="col16"> 
              <span xid="span3" bind-text="$model.cData.val(&quot;spec&quot;)" class="h5"
                style="color:#000"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15"
        style="background-color:white;"> 
        <div class="x-col" xid="col22"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row17"> 
            <div class="col col-xs-12" xid="col26"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label1" style="width:6em;">单位：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output10" bind-ref="$model.cData.ref(&quot;unitm&quot;)"
                  style="text-align:right"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col27"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit1"> 
                <label class="x-label" xid="label6" style="width:6em;">单价：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output11" bind-ref="$model.cData.ref(&quot;price&quot;)"
                  style="text-align:right"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col29"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:6em;">税率：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output12" bind-ref="$model.cData.ref(&quot;rate&quot;)"
                  style="text-align:right"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col30"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label9" style="width:6em;">备注：</label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control" xid="textarea1" bind-ref="$model.cData.ref(&quot;remark&quot;)"
                  style="border:0px;text-align:right" placeHolder="请输入"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col33"> 
              <a component="$UI/system/components/justep/button/button" class="btn x-blue btn-sm btn-only-icon pull-right addbtn"
                label="button" xid="button3" icon="icon-android-add" onClick="addSpecBtnClick"> 
                <i xid="i5" class="icon-android-add"/>  
                <span xid="span6"/> 
              </a>  
              <input component="$UI/system/components/justep/input/input" class="pull-right btn-sm sumbtn"
                xid="input2" bind-ref="$model.cData.ref(&quot;qty&quot;)"/>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-sm btn-only-icon pull-right subbtn"
                label="button" xid="button2" icon="icon-android-remove" onClick="subSpecBtnClick"> 
                <i xid="i3" class="icon-android-remove"/>  
                <span xid="span18"/> 
              </a>  
              <label xid="label11" class="x-label" style="padding: 5px 0px;">数量</label> 
            </div>  
            <div class="col col-xs-12" xid="col34"> 
              <span xid="span12" bind-text="$model.cData.val(&quot;unitm&quot;)" class="pull-right h6"
                style="color:#c3c3c3;margin:0px;">2222</span>  
              <span bind-text="$model.cData.val(&quot;story&quot;)" xid="span13" class="pull-right h6"
                style="color:#c3c3c3;margin:0px;">111</span>  
              <span xid="span11" class="pull-right h6" style="color:#c3c3c3;margin:0px;">库存:</span> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row27"
        style="text-align:center;background-color:white;"> 
        <div class="x-col" xid="col35"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger"
            label="移除" xid="button9" style="width:100%;" onClick="button9Click"> 
            <i xid="i9"/>  
            <span xid="span14">移除</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col36"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-primary"
            label="确定" xid="button10" style="width:100%;" onClick="button10Click"> 
            <i xid="i10"/>  
            <span xid="span15">确定</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="customerDialog"
    src="$UI/theAgentOrder2/placeOrder/dialog/customers.w" forceRefreshOnOpen="true"
    onReceive="customerDialogReceive" routable="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="orderWinDialog"
    src="$UI/theAgentOrder2/placeOrder/orderDialog/orderDialogS.w" routable="true"/>
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="invoiceWinDiaLog" src="$UI/theAgentOrder2/placeOrder/orderDialog/dialog/invoice.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="adressWinDialog" src="$UI/theAgentOrder2/adress/adressList.w"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver2" position="bottom">
   <div class="x-popOver-overlay" xid="div20"></div>
   <div class="x-popOver-content" xid="div24" style="width:100%;height:70%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
     <div class="x-panel-content" xid="content3" style="background-color:#F4F2F8;">
      <div xid="div22" class="list-group-item" style="padding:10px 10px 10px 10px;">
       <div class="media" xid="media6">
        <div class="media-left" xid="mediaLeft7">
         <img alt="" xid="image3" bind-attr-src=' $model.goodsDataM.val("goods_img")' height="60px" style="width:70px;height:60px"></img></div> 
        <div class="media-body" xid="mediaBody8">
         <h4 class="media-heading" xid="h43" style="font-size:16px;color:#3C3C3D;" bind-text=' $model.goodsDataM.val("goods_name")'>请选择赠品</h4>
         <h4 class="media-heading" xid="h44" style="font-size:14px;color:#727274;">请选择赠品</h4></div> 
        <div class="media-right" xid="mediaRight6">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black" icon="icon-ios7-close-outline" onClick="{operation:'popOver2.hide'}" xid="button19">
          <i xid="i19" class="icon-ios7-close-outline"></i>
          <span xid="span22"></span></a> </div> </div> </div> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="protionData" dataItemAlias="jkjkjk">
       <ul class="x-list-template" xid="listTemplateUl4">
        <li xid="li6" class="col col-xs-4" style="padding:0px 0px 0px 0px;">
         <div xid="div21" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:transparent;">
          <div xid="div25" bind-css="{'current2':val(&quot;goods_id&quot;) == $model.protionData.val(&quot;goods_id&quot;)}" style="background-color:white;border-style:solid solid solid solid;border-width:medium medium medium medium;border-color:#FBF9FF #FBF9FF #FBF9FF #FBF9FF;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
            <div class="x-col" xid="col10" style="text-align:center;">
             <img class=" " src="" alt="" xid="image6" height="60px" style="width:60px;" bind-attr-src=' val("goods_img")'></img>
             <h4 class="media-heading" xid="h45" bind-text=' val("goods_name")' style="font-size:14px;color:#727274;text-align:center;">Media heading</h4></div> </div> </div> </div> </li> </ul> </div> </div> 
     <div class="x-panel-bottom" xid="bottom3">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px 0px 0px 0px;">
       <div xid="col11" style="width:0.5em;"></div>
       <div class="x-col " xid="col12" style="padding:3px 0px 3px 0px;">
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="确定选择" xid="buttonGroup2" style="background-color:#47D1D1;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定选择" xid="button20" style="color:#FBF9FF;font-size:14px;" onClick="button20Click">
          <i xid="i20"></i>
          <span xid="span44">确定选择</span></a> </div> </div> 
       <div xid="col1" style="width:0.5em;"></div></div> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" src="$UI/theAgentOrder2/placeOrder/orderDialog/secondOrder.w" routable="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="deleteOrderwinDialog" src="$UI/theAgentOrder2/placeOrder/dialog/deleteGoodsInfo.w" forceRefreshOnOpen="true" routable="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="giftWinDialog" src="$UI/theAgentOrder2/placeOrder/orderDialog/giftClassMain.w" routable="true"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver4">
   <div class="x-popOver-overlay" xid="div32"></div>
   <div class="x-popOver-content div_radius" xid="div39" style="height:60%;width:75%;">
    <div xid="div41" style="height:100%;width:100%;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
      <div class="x-panel-top" xid="top2">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#E1D6BD;">
        <div class="x-titlebar-left" xid="left2"></div>
        <div class="x-titlebar-title" xid="title2"><![CDATA[收货账户]]></div>
        <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
      <div class="x-panel-content" xid="content8" style="background-color:#EEEEEE;">
       <div xid="div40" style="padding:8px 3px 3px 5px;">
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list7" data="PaymenTypeData">
         <ul class="x-list-template" xid="listTemplateUl7">
          <li xid="li4" bind-click="li4Click">
           <div xid="div32" class="list-group-item">
            <div class="media" xid="media11">
             <div class="media-body" xid="mediaBody12">
              <h4 class="media-heading" xid="h41" bind-text=' val("name")' style="text-align:center;font-size:18px;color:#484848;">Media heading</h4></div> </div> </div> </li> </ul> </div> </div> </div> </div> </div> </div> </div></div>
