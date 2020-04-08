<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:148px;top:20px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="default6"/>  
      <column label="店铺ID" name="fShopID" type="String" xid="xid3"/>  
      <column label="标题" name="fTitle" type="String" xid="xid6"/>  
      <column label="图片" name="fImg" type="String" xid="xid7"/>  
      <column label="价格" name="fPrice" type="Float" xid="xid8"/>  
      <column label="邮费" name="fSpec" type="String" xid="xid9"/>  
      <column label="月销量" name="fStock" type="Integer" xid="xid10"/>  
      <column name="fUnit" type="String" xid="xid17"/> 
    </div>  
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
     <expr xid="default11">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>  
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
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="categoryDataList" idColumn="cate_id"> 
      <column name="cate_id" type="String" xid="column2" />  
      <column name="cate_name" type="String" xid="column1" />  
      <column name="parent_id" type="String" xid="column3" />  
      <column name="children" type="String" xid="column4" />  
      <column name="choose" type="Integer" xid="xid43" />
    </div>
  <rule xid="rule1">
   <col name="uuid" xid="ruleCol1">
    <defaultValue xid="default5">
     <expr xid="default7"></expr></defaultValue> 
    <calculate xid="calculate1">
     <expr xid="default8">justep.UUID.createUUID()</expr></calculate> </col> </rule></div></div>  
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
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="综合排序" xid="sortingBtn" icon="icon-arrow-down-b" onClick="sortingBtnClick"> 
              <i xid="i13" class="icon-arrow-down-b text-danger"/>  
              <span class="text-danger">综合排序</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="销量优先" xid="button1"> 
              <i xid="i1"/>  
              <span xid="span1">销量优先</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="分类" icon="icon-arrow-down-b" xid="screeningBtn" onClick="screeningBtnClick"> 
              <i xid="i8" class="icon-arrow-down-b"/>  
              <span xid="span7">分类</span> 
            </a> 
          </div> 
        </div>  
        <div class="col-xs-2 pull-left text-center tb-nopadding"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              xid="listStyleBtn" icon="glyphicon glyphicon-th-list" onClick="listStyleClick"> 
              <i xid="i2" class="glyphicon glyphicon-th-list"/>  
              <span xid="span2"/> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div xid="content" class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="pages" onActiveChanged="pagesActiveChanged" wrap="true" swipe="false"
        slidable="false"> 
        <div class="x-contents-content" xid="oneColList"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" onPullUp="scrollView1PullUp"> 
            <div class="x-content-center x-pull-down container" xid="div5"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
              <span class="x-pull-down-label" xid="span15">下拉刷新...</span> 
            </div>  
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
                      <h5 class="media-heading lead text-black" bind-text=" val(&quot;goods_name&quot;)"
                        xid="h51" style="color:#666;font-size:12px;"/>  
                      <div class="text-muted" xid="div15"> 
                        <span xid="span11" class="text-danger" style="font-size:12px;">￥</span>  
                        <span xid="span9" bind-text=" val(&quot;price&quot;)" class="text-danger"
                          style="font-size:16px;"/> 
                      </div>  
                      <div class="text-muted" xid="div16"> 
                        <span xid="span30"><![CDATA[库存]]></span>  
                        <span xid="span21" bind-text="val(&quot;goods_inventory&quot;)"/>  
                        <span xid="span22" bind-text="ref(&quot;fUnit&quot;)"><![CDATA[]]></span>  
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange btn-xs pull-right" label="加入购物清单" xid="addCart"
                          icon="icon-ios7-cart" style="background-color:#F7430C;border-color:#F7430C;"
                          bind-click="addCartClick"> 
                          <i xid="i14" class="icon-ios7-cart"/>  
                          <span xid="span36">加入购物清单</span> 
                        </a> 
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
        </div>  
        <div class="x-contents-content  x-scroll-view" xid="twoColList"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView2" onPullUp="scrollView1PullUp"> 
            <div class="x-content-center x-pull-down container" xid="div9"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"/>  
              <span class="x-pull-down-label" xid="span5">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div17"> 
              <div class="col-xs-6 tb-twoColList"> 
                <div component="$UI/system/components/justep/list/list" class="x-list x-flex"
                  data="goodsDataM" limit="3" filter="$row.index()%2==0" xid="list2"
                  bind-click="listClick" disablePullToRefresh="false" disableInfiniteLoad="false"> 
                  <ul class="x-list-template" xid="ul3"> 
                    <li xid="li4"> 
                      <div xid="div8"> 
                        <img src="" alt="" bind-attr-src=" val(&quot;goods_img&quot;)"
                          class="img-responsive" style="width:100%;" xid="image2"/>  
                        <div xid="div19"> 
                          <h5 bind-text=" val(&quot;goods_name&quot;)" class="text-black"
                            xid="h52" style="color:#666;font-size:12px;"/>  
                          <div xid="div12"> 
                            <span class="text-danger" xid="span3">￥</span>  
                            <span bind-text="val(&quot;price&quot;)" class="text-danger"
                              xid="span4" style="font-size:16px;"/> 
                          </div>  
                          <div xid="div13" class="text-muted"> 
                            <span xid="span24"><![CDATA[库存]]></span>  
                            <span xid="span26" bind-text="val(&quot;goods_inventory&quot;)"/>  
                            <span xid="span27" bind-text="val(&quot;unit_name&quot;)"><![CDATA[]]></span>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn x-orange btn-xs pull-right" label="加入购物清单"
                              xid="addCart1" icon="icon-ios7-cart" style="background-color:#F7430C;border-color:#F7430C"> 
                              <i xid="i16" class="icon-ios7-cart"/>  
                              <span xid="span38">加入购物清单</span> 
                            </a> 
                          </div> 
                        </div> 
                      </div> 
                    </li> 
                  </ul> 
                </div> 
              </div>  
              <div class="col-xs-6 tb-twoColList"> 
                <div component="$UI/system/components/justep/list/list" class="x-list x-flex"
                  data="goodsDataM" limit="3" bind-click="listClick" xid="list4" filter="$row.index()%2==1"> 
                  <ul class="x-list-template" xid="ul4"> 
                    <li xid="li5"> 
                      <div xid="div24"> 
                        <img src="" alt="" bind-attr-src=" val(&quot;goods_img&quot;)"
                          class="img-responsive" style="width:100%;" xid="image3"/>  
                        <div xid="div25"> 
                          <h5 bind-text=" val(&quot;goods_name&quot;)" class="text-black"
                            xid="h53" style="color:#666;font-size:12px;"/>  
                          <div xid="div23"> 
                            <span class="text-danger" xid="span23" style="font-size:12px;">￥</span>  
                            <span bind-text="val(&quot;price&quot;)" class="text-danger"
                              xid="span19" style="font-size:16px;"/> 
                          </div>  
                          <div xid="div22" class="text-muted"> 
                            <span xid="span18"><![CDATA[库存]]></span>  
                            <span xid="span14" bind-text="val(&quot;goods_inventory&quot;)"/>  
                            <span xid="span17" bind-text="val(&quot;unit_name&quot;)"><![CDATA[]]></span>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn x-orange btn-xs pull-right" xid="addCart2"
                              icon="icon-ios7-cart" label="加入购物清单" style="background-color:#F7430C;border-color:#F7430C"> 
                              <i xid="i17" class="icon-ios7-cart"/>  
                              <span xid="span39">加入购物清单</span> 
                            </a> 
                          </div> 
                        </div> 
                      </div> 
                    </li> 
                  </ul> 
                </div> 
              </div>  
              <div class="clearfix" xid="div2"/> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div18"> 
              <span class="x-pull-up-label" xid="span8">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver2" position="bottom"> 
    <div class="x-popOver-overlay dss" xid="div29" style="height:100%;width:100%;"/>  
    <div class="x-popOver-content ddd" xid="div30" style="height:60%;width:100%;bottom:0px;background-color:white;">
      <div xid="div31" style="height:60%;width:100%;">
        <div component="$UI/system/components/justep/panel/panel" class=" x-full"
          xid="panel3"> 
          <div class="x-panel-content" xid="content3">
            <div xid="div35">
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row2"> 
                <div class="x-col x-col-20" xid="col4">
                  <img src=" " alt="" xid="image8" height="60px" style="width:60px;"
                    class="img-rounded "/>
                </div>  
                <div class="x-col" xid="col6" style="text-align:left;">
                  <h4 class="media-heading" xid="h45" bind-text=" $model.GoodsInfodata.val(&quot;goods_name&quot;)"
                    style="color:#545454;font-size:16px;">Media heading</h4>
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
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row1"> 
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
          <div class="x-panel-bottom" xid="bottom2">
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup3"
              style="background-color:#56AEF7;color:#FFFEFF;"> 
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
</div>
