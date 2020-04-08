<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <title class="color_css">商品选择</title>  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:148px;top:20px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad" onunLoad="modelUnLoad" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="conditionData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="名称" name="fName" type="String" xid="xid2"/>  
      <column label="状态" name="fState" type="Integer" xid="xid4"/>  
      <data xid="default1">[{"id":"1","fName":"综合排序","fState":1},{"id":"2","fName":"价格升序","fState":0},{"id":"3","fName":"价格降序","fState":0}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="discountData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid5"/>  
      <column label="名称" name="fName" type="String" xid="xid11"/>  
      <column label="状态" name="fState" type="Integer" xid="xid14"/>  
      <data xid="default2">[{"id":"1","fName":"免运费","fState":0},{"id":"2","fName":"天猫","fState":0},{"id":"3","fName":"全球购","fState":0},{"id":"4","fName":"消费者保障","fState":0}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid12"/>  
      <column label="名称" name="fName" type="String" xid="xid13"/>  
      <column label="状态" name="fState" type="Integer" xid="xid15"/>  
      <data xid="default3">[{"id":"1","fName":"3C数码配件市场","fState":0},{"id":"2","fName":"品牌手表/流行手表","fState":0},{"id":"3","fName":"女装","fState":0}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="backData" idColumn="isBack"> 
      <column label="是否显示" name="isBack" type="String" xid="xid16"/>  
      <data xid="default4">[{"isBack":"1"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="uuid" onCustomRefresh="goodsDataCustomRefresh"> 
      <rule xid="rule2"> 
        <col name="uuid" xid="ruleCol2"> 
          <defaultValue xid="default9"> 
            <expr xid="default10"/> 
          </defaultValue>  
          <calculate xid="calculate2"> 
            <expr xid="default11">justep.UUID.createUUID()</expr> 
          </calculate> 
        </col> 
      </rule>  
      <column label="商品ID" name="goods_id" type="String" xid="xid18"/>  
      <column name="goods_name" type="String" xid="xid19"/>  
      <column name="goods_img" type="String" xid="xid20"/>  
      <column name="goods_num" type="String" xid="xid21"/>  
      <column name="goods_sn" type="String" xid="xid22"/>  
      <column name="order_num" type="String" xid="xid23"/>  
      <column name="price" type="String" xid="xid24"/>  
      <column name="quantity" type="String" xid="xid25"/>  
      <column name="show_name" type="String" xid="xid26"/>  
      <column name="specification1_name" type="String" xid="xid27"/>  
      <column name="specification1_value" type="String" xid="xid28"/>  
      <column name="specification2_name" type="String" xid="xid29"/>  
      <column name="specification2_value" type="String" xid="xid30"/>  
      <column name="specification3_name" type="String" xid="xid31"/>  
      <column name="specification3_value" type="String" xid="xid32"/>  
      <column name="specification_id" type="String" xid="xid33"/>  
      <column name="unit_id" type="String" xid="xid34"/>  
      <column name="unit_name" type="String" xid="xid35"/>  
      <column name="unit" type="String" xid="xid36"/>  
      <column name="uuid" type="String" xid="xid95"/>  
      <column name="set_specs" type="String" xid="xid96"/>  
      <column name="specification" type="String" xid="xid97"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classDataM" idColumn="CATE_ID"> 
      <column name="CATE_ID" type="String" xid="xid39"/>  
      <column name="CATE_NAME" type="String" xid="xid40"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="categoryData" idColumn="cate_id"> 
      <column name="cate_id" type="String" xid="xid37"/>  
      <column name="cate_name" type="String" xid="xid38"/>  
      <column name="parent_id" type="String" xid="xid41"/>  
      <column name="children" type="String" xid="xid42"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="GoodsInfodata" idColumn="uuid"> 
      <div component="$UI/system/components/justep/data/data" autoLoad="true"
        xid="categoryDataList" idColumn="cate_id"> 
        <column name="cate_id" type="String" xid="column2"/>  
        <column name="cate_name" type="String" xid="column1"/>  
        <column name="parent_id" type="String" xid="column3"/>  
        <column name="children" type="String" xid="column4"/>  
        <column name="choose" type="Integer" xid="xid43"/> 
      </div>  
      <rule xid="rule1"> 
        <col name="uuid" xid="ruleCol1"> 
          <defaultValue xid="default5"> 
            <expr xid="default7"/> 
          </defaultValue>  
          <calculate xid="calculate1"> 
            <expr xid="default8">justep.UUID.createUUID()</expr> 
          </calculate> 
        </col> 
      </rule>  
      <column name="goods_id" type="String" xid="xid44"/>  
      <column name="add_goods_time" type="String" xid="xid45"/>  
      <column name="cate_id" type="String" xid="xid46"/>  
      <column name="cate_name" type="String" xid="xid47"/>  
      <column name="cost_price" type="String" xid="xid48"/>  
      <column name="expiration_date" type="String" xid="xid49"/>  
      <column name="goods_accessory" type="String" xid="xid50"/>  
      <column name="goods_activity_state" type="String" xid="xid51"/>  
      <column name="goods_code1" type="String" xid="xid52"/>  
      <column name="goods_code2" type="String" xid="xid53"/>  
      <column name="goods_code3" type="String" xid="xid54"/>  
      <column name="goods_img" type="String" xid="xid55"/>  
      <column name="goods_inventory" type="String" xid="xid56"/>  
      <column name="goods_name" type="String" xid="xid57"/>  
      <column name="goods_sn" type="String" xid="xid58"/>  
      <column name="goods_state" type="String" xid="xid59"/>  
      <column name="is_client_price" type="String" xid="xid60"/>  
      <column name="is_delete" type="String" xid="xid61"/>  
      <column name="is_hot" type="String" xid="xid62"/>  
      <column name="is_new" type="String" xid="xid63"/>  
      <column name="is_putaway" type="String" xid="xid64"/>  
      <column name="is_units" type="String" xid="xid65"/>  
      <column name="keywords" type="String" xid="xid66"/>  
      <column name="level_id" type="String" xid="xid67"/>  
      <column name="level_num" type="String" xid="xid68"/>  
      <column name="level_price1" type="String" xid="xid69"/>  
      <column name="level_price2" type="String" xid="xid70"/>  
      <column name="level_price3" type="String" xid="xid71"/>  
      <column name="level_price_id" type="String" xid="xid72"/>  
      <column name="level_purchase" type="String" xid="xid73"/>  
      <column name="market_price1" type="String" xid="xid74"/>  
      <column name="market_price2" type="String" xid="xid75"/>  
      <column name="market_price3" type="String" xid="xid76"/>  
      <column name="price" type="String" xid="xid77"/>  
      <column name="produced" type="String" xid="xid78"/>  
      <column name="produced_time" type="String" xid="xid79"/>  
      <column name="sort_num" type="String" xid="xid80"/>  
      <column name="specification1_name" type="String" xid="xid81"/>  
      <column name="specification1_value" type="String" xid="xid82"/>  
      <column name="specification2_name" type="String" xid="xid83"/>  
      <column name="specification2_value" type="String" xid="xid84"/>  
      <column name="specification3_name" type="String" xid="xid85"/>  
      <column name="specification3_value" type="String" xid="xid86"/>  
      <column name="specification_id" type="String" xid="xid87"/>  
      <column name="unit" type="String" xid="xid88"/>  
      <column name="update_goods_time" type="String" xid="xid89"/>  
      <column name="warehouse_id" type="String" xid="xid90"/>  
      <column name="goods_num" type="Integer" xid="xid91"/>  
      <column name="unit_id" type="String" xid="xid92"/>  
      <column name="unit_name" type="String" xid="xid93"/>  
      <column isCalculate="false" name="uuid" type="String" xid="xid94"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classNameData" idColumn="id"> 
      <column name="id" type="String" xid="column6"/>  
      <column name="name" type="String" xid="column7"/>  
      <column name="cid" type="String" xid="column5"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classValueData" idColumn="id"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="name" type="String" xid="column10"/>  
      <column name="pid" type="String" xid="column8"/>  
      <column name="flag" type="String" xid="column10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classValue2Data" idColumn="id" confirmRefresh="false"> 
      <column name="id" type="String" xid="column12"/>  
      <column name="name" type="String" xid="column11"/>  
      <column name="pid" type="String" xid="column13"/>  
      <column name="flag" type="String" xid="column11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classValue3Data" idColumn="id" confirmRefresh="false"> 
      <column name="id" type="String" xid="column15"/>  
      <column name="name" type="String" xid="column14"/>  
      <column name="pid" type="String" xid="column16"/>  
      <column name="flag" type="String" xid="column9"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="className2Data" idColumn="id"> 
      <column name="id" type="String" xid="column18"/>  
      <column name="name" type="String" xid="column19"/>  
      <column name="cid" type="String" xid="column17"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="className3Data" idColumn="id"> 
      <column name="id" type="String" xid="column21"/>  
      <column name="name" type="String" xid="column22"/>  
      <column name="cid" type="String" xid="column20"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="unitData" idColumn="id"> 
      <column name="origin_price" type="String" xid="column23"/>  
      <column name="id" type="String" xid="column24"/>  
      <column name="name" type="String" xid="column25"/>  
      <column name="price" type="String" xid="column26"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="specificationData" idColumn="id"> 
      <column name="id" type="String" xid="column29"/>  
      <column name="specificationName" type="String" xid="column30"/>  
      <column name="specificationThis" type="String" xid="column27"/>  
      <column name="specificationValue" type="String" xid="column28"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data5" idColumn="uuid" confirmDelete="false" confirmRefresh="false" onCustomRefresh="data5CustomRefresh"> 
      <rule xid="rule3"> 
        <col name="fsum" xid="ruleCol3" expr="$model.goodsDataM.sum(&quot;fsum&quot;)"> 
          <calculate xid="calculate3"> 
            <expr xid="default16">$row.val("goods_num")</expr>
          </calculate> 
        </col>  
        <col name="fsumMoney" xid="ruleCol3"> 
          <calculate xid="calculate3"> 
            <expr xid="default12">$row.val("total_price")</expr>
          </calculate> 
        </col> 
      </rule>  
      <column label="商品ID" name="goods_id" type="String" xid="column61"/>  
      <column name="goods_name" type="String" xid="column62"/>  
      <column name="goods_img" type="String" xid="column57"/>  
      <column name="goods_inventory" type="String" xid="column59"/>  
      <column name="goods_sn" type="String" xid="column60"/>  
      <column name="show_name" type="String" xid="column55"/>  
      <column name="specification_id" type="String" xid="column68"/>  
      <column name="goods_num" type="Integer" xid="column63"/>  
      <column name="specification" type="String" xid="column64"/>  
      <column name="fsum" type="Float" xid="column67"/>  
      <column name="fsumMoney" type="Float" xid="column65"/>  
      <column name="price" type="Float" xid="column66"/>  
      <column name="remark" type="String" xid="column38"/>  
      <column name="unit_id" type="String" xid="column31"/>  
      <column name="uuid" type="String" xid="column56"/>  
      <column name="specification1" type="String" xid="column58"/>  
      <column name="specification2" type="String" xid="column36"/>  
      <column name="specification3" type="String" xid="column37"/>  
      <column name="dis_tag" type="String" xid="column32"/>  
      <column label="促销的价格" name="sales_price" type="Float" xid="column33"/>  
      <column label="是否是促销商品" name="sales_flag" type="String" xid="column34"/>  
      <column label="总价" name="total_price" type="Float" xid="column35"/>  
      <column name="sales_flag_num" type="String" xid="column39"/>  
      <column name="promotion" type="String" xid="column40"/>  
      <column name="promotion_id" type="String" xid="column41"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sumdata" idColumn="id" confirmRefresh="false"> 
      <column name="id" type="String" xid="column70"/>  
      <column name="Value" type="Integer" xid="column71"/>  
      <column name="moeny" type="Float" xid="column69"/>  
      <data xid="default15">[{"id":"1","Value":0,"moeny":0}]</data>  
      <rule xid="rule3"> 
        <col name="Value" xid="ruleCol4"> 
          <calculate xid="calculate4"> 
            <expr xid="default14">$model.data5.sum("fsum")</expr>
          </calculate> 
        </col>  
        <col name="moeny" xid="ruleCol4"> 
          <calculate xid="calculate4"> 
            <expr xid="default13">$model.data5.sum("fsumMoney")</expr>
          </calculate> 
        </col> 
      </rule> 
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dialogData" idColumn="id"><column name="goods_id" type="String" xid="xid3"></column>
  <column name="goods_img" type="String" xid="xid6"></column>
  <column name="price" type="Double" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="sortingPopOver" anchor="sortingBtn" direction="left-bottom" opacity="0.7"
    dismissible="true"> 
    <div class="x-popOver-overlay" xid="div4"/>  
    <div class="x-popOver-content tb-sorting" xid="div11"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        data="conditionData" bind-click="sortingListClick" xid="conditionList" dataItemAlias="conditionRow"> 
        <ul class="x-list-template" xid="ul1"> 
          <li class="list-group-item" bind-css="{'current':conditionRow.val('fState')==1}"
            bind-click="li2Click"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right tb-liBtn"
              label="button" icon="icon-checkmark"> 
              <i xid="i4" class="icon-checkmark text-danger"/>  
              <span xid="span29"/> 
            </a>  
            <span bind-text="val(&quot;fName&quot;)"/> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="screeningPopOver" direction="right-bottom" opacity="0.7" anchor="listStyleBtn"
    dismissible="true" position="bottom"> 
    <div class="x-popOver-overlay" xid="div4"/>  
    <div class="x-popOver-content tb-sorting" style="height:60%;"> 
      <div xid="div3" style="width:100%;height:100%;"> 
        <div component="$UI/system/components/justep/panel/panel" class=" x-full"
          xid="panel2"> 
          <div class="x-panel-content" xid="content2"> 
            <div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                label="返回上一级" xid="returnBtn" bind-click="returnBtnClick" style="display:none"> 
                <i xid="i5"/>  
                <span xid="span6">返回上一级</span> 
              </a> 
            </div>  
            <div component="$UI/system/components/justep/list/list" class="x-list tb-typelist text-center"
              data="categoryDataList" xid="classList" bind-click="classClick" dataItemAlias="classRow"> 
              <ul class="x-list-template" xid="ul5" componentname="ul(html)"> 
                <li xid="li3" componentname="li(html)" bind-style="{'listxz':$model.classDataM.val(&quot;CATE_ID&quot;)==$object.val('CATE_ID')}"> 
                  <div class="media" xid="media2"> 
                    <div class="media-left" xid="mediaLeft2"> 
                      <span component="$UI/system/components/justep/button/radio"
                        class="x-radio" xid="radio2" style="margin-top:9px;" name="choseName"
                        bind-ref="ref(&quot;choose&quot;)" checkedValue="1" uncheckedValue="0"
                        onChange="radio2Change"/> 
                    </div>  
                    <div class="media-body" xid="mediaBody2"> 
                      <h4 xid="h42" bind-text=" val(&quot;cate_name&quot;)" style="color:#666;text-align:left;">Media heading</h4> 
                    </div>  
                    <div class="media-right" xid="mediaRight2"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" label="button" xid="button4"
                        icon="linear linear-chevronright" style="color: #666;" bind-click="li3Click"
                        bind-visible="val(&quot;children&quot;)!=&quot;&quot;  &amp;&amp; val(&quot;children&quot;)!=null "> 
                        <i xid="i11" class="linear linear-chevronright"/>  
                        <span xid="span10"/> 
                      </a> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div> 
          </div>  
          <div class="x-panel-bottom" xid="bottom3"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row15" style="padding:0;"> 
              <div class="x-col" xid="col27" style="padding:0;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-label" label="取消" xid="button5" style="color:#666;line-height:2;height:48px;width:100%;"> 
                  <i xid="i6"/>  
                  <span xid="span61">取消</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col29" style="padding:0;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-label" label="确定" xid="button6" style="color:#fff;line-height:2;height:48px;width:100%;background-color:#56AEF7;"
                  bind-click="button6Click"> 
                  <i xid="i19"/>  
                  <span xid="span62">确定</span> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="48"> 
      <div> 
        <div class="col-xs-10 pull-left tb-nopadding"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"
            style="height:40px;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link "
              label="综合排序" xid="sortingBtn" icon="icon-arrow-down-b" onClick="sortingBtnClick"> 
              <span class="text-danger">综合排序</span>  
              <i xid="i13" class="icon-arrow-down-b text-danger"/>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="商品标签" xid="button1"> 
              <i xid="i1"/>  
              <span xid="span1">商品标签</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="促销状态" icon="icon-arrow-down-b" xid="screeningBtn"> 
              <span xid="span7">促销状态</span>  
              <i xid="i8" class="icon-arrow-down-b"/>
            </a> 
          </div> 
        </div>  
        <div class="col-xs-2 pull-left text-center tb-nopadding"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              xid="listStyleBtn" icon="glyphicon glyphicon-th-list" onClick='{"operation":"window.close"}'> 
              <i xid="i2" class="glyphicon glyphicon-th-list"/>  
              <span><![CDATA[]]></span> 
            </a> 
          </div> 
        </div>
      </div> 
    </div>  
    <div xid="content" class="x-panel-content tb-trans"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1" onPullUp="scrollView1PullUp"> 
        <div class="x-scroll-content" xid="div6"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="goodsDataM" limit="10" bind-click="listClick"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="media" bind-click="li1Click"> 
                <div xid="div10" class="media-left"> 
                  <img alt="" xid="image1" class="img-rounded media-object"
                    bind-attr-src=" val(&quot;goods_img&quot;)" style="width:75px;" height="80px"/> 
                </div>  
                <div class="media-body" xid="div14"> 
                  <h5 class="media-heading lead text-black" xid="h51" style="color:black;font-size:16px;"
                    bind-text=" val(&quot;goods_name&quot;)"/>  
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row3" style="height:2px;"> 
                    <div class="x-col" xid="col1"/> 
                  </div>  
                  <div class="text-muted" xid="div21"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn x-orange btn-xs " label="button" xid="button14" style="background-color:white;border-style:none none none none;border-width:thin thin thin thin;border-color:#C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0;color:#9F9F9F;font-size:14px;"
                      bind-text="val(&quot;set_specs&quot;)==1?val(&quot;unit&quot;).length+&quot;种规格选择&quot;:&quot;&quot;"
                      bind-visible="val(&quot;set_specs&quot;)==1"> 
                      <i xid="i23"/>  
                      <span xid="span43"/> 
                    </a> 
                  </div>  
                  <div class="text-muted" xid="div15"> 
                    <span xid="span11" class="text-danger" style="font-size:12px;">￥</span>  
                    <span xid="span9" bind-text=" val(&quot;price&quot;)" class="text-danger"
                      style="font-size:16px;"/>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn x-orange btn-xs pull-right" label="选择格" xid="addCart"
                      style="border-color:#00BFFF #00BFFF #00BFFF #00BFFF;background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;color:#00BFFF"
                      bind-visible=" val(&quot;set_specs&quot;)==1"> 
                      <i xid="i14"/>  
                      <span xid="span36">选择格</span> 
                    </a>  
                    <div class="tb-numberOperation" xid="div26" style="text-align:right;"
                      bind-visible=" val(&quot;set_specs&quot;)==0"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn x-gray btn-sm btn-only-icon pull-right" label="button"
                        xid="button10" icon="icon-android-add" target="oneColList"
                        bind-click="addZBtnClick"> 
                        <i xid="i22" class="icon-android-add"/>  
                        <span xid="span41"/> 
                      </a>  
                      <span xid="span22" class="pull-right" style="line-height:0.8;height:30px;"
                        bind-text="val(&quot;goods_num&quot;)==null?&quot;0&quot;:val(&quot;goods_num&quot;)"/>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn x-gray btn-sm btn-only-icon pull-right" label="button"
                        xid="button9" icon="icon-android-remove" bind-click="reductionZBtnClick"> 
                        <i xid="i22" class="icon-android-remove"/>  
                        <span xid="span42"/> 
                      </a> 
                    </div> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div>  
        <div class="x-content-center x-pull-up" xid="div7"> 
          <span class="x-pull-up-label" xid="span16">加载更多...</span> 
        </div> 
      </div>
      <div xid="div45"> 
        <div xid="div5" style="position:fixed;bottom:75px;right:4px;z-index:999;color:#FFFEFF;text-align:center;height:20px;width:20px;background-color:#FF4026;"
          align="left" class="btn_radius"> 
          <span xid="span51" bind-text="$model.sumdata.val(&quot;Value&quot;)"/>
        </div>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default   btn_radius"
          xid="button20" icon="e-commerce e-commerce-gouwuche" style="position:fixed;bottom:60px;right:5px;z-index:1;background-color:#E0E0E0;border-style:none none none none;"
          label="购物车" onClick="button20Click"> 
          <i xid="i27" class="e-commerce e-commerce-gouwuche"/>  
          <span xid="span15">购物车</span>
        </a> 
      </div>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver6" anchor="bottom6"> 
    <div class="x-popOver-overlay" xid="div52"/>  
    <div class="x-popOver-content ddd" xid="div53" style="width:100%;height:60%;"> 
      <div xid="div54" style="height:100%;width:100%;background-color:white;"> 
        <div component="$UI/system/components/justep/panel/panel" class=" x-full x-panel "
          xid="panel6"> 
          <div class="x-panel-content" xid="content6"> 
            <div xid="div20" style="height:100%;width:100%;"> 
              <div xid="div35"> 
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row2"> 
                  <div class="x-col x-col-20" xid="col4"> 
                    <img src=" " alt="" xid="image8" height="60px" style="width:60px;"
                      class="img-rounded "/> 
                  </div>  
                  <div class="x-col" xid="col6" style="text-align:left;"> 
                    <h4 class="media-heading" xid="h45" style="color:#545454;font-size:16px;">Media heading</h4> 
                  </div>  
                  <div class="x-col" xid="col7" style="text-align:right;"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-link btn-only-icon" label="button" xid="button8"
                      icon="icon-android-close" style="color:#3F3F3F;" onClick="button8Click"> 
                      <i xid="i20" class="icon-android-close"/>  
                      <span xid="span34"/> 
                    </a> 
                  </div> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list3" data="GoodsInfodata"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2"> 
                    <div xid="div33" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row1"> 
                        <div class="x-col x-col-67" xid="col2"> 
                          <h5 xid="h54"><![CDATA[]]>  
                            <span xid="span35" class="text-danger"><![CDATA[¥]]></span>  
                            <span xid="span25" bind-text=" val(&quot;price&quot;)" class="text-danger"><![CDATA[]]></span>  
                            <span xid="span28" bind-text="&quot;/&quot; + val(&quot;unit_name&quot;)"
                              style="color:#666"/>  
                            <span xid="span37" style="color:#666" bind-text=" val(&quot;goods_sn&quot;)"/> 
                          </h5>  
                          <h5 xid="h55"><![CDATA[]]>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-default btn-xs" label="button" xid="button13"
                              style="background-color:#F9F8F9;color:#797979;margin-left:5px;"
                              bind-text=" val(&quot;specification1_value&quot;)" bind-visible="val(&quot;specification1_name&quot;)!=&quot;&quot;"> 
                              <i xid="i9"/>  
                              <span xid="span13"/> 
                            </a>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-default btn-xs" label="button" xid="button2"
                              style="background-color:#F9F8F9;color:#797979;margin-left:5px;"
                              bind-text=" val(&quot;specification2_value&quot;)" bind-visible="val(&quot;specification2_name&quot;)!=&quot;&quot;"> 
                              <i xid="i10"/>  
                              <span xid="span12"/> 
                            </a>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-default btn-xs" label="button" xid="button3"
                              style="background-color:#F9F8F9;color:#797979;margin-left:5px;"
                              bind-text=" val(&quot;specification3_value&quot;)" bind-visible="val(&quot;specification3_name&quot;)!=&quot;&quot;"
                              disabled="true"> 
                              <i xid="i21"/>  
                              <span xid="span40"/> 
                            </a> 
                          </h5> 
                        </div>  
                        <div class="x-col" xid="col3"> 
                          <div class="tb-numberOperation" xid="div34" style="text-align:right;"> 
                            <a component="$UI/system/components/justep/button/button"
                              class="btn x-gray btn-xs btn-only-icon pull-right" label="button"
                              xid="button11" icon="icon-android-add" onClick="addBtnClick"> 
                              <i xid="i18" class="icon-android-add"/>  
                              <span xid="span31"/> 
                            </a>  
                            <span xid="span32" class="pull-right" style="line-height:0.8;height:22px;"
                              bind-text=" val(&quot;goods_num&quot;)==null?&quot;0&quot;: val(&quot;goods_num&quot;)"><![CDATA[]]></span>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn x-gray btn-xs btn-only-icon pull-right" label="button"
                              xid="button12" icon="icon-android-remove" onClick="reductionBtnClick"> 
                              <i xid="i15" class="icon-android-remove"/>  
                              <span xid="span33"/> 
                            </a> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <div class="x-panel-bottom" xid="bottom6"> 
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup3"
              style="background-color:#170153;color:#FFFEFF;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="确定" xid="button7" style="color:#FFFEFF;" onClick="button7Click"> 
                <i xid="i12"/>  
                <span xid="span20">确定</span> 
              </a> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver1" position="bottom"> 
    <div class="x-popOver-overlay" xid="div16"/>  
    <div class="x-popOver-content" xid="div41" style="width:100%;height:70%;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-content" xid="content3"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black"
            icon="icon-ios7-close-outline" onClick="{operation:'popOver1.hide'}" xid="button15"> 
            <i xid="i25" class="icon-ios7-close-outline"/>  
            <span xid="span46"/> 
          </a>  
            
          <div xid="div2"><img alt="" class="img-thumbnail tb-colorImg" bind-attr-src=' $model.dialogData.getCount()&gt;0?$model.dialogData.val("goods_img"):$model.goodsDataM.val("goods_img")' xid="image4" /></div><div class="tb-title" xid="div37"> 
            <span class="text-danger h4" xid="span21">￥</span>  
            <span class="text-danger h4" xid="span48" bind-text="$model.goodsDataM.val(&quot;price&quot;)"/>  
            <div xid="div40"/>  
            <span xid="span50" bind-text="$model.goodsDataM.val(&quot;goods_name&quot;)"/>  
            <h5 xid="h56" class="text-black">请选择规格</h5> 
          </div>  
          <div xid="div27" style="height:30px;width:100%;"/>  
          <div class="panel-body" xid="div36" style="padding-top: 3px"> 
            <div xid="div42" bind-visible=" $model.classNameData.getCount() !=0"> 
              <h4 class="text-black" xid="h43" bind-text=" $model.classNameData.val(&quot;name&quot;) +&quot;分类&quot;"><![CDATA[]]></h4>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list5" data="classValueData" dataItemAlias="colorRow"> 
                <ul class="x-list-template" xid="listTemplateUl3" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li7" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2" bind-click="li7Click"> 
                    <div class="text-center" bind-css=" val(&quot;flag&quot;)==0?{'current2':colorRow.val('id')==$model.classValueData.val('id')}:{'current':colorRow.val('id')==$model.classValueData.val('id')}"
                      xid="div38" bind-disable=" val(&quot;flag&quot;) !=1" bind-enable=" val(&quot;flag&quot;) ==1"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span52"/> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div44"/>  
            <div xid="div43" bind-visible=" $model.className2Data.getCount() !=0"> 
              <h4 class="text-black" xid="h44" bind-text=" $model.className2Data.val(&quot;name&quot;) +&quot;分类&quot;"><![CDATA[]]></h4>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list7" data="classValue2Data" dataItemAlias="color2Row"> 
                <ul class="x-list-template" xid="listTemplateUl3" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li6" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2" bind-click="li6Click"> 
                    <div class="text-center " bind-css=" val(&quot;flag&quot;)==0?{'current2':color2Row.val('id')==$model.classValue2Data.val('id')}:{'current':color2Row.val('id')==$model.classValue2Data.val('id')}"
                      xid="div39" bind-style="{ &quot;color&quot;: val(&quot;flag&quot;)==0?'#8E8E8E':'#4D4D4D', }"
                      bind-disable="true" bind-enable="true"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span44"/> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div28"/>  
            <div xid="div16" bind-visible=" $model.className3Data.getCount() !=0"> 
              <h4 class="text-black" xid="h41" bind-text=" $model.className3Data.val(&quot;name&quot;) +&quot;分类&quot;"><![CDATA[]]></h4>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list6" data="classValue3Data" dataItemAlias="color3Row"> 
                <ul class="x-list-template" xid="listTemplateUl4" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li8" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2" bind-click="li8Click"> 
                    <div class="text-center" bind-css="val(&quot;flag&quot;)==0?{'current2':color3Row.val('id')==$model.classValue3Data.val('id')}:{'current':color3Row.val('id')==$model.classValue3Data.val('id')}"
                      xid="div29" bind-style="{ &quot;color&quot;: val(&quot;flag&quot;)==0?'#8E8E8E':'#4D4D4D', }"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span30"/> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div32"/>  
            <div xid="div30" bind-visible=" $model.unitData.getCount()&gt;1"> 
              <h4 class="text-black" xid="h46">单位分类</h4>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list5" data="unitData" dataItemAlias="color4Row"> 
                <ul class="x-list-template" xid="listTemplateUl5" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li9" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2"> 
                    <div class="text-center" bind-css="{'current':color4Row.val('id')==$model.unitData.val('id')}"
                      xid="div31"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span45"/> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div27"/>  
            <div xid="div28"> 
              <h4 class="text-black" xid="h47">购买数量</h4>  
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row4" style="padding:0px 0px 0px 0px;"> 
                <div class="x-col x-col-33" xid="col18"/>  
                <div class="x-col" xid="col19"> 
                  <div class="tb-numberOperation" xid="div30" style="text-align:right;"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn x-gray btn-sm btn-only-icon pull-right" label="button"
                      xid="button19" icon="icon-android-add" onClick="button19Click"> 
                      <i xid="i24" class="icon-android-add"/>  
                      <span xid="span21"/> 
                    </a>  
                    <span xid="span301" class="pull-right" style="line-height:0.8;height:30px;">1</span>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn x-gray btn-sm btn-only-icon pull-right" label="button"
                      xid="button17" icon="icon-android-remove" onClick="button17Click"> 
                      <i xid="i24" class="icon-android-remove"/>  
                      <span xid="span49"/> 
                    </a> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup4"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="加入购物清单" onClick="button4Click" xid="button16"> 
              <i xid="i26"/>  
              <span xid="span47">加入购物清单</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
