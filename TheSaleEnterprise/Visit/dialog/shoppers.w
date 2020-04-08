<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:74px;left:167px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="bgsdg" idColumn="id" onCustomRefresh="bgsdgCustomRefresh"> 
      <column label="导购员id" name="id" type="String" xid="xid1"></column>
  <column label="姓名" name="xm" type="String" xid="xid4"></column>
  <column label="岗位类型" name="gwlx" type="String" xid="xid5"></column>
  <column label="联系方式" name="lxfs" type="String" xid="xid6"></column>
  <column label="目前状态" name="mqzt" type="String" xid="xid7"></column>
  <column label="在岗记录" name="zgjl" type="String" xid="xid8"></column>
  <column name="workNumber" type="String" xid="xid2"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="jxsdg" idColumn="id" onCustomRefresh="jxsdgCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"></column>
  <column label="网点id" name="net_id" type="String" xid="column2"></column>
  <column label="网点" name="net" type="String" xid="xid9"></column>
  <column label="导购编号" name="dg_id" type="String" xid="column3"></column>
  <column label="姓名" name="xm" type="String" xid="column4"></column>
  <column label="岗位类型" name="gwlx" type="String" xid="column5"></column>
  <column label="联系方式" name="lxfs" type="String" xid="column6"></column>
  <column label="目前状态" name="mqzt" type="String" xid="column7"></column>
  <column label="在岗记录" name="zgjl" type="String" xid="column8"></column></div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="outDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/outGrid.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="InspectionDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/shopInspection.w" forceRefreshOnOpen="true"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="导购员在岗检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购员在岗检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="本公司导购" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">本公司导购</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="经销商导购" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">经销商导购</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-top" xid="top2"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row2" style="background-color:white;"> 
                    <div class="x-col" xid="col8" style="text-align:center;"> 
                      <span xid="span6"><![CDATA[]]></span> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
                  style="bottom: 0px; background-size: cover; background-image: url(http://localhost:42772/x5/UI2/v_/TheSaleEnterprise/Visit/none);"> 
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
                        data="bgsdg"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two"> 
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row4"> 
                              <div class="x-col x-col-25" xid="col12" style="margin:auto;text-align:center;"> 
                                <img src=" " alt="" xid="image1" style="width:80px;height:80px;"
                                  bind-attr-src=" val(&quot;img&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col13"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row3" style="margin-left:10px;"> 
                                  <div class="col col-xs-12" xid="col9" style="text-align:center;"> 
                                    <label xid="label3" bind-text="ref(&quot;col2&quot;)"><![CDATA[姓名]]></label>  
                                    <span xid="span7" bind-text='ref("xm")'/> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col10"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit1"> 
                                      <label class="x-label" xid="label4" style="width:80px;"><![CDATA[班次：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output7" bind-ref="ref(&quot;col4&quot;)"/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col11"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit2"> 
                                      <label class="x-label" xid="label5" style="width:80px;"><![CDATA[工牌号：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output8" bind-ref='ref("workNumber")'/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col15"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit3"> 
                                      <label class="x-label" xid="label6" style="width:80px;"><![CDATA[联系方式：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output9" bind-ref="ref(&quot;lxfs&quot;)"/> 
                                    </div> 
                                  </div> 
                                </div> 
                              </div> 
                            </div>  
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row6"> 
                              <div class="x-col" xid="col16"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row7"> 
                                  <div class="col col-xs-12" xid="col20" style="margin:0px;padding:0px;"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit" xid="labelEdit4"> 
                                      <label class="x-label" xid="label7" style="width:5.7em;"><![CDATA[检查次数：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output10" bind-ref="ref(&quot;col7&quot;)"/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col21" style="margin:0px;padding:0px;"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit" xid="labelEdit5"> 
                                      <label class="x-label" xid="label8" style="width:5.7em"><![CDATA[脱岗次数：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output11" bind-ref="ref(&quot;col8&quot;)"/> 
                                    </div> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="x-col" xid="col17"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row8"> 
                                  <div class="col col-xs-12" xid="col24" style="margin:0px;padding:0px;"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit" xid="labelEdit7"> 
                                      <label class="x-label" xid="label9" style="width:5.7em"><![CDATA[在岗次数：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output12" bind-ref='ref("zgjl")'/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col23" style="margin:0px;padding:0px;"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit" xid="labelEdit6"> 
                                      <label class="x-label" xid="label10" style="width:5.7em"><![CDATA[在岗率：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output13" bind-ref="ref(&quot;col10&quot;)"/> 
                                    </div> 
                                  </div> 
                                </div> 
                              </div>  
                              <div xid="col19" style="text-align:center;padding-left:3px;padding-right:3px;"> 
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-default" label="在岗检查" xid="button4"
                                  bind-disable=" val(&quot;col11&quot;) == 0" style="margin-top:20px;"
                                  onClick="button4Click"> 
                                  <i xid="i4"/>  
                                  <span xid="span19">在岗检查</span>
                                </a>
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
                <div class="x-panel-top" xid="top4" height="48"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row5"> 
                    <div class="x-col" xid="col18" style="text-align:center;"> 
                      <span xid="span3"><![CDATA[]]></span>
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content" xid="content2" _xid="C7DF1CBB13E00001685AFC9516009210"
                  style="bottom: 0px; background-size: cover; top: 48px; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);">
                  <div component="$UI/system/components/bootstrap/row/row"
                    class="row" xid="row1" style="background-color:white;"> 
                    <div class="col col-xs-12 border-Two font-One" xid="col1"
                      style="text-align:center;padding:5px;">
                      <span xid="span5"><![CDATA[广州市汇佳贸易有限公司]]></span>
                    </div>  
                    <div class="col col-xs-12" xid="col2">
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row9"> 
                        <div class="x-col" xid="col4">
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row" xid="row10"> 
                            <div class="col col-xs-12" xid="col7" style="text-align:center;">
                              <span xid="span9"><![CDATA[导购类型]]></span>
                            </div>  
                            <div class="col col-xs-12" xid="col14" style="text-align:center;">
                              <a component="$UI/system/components/justep/button/button"
                                class="btn btn-default btn-only-icon" label="button"
                                xid="button5" icon="e-commerce e-commerce-jiahao"
                                style="border-radius: 25px;"> 
                                <i xid="i5" class="e-commerce e-commerce-jiahao"/>  
                                <span xid="span11"/>
                              </a>
                            </div> 
                          </div>
                        </div>  
                        <div class="x-col" xid="col5">
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row" xid="row11"> 
                            <div class="col col-xs-12" xid="col26" style="text-align:center;">
                              <span xid="span10"><![CDATA[人数]]></span>
                            </div>  
                            <div class="col col-xs-12" xid="col25"/>
                          </div>
                        </div>  
                        <div class="x-col" xid="col6" style="text-align:right;bottom:px;">
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-default" label="更新导购信息" xid="button6" style="margin-top:20px;"> 
                            <i xid="i6"/>  
                            <span xid="span12">更新导购信息</span>
                          </a>
                        </div>
                      </div>
                    </div>  
                    <div class="col col-xs-12" xid="col3">
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row13"> 
                        <div class="x-col" xid="col30">
                          <span xid="span15"><![CDATA[最新记录时间：无]]></span>
                        </div>  
                        <div class="x-col" xid="col31"/>  
                        <div class="x-col" xid="col32" style="text-align:right;">
                          <span xid="span16"><![CDATA[检查人：无]]></span>
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
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
