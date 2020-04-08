<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"></column>
  <column name="sn" type="String" xid="xid2"></column>
  <column name="title" type="String" xid="xid3"></column>
  <column name="fb_actualtax" type="String" xid="xid4"></column>
  <column name="status" type="String" xid="xid5"></column>
  <column name="ctime" type="String" xid="xid6"></column>
  <column name="type" type="String" xid="xid7"></column></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="yData" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
   <column name="sn" type="String" xid="column2"></column>
   <column name="title" type="String" xid="column3"></column>
   <column name="fb_actualtax" type="String" xid="column4"></column>
   <column name="status" type="String" xid="column5"></column>
   <column name="ctime" type="String" xid="column6"></column>
   <column name="type" type="String" xid="column7"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityFeedbackInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="市场活动反馈"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">市场活动反馈</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="需反馈" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">需反馈</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="已反馈" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">已反馈</span> 
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
                  style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:48843/x5/UI2/v_/TheSaleEnterprise/ChannelCost/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div4"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i7"/>  
                      <span class="x-pull-down-label" xid="span9">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" style="background-color:white;"
                        data="pData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col4" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit4"> 
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit font-One" xid="output11"
                                    bind-ref="ref(&quot;sn&quot;)"/>  
                                  <a component="$UI/system/components/justep/button/button"
                                    class="btn btn-default4" label="常规促销" xid="button5"
                                    style="height:30px;" bind-text=' val("type")'> 
                                    <i xid="i6"/>  
                                    <span xid="span6" style="margin-top:-4px;display:block;">常规促销</span> 
                                  </a> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col5" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit5"> 
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output12" bind-ref="ref(&quot;title&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12 border-Two" xid="col3"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit3"> 
                                  <label class="x-label" xid="label6" style="x;">总金额：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output9" bind-ref="ref(&quot;fb_actualtax&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col7"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit6"> 
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output10" bind-ref="ref(&quot;status&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col6"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit10"> 
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output13" bind-ref="ref(&quot;ctime&quot;)"
                                    style="text-align:right;"/> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div6"> 
                      <span class="x-pull-up-label" xid="span8">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-content x-scroll-view" xid="content2" _xid="C7DF23A047C000015332AA703E904750"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div3"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i5"/>  
                      <span class="x-pull-down-label" xid="span7">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div2"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list1" style="background-color:white;"
                        data="yData"> 
                        <ul class="x-list-template" xid="listTemplateUl1"> 
                          <li xid="li1" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row2">
   <div class="col col-xs-12" xid="col8" style="font-weight:bold;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit8">
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output5" bind-ref='ref("sn")'></div>
     <a component="$UI/system/components/justep/button/button" class="btn btn-default4" label="常规促销" xid="button4" style="height:30px;" bind-text=' val("type")'>
      <i xid="i4"></i>
      <span xid="span3" style="margin-top:-4px;display:block;">常规促销</span></a> </div> </div> 
   <div class="col col-xs-12" xid="col9" style="font-weight:bold;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7">
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("title")'></div></div> </div> 
   <div class="col col-xs-12 border-Two" xid="col10">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2">
     <label class="x-label" xid="label1" style="x;">总金额：</label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("fb_actualtax")'></div></div> </div> 
   <div class="col col-xs-6" xid="col2">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit1">
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("status")'></div></div> </div> 
   <div class="col col-xs-6" xid="col1">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit9">
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("ctime")' style="text-align:right;"></div></div> </div> </div></li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div1"> 
                      <span class="x-pull-up-label" xid="span5">加载更多...</span> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
