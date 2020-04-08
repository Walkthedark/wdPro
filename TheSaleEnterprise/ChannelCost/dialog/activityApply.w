<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="cuser" type="String" xid="xid2"/>  
      <column name="ctime" type="String" xid="xid3"/>  
      <column name="puser" type="String" xid="xid4"/>  
      <column name="ptime" type="String" xid="xid5"/>  
      <column name="title" type="String" xid="xid6"/>  
      <column name="jxs_id" type="String" xid="xid9"/>  
      <column name="status" type="String" xid="xid7"/>  
      <column name="brief" type="String" xid="xid8"/>  
      <column name="sn" type="String" xid="xid10"/>  
      <column name="statename" type="String" xid="xid11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="nData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="cuser" type="String" xid="column2"/>  
      <column name="ctime" type="String" xid="column3"/>  
      <column name="puser" type="String" xid="column4"/>  
      <column name="ptime" type="String" xid="column5"/>  
      <column name="title" type="String" xid="column6"/>  
      <column name="jxs_id" type="String" xid="column7"/>  
      <column name="status" type="String" xid="column8"/>  
      <column name="brief" type="String" xid="column9"/>  
      <column name="sn" type="String" xid="column10"/>  
      <column name="statename" type="String" xid="xid12"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="rData" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="cuser" type="String" xid="column12"/>  
      <column name="ctime" type="String" xid="column13"/>  
      <column name="puser" type="String" xid="column14"/>  
      <column name="ptime" type="String" xid="column15"/>  
      <column name="title" type="String" xid="column16"/>  
      <column name="jxs_id" type="String" xid="column17"/>  
      <column name="status" type="String" xid="column18"/>  
      <column name="brief" type="String" xid="column19"/>  
      <column name="sn" type="String" xid="column20"/>  
      <column name="statename" type="String" xid="xid13"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="市场活动申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">市场活动申请</div>  
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
              label="常规" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">常规</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="非常规" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">非常规</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="进场" xid="button14" target="content7"> 
              <i xid="i16"/>  
              <span xid="span24">进场</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false" wrap="false" slidable="true"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel6"> 
                <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750"
                  style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:48843/x5/UI2/v_/TheSaleEnterprise/ChannelCost/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i7"/>  
                      <span class="x-pull-down-label" xid="span10">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" style="padding-top:10px;background-color:white;"
                        data="pData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row3"> 
                              <div class="col col-xs-8" xid="col20" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit13"> 
                                  <label class="x-label" xid="label7"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit font-One" xid="output5"
                                    bind-ref="ref(&quot;jxs_id&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-4" xid="col17" style="text-align:right;"> 
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-primary" label="流程图" xid="button6"
                                  bind-visible=" val(&quot;col3&quot;) != '草稿'" icon="dataControl dataControl-parameterreplace"
                                  onClick="button7Click"> 
                                  <i xid="i8" class="dataControl dataControl-parameterreplace"/>  
                                  <span xid="span9">流程图</span> 
                                </a> 
                              </div>  
                              <div class="col col-xs-12" xid="col19" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit12"> 
                                  <label class="x-label" xid="label6">编号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output6" bind-ref="ref(&quot;sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col23"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit11"> 
                                  <label class="x-label" xid="label8" style="x;">状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output7" bind-ref="ref(&quot;statename&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col18" style="text-align:right;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit17"> 
                                  <label class="x-label" xid="label5"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output8" bind-ref="ref(&quot;ctime&quot;)"/> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div4"> 
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
                <div class="x-panel-content x-scroll-view" xid="content2" _xid="C7DF23A047C000015332AA703E904750"
                  style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:48843/x5/UI2/v_/TheSaleEnterprise/ChannelCost/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div3"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i5"/>  
                      <span class="x-pull-down-label" xid="span7">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div2"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list1" style="padding-top:10px;background-color:white;"
                        data="nData"> 
                        <ul class="x-list-template" xid="listTemplateUl1"> 
                          <li xid="li1" class="border-Two"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-8" xid="col5" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit1"> 
                                  <label class="x-label" xid="label3"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit font-One" xid="output3"
                                    bind-ref="ref(&quot;jxs_id&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-4" xid="col2" style="text-align:right;"> 
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-primary" label="流程图" xid="button5"
                                  bind-visible=" val(&quot;col3&quot;) != '草稿'" icon="dataControl dataControl-parameterreplace"
                                  onClick="button8Click"> 
                                  <i xid="i6" class="dataControl dataControl-parameterreplace"/>  
                                  <span xid="span6">流程图</span> 
                                </a> 
                              </div>  
                              <div class="col col-xs-12" xid="col4" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit4"> 
                                  <label class="x-label" xid="label2">编号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output4" bind-ref="ref(&quot;sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col3"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit3"> 
                                  <label class="x-label" xid="label4" style="x;">状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output1" bind-ref="ref(&quot;statename&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col1" style="text-align:right;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit2"> 
                                  <label class="x-label" xid="label1"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output2" bind-ref="ref(&quot;ctime&quot;)"/> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
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
            <div class="x-contents-content" xid="content7"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel5"> 
                <div class="x-panel-content x-scroll-view" xid="content11"
                  _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:48135/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView3"> 
                    <div class="x-content-center x-pull-down container" xid="div7"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i20"/>  
                      <span class="x-pull-down-label" xid="span30">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div8"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list3" style="padding-top:10px;background-color:white;"
                        data="rData"> 
                        <ul class="x-list-template" xid="listTemplateUl3"> 
                          <li xid="li3" class="border-Two"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row2"> 
                              <div class="col col-xs-8" xid="col10" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit5"> 
                                  <label class="x-label" xid="label11"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit font-One" xid="output11"
                                    bind-ref="ref(&quot;jxs_id&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-4" xid="col7" style="text-align:right;"> 
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-primary" label="流程图" xid="button7"
                                  bind-visible=" val(&quot;col3&quot;) != '草稿'" icon="dataControl dataControl-parameterreplace"
                                  onClick="button6Click"> 
                                  <i xid="i9" class="dataControl dataControl-parameterreplace"/>  
                                  <span xid="span11">流程图</span> 
                                </a> 
                              </div>  
                              <div class="col col-xs-12" xid="col9" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit8"> 
                                  <label class="x-label" xid="label10">编号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output12" bind-ref="ref(&quot;sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col8"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit7"> 
                                  <label class="x-label" xid="label12" style="x;">状态：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output9" bind-ref="ref(&quot;statename&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col6" style="text-align:right;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit6"> 
                                  <label class="x-label" xid="label9"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output10" bind-ref="ref(&quot;ctime&quot;)"/> 
                                </div> 
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
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" position="top" style="height:100%;width:100%;"
    opacity="1"> 
    <div class="x-popOver-overlay" xid="div10"/>  
    <div class="x-popOver-content" xid="div11" style="height:100%;width:100%;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2">
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
            xid="titleBar1" title="流程图"> 
            <div class="x-titlebar-left" xid="left1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
                label="返回" xid="button4" onClick="{&quot;operation&quot;:&quot;popOver1.hide&quot;}"> 
                <i xid="i4"/>  
                <span xid="span3">返回</span>
              </a> 
            </div>  
            <div class="x-titlebar-title" xid="title1">流程图</div>  
            <div class="x-titlebar-right reverse" xid="right1"/>
          </div>
        </div>  
        <div class="x-panel-content" xid="content1">
          <iframe src="" id="iframeMap" height="100%" width="100%"/>
        </div>  
        <div class="x-panel-bottom" xid="bottom1"/>
      </div>
    </div> 
  </div> 
</div>
