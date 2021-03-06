<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="oid"> 
      <column name="oid" type="String" xid="xid11"/>  
      <column name="jxs_id" type="String" xid="xid1"/>  
      <column name="oid" type="String" xid="xid1"/>  
      <column name="jxs_sn" type="String" xid="xid2"/>  
      <column name="jxs_title" type="String" xid="xid3"/>  
      <column name="sn" type="String" xid="xid4"/>  
      <column name="dhsl" type="String" xid="xid5"/>  
      <column name="yszje" type="String" xid="xid6"/>  
      <column name="fh_status" type="String" xid="xid7"/>  
      <column name="sh_status" type="String" xid="xid8"/>  
      <column name="order_status" type="String" xid="xid9"/>  
      <column name="sqrq" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="spData" idColumn="oid"> 
      <column name="oid" type="String" xid="column1"/>  
      <column name="jxs_id" type="String" xid="column1"/>  
      <column name="jxs_sn" type="String" xid="column2"/>  
      <column name="jxs_title" type="String" xid="column3"/>  
      <column name="sn" type="String" xid="column4"/>  
      <column name="dhsl" type="String" xid="column5"/>  
      <column name="yszje" type="String" xid="column6"/>  
      <column name="fh_status" type="String" xid="column7"/>  
      <column name="sh_status" type="String" xid="column8"/>  
      <column name="order_status" type="String" xid="column9"/>  
      <column name="sqrq" type="String" xid="column10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dfData" idColumn="oid"> 
      <column name="oid" type="String" xid="column11"/>  
      <column name="jxs_id" type="String" xid="column11"/>  
      <column name="jxs_sn" type="String" xid="column12"/>  
      <column name="jxs_title" type="String" xid="column13"/>  
      <column name="sn" type="String" xid="column14"/>  
      <column name="dhsl" type="String" xid="column15"/>  
      <column name="yszje" type="String" xid="column16"/>  
      <column name="fh_status" type="String" xid="column17"/>  
      <column name="sh_status" type="String" xid="column18"/>  
      <column name="order_status" type="String" xid="column19"/>  
      <column name="sqrq" type="String" xid="column20"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dsData" idColumn="oid"> 
      <column name="oid" type="String" xid="column21"/>  
      <column name="jxs_id" type="String" xid="column21"/>  
      <column name="jxs_sn" type="String" xid="column22"/>  
      <column name="jxs_title" type="String" xid="column23"/>  
      <column name="sn" type="String" xid="column24"/>  
      <column name="dhsl" type="String" xid="column25"/>  
      <column name="yszje" type="String" xid="column26"/>  
      <column name="fh_status" type="String" xid="column27"/>  
      <column name="sh_status" type="String" xid="column28"/>  
      <column name="order_status" type="String" xid="column29"/>  
      <column name="sqrq" type="String" xid="column30"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="ysData" idColumn="oid"> 
      <column name="oid" type="String" xid="column31"/>  
      <column name="jxs_id" type="String" xid="column31"/>  
      <column name="jxs_sn" type="String" xid="column32"/>  
      <column name="jxs_title" type="String" xid="column33"/>  
      <column name="sn" type="String" xid="column34"/>  
      <column name="dhsl" type="String" xid="column35"/>  
      <column name="yszje" type="String" xid="column36"/>  
      <column name="fh_status" type="String" xid="column37"/>  
      <column name="sh_status" type="String" xid="column38"/>  
      <column name="order_status" type="String" xid="column39"/>  
      <column name="sqrq" type="String" xid="column40"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="goods_id"> 
      <column label="商品ID" name="goods_id" type="String" xid="xid18"/>  
      <column name="goods_name" type="String" xid="xid19"/>  
      <column name="goods_img" type="String" xid="xid20"/>  
      <column name="goods_inventory" type="String" xid="xid21"/>  
      <column name="goods_sn" type="String" xid="xid22"/>  
      <column name="show_name" type="String" xid="xid26"/>  
      <column name="specification_id" type="String" xid="xid33"/>  
      <column name="goods_num" type="String" xid="xid34"/>  
      <column name="specification" type="String" xid="xid35"/> 
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="selectDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"
    onReceive="newDialogReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="销售订单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">销售订单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="110"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11"/>  
            <div class="x-col" xid="col12"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="下经销商订单" xid="button4" style="width:100%;" target="content4"
                onClick="button4Click"> 
                <i xid="i5"/>  
                <span xid="span6">下经销商订单</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div>  
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="全部" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">全部</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="审批中" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">审批中</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="待发货" xid="button14" target="content7"> 
              <i xid="i16"/>  
              <span xid="span24">待发货</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="待收货" xid="button15" target="content8"> 
              <i xid="i17"/>  
              <span xid="span25">待收货</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="已收货" xid="button16" target="content9"> 
              <i xid="i18"/>  
              <span xid="span26">已收货</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
                  style="top: 0px; bottom: 0px; background-size: cover;"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i12"/>  
                      <span class="x-pull-down-label" xid="span8">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" style="background-color:white;"
                        data="orderData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col2" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit1"> 
                                  <label class="x-label" xid="label5" style="width:80px;font-weight:bold;">经销商：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output13" bind-ref="ref(&quot;jxs_title&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col1" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit2"> 
                                  <label class="x-label" xid="label6" style="width:80px;font-weight:bold;">订单号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output14" bind-ref="ref(&quot;sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col7"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit3"> 
                                  <label class="x-label" xid="label7" style="width:80px;">订货数量：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output15" bind-ref="ref(&quot;dhsl&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col6"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit4"> 
                                  <label class="x-label" xid="label8" style="width:80px;">订货金额：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output16" bind-ref="ref(&quot;yszje&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col5"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit5"> 
                                  <label class="x-label" xid="label9" style="width:80px;">发货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output17" bind-ref="ref(&quot;fh_status&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col4"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit6"> 
                                  <label class="x-label" xid="label10" style="width:80px;">收货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output18" bind-ref="ref(&quot;sh_status&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col3"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output12" bind-ref="ref(&quot;order_status&quot;)"/> 
                              </div>  
                              <div class="col col-xs-6" xid="col8" style="padding:0px;"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output19" bind-ref="ref(&quot;sqrq&quot;)"/> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div4"> 
                      <span class="x-pull-up-label" xid="span17">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-content x-scroll-view" xid="content10"
                  _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div1"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i19"/>  
                      <span class="x-pull-down-label" xid="span28">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div2"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list1" style="background-color:white;"
                        data="spData"> 
                        <ul class="x-list-template" xid="listTemplateUl1"> 
                          <li xid="li1" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row2"> 
                              <div class="col col-xs-12" xid="col17" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit8"> 
                                  <label class="x-label" xid="label1" style="width:80px;font-weight:bold;">经销商：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output8" bind-ref="ref(&quot;jxs_title&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col19" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit10"> 
                                  <label class="x-label" xid="label2" style="width:80px;font-weight:bold;">订单号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output5" bind-ref="ref(&quot;sn&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col14"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit9"> 
                                  <label class="x-label" xid="label3" style="width:80px;">订货数量：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output6" bind-ref="ref(&quot;dhsl&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col10"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit12"> 
                                  <label class="x-label" xid="label4" style="width:80px;">订货金额：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output3" bind-ref="ref(&quot;yszje&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col16"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit11"> 
                                  <label class="x-label" xid="label11" style="width:80px;">发货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output4" bind-ref="ref(&quot;fh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col15"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit7"> 
                                  <label class="x-label" xid="label12" style="width:80px;">收货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output1" bind-ref="ref(&quot;sh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col18"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output7" bind-ref="ref(&quot;order_status&quot;)"/>
                              </div>  
                              <div class="col col-xs-6" xid="col9" style="padding:0px;"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output2" bind-ref="ref(&quot;sqrq&quot;)"/>
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div>
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div3"> 
                      <span class="x-pull-up-label" xid="span27">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content" xid="content7"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel5"> 
                <div class="x-panel-content x-scroll-view" xid="content11"
                  _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView3"> 
                    <div class="x-content-center x-pull-down container" xid="div7"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i20"/>  
                      <span class="x-pull-down-label" xid="span30">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div8"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list3" style="background-color:white;"
                        data="dfData"> 
                        <ul class="x-list-template" xid="listTemplateUl3"> 
                          <li xid="li3" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row4"> 
                              <div class="col col-xs-12" xid="col25" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit14"> 
                                  <label class="x-label" xid="label13" style="width:80px;font-weight:bold;">经销商：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output24" bind-ref="ref(&quot;jxs_title&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col27" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit16"> 
                                  <label class="x-label" xid="label14" style="width:80px;font-weight:bold;">订单号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output21" bind-ref="ref(&quot;sn&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col22"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit15"> 
                                  <label class="x-label" xid="label15" style="width:80px;">订货数量：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output22" bind-ref="ref(&quot;dhsl&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col21"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit18"> 
                                  <label class="x-label" xid="label16" style="width:80px;">订货金额：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output11" bind-ref="ref(&quot;yszje&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col24"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit17"> 
                                  <label class="x-label" xid="label17" style="width:80px;">发货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output20" bind-ref="ref(&quot;fh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col23"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit13"> 
                                  <label class="x-label" xid="label18" style="width:80px;">收货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output9" bind-ref="ref(&quot;sh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col26"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output23" bind-ref="ref(&quot;order_status&quot;)"/>
                              </div>  
                              <div class="col col-xs-6" xid="col20" style="padding:0px;"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output10" bind-ref="ref(&quot;sqrq&quot;)"/>
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div>
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div9"> 
                      <span class="x-pull-up-label" xid="span29">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content" xid="content8"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel6"> 
                <div class="x-panel-content x-scroll-view" xid="content12"
                  _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView4"> 
                    <div class="x-content-center x-pull-down container" xid="div10"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i21"/>  
                      <span class="x-pull-down-label" xid="span32">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div11"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list4" style="background-color:white;"
                        data="dsData"> 
                        <ul class="x-list-template" xid="listTemplateUl4"> 
                          <li xid="li4" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row5"> 
                              <div class="col col-xs-12" xid="col33" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit20"> 
                                  <label class="x-label" xid="label19" style="width:80px;font-weight:bold;">经销商：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output32" bind-ref="ref(&quot;jxs_title&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col35" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit22"> 
                                  <label class="x-label" xid="label20" style="width:80px;font-weight:bold;">订单号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output29" bind-ref="ref(&quot;sn&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col30"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit21"> 
                                  <label class="x-label" xid="label21" style="width:80px;">订货数量：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output30" bind-ref="ref(&quot;dhsl&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col29"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit24"> 
                                  <label class="x-label" xid="label22" style="width:80px;">订货金额：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output27" bind-ref="ref(&quot;yszje&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col32"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit23"> 
                                  <label class="x-label" xid="label23" style="width:80px;">发货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output28" bind-ref="ref(&quot;fh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col31"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit19"> 
                                  <label class="x-label" xid="label24" style="width:80px;">收货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output25" bind-ref="ref(&quot;sh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col34"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output31" bind-ref="ref(&quot;order_status&quot;)"/>
                              </div>  
                              <div class="col col-xs-6" xid="col28" style="padding:0px;"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output26" bind-ref="ref(&quot;sqrq&quot;)"/>
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div>
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div12"> 
                      <span class="x-pull-up-label" xid="span31">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content" xid="content9"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel7"> 
                <div class="x-panel-content x-scroll-view" xid="content13"
                  _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView5"> 
                    <div class="x-content-center x-pull-down container" xid="div13"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i22"/>  
                      <span class="x-pull-down-label" xid="span34">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div14"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list5" style="background-color:white;"
                        data="ysData"> 
                        <ul class="x-list-template" xid="listTemplateUl5"> 
                          <li xid="li5" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row6"> 
                              <div class="col col-xs-12" xid="col41" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit26"> 
                                  <label class="x-label" xid="label25" style="width:80px;font-weight:bold;">经销商：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output40" bind-ref="ref(&quot;jxs_title&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col43" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit28"> 
                                  <label class="x-label" xid="label26" style="width:80px;font-weight:bold;">订单号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output37" bind-ref="ref(&quot;sn&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col38"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit27"> 
                                  <label class="x-label" xid="label27" style="width:80px;">订货数量：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output38" bind-ref="ref(&quot;dhsl&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col37"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit30"> 
                                  <label class="x-label" xid="label28" style="width:80px;">订货金额：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output35" bind-ref="ref(&quot;yszje&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col40"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit29"> 
                                  <label class="x-label" xid="label29" style="width:80px;">发货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output36" bind-ref="ref(&quot;fh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col39"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit25"> 
                                  <label class="x-label" xid="label30" style="width:80px;">收货状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output33" bind-ref="ref(&quot;sh_status&quot;)"/>
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col42"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output39" bind-ref="ref(&quot;order_status&quot;)"/>
                              </div>  
                              <div class="col col-xs-6" xid="col36" style="padding:0px;"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output34" bind-ref="ref(&quot;sqrq&quot;)"/>
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div>
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div15"> 
                      <span class="x-pull-up-label" xid="span33">加载更多...</span> 
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
  </resource>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNewInfo.w" forceRefreshOnOpen="true"
    onClose="newDialogClose"/>
</div>
