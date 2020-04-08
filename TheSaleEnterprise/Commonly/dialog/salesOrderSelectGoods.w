<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:135px;top:10px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="calculateData" idColumn="allSum" onValueChanged="calculateDataValueChanged"> 
      <column label="合计" name="allSum" type="String" xid="xid7"/>  
      <column label="总数量" name="allNumber" type="String" xid="xid8"/>  
      <column label="是否返回" name="isBack" type="Integer" xid="xid17"/>  
      <data xid="default8">[{"allSum":"0","isBack":0}]</data>  
      <!-- <rule xid="rule2"> 
        <col name="allNumber" xid="ruleCol6"> 
          <calculate xid="calculate6"> 
            <expr xid="default9">$model.goodsData.sum('fChoose')</expr> 
          </calculate> 
        </col> 
      </rule>  --> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="pro_id" limit="-1" confirmRefresh="false" confirmDelete="false"> 
      <data xid="default1">[{"id":"1","img":"1","pro_name":"1","pro_id":"1","spec":"1111","price":"1","qty":"1","unit":"1","unitm":"个"},{"id":"2","img":"2","pro_name":"2","pro_id":"2","spec":"2222","price":"2","qty":"2","unit":"2","unitm":"套"}]</data>  
      <column name="pro_id" type="String" xid="xid3"/>  
      <column name="img" type="String" xid="xid1"/>  
      <column name="pro_name" type="String" xid="xid2"/>  
      <column name="spec" type="String" xid="xid4"/>  
      <column name="price" type="String" xid="xid5"/>  
      <column name="qty" type="String" xid="xid6"/>  
      <column name="unit" type="String" xid="xid19"/>  
      <column name="unitm" type="String" xid="xid25"/>  
      <column name="select" type="String" xid="xid27"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="specData" idColumn="id"> 
      <column name="id" type="String" xid="xid9"/>  
      <column name="unit" type="String" xid="xid10"/>  
      <column name="unitm" type="String" xid="xid11"/>  
      <column name="pro_name" type="String" xid="xid12"/>  
      <column name="pro_id" type="String" xid="xid13"/>  
      <column name="price" type="String" xid="xid14"/>  
      <column name="spec" type="String" xid="xid15"/>  
      <column name="story" type="String" xid="xid16"/>  
      <column name="is" type="String" xid="xid18"/>  
      <column name="qty" type="String" xid="xid26"/>  
      <data xid="default2">[{"id":"1","unit":"1","unitm":"个","pro_name":"1","pro_id":"1","price":"1","spec":"10","story":"1","is":"1","qty":"0"},{"id":"2","unit":"2","unitm":"套","pro_name":"2","pro_id":"2","price":"2","spec":"20","story":"2","is":"0","qty":"0"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cData" idColumn="id" confirmRefresh="false" confirmDelete="false" autoNew="false"> 
      <column name="id" type="String" xid="xid20"/>  
      <column name="url" type="String" xid="xid21"/>  
      <column name="pro_name" type="String" xid="xid22"/>  
      <column name="pro_id" type="String" xid="xid23"/>  
      <column name="unitm" type="String" xid="xid24"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="hasBugGoods" idColumn="pro_id" limit="-1" confirmRefresh="false" confirmDelete="false"> 
      <data xid="default3">[{"id":"1","img":"1","pro_name":"1","pro_id":"1","spec":"1111","price":"1","qty":"1","unit":"1","unitm":"个"},{"id":"2","img":"2","pro_name":"2","pro_id":"2","spec":"2222","price":"2","qty":"2","unit":"2","unitm":"套"}]</data>  
      <column name="pro_id" type="String" xid="column7"/>  
      <column name="img" type="String" xid="column1"/>  
      <column name="pro_name" type="String" xid="column2"/>  
      <column name="spec" type="String" xid="column9"/>  
      <column name="price" type="String" xid="column11"/>  
      <column name="qty" type="String" xid="column14"/>  
      <column name="unit" type="String" xid="column6"/>  
      <column name="unitm" type="String" xid="column12"/>  
      <column name="select" type="String" xid="column3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="hasBugSpec" idColumn="id" onValueChanged="hasBugSpecValueChanged"> 
      <column name="id" type="String" xid="column17"/>  
      <column name="unit" type="String" xid="column18"/>  
      <column name="unitm" type="String" xid="column19"/>  
      <column name="pro_name" type="String" xid="column8"/>  
      <column name="pro_id" type="String" xid="column10"/>  
      <column name="price" type="String" xid="column13"/>  
      <column name="spec" type="String" xid="column15"/>  
      <column name="story" type="String" xid="column4"/>  
      <column name="is" type="String" xid="column5"/>  
      <column name="qty" type="String" xid="column16"/>  
      <data xid="default4">[{"id":"1","unit":"1","unitm":"个","pro_name":"1","pro_id":"1","price":"1","spec":"10","story":"1","is":"1","qty":"0"},{"id":"2","unit":"2","unitm":"套","pro_name":"2","pro_id":"2","price":"2","spec":"20","story":"2","is":"0","qty":"0"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="TypeList" idColumn="id"> 
      <column name="id" type="String" xid="xid28"/>  
      <column name="title" type="String" xid="xid29"/>  
      <data xid="default5">[{"id":"1","title":"金蝶软件"},{"id":"2","title":"用友软件"},{"id":"3","title":"OA软件"},{"id":"4","title":"CRM软件"},{"id":"5","title":"其他"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="labelList" idColumn="id"> 
      <column name="id" type="String" xid="xid30"/>  
      <column name="title" type="String" xid="xid31"/>  
      <data xid="default6">[{"id":"1","title":"打折促销"},{"id":"2","title":"新品上架"},{"id":"3","title":"清仓优惠"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="salesList" idColumn="id"> 
      <data xid="default7">[{"id":"1","title":"促销中"},{"id":"2","title":"待促销"}]</data>  
      <column name="id" type="String" xid="xid32"/>  
      <column name="title" type="String" xid="xid33"/>  
      <column name="val" type="String" xid="xid37"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="selectData" idColumn="type" autoNew="true"> 
      <column name="type" type="String" xid="xid34"/>  
      <column name="label" type="String" xid="xid35"/>  
      <column name="sales" type="String" xid="xid36"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="48"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        title="选择商品"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button8" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i4"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title">选择商品</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div xid="content" class="x-panel-content x-cards" supportpulldown="true"
      _xid="C834728599800001DC911AE01391B120" style="padding-top:0px;"> 
      <div component="$UI/system/components/justep/tabs/tabs" class="x-tabs"
        xid="tabs1"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel"
          xid="panel1"> 
          <div class="x-panel-top" xid="top1" height="90"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row15" style="margin:0px;padding:0px;"> 
              <div xid="col21" style="text-align:center;margin:0px;padding:0px;"
                class="x-col"> 
                <div class="subNavLine" style="" id="subNavLine1" xid="div2"> 
                  <div class="active" xid="allGoods" bind-click="allGoodsClick"> 
                    <span xid="span5">全部商品</span> 
                  </div>  
                  <div xid="buyGoods" bind-click="buyGoodsClick"> 
                    <span xid="span12">买过</span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group" tabbed="true" xid="buttonGroup1" style="width:100%;color:#000"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                label="商品分类" xid="typeBtn" icon="icon-arrow-down-b" onClick="typeBtnClick"
                style="width:33.3%;color:#000"> 
                <i xid="i13" class="icon-arrow-down-b text-danger" style="color:#000"/>  
                <span xid="span16">商品分类</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                label="商品标签" xid="labelBtn" icon="icon-arrow-down-b" onClick="labelBtnClick"
                style="width:33.3%;"> 
                <i xid="i11" class="icon-arrow-down-b text-danger" style="color:#000"/>  
                <span class="text-danger" xid="span19" style="color:#000">商品标签</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link"
                label="促销状态" xid="salesBtn" icon="icon-arrow-down-b" onClick="salesBtnClick"
                style="width:33.3%;"> 
                <i xid="i12" class="icon-arrow-down-b text-danger" style="color:#000"/>  
                <span class="text-danger" xid="span35" style="color:#000">促销状态</span> 
              </a> 
            </div> 
          </div>  
          <div class="x-panel-content" xid="content2"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents" active="0" xid="contents1"> 
              <div class="x-contents-content" xid="content1"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel2"> 
                  <div class="x-panel-content" xid="content5"> 
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list bg-white" data="goodsData" xid="goodsList" disablePullToRefresh="true"
                      disableInfiniteLoad="true"> 
                      <ul class="x-list-template x-min-height" xid="listTemplateUl4"
                        componentname="$UI/system/components/justep/list/list#listTemplateUl"
                        id="undefined_listTemplateUl4"> 
                        <li xid="li4" class="x-min-height tb-goodList" componentname="li(html)"
                          id="undefined_li4"> 
                          <div component="$UI/system/components/justep/row/row"
                            class="x-row" xid="row1"> 
                            <div class="x-col x-col-fixed" xid="col1" style="width:auto;"/>  
                            <div class="x-col x-col-fixed tb-nopadding" xid="col2"> 
                              <img src="" alt="" xid="image1" bind-attr-src="$model.getImageUrl( val(&quot;url&quot;))"
                                class="tb-img-good" bind-click="listClick"/> 
                            </div>  
                            <div class="x-col  tb-nopadding" xid="col3"> 
                              <span bind-text="val(&quot;pro_name&quot;)" class="x-flex text-black h4 tb-nomargin"
                                xid="span26" style="height:2em;"/>  
                              <div class="text-muted" xid="div5"> 
                                <span xid="span28" bind-text="val(&quot;spec&quot;)" class="text-info h5"/> 
                              </div>  
                              <div class="text-muted" xid="div14"> 
                                <span xid="span37" class="text-danger" style="line-height:2em;height:3em;">￥</span>  
                                <span xid="span36" bind-text="val(&quot;price&quot;)"
                                  class="h4 text-danger" style="line-height:2em;height:3em;"/>  
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn x-gray btn-sm btn-only-icon pull-right"
                                  label="button" xid="button2" icon="icon-android-add"
                                  onClick="addBtnClick" style="line-height:2em;border-radius:90px;height:3em;width:3em;"> 
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
                  <div class="x-panel-bottom" xid="bottom2"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding"
                      xid="row2"> 
                      <div class="x-col" xid="col8"> 
                        <div class="text-right" xid="div9"> 
                          <span xid="span15" class="text-muted">合计：</span> 
                        </div>  
                        <div class="text-right" xid="div10"/> 
                      </div>  
                      <div class="x-col x-col-33 text-center tb-settlement"
                        xid="col9" bind-click="settlementClick"> 
                        <span xid="span10"><![CDATA[确定]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content  x-content-on-remoting-sibling"
                xid="content3"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel3"> 
                  <div class="x-panel-content" xid="content6"> 
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list bg-white" data="hasBugGoods" xid="list1" disablePullToRefresh="true"
                      disableInfiniteLoad="true"> 
                      <ul class="x-list-template x-min-height" xid="listTemplateUl1"
                        componentname="$UI/system/components/justep/list/list#listTemplateUl"
                        id="undefined_listTemplateUl4"> 
                        <li xid="li1" class="x-min-height tb-goodList" componentname="li(html)"
                          id="undefined_li4"> 
                          <div component="$UI/system/components/justep/row/row"
                            class="x-row" xid="row3"> 
                            <div class="x-col x-col-fixed" xid="col7" style="width:auto;"/>  
                            <div class="x-col x-col-fixed tb-nopadding" xid="col5"> 
                              <img src="" alt="" xid="image2" bind-attr-src="$model.getImageUrl( val(&quot;url&quot;))"
                                class="tb-img-good" bind-click="listClick"/> 
                            </div>  
                            <div class="x-col  tb-nopadding" xid="col6"> 
                              <span bind-text="val(&quot;pro_name&quot;)" class="x-flex text-black h4 tb-nomargin"
                                xid="span17" style="height:2em;"/> 
                            </div> 
                          </div>  
                          <div component="$UI/system/components/justep/list/list"
                            class="x-list bg-white" data="hasBugSpec" xid="list3"
                            disablePullToRefresh="true" disableInfiniteLoad="true"
                            filter="$row.val(&quot;pro_id&quot;)== val(&quot;pro_id&quot;)"> 
                            <ul class="x-list-template x-min-height" xid="listTemplateUl3"
                              componentname="$UI/system/components/justep/list/list#listTemplateUl"
                              id="undefined_listTemplateUl4"> 
                              <li xid="li2" class="x-min-height tb-goodList"
                                componentname="li(html)" id="undefined_li4"> 
                                <div component="$UI/system/components/justep/row/row"
                                  class="x-row" xid="row6"> 
                                  <div class="x-col  tb-nopadding" xid="col12"> 
                                    <span bind-text="val(&quot;spec&quot;)" class="x-flex text-black h5 tb-nomargin"
                                      xid="span21"/>  
                                    <div class="text-muted" xid="div11"> 
                                      <span xid="span22" class="text-danger">￥</span>  
                                      <span xid="span25" bind-text="val(&quot;price&quot;)"
                                        class="h4 text-danger"/> 
                                    </div>  
                                    <div class="text-muted h6" xid="div8"> 
                                      <span xid="span27">库存:</span>  
                                      <span bind-text="val(&quot;story&quot;)" xid="span30"/>  
                                      <span xid="span31" bind-text="val(&quot;unitm&quot;)"/>  
                                      <span bind-text="val(&quot;is&quot;)" xid="span32"/>  
                                      <a component="$UI/system/components/justep/button/button"
                                        class="btn x-blue btn-sm btn-only-icon pull-right addbtn"
                                        label="button" xid="button9" icon="icon-android-add"
                                        onClick="addSpec1BtnClick"> 
                                        <i xid="i9" class="icon-android-add"/>  
                                        <span xid="span24"/> 
                                      </a>  
                                      <input component="$UI/system/components/justep/input/input"
                                        class="pull-right btn-sm sumbtn" xid="input2"
                                        bind-ref="ref(&quot;qty&quot;)"/>  
                                      <a component="$UI/system/components/justep/button/button"
                                        class="btn btn-sm btn-only-icon pull-right subbtn"
                                        label="button" xid="button4" icon="icon-android-remove"
                                        onClick="subSpec1BtnClick"> 
                                        <i xid="i7" class="icon-android-remove"/>  
                                        <span xid="span23"/> 
                                      </a> 
                                    </div> 
                                  </div> 
                                </div> 
                              </li> 
                            </ul> 
                          </div> 
                        </li> 
                      </ul> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom" xid="bottom3"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding"
                      xid="row7"> 
                      <div class="x-col" xid="col13"> 
                        <div class="text-right" xid="div13"> 
                          <span xid="span33" class="text-muted">合计：</span> 
                        </div>  
                        <div class="text-right" xid="div12"/> 
                      </div>  
                      <div class="x-col x-col-33 text-center tb-settlement"
                        xid="col14" bind-click="col14Click"> 
                        <span xid="span34">确定</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/>  
    <require xid="require2" url="css!$UI/TheSaleEnterprise/css/common"/> 
  </resource>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" position="bottom" dismissible="false" style="width:100%;"> 
    <div class="x-popOver-overlay" xid="div15"/>  
    <div class="x-popOver-content" xid="div16" style="background-color:white;"> 
      <div xid="div6" style="padding:4px;background-color:white;"> 
        <div class="media-left" xid="mediaLeft2"> 
          <img src="" alt="" xid="image4" bind-attr-src="$model.getImageUrl( $model.cData.val(&quot;url&quot;))"
            class="tb-img-good" style="width:6em;"/> 
        </div>  
        <div class="media-body" xid="mediaBody2"> 
          <span bind-text="$model.cData.val(&quot;pro_name&quot;)" class="text-black h4"
            xid="span42"/>  
          <a component="$UI/system/components/justep/button/button" class="btn pull-right"
            xid="button5" icon="linear linear-cross" onClick="button5Click"> 
            <i xid="i8" class="linear linear-cross"/>  
            <span xid="span43"/> 
          </a> 
        </div> 
      </div>  
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row8"> 
        <div class="col col-xs-12" xid="col4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit6"> 
            <label xid="label4" style="font-size:1.2em;width:3.8em;" class="x-label"><![CDATA[单位：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output5" bind-ref="$model.cData.ref(&quot;unitm&quot;)" style="color:blue"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list bg-white"
        data="specData" xid="list2" disablePullToRefresh="true" disableInfiniteLoad="true"> 
        <ul class="x-list-template x-min-height" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl"
          id="undefined_listTemplateUl4"> 
          <li xid="li5" class="x-min-height tb-goodList" componentname="li(html)"
            id="undefined_li4"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row4"> 
              <div class="x-col  tb-nopadding" xid="col10"> 
                <span bind-text="val(&quot;spec&quot;)" class="x-flex text-black h5 tb-nomargin"
                  xid="span3"/>  
                <div class="text-muted" xid="div1"> 
                  <span xid="span6" class="text-danger">￥</span>  
                  <span xid="span8" bind-text="val(&quot;price&quot;)" class="h4 text-danger"/> 
                </div>  
                <div class="text-muted h6" xid="div3"> 
                  <span xid="span9"><![CDATA[库存:]]></span>  
                  <span bind-text="val(&quot;story&quot;)" xid="span1"/>  
                  <span xid="span20" bind-text="val(&quot;unitm&quot;)"><![CDATA[]]></span>  
                  <span bind-text="val(&quot;is&quot;)" xid="span11"/>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn x-blue btn-sm btn-only-icon pull-right addbtn" label="button"
                    xid="button1" icon="icon-android-add" onClick="addSpecBtnClick"> 
                    <i xid="i2" class="icon-android-add"/>  
                    <span xid="span7"/> 
                  </a>  
                  <input component="$UI/system/components/justep/input/input"
                    class="pull-right btn-sm sumbtn" xid="input1" bind-ref="ref(&quot;qty&quot;)"/>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-sm btn-only-icon pull-right subbtn" label="button"
                    xid="button6" icon="icon-android-remove" onClick="subSpecBtnClick"> 
                    <i xid="i1" class="icon-android-remove"/>  
                    <span xid="span18"/> 
                  </a> 
                </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
        <div class="x-col" xid="col11"> 
          <a component="$UI/system/components/justep/button/button" class="btn x-blue"
            label="确定" xid="button7" style="width:100%;" onClick="button7Click"> 
            <i xid="i3"/>  
            <span xid="span2">确定</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="left-bottom" xid="popOverType" anchor="typeBtn" dismissible="true"
    position="center" opacity="0.7"> 
    <div class="x-popOver-overlay" xid="div4" style="top:137px;"/>  
    <div class="x-popOver-content" xid="div7" style="padding-left:10px;width:100%;background-color:white;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9"> 
        <div class="x-col" xid="col15"> 
          <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group x-radio-group-vertical"
            xid="radioGroup1" bind-ref="$model.selectData.ref(&quot;type&quot;)" bind-itemset="TypeList"
            bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;title&quot;)"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10"> 
        <div class="x-col" xid="col18"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger"
            label="清除" xid="button3" style="width:100%;" onClick="button3Click"> 
            <i xid="i5"/>  
            <span xid="span13">清除</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col19"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-primary"
            label="确定" xid="button10" style="width:100%;" onClick="button10Click"> 
            <i xid="i10"/>  
            <span xid="span14">确定</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="left-bottom" xid="popOverLabel" style="background-color:white;width:100%;"
    opacity="0.7" anchor="typeBtn"> 
    <div class="x-popOver-overlay" xid="div17" style="top:137px;"/>  
    <div class="x-popOver-content" xid="div18" style="width:100%;background-color:white;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12"> 
        <div class="x-col" xid="col23"> 
          <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group x-radio-group-vertical"
            xid="radioGroup2" bind-ref="$model.selectData.ref(&quot;label&quot;)" bind-itemset="labelList"
            bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;title&quot;)"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11"> 
        <div class="x-col" xid="col22"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger"
            label="清除" xid="button11" style="width:100%;" onClick="button11Click"> 
            <i xid="i15"/>  
            <span xid="span39">清除</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col24"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-primary"
            label="确定" xid="button12" style="width:100%;" onClick="button12Click"> 
            <i xid="i14"/>  
            <span xid="span38">确定</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="left-bottom" xid="popOverSales" anchor="typeBtn" opacity="0.7" style="width:100%;"> 
    <div class="x-popOver-overlay" xid="div19" style="top:137px;"/>  
    <div class="x-popOver-content tb-sorting" xid="div20" style="background-color:white;width:100%;"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        data="salesList" xid="conditionList" dataItemAlias="conditionRow" style="background-color:white;"> 
        <ul class="x-list-template" xid="ul1"> 
          <li class="list-group-item" bind-css="{'current':conditionRow.val('fState')==1}"
            xid="li3" bind-click="li3Click"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right tb-liBtn"
              label="button" icon="icon-checkmark" xid="button13" style="background-color:transparent;"
              bind-visible=" val(&quot;val&quot;)=='1'"> 
              <i xid="i16" class="icon-checkmark text-danger"/>  
              <span xid="span40"/> 
            </a>  
            <span bind-text="val(&quot;title&quot;)" xid="span41"/> 
          </li> 
        </ul> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13"> 
        <div class="x-col" xid="col26"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger"
            label="清除" xid="button15" style="width:100%;" onClick="button15Click"> 
            <i xid="i17"/>  
            <span xid="span44">清除</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col25"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-primary"
            label="确定" xid="button14" style="width:100%;" onClick="button14Click"> 
            <i xid="i18"/>  
            <span xid="span45">确定</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
