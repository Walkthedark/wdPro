<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <title>购物车</title>
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:115px;left:6px;"
    onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="shopData" idColumn="id" confirmDelete="false" confirmRefresh="false" onCustomRefresh="shopDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid9"/>  
      <column label="店名" name="fShopName" type="String" xid="xid10"/>  
      <column label="等级" name="fLevel" type="Integer" xid="xid11"/>  
      <column label="店标" name="fShopImg" type="String" xid="xid16"/>  
      <column label="描述相符" name="fConsistent" type="Float" xid="xid12"/>  
      <column label="服务态度" name="fService" type="Float" xid="xid13"/>  
      <column label="商品数量" name="fGoodsNumber" type="Integer" xid="xid14"/>  
      <column label="关注人数" name="fFocusNumber" type="Integer" xid="xid15"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sumData" idColumn="id">
      <data xid="default13">[{"id":"1","priceSum":0,"goodsSum":0}]</data>  
      <column name="id" type="String" xid="xid57"></column>
  <column name="priceSum" type="Float" xid="xid58"></column>
  <column name="goodsSum" type="Float" xid="xid59"></column>
  <column name="chooseSum" type="Integer" xid="xid62"></column>
  <column name="giftSun" type="Long" xid="xid6"></column>
  <rule xid="rule4">
   <col name="priceSum" xid="ruleCol9">
    <calculate xid="calculate9">
     <expr xid="default14">$model.goodsDataM.sum(&quot;fsumPrice&quot;)</expr></calculate> </col> 
   <col name="goodsSum" xid="ruleCol12">
    <calculate xid="calculate12">
     <expr xid="default17">$model.goodsDataM.sum(&quot;fsum&quot;)</expr></calculate> </col> 
   <col name="chooseSum" xid="ruleCol13">
    <calculate xid="calculate13">
     <expr xid="default18">$model.goodsDataM.sum(&quot;fChoose&quot;)</expr></calculate> </col> 
   <col name="giftSun" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr>$model.giftData.sum(&quot;fsum&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sumdata" idColumn="id">
   <column name="id" type="String" xid="column13"></column>
   <column name="Value" type="Integer" xid="column14"></column>
   <column name="moeny" type="Float" xid="column11"></column>
   <data xid="default22">[{&quot;id&quot;:&quot;1&quot;,&quot;Value&quot;:0,&quot;moeny&quot;:0}]</data>
   <rule xid="rule5">
    <col name="Value" xid="ruleCol16">
     <calculate xid="calculate16">
      <expr xid="default21">$model.goodsDataM.sum(&quot;fsum&quot;)</expr></calculate> </col> 
    <col name="moeny" xid="ruleCol15">
     <calculate xid="calculate15">
      <expr xid="default20">$model.goodsDataM.sum(&quot;fsumMoney&quot;)</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderFlagData" idColumn="id">
   <data xid="default23">[{&quot;id&quot;:&quot;1&quot;,&quot;flag&quot;:&quot;0&quot;}]</data>
   <column name="id" type="String" xid="column12"></column>
   <column name="flag" type="String" xid="column9"></column>
   <column name="newPrice" type="String" xid="column10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid" confirmDelete="false" confirmRefresh="false" onCustomRefresh="goodsDataMCustomRefresh">
   <rule xid="rule1">
    <col name="fsum" xid="ruleCol1" expr='$model.goodsDataM.sum("fsum")'>
     <calculate xid="calculate1">
      <expr xid="default4"><![CDATA[$row.val("goods_num")]]></expr></calculate> </col> 
    <col name="fsumMoney" xid="ruleCol3">
     <calculate xid="calculate3">
      <expr xid="default7"><![CDATA[ $row.val("price") * $row.val("goods_num")]]></expr></calculate> </col> </rule>
  <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
  <column name="goods_name" type="String" xid="xid19"></column>
  <column name="goods_img" type="String" xid="xid20"></column>
  <column name="goods_inventory" type="String" xid="xid21"></column>
  <column name="quantity" type="String" xid="xid22"></column>
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
  <column name="fsumChoose" type="Integer" xid="xid1"></column>
  <column name="fsumQuantity" type="Integer" xid="xid2"></column>
  <column name="fsumPrice" type="Decimal" xid="xid3"></column>
  <column name="fChoose" type="Integer" xid="xid4"></column>
  <column name="set_specs" type="String" xid="xid5"></column>
  <column name="goods_sn" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="giftData" idColumn="uuid" confirmDelete="false" confirmRefresh="false" onCustomRefresh="giftDataCustomRefresh">
   <rule xid="rule6">
    <col name="fsum" xid="ruleCol17" expr='$model.goodsDataM.sum("fsum")'>
     <calculate xid="calculate17">
      <expr xid="default25">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> 
    <col name="fsumMoney" xid="ruleCol18">
     <calculate xid="calculate18">
      <expr xid="default24">$row.val(&quot;price&quot;) * $row.val(&quot;goods_num&quot;)</expr></calculate> </col> </rule> 
   <column label="商品ID" name="goods_id" type="String" xid="column31"></column>
  <column name="goods_name" type="String" xid="column32"></column>
  <column name="goods_img" type="String" xid="column24"></column>
  <column name="goods_inventory" type="String" xid="column26"></column>
  <column name="quantity" type="String" xid="column28"></column>
  <column name="show_name" type="String" xid="column21"></column>
  <column name="specification_id" type="String" xid="column43"></column>
  <column name="goods_num" type="Integer" xid="column33"></column>
  <column name="specification" type="String" xid="column35"></column>
  <column name="fsum" type="Float" xid="column40"></column>
  <column name="fsumMoney" type="Float" xid="column37"></column>
  <column name="price" type="Float" xid="column39"></column>
  <column name="remark" type="String" xid="column30"></column>
  <column name="unit_id" type="String" xid="column15"></column>
  <column name="uuid" type="String" xid="column23"></column>
  <column name="specification1" type="String" xid="column25"></column>
  <column name="specification2" type="String" xid="column27"></column>
  <column name="specification3" type="String" xid="column29"></column>
  <column name="dis_tag" type="String" xid="column18"></column>
  <column label="促销的价格" name="sales_price" type="Float" xid="column19"></column>
  <column label="是否是促销商品" name="sales_flag" type="String" xid="column20"></column>
  <column label="总价" name="total_price" type="Float" xid="column22"></column>
  <column name="sales_flag_num" type="String" xid="column41"></column>
  <column name="promotion" type="String" xid="column42"></column>
  <column name="promotion_id" type="String" xid="column44"></column>
  <column name="fsumChoose" type="Integer" xid="column16"></column>
  <column name="fsumQuantity" type="Integer" xid="column17"></column>
  <column name="fsumPrice" type="Decimal" xid="column34"></column>
  <column name="fChoose" type="Integer" xid="column36"></column>
  <column name="set_specs" type="String" xid="column38"></column>
  <column name="goods_sn" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-color" label="商品" xid="button6" target="content1" bind-text='"商品(" + $model.sumData.val("goodsSum")+")"'>
    <i xid="i8"></i>
    <span xid="span19">商品</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-color" label="赠品" xid="button7" target="content2" bind-text=' "赠品("+$model.sumData.val("giftSun") +")"'>
    <i xid="i9"></i>
    <span xid="span20">赠品</span></a> </div></div><div xid="content" class="x-panel-content x-scroll-view x-cards" supportpulldown="true"> 
       
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" slidable="false" routable="false" swipe="false">
   <div class="x-contents-content" xid="content1"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView" pullUpLabel=" "> 
        <div class="x-content-center x-pull-down container" xid="div8"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2" />  
          <span class="x-pull-down-label" xid="span9">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div7"> 
          <div component="$UI/system/components/justep/list/list" class="x-list bg-white" data="goodsDataM" xid="goodsList" disablePullToRefresh="true" disableInfiniteLoad="true" style="text-align:left;"> 
            <ul class="x-list-template x-min-height" xid="listTemplateUl4" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4"> 
              <li xid="li4" class="x-min-height tb-goodList " componentname="li(html)" id="undefined_li4"> 
                <div xid="div1" style="padding:5px 5px 5px 5px;">
                  <div component="$UI/system/components/justep/row/row" class="x-row div-radius" style="background-color:white;"> 
                    <div class="x-col x-col-fixed tb-nopadding" xid="col2" style="width:90px;">
                      <img src="" alt="" xid="image1" bind-attr-src=" val(&quot;goods_img&quot;)" class="tb-img-good" bind-click="listClick" />
                    </div>  
                    <div class="x-col  tb-nopadding" xid="col3">
                      <span bind-text='val("goods_name")' class="x-flex text-black h5 tb-nomargin" xid="span26" />  
                      <div class="text-muted h6" xid="div15">
   <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button5" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text='val("specification")' bind-visible='val("specification") != ""'>
   <i xid="i7"></i>
   <span xid="span21"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button9" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text='val("goods_sn")' bind-visible='val("goods_sn") != ""'>
   <i xid="i11"></i>
   <span xid="span6"></span></a></div><div class="text-muted" xid="div5"> 
                        <span xid="span22" class="text-danger">￥</span>  
                        <span xid="span28" bind-text="val(&quot;price&quot;)" class="h4 text-danger" style="font-size:16px;" />  
                        <span xid="span4"><![CDATA[/]]></span>  
                        <span xid="span5" bind-text="val(&quot;unit_name&quot;)"><![CDATA[]]></span>
                      </div>  
                      <div class="tb-numberOperation" xid="div4" style="display:flex;text-align:right;"> 
                        <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button1" icon="icon-android-remove" onClick="reductionBtnClick"> 
                          <i xid="i3" class="icon-android-remove" />  
                          <span xid="span13" />
                        </a>  
                        <input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="fNumber" style="width:15%;" bind-ref='ref("goods_num")' />
                        <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button2" icon="icon-android-add" onClick="addBtnClick"> 
                          <i xid="i6" class="icon-android-add" />  
                          <span xid="span29" />
                        </a> 
                      </div>
                    </div>
                  </div>
                </div>
              </li> 
            </ul> 
          </div>
        </div>  
        <div class="x-content-center x-pull-up" xid="div7"> 
          <span class="x-pull-up-label" xid="span8" /> 
        </div> 
      </div></div>
  <div class="x-contents-content  x-scroll-view" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" pullUpLabel=" ">
   <div class="x-content-center x-pull-down container" xid="div2">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span16">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div3">
    <div component="$UI/system/components/justep/list/list" class="x-list bg-white" data="giftData" xid="list1" disablePullToRefresh="true" disableInfiniteLoad="true" style="text-align:left;">
     <ul class="x-list-template x-min-height" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4">
      <li xid="li1" class="x-min-height tb-goodList " componentname="li(html)" id="undefined_li4">
       <div xid="div13" style="padding:5px 5px 5px 5px;">
        <div component="$UI/system/components/justep/row/row" class="x-row div-radius" style="background-color:white;" xid="row1">
         <div class="x-col x-col-fixed tb-nopadding" xid="col1" style="width:90px;">
          <img src="" alt="" xid="image2" bind-attr-src=' val("goods_img")' class="tb-img-good" bind-click="listClick"></img></div> 
         <div class="x-col  tb-nopadding" xid="col5">
          <span bind-text='val("goods_name")' class="x-flex text-black h5 tb-nomargin" xid="span10"></span>
          <div class="text-muted h6" xid="div16">
   <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button8" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text='val("specification")' bind-visible='val("specification") != ""'>
    <i xid="i10"></i>
    <span xid="span24"></span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn  btn-xs" label="button" xid="button10" style="background-color:#F9F8F9;color:#D67D51;margin-left:5px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#D67D51 #D67D51 #D67D51 #D67D51;" bind-text='val("goods_sn")' bind-visible='val("goods_sn") != ""'>
   <i xid="i12"></i>
   <span xid="span14"></span></a></div><div class="text-muted" xid="div10">
           <span xid="span11" class="text-danger">￥</span>
           <span xid="span3" bind-text='val("price")' class="h4 text-danger" style="font-size:16px;"></span>
           <span xid="span12">/</span>
           </div> 
          <div class="tb-numberOperation" xid="div12" style="display:flex;text-align:right;">
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button3" icon="icon-android-remove" onClick="button3Click">
            <i xid="i4" class="icon-android-remove"></i>
            <span xid="span17"></span></a> 
           <input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input1" style="width:15%;" bind-ref='ref("goods_num")'></input>
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button4" icon="icon-android-add" onClick="button4Click">
            <i xid="i5" class="icon-android-add"></i>
            <span xid="span2"></span></a> </div> 
  </div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span15"></span></div> </div></div></div></div>  
    <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row2" style="padding-right:0px;;padding-top:0px;">
   <div class="x-col x-col-20 x-col-center" xid="col4"></div>
   <div class="x-col" xid="col4">
    <div class="text-right" xid="div14">
     <span xid="span35" class="text-muted">合计：</span>
     <span xid="span31" class="text-danger">￥</span>
     <span xid="sum" class="h4 text-danger" bind-text=' $model.orderFlagData.val("flag") == 0?$model.goodsDataM.sum("fsumMoney"): $model.orderFlagData.val("newPrice")'>0.00</span></div> 
    <div class="text-right" xid="div11">
     <span xid="span34">共</span>
     <span xid="span1" bind-text='$model.goodsDataM.getCount() + $model.giftData.getCount()'></span>
     <span xid="span7">种</span>
     <span xid="span37" bind-text='$model.sumData.val("goodsSum") + $model.sumData.val("giftSun")'></span>
     <span xid="span7">件商品</span></div> </div> 
   <div class="x-col x-col-33 text-center tb-settlement" xid="col9" bind-click="settlementClick" style="padding-right:0px">
    <span xid="span36">下单</span></div> </div></div></div> 
</div>
