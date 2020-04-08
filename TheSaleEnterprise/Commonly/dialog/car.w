<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:135px;top:10px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="FID" limit="20" confirmRefresh="false" confirmDelete="false"
      onCustomRefresh="goodsDataCustomRefresh" onAfterRefresh="goodsDataAfterRefresh"> 
      <column label="FID" name="FID" type="String" xid="column1"/>  
      <column label="APP_USERINFO_ID" name="APP_USERINFO_ID" type="String" xid="xid1"/>  
      <column label="MDS_ITEM_INFO_ID" name="MDS_ITEM_INFO_ID" type="String" xid="column2"/>  
      <column label="QTY" name="QTY" type="String" xid="column3"/>  
      <column label="REMARK" name="REMARK" type="String" xid="column4"/>  
      <column label="ITEM_CODE" name="ITEM_CODE" type="String" xid="column5"/>  
      <column label="UNITNO" name="UNITNO" type="String" xid="column6"/>  
      <column label="ITEM_TYPE" name="ITEM_TYPE" type="String" xid="column7"/>  
      <column label="ITEM_URL" name="ITEM_URL" type="String" xid="column8"/>  
      <column label="ITEM_DESC" name="ITEM_DESC" type="String" xid="xid2"/>  
      <column label="ITEM_STATUS" name="ITEM_STATUS" type="String" xid="xid3"/>  
      <column label="ITEM_INFO" name="ITEM_INFO" type="String" xid="xid4"/>  
      <column label="USER_INFO" name="USER_INFO" type="String" xid="xid5"/>  
      <column label="LOGISTICS_DISTRI" name="LOGISTICS_DISTRI" type="String" xid="xid6"/>  
      <column label="ITEM_NAME" name="ITEM_NAME" type="String" xid="xid9"/>  
      <column label="ITEM_ID" name="ITEM_ID" type="String" xid="xid10"/>  
      <column label="PRICE" name="PRICE" type="String" xid="xid11"/>  
      <column name="fChoose" type="String" xid="xid12"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="calculateData" idColumn="allSum" onValueChanged="calculateDataValueChanged"> 
      <column label="合计" name="allSum" type="String" xid="xid7"/>  
      <column label="总数量" name="allNumber" type="String" xid="xid8"/>  
      <column label="是否返回" name="isBack" type="Integer" xid="xid17"/>  
      <data xid="default8">[{"allSum":"0","isBack":0}]</data> 
    <rule xid="rule2">
   
   <col name="allNumber" xid="ruleCol6">
    <calculate xid="calculate6">
     <expr xid="default9">$model.goodsData.sum('fChoose')</expr></calculate> </col> </rule></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="48"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          </div>  
        <div class="x-titlebar-title"> 
          <span xid="span1"><![CDATA[购物车（]]></span>  
          <span xid="span11" bind-text="goodsData.count()"/>  
          <span xid="span2"><![CDATA[）]]></span> 
        </div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="delBtn" icon="icon-ios7-trash-outline" onClick="delBtnClick"> 
            <i xid="i4" class="icon-ios7-trash-outline"/>  
            <span xid="span20"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div xid="content" class="x-panel-content x-scroll-view x-cards" supportpulldown="true"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView" pullUpLabel=" "> 
        <div class="x-content-center x-pull-down container" xid="div8"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span9">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div71"> 
          <div component="$UI/system/components/justep/list/list" class="x-list bg-white"
            data="goodsData" xid="goodsList" disablePullToRefresh="true" disableInfiniteLoad="true"> 
            <ul class="x-list-template x-min-height" xid="listTemplateUl4"
              componentname="$UI/system/components/justep/list/list#listTemplateUl"
              id="undefined_listTemplateUl4"> 
              <li xid="li4" class="x-min-height tb-goodList" componentname="li(html)"
                id="undefined_li4"> 
                <div component="$UI/system/components/justep/row/row" class="x-row"> 
                  <div class="x-col x-col-fixed" xid="col1" style="width:auto;"> 
                    <span component="$UI/system/components/justep/button/checkbox"
                      class="x-checkbox x-radio choose" xid="checkbox2" bind-ref="ref('fChoose')"
                      checkedValue="1" onChange="checkbox2Change"/> 
                  </div>  
                  <div class="x-col x-col-fixed tb-nopadding" xid="col2"> 
                    <img src="" alt="" xid="image1" bind-attr-src="$model.getImageUrl( val(&quot;ITEM_URL&quot;))"
                      class="tb-img-good" bind-click="listClick"/> 
                  </div>  
                  <div class="x-col  tb-nopadding" xid="col3"> 
                    <span bind-text="val(&quot;ITEM_NAME&quot;)" class="x-flex text-black h5 tb-nomargin"
                      xid="span26"/>  
                    <div class="text-muted h6" xid="div6"> 
                      <span xid="span27"><![CDATA[颜色:]]></span>  
                      <span bind-text="ref('fColor')" xid="span6"/>  
                      <span xid="span7"><![CDATA[;]]></span>  
                      <span xid="span12"><![CDATA[尺寸:]]></span>  
                      <span bind-text="ref('fSize')" xid="span18"/> 
                    </div>  
                    <div class="text-muted" xid="div5"> 
                      <span xid="span22" class="text-danger">￥</span>  
                      <span xid="span28" bind-text="val(&quot;PRICE&quot;)" class="h4 text-danger"/> 
                    </div>  
                    <div class="tb-numberOperation" xid="div4"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn x-gray btn-sm btn-only-icon pull-left" label="button"
                        xid="button1" icon="icon-android-remove" onClick="reductionBtnClick"> 
                        <i xid="i3" class="icon-android-remove"/>  
                        <span xid="span13"/> 
                      </a>  
                      <span bind-text='ref("QTY")' class="pull-left"/>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn x-gray btn-sm btn-only-icon pull-left" label="button"
                        xid="button2" icon="icon-android-add" onClick="addBtnClick"> 
                        <i xid="i6" class="icon-android-add"/>  
                        <span xid="span29"/> 
                      </a> 
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
            <span xid="sum" class="h4 text-danger" bind-text="calculateData.ref('allSum')"/> 
          </div>  
          <div class="text-right" xid="div10"> 
            <span xid="span16">不含运费</span> 
          </div> 
        </div>  
        <div class="x-col x-col-33 text-center tb-settlement" xid="col9" bind-click="settlementClick"> 
          <span xid="span10">结算(</span>  
          <span xid="number" class="allNumber" bind-text="calculateData.ref('allNumber')"/>  
          <span xid="span14">)</span> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
