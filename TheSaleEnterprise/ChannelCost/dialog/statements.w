<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;李四股份有限公司&quot;,&quot;col2&quot;:&quot;C20180219&quot;,&quot;col3&quot;:&quot;￥50002.00&quot;,&quot;col4&quot;:&quot;￥0.00&quot;,&quot;col5&quot;:&quot;￥0.00&quot;,&quot;col6&quot;:&quot;￥50002.00&quot;,&quot;col7&quot;:&quot;￥0.00&quot;,&quot;col8&quot;:&quot;&quot;,&quot;col9&quot;:&quot;&quot;,&quot;co20&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;李四股份有限公司&quot;,&quot;col2&quot;:&quot;C20180219&quot;,&quot;col3&quot;:&quot;￥2222.00&quot;,&quot;col4&quot;:&quot;￥0.00&quot;,&quot;col5&quot;:&quot;￥0.00&quot;,&quot;col6&quot;:&quot;￥2222.00&quot;,&quot;col7&quot;:&quot;￥0.00&quot;,&quot;col8&quot;:&quot;&quot;,&quot;col9&quot;:&quot;&quot;}]</data>
  <column name="id" type="String" xid="column9"></column>
  <column name="title" type="String" xid="column10"></column>
  <column name="sn" type="String" xid="column1"></column>
  <column name="ypf" type="String" xid="column2"></column>
  <column name="yhx" type="String" xid="column3"></column>
  <column name="whx_sqz" type="String" xid="column4"></column>
  <column name="whx_wsq" type="String" xid="column5"></column>
  <column name="byhx" type="String" xid="column6"></column>
  </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/competingGoodsNew.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityApprovalInfoCheckInfo.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="经销商市场费用对账单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">经销商市场费用对账单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF78904F900001988700701AF31363"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" data="infoData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" style="background-color:white;" bind-click="li2Click"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row mar2"
                      xid="row1"> 
                      <div class="x-col" xid="col17"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-12" xid="col15" style="margin:auto;height:30px;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit11"> 
                              <label class="x-label" xid="label12"><![CDATA[]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-One" xid="output22" bind-ref='ref("title")'/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col1"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit13"> 
                              <label class="x-label font-Three" xid="label14"><![CDATA[编号：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-Three" xid="output24" bind-ref='ref("sn")'/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col14"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit6"> 
                              <label class="x-label" xid="label8" style="width:135px;"><![CDATA[已批复：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output18" bind-ref='ref("ypf")' style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col2"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit10"> 
                              <label class="x-label" xid="label6" style="width:135px;"><![CDATA[已核销：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output19" bind-ref='ref("yhx")' style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col3" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit1"> 
                              <label class="x-label" xid="label1" style="width:135px;"><![CDATA[未核销：（申请中）]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output1" bind-ref='ref("whx_sqz")' style="text-align:right;"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col4" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit2"> 
                              <label class="x-label" xid="label3" style="width:135px;"><![CDATA[未核销：（未申请）]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output2" bind-ref='ref("whx_wsq")' style="text-align:right;"/>
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col5" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit3"> 
                              <label class="x-label" xid="label4" style="width:135px;"><![CDATA[不予核销：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-four" xid="output3" bind-ref='ref("byhx")' style="text-align:right;"/>
                            </div> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
