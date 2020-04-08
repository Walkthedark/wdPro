<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:153px;left:268px;height:auto;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="OutData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="rq" type="String" xid="xid2"/>  
      <column name="wdid" type="String" xid="xid3"/>  
      <column name="wdmc" type="String" xid="xid4"/>  
      <column name="bfxl" type="String" xid="xid5"/>  
      <column name="lx" type="String" xid="xid6"/>  
      <column name="zt" type="String" xid="xid7"/>  
      <column name="ddsj" type="String" xid="xid8"/>  
      <column name="qddd" type="String" xid="xid9"/>  
      <column name="jlpc" type="String" xid="xid10"/>  
      <column name="qdtp" type="String" xid="xid11"/>  
      <column name="syzjl" type="String" xid="xid12"/>  
      <column name="ldsj" type="String" xid="xid13"/>  
      <column name="ldtp" type="String" xid="xid14"/>  
      <column name="qtdd" type="String" xid="xid15"/>  
      <column name="ys" type="String" xid="xid16"/>  
      <column name="rwdzr" type="String" xid="xid17"/>  
      <column name="rwdzr_name" type="String" xid="xid18"/>  
      <column name="dzsj" type="String" xid="xid19"/>  
      <column name="netsn" type="String" xid="xid20"/>  
      <column name="cishu" type="String" xid="xid21"/>  
      <column name="yifang" type="String" xid="xid22"/>  
      <column name="shangci" type="String" xid="xid23"/>  
      <column name="isdg" type="String" xid="xid24"/>  
      <column name="iszy" type="String" xid="xid25"/>  
      <column name="iskey" type="String" xid="xid26"/>  
      <column name="wddz" type="String" xid="xid27"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="InData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="rq" type="String" xid="column2"/>  
      <column name="wdid" type="String" xid="column7"/>  
      <column name="wdmc" type="String" xid="column9"/>  
      <column name="bfxl" type="String" xid="column11"/>  
      <column name="lx" type="String" xid="column13"/>  
      <column name="zt" type="String" xid="column15"/>  
      <column name="ddsj" type="String" xid="column16"/>  
      <column name="qddd" type="String" xid="column18"/>  
      <column name="jlpc" type="String" xid="column19"/>  
      <column name="qdtp" type="String" xid="column21"/>  
      <column name="syzjl" type="String" xid="column8"/>  
      <column name="ldsj" type="String" xid="column10"/>  
      <column name="ldtp" type="String" xid="column12"/>  
      <column name="qtdd" type="String" xid="column14"/>  
      <column name="ys" type="String" xid="column3"/>  
      <column name="rwdzr" type="String" xid="column4"/>  
      <column name="rwdzr_name" type="String" xid="column5"/>  
      <column name="dzsj" type="String" xid="column6"/>  
      <column name="netsn" type="String" xid="xid17"/>  
      <column name="cishu" type="String" xid="xid20"/>  
      <column name="yifang" type="String" xid="xid28"/>  
      <column name="shangci" type="String" xid="xid29"/>  
      <column name="isdg" type="String" xid="xid30"/>  
      <column name="iszy" type="String" xid="xid31"/>  
      <column name="iskey" type="String" xid="xid31"/>  
      <column name="wddz" type="String" xid="xid33"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="outDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/outGrid.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="selectDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/selectRoute.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="select2Dialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/selectRoute.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="activityCheckDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/activityCheck.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="客户拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">客户拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="今日计划内" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">今日计划内</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="今日计划外" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">今日计划外</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-top" xid="top2" height="55"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row3" style="background-color:white;"> 
                    <div class="x-col x-col-20" xid="col11"/>  
                    <div class="x-col" xid="col12"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn border-r" label="填 写" xid="button4" style="width:100%;"
                        target="content4" onClick="button5Click"> 
                        <i xid="i5"/>  
                        <span xid="span6">填 写</span> 
                      </a> 
                    </div>  
                    <div class="x-col x-col-20" xid="col13"/> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF23A047C000015332AA703E904750"> 
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
                        data="InData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li1Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col2"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit " xid="labelEdit4"> 
                                  <label class="x-label" xid="label8"><![CDATA[网点名称：]]></label>  
                                  <div xid="div10" class="x-edit"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      class="x-output" xid="output16" bind-ref="ref(&quot;wdmc&quot;)"/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col1"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit " xid="labelEdit3"> 
                                  <label class="x-label" xid="label7"><![CDATA[状态：]]></label>  
                                  <div class="x-edit" xid="div9"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      xid="output14" bind-ref="ref(&quot;zt&quot;)"/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col7"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit " xid="labelEdit2"> 
                                  <label class="x-label" xid="label6"><![CDATA[网点编号：]]></label>  
                                  <div class="x-edit" xid="div8"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      xid="output9" style="float:left;" bind-ref='ref("netsn")'/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col6"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit " xid="labelEdit5"> 
                                  <a component="$UI/system/components/justep/button/button"
                                    class="btn btn-link btn-sm btn-only-icon" label="button"
                                    xid="button10" style="color:#000;padding:0px;" icon="linear linear-mapmarker"> 
                                    <i xid="i11" class="linear linear-mapmarker"/>  
                                    <span xid="span5"/> 
                                  </a>  
                                  <div component="$UI/system/components/justep/output/output"
                                    xid="output7" bind-ref='ref("wddz")' style="color:#000;"
                                    class="x-edit"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col5"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit " xid="labelEdit9"> 
                                  <label class="x-label" xid="label10"><![CDATA[上次拜访：]]></label>  
                                  <div class="x-edit" xid="div15"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      xid="output10" style="float:left;" bind-ref='ref("shangci")'/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col4"> 
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-link btn-only-icon" label="button"
                                  xid="button11" style="float:left;color:#FF8000;"
                                  icon="e-commerce e-commerce-shangpin" bind-visible='val("isdg") ==1'> 
                                  <i xid="i13" class="e-commerce e-commerce-shangpin"/>  
                                  <span xid="span16"/> 
                                </a>  
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-link btn-only-icon" label="button"
                                  xid="button9" style="float:left;color:#FF8000;margin-left:10px;"
                                  icon="e-commerce e-commerce-shangpu" bind-visible='val("iskey") ==1'> 
                                  <i xid="i7" class="e-commerce e-commerce-shangpu"/>  
                                  <span xid="span15"/> 
                                </a>  
                                </div>  
                              <div class="col col-xs-12" xid="col3" style="display:none"> 
                                <div component="$UI/system/components/justep/output/output"
                                  xid="output12" bind-ref="ref(&quot;address&quot;)"/> 
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
                  <div xid="div7" style="margin-top:40px;display:none;"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row2"> 
                      <div class="x-col" xid="col9" style="text-align:center;"> 
                        <span xid="span23"><![CDATA[您没有需要拜访的客户：]]></span> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row7"> 
                      <div class="x-col" xid="col17" style="text-align:center;"> 
                        <span xid="span22"><![CDATA[您可以：]]></span> 
                      </div>  
                      <div class="x-col" xid="col19"/>  
                      <div class="x-col" xid="col27"/> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row8" style="text-align:center;"> 
                      <div class="x-col" xid="col28"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-default2" label="选择拜访路线" xid="button12" onClick="button12Click"> 
                          <i xid="i14"/>  
                          <span xid="span20">选择拜访路线</span> 
                        </a> 
                      </div>  
                      <div class="x-col" xid="col29"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-default2" label="添加计划外拜访" xid="button13"
                          onClick="button13Click"> 
                          <i xid="i15"/>  
                          <span xid="span21">添加计划外拜访</span> 
                        </a> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-top" xid="top4" height="105"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row4" style="background-color:white;"> 
                    <div class="x-col x-col-20" xid="col16"/>  
                    <div class="x-col" xid="col15"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn border-r" label="填 写" xid="button5" style="width:100%;"
                        onClick="button5Click"> 
                        <i xid="i6"/>  
                        <span xid="span7">填 写</span> 
                      </a> 
                    </div>  
                    <div class="x-col x-col-20" xid="col14"/> 
                  </div>  
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row5" style="background-color:white;"> 
                    <div class="x-col" xid="col18" style="text-align:center;"> 
                      <a xid="visitListTitle" style="text-decoration:underline;" bind-click="a1Click"><![CDATA[今日有6个网点正在做市场活动，请优先拜访核检。]]></a> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content2" _xid="C7DF1CBB13E00001685AFC9516009210"
                  style="bottom: 0px; background-size: cover; background-image: url(http://localhost:42772/x5/UI2/v_/TheSaleEnterprise/Visit/none); top: 96px;"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div1"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i8"/>  
                      <span class="x-pull-down-label" xid="span9">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div2"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list1" style="background-color:white;"
                        data="OutData"> 
                        <ul class="x-list-template" xid="listTemplateUl1"> 
                          <li xid="li1" class="border-Two" bind-click="li1Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row6"> 
                              <div class="col col-xs-12" xid="col20"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit6"> 
                                  <label class="x-label" xid="label4"><![CDATA[网点名称：]]></label>  
                                  <div class="x-edit" xid="div12"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      xid="output13" bind-ref="ref(&quot;wdmc&quot;)"/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col21"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit7"> 
                                  <label class="x-label" xid="label5"><![CDATA[状态：]]></label>  
                                  <div class="x-edit" xid="div13"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      class="x-output" xid="output15" bind-ref="ref(&quot;zt&quot;)"/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col22"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit8"> 
                                  <label class="x-label" xid="label9"><![CDATA[网点编号：]]></label>  
                                  <div class="x-edit" xid="div14"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      xid="output1" style="float:left;" bind-ref='ref("netsn")'/> 
                                  </div> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col23"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit1"> 
                                  <a component="$UI/system/components/justep/button/button"
                                    class="btn btn-link btn-sm btn-only-icon" label="button"
                                    xid="button6" style="color:#000;padding:0px;" icon="linear linear-mapmarker"> 
                                    <i xid="i4" class="linear linear-mapmarker"/>  
                                    <span xid="span3"/> 
                                  </a>  
                                  <div component="$UI/system/components/justep/output/output"
                                    xid="output3" bind-ref='ref("wddz")' style="color:#000;"
                                    class="x-edit"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col24"> 
                                <span xid="span12" style="float:left;"><![CDATA[上次拜访：]]></span>  
                                <div component="$UI/system/components/justep/output/output"
                                  xid="output2" style="float:left;" bind-ref="ref(&quot;rq&quot;)"/> 
                              </div>  
                              <div class="col col-xs-12" xid="col25"> 
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-link btn-only-icon" label="button"
                                  xid="button7" style="float:left;color:#FF8000;"
                                  icon="e-commerce e-commerce-shangpin" bind-visible='val("isdg") ==1'> 
                                  <i xid="i9" class="e-commerce e-commerce-shangpin"/>  
                                  <span xid="span13"/> 
                                </a>  
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-link btn-only-icon" label="button"
                                  xid="button8" style="float:left;color:#FF8000;margin-left:10px;"
                                  icon="e-commerce e-commerce-shangpu" bind-visible='val("iskey") ==1'> 
                                  <i xid="i10" class="e-commerce e-commerce-shangpu"/>  
                                  <span xid="span14"/> 
                                </a>  
                                </div>  
                              <div class="col col-xs-12" xid="col26" style="display:none"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output6" bind-ref="ref(&quot;qddd&quot;)"/> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div3"> 
                      <span class="x-pull-up-label" xid="span10">加载更多...</span> 
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
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog" src="$UI/TheSaleEnterprise/Visit/newVisit.w" forceRefreshOnOpen="true" onClose="newDialogClose"></span></div>
