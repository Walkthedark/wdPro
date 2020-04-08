<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <title>购物车</title>
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:115px;left:6px;"
    onActive="modelActive"> 
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
            <expr xid="default4"><![CDATA[$row.val('fChoose')==1?$row.val('fNumber'):'0']]></expr> 
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
      xid="calculateData" idColumn="allSum"> 
      <column label="合计" name="allSum" type="String" xid="xid7"/>  
      <column label="总数量" name="allNumber" type="String" xid="xid8"/>  
      <rule xid="rule2"> 
        <col name="allSum" xid="ruleCol5"> 
          <calculate xid="calculate5"> 
            <expr xid="default7">$model.goodsData.sum('fSum')</expr>
          </calculate> 
        </col>  
        <col name="allNumber" xid="ruleCol6"> 
          <calculate xid="calculate6"> 
            <expr xid="default9">$model.goodsData.sum('fChoose')</expr>
          </calculate> 
        </col> 
      </rule>  
      <column label="是否返回" name="isBack" type="Integer" xid="xid17"/>  
      <data xid="default8">[{"allSum":"0","isBack":0}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="uuid" onCustomRefresh="goodsDataMCustomRefresh"> 
      <rule xid="rule3"> 
        <col name="uuid" xid="ruleCol7"> 
          <defaultValue xid="default10"> 
            <expr xid="default10"/>
          </defaultValue>  
          <calculate xid="calculate7"> 
            <expr xid="default11">justep.UUID.createUUID()</expr>
          </calculate> 
        </col>  
        <col name="fsumPrice" xid="ruleCol8"> 
          <calculate xid="calculate8"> 
            <expr xid="default12">$row.val('fChoose')==1?$row.val("subtotal"):'0'</expr>
          </calculate> 
        </col>  
        <col name="fsumChoose" xid="ruleCol10"> 
          <calculate xid="calculate10"> 
            <expr xid="default15">$row.val("fChoose")==1?"1":"0"</expr>
          </calculate> 
        </col>  
        <col name="fsumQuantity" xid="ruleCol11"> 
          <calculate xid="calculate11"> 
            <expr xid="default16">$row.val("fChoose") ==1? $row.val("quantity"):"0"</expr>
          </calculate> 
        </col>  
        <col name="subtotal" xid="ruleCol14"> 
          <calculate xid="calculate14"> 
            <expr xid="default19">$row.val("quantity") * $row.val("price")</expr>
          </calculate> 
        </col> 
      </rule>
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
  <column name="fChoose" type="Integer" xid="xid54"></column>
  <column name="fsumPrice" type="Float" xid="xid55"></column>
  <column name="subtotal" type="Float" xid="xid56"></column>
  <column name="fsumChoose" type="Integer" xid="xid60"></column>
  <column name="fsumQuantity" type="Integer" xid="xid61"></column>
  <column name="promotion" type="String" xid="xid63"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cartGoodsData" idColumn="uuid">
      <column name="uuid" type="String" xid="xid37"/>  
      <column name="goods_img" type="String" xid="xid38"/>  
      <column name="goods_inventory" type="String" xid="xid39"/>  
      <column name="goods_name" type="String" xid="xid40"/>  
      <column name="goods_sn" type="String" xid="xid41"/>  
      <column name="keywords" type="String" xid="xid42"/>  
      <column name="price" type="String" xid="xid43"/>  
      <column name="quantity" type="String" xid="xid44"/>  
      <column name="specification1_name" type="String" xid="xid45"/>  
      <column name="specification1_value" type="String" xid="xid46"/>  
      <column name="specification2_name" type="String" xid="xid47"/>  
      <column name="specification2_value" type="String" xid="xid48"/>  
      <column name="specification3_name" type="String" xid="xid49"/>  
      <column name="specification3_value" type="String" xid="xid50"/>  
      <column name="subtotal" type="String" xid="xid51"/>  
      <column name="unit_id" type="String" xid="xid52"/>  
      <column name="unit_name" type="String" xid="xid53"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sumData" idColumn="id">
      <data xid="default13">[{"id":"1","priceSum":0,"goodsSum":0}]</data>  
      <column name="id" type="String" xid="xid57"/>  
      <column name="priceSum" type="Float" xid="xid58"/>  
      <column name="goodsSum" type="Float" xid="xid59"/>  
      <column name="chooseSum" type="Integer" xid="xid62"/>  
      <rule xid="rule4"> 
        <col name="priceSum" xid="ruleCol9"> 
          <calculate xid="calculate9"> 
            <expr xid="default14">$model.goodsDataM.sum("fsumPrice")</expr>
          </calculate> 
        </col>  
        <col name="goodsSum" xid="ruleCol12"> 
          <calculate xid="calculate12"> 
            <expr xid="default17">$model.goodsDataM.sum("fsumQuantity")</expr>
          </calculate> 
        </col>  
        <col name="chooseSum" xid="ruleCol13"> 
          <calculate xid="calculate13"> 
            <expr xid="default18">$model.goodsDataM.sum("fsumChoose")</expr>
          </calculate> 
        </col> 
      </rule>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div xid="content" class="x-panel-content x-scroll-view x-cards" supportpulldown="true"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView" pullUpLabel=" "> 
        <div class="x-content-center x-pull-down container" xid="div8"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span9">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div7"> 
          <div component="$UI/system/components/justep/list/list" class="x-list bg-white"
            data="goodsDataM" xid="goodsList" disablePullToRefresh="true" disableInfiniteLoad="true"
            style="text-align:left;"> 
            <ul class="x-list-template x-min-height" xid="listTemplateUl4"
              componentname="$UI/system/components/justep/list/list#listTemplateUl"
              id="undefined_listTemplateUl4"> 
              <li xid="li4" class="x-min-height tb-goodList " componentname="li(html)"
                id="undefined_li4"> 
                <div xid="div1" style="padding:5px 5px 5px 5px;">
                  <div component="$UI/system/components/justep/row/row" class="x-row div-radius"
                    style="background-color:white;"> 
                    <div class="x-col x-col-fixed x-col-center" xid="col1"
                      style="width:auto;">
                      <span component="$UI/system/components/justep/button/checkbox"
                        class="x-checkbox x-radio choose" xid="checkbox2" bind-ref="ref(&quot;fChoose&quot;)"
                        checkedValue="1"/>
                    </div>  
                    <div class="x-col x-col-fixed tb-nopadding" xid="col2"
                      style="width:90px;">
                      <img src="" alt="" xid="image1" bind-attr-src=" val(&quot;goods_img&quot;)"
                        class="tb-img-good" bind-click="listClick"/>
                    </div>  
                    <div class="x-col  tb-nopadding" xid="col3">
                      <span bind-text="val(&quot;show_name&quot;)" class="x-flex text-black h5 tb-nomargin"
                        xid="span26"/>  
                      <div class="text-muted h6" xid="div6"> 
                        <span xid="span27" bind-text="val(&quot;goods_sn&quot;)"><![CDATA[]]></span> 
                      </div>  
                      <div class="text-muted" xid="div5"> 
                        <span xid="span22" class="text-danger">￥</span>  
                        <span xid="span28" bind-text="val(&quot;price&quot;)" class="h4 text-danger"
                          style="font-size:16px;"/>  
                        <span xid="span4"><![CDATA[/]]></span>  
                        <span xid="span5" bind-text="val(&quot;unit_name&quot;)"><![CDATA[]]></span>
                      </div>  
                      <div class="tb-numberOperation" xid="div4" style="display:flex;text-align:right;"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-gray btn-sm btn-only-icon pull-left" label="button"
                          xid="button1" icon="icon-android-remove" onClick="reductionBtnClick"> 
                          <i xid="i3" class="icon-android-remove"/>  
                          <span xid="span13"/>
                        </a>  
                        <input component="$UI/system/components/justep/input/input"
                          class="form-control input-sm" xid="fNumber" style="width:15%;"
                          bind-ref="ref(&quot;quantity&quot;)"/>
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-gray btn-sm btn-only-icon pull-left" label="button"
                          xid="button2" icon="icon-android-add" onClick="addBtnClick"> 
                          <i xid="i6" class="icon-android-add"/>  
                          <span xid="span29"/>
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
          <span class="x-pull-up-label" xid="span8"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding"
        xid="row2"> 
        <div class="x-col x-col-20 x-col-center" xid="col4">
          <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox"
            xid="allChoose" label="全选" checked="false" onChange="allChooseChange"/>
        </div>  
        <div class="x-col" xid="col8">
          <div class="text-right" xid="div9"> 
            <span xid="span15" class="text-muted">合计：</span>  
            <span xid="span17" class="text-danger">￥</span>  
            <span xid="sum" class="h4 text-danger" bind-text="$model.sumData.val(&quot;priceSum&quot;)"/>
          </div>  
          <div class="text-right" xid="div10"> 
            <span xid="span16"><![CDATA[共]]></span>  
            <span xid="span6" bind-text="$model.sumData.val(&quot;chooseSum&quot;)"><![CDATA[4]]></span>  
            <span xid="span7"><![CDATA[种]]></span>  
            <span xid="span12" bind-text="$model.sumData.val(&quot;goodsSum&quot;)"><![CDATA[]]></span>  
            <span xid="span18"><![CDATA[件商品]]></span>
          </div>
        </div>  
        <div class="x-col x-col-33 text-center tb-settlement" xid="col9" bind-click="settlementClick">
          <span xid="span10"><![CDATA[下单]]></span> 
        </div>
      </div>
    </div> 
  </div> 
</div>
