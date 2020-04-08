<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="orderData" idColumn="ypz"> 
      <column name="ypz" type="String" xid="xid1"/>  
      <column name="yhx" type="String" xid="xid2"/>  
      <column name="hxz" type="String" xid="xid3"/>  
      <column name="byhx" type="String" xid="xid4"/>  
      <column name="wsq" type="String" xid="xid5"/>  
      <column name="yzf" type="String" xid="xid6"/>  
      <column name="dzf" type="String" xid="xid7"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="detailDate" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="sn" type="String" xid="column2"/>  
      <column name="title" type="String" xid="column3"/>  
      <column name="ypz" type="String" xid="column4"/>  
      <column name="yhx" type="String" xid="column1"/>  
      <column name="byhx" type="String" xid="column2"/>  
      <column name="hxz" type="String" xid="column3"/>  
      <column name="wsq" type="String" xid="xid8"/>  
      <column name="yzf" type="String" xid="xid9"/>  
      <column name="dzf" type="String" xid="xid10"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/orderQueryInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="经销商对账单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">经销商对账单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="96"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="汇总" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">汇总</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="明细" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">明细</span> 
            </a> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row3"> 
            <div class="x-col" xid="col11" style="text-align:right;"> 
              <span xid="span3"><![CDATA[下述金额为含税金额：人民币元]]></span> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-content" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
                  style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list2" style="background-color:white;" data="orderData"> 
                    <ul class="x-list-template" xid="listTemplateUl2"> 
                      <li xid="li2" class="border-Two"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row row-padding" xid="row1"> 
                          <div class="col col-xs-12" xid="col2"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit1"> 
                              <label class="x-label" xid="label5" style="width:8em;"><![CDATA[已批准：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output13" bind-ref="ref(&quot;ypz&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col1"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit2"> 
                              <label class="x-label" xid="label6" style="width:8em;"><![CDATA[已核销：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output14" bind-ref="ref(&quot;yhx&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col7"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit3"> 
                              <label class="x-label" xid="label7" style="width:8em;"><![CDATA[未核销-申请中：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output15" bind-ref="ref(&quot;hxz&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col6"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit4"> 
                              <label class="x-label" xid="label8" style="width:8em;"><![CDATA[未核销-未申请：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output16" bind-ref="ref(&quot;wsq&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col5"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit5"> 
                              <label class="x-label" xid="label9" style="width:8em;"><![CDATA[不予核销：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output17" bind-ref="ref(&quot;byhx&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col4"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit6"> 
                              <label class="x-label" xid="label10" style="width:8em;"><![CDATA[已支付：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output18" bind-ref="ref(&quot;yzf&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col3"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit13"> 
                              <label class="x-label" xid="label1" style="width:8em;"><![CDATA[待支付：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output1" bind-ref="ref(&quot;dzf&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div> 
                        </div> 
                      </li> 
                    </ul> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-content" xid="content2" _xid="C7DF23A047C000015332AA703E904750"
                  style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list1" style="background-color:white;" data="detailDate"> 
                    <ul class="x-list-template" xid="listTemplateUl1"> 
                      <li xid="li1" class="border-Two"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row row-padding" xid="row4" style="margin:0px;"> 
                          <div class="col col-xs-12" xid="col12"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit7"> 
                              <label class="x-label font-One" xid="label15" style="width:8em;"><![CDATA[活动编号：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-One" xid="output9" bind-ref="ref(&quot;sn&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col13"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit8"> 
                              <label class="x-label font-One" xid="label16" style="width:8em;"><![CDATA[活动主题：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-One" xid="output10" bind-ref="ref(&quot;title&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col18"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit15"> 
                              <label class="x-label" xid="label2" style="width:8em;">已批准：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output7" bind-ref="ref(&quot;ypz&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col20"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit17"> 
                              <label class="x-label" xid="label3" style="width:8em;">已核销：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output5" bind-ref="ref(&quot;yhx&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col15"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit16"> 
                              <label class="x-label" xid="label4" style="width:8em;">未核销-申请中：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output6" bind-ref="ref(&quot;hxz&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col14"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit19"> 
                              <label class="x-label" xid="label11" style="width:8em;">未核销-未申请：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output3" bind-ref="ref(&quot;wsq&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col17"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit18"> 
                              <label class="x-label" xid="label12" style="width:8em;">不予核销：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output4" bind-ref="ref(&quot;byhx&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col16"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit14"> 
                              <label class="x-label" xid="label13" style="width:8em;">已支付：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output2" bind-ref="ref(&quot;yzf&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col19"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit20"> 
                              <label class="x-label" xid="label14" style="width:8em;">待支付：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output8" bind-ref="ref(&quot;dzf&quot;)"
                                style="text-align:right;"/> 
                            </div> 
                          </div> 
                        </div> 
                      </li> 
                    </ul> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/> 
</div>
