<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="rootClassData" idColumn="fID" onCustomRefresh="rootClassDataCustomRefresh">
   <column label="id" name="fID" type="String" xid="default6"></column>
   <column label="标题" name="fClassName" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="secondClassData" idColumn="fID" onCustomRefresh="secondClassDataCustomRefresh">
   <column label="id" name="fID" type="String" xid="xid1"></column>
   <column label="一级分类ID" name="fRootID" type="String" xid="xid2"></column>
   <column label="分类名称" name="fClassName" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="threeClassData" onCustomRefresh="threeClassDataCustomRefresh" idColumn="fID">
   <column label="id" name="fID" type="String" xid="xid4"></column>
   <column label="二级分类ID" name="fSecondID" type="String" xid="xid5"></column>
   <column label="分类名称" name="fClassName" type="String" xid="xid7"></column>
   <column label="分类图片" name="fClassImg" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid" onCustomRefresh="goodsDataCustomRefresh">
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
      <expr xid="default11">justep.UUID.createUUID()</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="categoryData" idColumn="cate_id" onCustomRefresh="categoryDataCustomRefresh">
   <column name="cate_id" type="String" xid="xid37"></column>
   <column name="cate_name" type="String" xid="xid38"></column>
   <column name="parent_id" type="String" xid="xid41"></column>
   <column name="children" type="String" xid="xid42"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="childrenData" idColumn="cate_id"><column name="cate_id" type="String" xid="xid9"></column>
  <column name="cate_name" type="String" xid="xid10"></column>
  <column name="parent_id" type="String" xid="xid11"></column>
  <column name="children" type="String" xid="xid12"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="GoodsInfodata" idColumn="uuid">
   <column name="goods_id" type="String" xid="xid44"></column>
   <column name="add_goods_time" type="String" xid="xid45"></column>
   <column name="cate_id" type="String" xid="xid46"></column>
   <column name="cate_name" type="String" xid="xid47"></column>
   <column name="cost_price" type="String" xid="xid48"></column>
   <column name="expiration_date" type="String" xid="xid49"></column>
   <column name="goods_accessory" type="String" xid="xid50"></column>
   <column name="goods_activity_state" type="String" xid="xid51"></column>
   <column name="goods_code1" type="String" xid="xid52"></column>
   <column name="goods_code2" type="String" xid="xid53"></column>
   <column name="goods_code3" type="String" xid="xid54"></column>
   <column name="goods_img" type="String" xid="xid55"></column>
   <column name="goods_inventory" type="String" xid="xid56"></column>
   <column name="goods_name" type="String" xid="xid57"></column>
   <column name="goods_sn" type="String" xid="xid58"></column>
   <column name="goods_state" type="String" xid="xid59"></column>
   <column name="is_client_price" type="String" xid="xid60"></column>
   <column name="is_delete" type="String" xid="xid61"></column>
   <column name="is_hot" type="String" xid="xid62"></column>
   <column name="is_new" type="String" xid="xid63"></column>
   <column name="is_putaway" type="String" xid="xid64"></column>
   <column name="is_units" type="String" xid="xid65"></column>
   <column name="keywords" type="String" xid="xid66"></column>
   <column name="level_id" type="String" xid="xid67"></column>
   <column name="level_num" type="String" xid="xid68"></column>
   <column name="level_price1" type="String" xid="xid69"></column>
   <column name="level_price2" type="String" xid="xid70"></column>
   <column name="level_price3" type="String" xid="xid71"></column>
   <column name="level_price_id" type="String" xid="xid72"></column>
   <column name="level_purchase" type="String" xid="xid73"></column>
   <column name="market_price1" type="String" xid="xid74"></column>
   <column name="market_price2" type="String" xid="xid75"></column>
   <column name="market_price3" type="String" xid="xid76"></column>
   <column name="price" type="String" xid="xid77"></column>
   <column name="produced" type="String" xid="xid78"></column>
   <column name="produced_time" type="String" xid="xid79"></column>
   <column name="sort_num" type="String" xid="xid80"></column>
   <column name="specification1_name" type="String" xid="xid81"></column>
   <column name="specification1_value" type="String" xid="xid82"></column>
   <column name="specification2_name" type="String" xid="xid83"></column>
   <column name="specification2_value" type="String" xid="xid84"></column>
   <column name="specification3_name" type="String" xid="xid85"></column>
   <column name="specification3_value" type="String" xid="xid86"></column>
   <column name="specification_id" type="String" xid="xid87"></column>
   <column name="unit" type="String" xid="xid88"></column>
   <column name="update_goods_time" type="String" xid="xid89"></column>
   <column name="warehouse_id" type="String" xid="xid90"></column>
   <column name="goods_num" type="Integer" xid="xid91"></column>
   <column name="unit_id" type="String" xid="xid92"></column>
   <column name="unit_name" type="String" xid="xid93"></column>
   <column isCalculate="false" name="uuid" type="String" xid="xid94"></column>
   <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="categoryDataList" idColumn="cate_id">
    <column name="cate_id" type="String" xid="column2"></column>
    <column name="cate_name" type="String" xid="column1"></column>
    <column name="parent_id" type="String" xid="column3"></column>
    <column name="children" type="String" xid="column4"></column>
    <column name="choose" type="Integer" xid="xid43"></column></div> 
   <rule xid="rule1">
    <col name="uuid" xid="ruleCol1">
     <defaultValue xid="default5">
      <expr xid="default7"></expr></defaultValue> 
     <calculate xid="calculate1">
      <expr xid="default8">justep.UUID.createUUID()</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="childrenDataFilter" idColumn="cate_id" onCustomRefresh="categoryDataCustomRefresh">
   <column name="cate_id" type="String" xid="column6"></column>
   <column name="cate_name" type="String" xid="column5"></column>
   <column name="parent_id" type="String" xid="column7"></column>
   <column name="children" type="String" xid="column8"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#D6D6D6;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="默认" xid="button1" icon="dataControl dataControl-arrowdownl" target="content3">
    <span xid="span1">默认</span><i xid="i1" class="dataControl dataControl-arrowdownl" style="font-size:14px;"></i>
    </a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="筛选" xid="button2" icon="dataControl dataControl-filter" onClick="button2Click" target="content4">
    <span xid="span2">筛选</span><i xid="i2" class="dataControl dataControl-filter" style="font-size:14px;"></i>
    </a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="搜索" xid="button3" icon="dataControl dataControl-search24" onClick="button3Click" target="content5">
   <span xid="span3">搜索</span><i xid="i3" class="dataControl dataControl-search24" style="font-size:14px;"></i>
   </a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" icon="dataControl dataControl-thumnail">
   <span xid="span4"></span><i xid="i4" class="dataControl dataControl-thumnail" style="font-size:15px;"></i>
   </a></div></div>
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="height:3px;">
   <div class="x-col" xid="col21"></div></div><div component="$UI/system/components/bootstrap/row/row" class="row tb-box" xid="row1">
   <div class="col col-xs-3" xid="col10" style="padding-right:0px;">
    <div component="$UI/system/components/justep/list/list" class="x-list tb-root" xid="rootClassList" data="categoryData" dataItemAlias="rootClassRow" filter=' $row.val("parent_id") ==0'>
     <ul class="x-list-template list-group" xid="listTemplateUl1">
      <li xid="li1" bind-css="{'current':rootClassRow.val('cate_id')==$model.categoryData.val('cate_id')}" class="list-group-item text-center tb-nopadding" style="border-right-style:none;" bind-click="li1Click">
       <h5 xid="h52" bind-text=' val("cate_name")' class="text-black"></h5>
  <div component="$UI/system/components/justep/list/list" class="x-list tb-root" xid="list6" data="categoryData">
   <ul class="x-list-template list-group" xid="listTemplateUl7">
    <li xid="li7" class="list-group-item text-center tb-nopadding" style="border-right-style:none;" bind-click="li1Click">
     <h5 xid="h53" bind-text=' val("cate_name")' class="text-black"></h5></li> </ul> </div></li> </ul> 
  </div> </div> 
   <div class="col col-xs-9" xid="col11" style="border-left-style:solid;border-left-width:thin;border-left-color:#D6D6D6;height:100%;">
    <div xid="div13" style="z-index:2;position:absolute;right:0;bottom:0;left:0;width:100%;background-color:rgba(0,0,0,.5);display:none;top:35px;" class="pop-div"><div xid="div14" style="width:100%;background-color:#f5f5f5;height:70%;"><div xid="div19">
  <div xid="div2" style="background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="childrenData" filter='$row.val("children")  != null  &amp;&amp; $row.val("children") != ""' style="background-color:white;">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li5" bind-click="li5Click">
  <div xid="div6" class="list-group-item" style="padding:5px 5px 5px 5px;"><div class="media" xid="media1">
   <div class="media-body" xid="mediaBody1">
    <h5 xid="h51" class="media-heading" style="margin-top:5px;">
     <span xid="span8" style="color:#3F3F3F;font-size:16px;" bind-text='val("cate_name")'><![CDATA[]]></span>
     <div xid="div5" class="pull-right" style="color:#3F3F3F;height:100%;width:40px;text-align:center;">
      <i xid="i8" class="icon-arrow-right-b"></i></div> </h5> </div> </div></div></li></ul> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="background-color:white;padding:0px 0px 0px 0px;">
   <div class="x-col" xid="col4"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="childrenData" filter='$row.val("children")  == null  || $row.val("children") == ""'>
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" class="col col-xs-4 "><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="南方肥牛牛肉" xid="button5" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#CDCDCD #CDCDCD #CDCDCD #CDCDCD;background-color:white;color:#565656;margin-top:5px;" bind-click="button5Click">
   <i xid="i12"></i>
   <span xid="span24" bind-text='val("cate_name")'>南方肥牛牛肉</span></a></li></ul> </div>
  </div></div>
  </div></div></div></div>
  
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsDataM" style="overflow:auto">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div xid="div26">
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
         <span xid="span41" style="color:#cf0202;font-size:14px;" bind-text='val("price")'>90.00</span></h5> 
        <h5 xid="h522">
         <span xid="span44" style="font-size:14px;color:#505050;">库存:</span>
         <span xid="span43" style="font-size:14px;color:#505050;" bind-text='val("goods_inventory")'>34</span></h5> </h5> </div> </div> </div> 
    <div class="x-col" xid="col24">
     <div xid="div27" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;" class="center-block cart" bind-click="div27Click">
      <i xid="i16" class="linear linear-cart cart" style="font-size:20px;color:#cf0202;line-height:25px"></i></div> </div> </div> </div></li></ul> </div>
  </div> </div></div>
  <div class="x-contents-content" xid="content4"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1"></div></div>
  <div class="x-contents-content" xid="content5"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2"></div></div></div></div>
   </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" position="bottom">
   <div class="x-popOver-overlay" xid="div21"></div>
   <div class="x-popOver-content ddd" xid="div22" style="height:60%;width:100%;background-color:white;"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div xid="div35">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
    <div class="x-col x-col-20" xid="col14">
     <img src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic2.png" alt="" xid="image8" height="60px" style="width:60px;" class="img-rounded "></img></div> 
    <div class="x-col" xid="col2" style="text-align:left;">
     <h4 class="media-heading" xid="h45" style="color:#545454;font-size:16px;"><![CDATA[澳大利亚牛肉]]></h4></div> 
    <div class="x-col" xid="col12" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" icon="icon-android-close" style="color:#3F3F3F;" onClick="button8Click">
      <i xid="i20" class="icon-android-close"></i>
      <span xid="span34"></span></a> </div> </div> </div>
  
  
  
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="GoodsInfodata">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4"><div xid="div3" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col x-col-67" xid="col16"><h5 xid="h54">
   <span xid="span6" class="text-danger">¥</span>
   <span xid="span25" bind-text=' val("price")' class="text-danger"></span>
   <span xid="span5" bind-text='"/" + val("unit_name")' style="color:#666"></span>
   <span xid="span37" style="color:#666" bind-text=' val("goods_sn")'></span></h5>
  <h5 xid="h55">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button13" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text=' val("specification1_value")' bind-visible='val("specification1_name")!=""'>
    <i xid="i9"></i>
    <span xid="span13"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button7" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text=' val("specification2_value")' bind-visible='val("specification2_name")!=""'>
    <i xid="i5"></i>
    <span xid="span12"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button9" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text=' val("specification3_value")' bind-visible='val("specification3_name")!=""' disabled="true">
    <i xid="i21"></i>
    <span xid="span40"></span></a> </h5></div>
   <div class="x-col" xid="col18"><div xid="div23"><div class="tb-numberOperation" xid="div34" style="text-align:right;">
   <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button11" icon="icon-android-add" onClick="addBtnClick" style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;color:#FFFEFF;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;color:#FFFEFF;background-color:#cf0202;">
    <i xid="i18" class="icon-android-add"></i>
    <span xid="span36"></span></a>
   <span xid="span32" class="pull-right" style="line-height:0.8;height:22px;" bind-text='val("goods_num")==null?"0": val("goods_num")'><![CDATA[2]]></span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right" label="button" xid="button12" icon="icon-android-remove" onClick="reductionBtnClick" style="background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;color:#cf0202">
    <i xid="i15" class="icon-android-remove"></i>
    <span xid="span33"></span></a> </div></div></div></div></div></li></ul> </div></div>
   <div class="x-panel-bottom" xid="bottom1">
  
  <div xid="div11" style="height:100%;width:100%;"><div xid="div12" style="height:100%;width:60%;float:left;border-right-style:solid;border-right-width:thin;border-right-color:#D6D6D6;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="height:100%;width:100%;">
   <div class="x-col " xid="col17">
  
  <div class="media" xid="media9">
   
   <div class="media-body" xid="mediaBody9">
    <h5 xid="h515" class="media-heading" style="color:#505050;"><![CDATA[]]>
  <span xid="span26"><![CDATA[已选种类]]></span>
  <span xid="span27"><![CDATA[3]]></span>
  <span xid="span28"><![CDATA[数量]]></span>
  <span xid="span29"><![CDATA[6]]></span></h5>
  <h5 xid="h517" class="media-heading">
   <span xid="span31" style="color:#cf0202;"><![CDATA[¥]]></span>
   <span xid="span30" style="color:#cf0202;"><![CDATA[4000]]></span></h5></div> </div></div>
   </div></div>
  <div xid="div15" style="height:100%;width:407;text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="进入购物车" xid="button6" icon="linear linear-cart" style="color:#505050;" onClick="button6Click">
   <i xid="i6" class="linear linear-cart" style="font-size:18px;"></i>
   <span xid="span35">进入购物车</span></a></div></div></div></div></div></div></div>