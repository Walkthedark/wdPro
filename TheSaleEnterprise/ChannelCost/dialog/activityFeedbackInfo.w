<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="jxs" type="String" xid="column10"/>  
      <column name="net" type="String" xid="column1"/>  
      <column name="product" type="String" xid="column2"/>  
      <column name="start" type="String" xid="column3"/>  
      <column name="end" type="String" xid="column4"/>  
      <column name="feetype" type="String" xid="column5"/>  
      <column name="yjsjtrfy" type="String" xid="column6"/>  
      <column name="col8" type="String" xid="column6"/>  
      <column name="fb_shijitourufeiyong" type="String" xid="column7"/>  
      <column name="totalExpectedSales" type="String" xid="column8"/>  
      <column name="fb_shijixiaoliang" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid3"/>  
      <column name="type" type="String" xid="xid4"/>  
      <column name="product_type" type="String" xid="xid5"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cData" idColumn="title" autoNew="true"> 
      <column name="title" type="String" xid="xid2"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/competingGoodsNew.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityApprovalInfoCheckInfo.w"
    forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="网点市场活动反馈明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">网点市场活动反馈明细</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48"> 
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row3" style="background-color:white;"> 
            <div class="x-col" xid="col12" style="text-align:center;"> 
              <label xid="label2" class="font-One" id="activityFeedbackInfoTitle"><![CDATA[]]></label> 
            </div> 
          </div> 
        </div>  
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
                              class="x-label-edit x-label30" xid="labelEdit11"> 
                              <label class="x-label" xid="label12" style="width:95px;"><![CDATA[经销商名称：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output22" bind-ref="ref(&quot;jxs&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col1"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit13"> 
                              <label class="x-label" xid="label14" style="width:95px;"><![CDATA[网点名称：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output24" bind-ref="ref(&quot;net&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col14"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit6"> 
                              <label class="x-label" xid="label8" style="width:95px;"><![CDATA[产品名称：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output18" bind-ref="ref(&quot;product&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col2"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit10"> 
                              <label class="x-label" xid="label6" style="width:95px;"><![CDATA[活动时间：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output19" bind-ref="ref(&quot;start&quot;)"
                                onRender="output19Render"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col3" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit1"> 
                              <label class="x-label" xid="label1" style="width:95px;"><![CDATA[费用类型：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-four" xid="output1" bind-ref="ref(&quot;feetype&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col4" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit2"> 
                              <label class="x-label" xid="label3" style="width:95px;"><![CDATA[预计金额：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-four" xid="output2" bind-ref="ref(&quot;yjsjtrfy&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col5" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit3"> 
                              <label class="x-label" xid="label4" style="width:95px;"><![CDATA[实际金额：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-four" xid="output3" bind-ref="ref(&quot;fb_shijitourufeiyong&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col6" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit4"> 
                              <label class="x-label" xid="label5" style="width:95px;"><![CDATA[预计销量：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-four" xid="output4" bind-ref="ref(&quot;totalExpectedSales&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col7" style="border-left:1px solid #f0f0f0;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit5"> 
                              <label class="x-label" xid="label7" style="width:95px;"><![CDATA[实际销量：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-four" xid="output5" bind-ref="ref(&quot;fb_shijixiaoliang&quot;)"/> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityApprovalInfoCheckInfo.w"></span></div>
