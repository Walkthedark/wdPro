<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:84px;top:18px;" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" limit="20" confirmRefresh="false" confirmDelete="false"
      onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="店铺ID" name="fShopID" type="String" xid="xid1"/>  
      <column label="标题" name="fTitle" type="String" xid="column2"/>  
      <column label="图片" name="fImg" type="String" xid="column3"/>  
      <column label="价格" name="fPrice" type="Float" xid="column4"/>  
      <column label="原价格" name="fOldPrice" type="Float" xid="column5"/>  
      <column label="邮费" name="fPostage" type="String" xid="column6"/>  
      <column label="买出数量" name="fRecord" type="Integer" xid="column7"/>  
      <column label="所在地区" name="fAddress" type="String" xid="column8"/>  
      <column label="颜色" name="fColor" type="String" xid="xid2"/>  
      <column label="尺寸" name="fSize" type="String" xid="xid3"/>  
      <column label="选择" name="fChoose" type="Integer" xid="xid4"/>  
      <column label="数量" name="fNumber" type="Integer" xid="xid5"/>  
      <column label="总价" name="fSum" type="Float" xid="xid6"/>  
      <rule xid="rule1"> 
        <col name="fColor" xid="ruleCol1"> 
          <constraint xid="constraint1"> 
            <expr xid="default1"/> 
          </constraint>  
          <calculate xid="calculate1"> 
            <expr xid="default2"/> 
          </calculate>  
          <readonly xid="readonly1"> 
            <expr xid="default6"/> 
          </readonly> 
        </col>  
        <col name="fSize" xid="ruleCol2"> 
          <calculate xid="calculate2"> 
            <expr xid="default3"/> 
          </calculate> 
        </col>  
        <col name="fSum" xid="ruleCol3"> 
          <calculate xid="calculate3"> 
            <expr xid="default4">$row.val('fChoose')==1?$row.val('fPrice')*$row.val('fNumber'):'0'</expr> 
          </calculate> 
        </col>  
        <col name="fNumber" xid="ruleCol4"> 
          <calculate xid="calculate4"> 
            <expr xid="default5"/> 
          </calculate> 
        </col> 
      </rule> 
    </div>  
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
      xid="sendData" idColumn="id" onCustomRefresh="sendDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid7"/>  
      <column label="配送方式" name="fSendName" type="String" xid="xid8"/>  
      <column label="费用" name="fCost" type="String" xid="xid18"/>  
      <column label="状态" name="fState" type="Integer" xid="xid17"/> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid">
   <rule xid="rule3">
   <col name="fsumPrice" xid="ruleCol8">
    <calculate xid="calculate8">
     <expr xid="default12">$row.val(&quot;price&quot;) * $row.val(&quot;quantity&quot;)</expr></calculate> </col> 
   <col name="fsumChoose" xid="ruleCol10">
    <calculate xid="calculate10">
     <expr xid="default15">$row.val(&quot;fChoose&quot;)==1?&quot;1&quot;:&quot;0&quot;</expr></calculate> </col> 
   <col name="fsumQuantity" xid="ruleCol11">
    <calculate xid="calculate11">
     <expr xid="default16">$row.val(&quot;fChoose&quot;) ==1? $row.val(&quot;quantity&quot;):&quot;0&quot;</expr></calculate> </col> </rule>
  <column label="商品ID" name="goods_id" type="String" xid="column9"></column>
  <column name="goods_name" type="String" xid="xid19"></column>
  <column name="goods_img" type="String" xid="xid20"></column>
  <column name="goods_inventory" type="String" xid="xid21"></column>
  <column name="goods_sn" type="String" xid="xid22"></column>
  <column name="order_num" type="String" xid="xid23"></column>
  <column name="price" type="String" xid="xid24"></column>
  <column name="goods_num" type="String" xid="xid25"></column>
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
  <column name="fChoose" type="Integer" xid="xid54"></column>
  <column name="fsumPrice" type="Float" xid="xid55"></column>
  <column name="subtotal" type="Float" xid="xid56"></column>
  <column name="fsumChoose" type="Integer" xid="xid60"></column>
  <column name="fsumQuantity" type="Integer" xid="xid61"></column>
  <column name="total_price" type="String" xid="xid47"></column>
  <column name="sales_flag" type="String" xid="xid43"></column>
  <column name="sales_flag_num" type="String" xid="xid48"></column>
  <column name="promotion" type="String" xid="xid52"></column>
  <column name="promotion_id" type="String" xid="xid66"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sumData" idColumn="id">
   <data xid="default13">[{&quot;id&quot;:&quot;1&quot;,&quot;priceSum&quot;:0,&quot;goodsSum&quot;:0}]</data>
   <column name="id" type="String" xid="xid57"></column>
   <column name="priceSum" type="Float" xid="xid58"></column>
   <column name="goodsSum" type="Float" xid="xid59"></column>
   <column name="chooseSum" type="Integer" xid="xid62"></column>
   <rule xid="rule4">
    <col name="priceSum" xid="ruleCol9">
     <calculate xid="calculate9">
      <expr xid="default14">$model.goodsDataM.sum(&quot;fsumPrice&quot;)</expr></calculate> </col> 
    <col name="goodsSum" xid="ruleCol12">
     <calculate xid="calculate12">
      <expr xid="default17">$model.goodsDataM.sum(&quot;fsumQuantity&quot;)</expr></calculate> </col> 
    <col name="chooseSum" xid="ruleCol13">
     <calculate xid="calculate13">
      <expr xid="default18">$model.goodsDataM.sum(&quot;fsumChoose&quot;)</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="adressData" onCustomRefresh="adressDataCustomRefresh" idColumn="address_id"><column name="address" type="String" xid="xid37"></column>
  <column name="address_id" type="String" xid="xid38"></column>
  <column name="client_id" type="String" xid="xid39"></column>
  <column name="client_name" type="String" xid="xid40"></column>
  <column name="consignee" type="String" xid="xid41"></column>
  <column name="is_default" type="String" xid="xid42"></column>
  <column name="mobile" type="String" xid="xid44"></column>
  <column name="phone" type="String" xid="xid45"></column>
  <column name="area" type="String" xid="xid46"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderFlagData" idColumn="id">
   <data xid="default9">[{&quot;id&quot;:&quot;1&quot;,&quot;flag&quot;:&quot;0&quot;}]</data>
   <column name="id" type="String" xid="xid49"></column>
   <column name="flag" type="String" xid="xid50"></column>
   <column name="newPrice" type="String" xid="xid51"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="protionData" idColumn="goods_id"><column name="goods_id" type="String" xid="xid53"></column>
  <column name="goods_img" type="String" xid="xid63"></column>
  <column name="goods_name" type="String" xid="xid64"></column>
  <column name="guige" type="String" xid="xid65"></column>
  <column name="pid" type="String" xid="xid67"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="pdata" idColumn="goods_id">
   <column name="goods_id" type="String" xid="column12"></column>
   <column name="goods_img" type="String" xid="column11"></column>
   <column name="goods_name" type="String" xid="column13"></column>
   <column name="guige" type="String" xid="column14"></column>
   <column name="pid" type="String" xid="column10"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver"> 
    <div class="x-popOver-overlay" xid="div9"/>  
    <div class="x-popOver-content" xid="div10"> 
      <div class="x-cards panel-heading"> 
        <h5><![CDATA[选择配送方式：]]></h5> 
      </div>  
      <div class="panel-body"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list2" data="sendData"> 
          <ul class="x-list-template" xid="ul1"> 
            <li xid="li2" class="list-group-item tb-noborder" bind-click="sendLiClick"> 
              <span component="$UI/system/components/justep/button/radio" class="x-radio"
                bind-value="ref('fState')" checkedValue="1" checked="false" xid="state"/>  
              <span bind-text="ref('fSendName')"/>  
              <span bind-text="ref('fCost')"/> 
            </li> 
          </ul> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card"
    xid="panel1"> 
    <div class="x-panel-content x-cards" xid="content1"> 
      <div xid="div5" class="list-group-item"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading " xid="h41" style="color:#212121">订单确认信息</h4></div> 
  <div class="media-right" xid="mediaRight1">
   <a href="#" xid="a2">
    <img class="media-object" src="" alt="" xid="image2"></img></a> </div></div>
  </div><div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card tb-noborder media"
        xid="panel2"> 
          
          
         
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="adressData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div class="media-left media-middle"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black" label="button" xid="button3" icon="icon-ios7-location"> 
            <i xid="i3" class="icon-ios7-location" />  
            <span xid="span7" /> 
          </a> 
        </div><div class="media-body"> 
          <h4 xid="h42" class="text-black" style="width:100%;"><![CDATA[]]>
  <span xid="span1" bind-text='"收货人："+val("consignee")'></span>
  <span xid="span9" bind-text='val("mobile")' class="pull-right"></span></h4><h5 class="text-black" bind-text=' val("address")' style="width:100%;"><![CDATA[收货地址：云南省昆明市高新区昌源北路300号城市新A座1508室]]></h5>  
          <h5 class="text-warning" style="width:100%;"><![CDATA[（收货不方便时，可选择代收货服务）]]></h5> 
        </div><div class="media-right media-middle"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black" label="button" xid="button4" icon="icon-ios7-arrow-forward" onClick="button4Click"> 
            <i xid="i4" class="icon-ios7-arrow-forward" />  
            <span xid="span8" /> 
          </a> 
        </div>
  </li></ul> </div><div xid="div3" bind-visible=" $model.adressData.getCount() ==0" style="display:none"><div class="media" xid="media2">
   <div class="media-left" xid="mediaLeft2">
    
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black" label="button" xid="button6" icon="icon-ios7-location">
   <i xid="i6" class="icon-ios7-location"></i>
   <span xid="span23"></span></a></div> 
   <div class="media-body" xid="mediaBody3">
    <h5 class="text-black" style="width:100%;" xid="h51"><![CDATA[未填写地址,请去填写地址]]></h5></div> 
  <div class="media-right" xid="mediaRight2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon text-black" label="button" xid="button8" icon="icon-ios7-arrow-forward" onClick="button4Click">
   <i xid="i8" class="icon-ios7-arrow-forward"></i>
   <span xid="span24"></span></a></div></div></div></div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default tb-noborder x-card x-tuniu"
        xid="panel3"> 
        <div component="$UI/system/components/justep/list/list" class="x-list bg-white" data="goodsDataM" xid="goodsList" disablePullToRefresh="true" disableInfiniteLoad="true">
   <ul class="x-list-template x-min-height" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4">
    <li xid="li3" class="x-min-height tb-goodList" componentname="li(html)" id="undefined_li4">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
      
      <div class="x-col x-col-fixed tb-nopadding" xid="col2" style="width:90px;">
       <img src="" alt="" xid="image1" bind-attr-src=' val("goods_img")' class="tb-img-good" bind-click="listClick"></img></div> 
      <div class="x-col  tb-nopadding" xid="col3">
       <span bind-text='val("show_name")' class="x-flex text-black h5 tb-nomargin" xid="span26"></span>
       <div class="text-muted h6" xid="div6">
        <h5 xid="h55">
   <span xid="span27" bind-text='val("goods_sn")' style="color:#555"></span><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button13" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text=' val("specification1_value")' bind-visible='val("specification1_name")!=""'>
    <i xid="i9"></i>
    <span xid="span3"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button7" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text=' val("specification2_value")' bind-visible='val("specification2_name")!=""'>
    <i xid="i5"></i>
    <span xid="span11"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button9" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text=' val("specification3_value")' bind-visible='val("specification3_name")!=""' disabled="true">
    <i xid="i21"></i>
    <span xid="span40"></span></a> </h5></div> 
       <div class="text-muted" xid="div6">
        <span xid="span22" class="text-danger">￥</span>
        <span xid="span28" bind-text='val("price")' class="h4 text-danger" style="font-size:16px;"></span>
        <span xid="span4">/</span>
        <span xid="span5" bind-text='val("unit_name")'></span>
  
  <span xid="span16" bind-text='val("goods_num")' class="pull-right"></span><span xid="span14" class="pull-right"><![CDATA[X]]></span></div> 
       </div> </div> 
  <div class="panel-heading" xid="div7" bind-visible=' val("sales_flag") == 0' bind-click="div7Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-right pull-right" label="请选择赠品" xid="button10" icon="icon-ios7-arrow-right">
    <i class="icon-ios7-arrow-right text-muted" xid="i10"></i>
    <span xid="span29" style="color:#8B8B8B;">请选择赠品</span></a> 
   <span xid="span25"><![CDATA[满赠]]></span>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="$model.pdata" filter=' val("goods_id") ==  $row.val("pid")'>
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li8"><div class="media" xid="media4">
   <div class="media-left" xid="mediaLeft4">
    <a href="#" xid="a1">
     <img class="media-object" src="" alt="" xid="image4" height="40px" style="width:40px;height:46px;" bind-attr-src='val("goods_img")'></img></a> </div> 
   <div class="media-body" xid="mediaBody5">
    <h4 class="media-heading " xid="h49" bind-text=' val("goods_name")' style="width:100%;font-size:14px;color:#727274;">Media heading</h4></div> </div></li></ul> </div></div></li> </ul> </div><div> 
          <div class="panel-heading" bind-click="sendClick"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right"
              label="button" xid="button2" icon="icon-ios7-arrow-right"> 
              <i class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span12"/> 
            </a>  
            <span class="pull-right text-muted" xid="sendTitle"><![CDATA[快递 免邮
]]></span>  
            <span xid="span6"><![CDATA[配送方式]]></span> 
          </div>  
          <div class="panel-heading" xid="div2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-right pull-right" label="不开票" xid="button1" icon="icon-ios7-arrow-right" bind-click="button1Click">
    <i class="icon-ios7-arrow-right text-muted" xid="i1"></i>
    <span xid="span20" style="color:#8B8B8B;">不开票</span></a> 
   <span xid="span21"><![CDATA[发票信息]]></span></div><div class="panel-heading"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right"
              label="button" xid="button5" icon="icon-ios7-arrow-right"> 
              <i class="icon-ios7-arrow-right text-muted" xid="i7"/>  
              <span xid="span13"/> 
            </a>  
            <span xid="span10"><![CDATA[运费险]]></span> 
          </div>  
          <div class="panel-heading" xid="div1">
   <div class="media-left media-middle" xid="mediaLeft1">
    <span class="x-flex" style="width:80px;" xid="span19"><![CDATA[收获时间：]]></span></div> 
   <div class="media-body" xid="mediaBody2">
    <input component="$UI/system/components/justep/input/input" class="form-control input-sm tb-noborder text-muted" xid="input2" dataType="Date"></input></div> </div><div class="panel-heading"> 
            <div class="media-left media-middle"> 
              <span class="x-flex" style="width:80px;"><![CDATA[买家留言：]]></span> 
            </div>  
            <div class="media-body"> 
              <input component="$UI/system/components/justep/input/input" class="form-control input-sm tb-noborder text-muted"
                xid="input1" placeHolder="'选填，可填写您和卖家达成的协议'"/> 
            </div> 
          </div>  
          <div class="panel-heading text-right" bind-text="'共1件商品'"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div> 
        <div class="col col-xs-8" xid="col7"> 
          <div class="h4 text-right" xid="div4"> 
            <span xid="span15" class="text-muted">合计：</span>  
            <span xid="span18" class="text-danger"><![CDATA[￥]]></span><span xid="span17" class="text-danger" bind-text=' $model.orderFlagData.val("flag") == 0?$model.goodsDataM.sum("total_price"): $model.orderFlagData.val("newPrice")'><![CDATA[]]></span> 
          </div> 
        </div>  
        <div class="col col-xs-4 tb-settlement" xid="col6"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-label text-white"
              label="确认" xid="confirmBtn" onClick="confirmBtnClick"> 
              <i xid="i2"/>  
              <span xid="span2">确认</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver2" position="bottom">
   <div class="x-popOver-overlay" xid="div16"></div>
   <div class="x-popOver-content" xid="div15" style="width:100%;height:70%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
     <div class="x-panel-content" xid="content3" style="background-color:#F4F2F8;">
       
      
      <div xid="div14" class="list-group-item" style="padding:10px 10px 10px 10px;">
  <div class="media" xid="media3">
   <div class="media-left" xid="mediaLeft3">
    <img alt="" xid="image3" bind-attr-src=' $model.goodsDataM.val("goods_img")' height="60px" style="width:70px;height:60px"></img></div> 
   <div class="media-body" xid="mediaBody4">
    <h4 class="media-heading" xid="h43" style="font-size:16px;color:#3C3C3D;" bind-text=' $model.goodsDataM.val("goods_name")'><![CDATA[请选择赠品]]></h4>
  <h4 class="media-heading" xid="h44" style="font-size:14px;color:#727274;">请选择赠品</h4></div> 
  <div class="media-right" xid="mediaRight3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black" icon="icon-ios7-close-outline" onClick="{operation:'popOver2.hide'}" xid="button11">
       <i xid="i11" class="icon-ios7-close-outline"></i>
       <span xid="span35"></span></a></div></div></div> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="protionData" dataItemAlias="jkjkjk">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li6" class="col col-xs-4" style="padding:0px 0px 0px 0px;"><div xid="div17" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:transparent;">
  <div xid="div18" bind-css="{'current2':val(&quot;goods_id&quot;) == $model.protionData.val(&quot;goods_id&quot;)}" style="background-color:white;border-style:solid solid solid solid;border-width:medium medium medium medium;border-color:#FBF9FF #FBF9FF #FBF9FF #FBF9FF;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col10" style="text-align:center;"><img class=" " src="" alt="" xid="image6" height="60px" style="width:60px;" bind-attr-src=' val("goods_img")'></img><h4 class="media-heading" xid="h45" bind-text=' val("goods_name")' style="font-size:14px;color:#727274;text-align:center;">Media heading</h4></div></div></div></div>
  </li></ul> </div></div> 
     <div class="x-panel-bottom" xid="bottom3">
      
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0px 0px 0px 0px;">
   <div xid="col11" style="width:0.5em;"></div>
   <div class="x-col " xid="col12" style="padding:3px 0px 3px 0px;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="确定选择" xid="buttonGroup2" style="background-color:#47D1D1;">
   
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定选择" xid="button17" style="color:#FBF9FF;font-size:14px;" onClick="button17Click">
    <i xid="i17"></i>
    <span xid="span44">确定选择</span></a> </div>
  </div>
   <div xid="col1" style="width:0.5em;"></div></div></div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver3" position="bottom">
   <div class="x-popOver-overlay" xid="div20"></div>
   <div class="x-popOver-content" xid="div23" style="width:100%;height:70%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
     <div class="x-panel-content" xid="content2" style="background-color:#F4F2F8;">
      <div xid="div22" class="list-group-item" style="padding:10px 10px 10px 10px;">
       <div class="media" xid="media6">
        <div class="media-left" xid="mediaLeft6">
         <img alt="" xid="image9" bind-attr-src=' $model.goodsDataM.val("goods_img")' height="60px" style="width:70px;height:60px"></img></div> 
        <div class="media-body" xid="mediaBody6">
         <h4 class="media-heading" xid="h46" style="font-size:16px;color:#3C3C3D;" bind-text=' $model.goodsDataM.val("goods_name")'>请选择赠品</h4>
         <h4 class="media-heading" xid="h48" style="font-size:14px;color:#727274;">请选择赠品</h4></div> 
        <div class="media-right" xid="mediaRight5">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black" icon="icon-ios7-close-outline" onClick="{operation:'popOver2.hide'}" xid="button15">
          <i xid="i15" class="icon-ios7-close-outline"></i>
          <span xid="span42"></span></a> </div> </div> </div> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="protionData" dataItemAlias="jkjkjk">
       <ul class="x-list-template" xid="listTemplateUl5">
        <li xid="li7">
         <div xid="div21" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:transparent;">
          <div xid="div24" bind-css="{'current2':val(&quot;goods_id&quot;) == $model.protionData.val(&quot;goods_id&quot;)}" style="background-color:white;">
           <div class="media" xid="media5">
            <div class="media-left" xid="mediaLeft5">
             <a href="#" xid="a6">
              <img class="media-object" src="" alt="" xid="image8" height="60px" style="width:70px;" bind-attr-src=' val("goods_img")'></img></a> </div> 
            <div class="media-body" xid="mediaBody7">
             <h4 class="media-heading" xid="h47" bind-text=' val("goods_name")' style="font-size:14px;color:#727274;">Media heading</h4></div> </div> </div> </div> </li> </ul> </div> </div> 
     <div class="tb-title" xid="div19"></div>
     <div class="x-panel-bottom" xid="bottom2"></div></div> </div> </div></div>
