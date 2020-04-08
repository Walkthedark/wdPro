<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="BData" idColumn="id"> 
      <column name="id" type="String" xid="xid111"/>  
      <column name="title" type="String" xid="xid112"/>  
      <column name="sn" type="String" xid="xid113"/>  
      <column name="addr" type="String" xid="xid114"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="WData" idColumn="id"> 
      <column name="id" type="String" xid="column20"/>  
      <column name="title" type="String" xid="column21"/>  
      <column name="sn" type="String" xid="column18"/>  
      <column name="addr" type="String" xid="column19"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="LData" idColumn="id"> 
      <column name="id" type="String" xid="column34"/>  
      <column name="feetype" type="String" xid="column35"/>  
      <column name="start" type="String" xid="column29"/>  
      <column name="end" type="String" xid="column30"/>  
      <column name="pro_type" type="String" xid="column31"/>  
      <column name="pro" type="String" xid="column32"/>  
      <column name="type" type="String" xid="column33"/>  
      <column name="hc_status" type="String" xid="xid1"/>  
      <column name="sn" type="String" xid="xid2"/>  
      <column name="imgSrc" type="String" xid="xid3"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/activityCheckInfo.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="市场活动拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">市场活动拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48" style="background-color:white;"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="本期活动" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">本期活动</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="未来活动" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">未来活动</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="历史活动" xid="button4" target="content1"> 
              <i xid="i5"/>  
              <span xid="span6">历史活动</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content  x-scroll-view" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-top" xid="top2" style="background-color:white;"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row4"> 
                    <div class="x-col" xid="col14"> 
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control" xid="input2" placeHolder="请输入网点关键字" onChange="input2Change"/> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content" xid="content2"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div2"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i4"/>  
                      <span class="x-pull-down-label" xid="span3">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div3"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list1" data="BData"> 
                        <ul class="x-list-template" xid="listTemplateUl1"> 
                          <li xid="li1" class="border-Two" bind-click="li1Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1" style="background-color:#FFFFFF;"> 
                              <div class="col col-xs-12" xid="col1"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output font-One" xid="output1" bind-ref="ref(&quot;title&quot;)"/> 
                              </div>  
                              <div class="col col-xs-8" xid="col3"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit1"> 
                                  <label class="x-label" xid="label1" style="width:80px;"><![CDATA[编号：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output2" bind-ref="ref(&quot;sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-4" xid="col4"> 
                                <div component="$UI/system/components/justep/output/output"
                                  xid="output5" style="float:right;margin-top:10px;"/>  
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-link btn-only-icon" label="button"
                                  xid="button10" style="float:right;color:#000;" icon="linear linear-mapmarker"> 
                                  <i xid="i11" class="linear linear-mapmarker"/>  
                                  <span xid="span7"/> 
                                </a> 
                              </div>  
                              <div class="col col-xs-12" xid="col5"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit2"> 
                                  <label class="x-label" xid="label2" style="width:80px;"><![CDATA[地址：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output3" bind-ref="ref(&quot;addr&quot;)"/> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div4"> 
                      <span class="x-pull-up-label" xid="span5">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-top" xid="top4" style="background-color:white;"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row6"> 
                    <div class="x-col" xid="col17"> 
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control" xid="input3" placeHolder="请输入网点关键字" onChange="input3Change"/> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content7" _xid="C7DFAF7157F00001C2B1EEAE1CC022A0"
                  style="bottom: 0px; background-size: cover; background-image: url(http://localhost:44768/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i7"/>  
                      <span class="x-pull-down-label" xid="span8">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" data="WData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li1Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row5" style="background-color:#FFFFFF;"> 
                              <div class="col col-xs-12" xid="col21"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output font-One" xid="output6" bind-ref="ref(&quot;title&quot;)"/> 
                              </div>  
                              <div class="col col-xs-8" xid="col20"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit3"> 
                                  <label class="x-label" xid="label3" style="width:80px;">编号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output7" bind-ref="ref(&quot;sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-4" xid="col18"> 
                                <div component="$UI/system/components/justep/output/output"
                                  xid="output8" style="float:right;margin-top:10px;"/>  
                                <a component="$UI/system/components/justep/button/button"
                                  class="btn btn-link btn-only-icon" label="button"
                                  xid="button5" style="float:right;color:#000;" icon="linear linear-mapmarker"> 
                                  <i xid="i6" class="linear linear-mapmarker"/>  
                                  <span xid="span10"/> 
                                </a> 
                              </div>  
                              <div class="col col-xs-12" xid="col19"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit4"> 
                                  <label class="x-label" xid="label4" style="width:80px;">地址：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output4" bind-ref="ref(&quot;addr&quot;)"/> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div1"> 
                      <span class="x-pull-up-label" xid="span9">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content" xid="content1"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel5"> 
                <div class="x-panel-top" xid="top5" style="background-color:white;"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row8"> 
                    <div class="x-col" xid="col22"> 
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control" xid="input4" placeHolder="请输入网点关键字" onChange="input4Change"/> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DFAF7204E000018D705000E3ED123A"
                  style="background-color:white;"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView3"> 
                    <div class="x-content-center x-pull-down container" xid="div9"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i9"/>  
                      <span class="x-pull-down-label" xid="span11">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div8"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list4" data="LData"> 
                        <ul class="x-list-template" xid="listTemplateUl4"> 
                          <li xid="li4" class="border-Two"> 
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row9"> 
                              <div class="x-col" xid="col29"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row2"> 
                                  <div class="col col-xs-8 font-One" xid="col27"
                                    style="height:40px;"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      class="x-output font-One" xid="output15" bind-ref="ref(&quot;sn&quot;)"
                                      style="float:left;"/>  
                                    <a component="$UI/system/components/justep/button/button"
                                      class="btn btn-default4" label="button" xid="button7"
                                      style="height:25px;float:left;margin-top:7px;margin-left:5px;    padding: 2px 12px;"
                                      bind-text=" val(&quot;type&quot;)" target="content4"> 
                                      <i xid="i10"/>  
                                      <span xid="span14" bind-text="ref(&quot;col2&quot;)"
                                        style="display:block;margin-top:-7px;"/> 
                                    </a> 
                                  </div>  
                                  <div class="col col-xs-4" xid="col28" style="text-align:right;height:40px;"> 
                                    <img alt="" xid="image1" bind-attr-src=" val(&quot;imgSrc&quot;)"/> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col6"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit9"> 
                                      <label class="x-label" xid="label8" style="width:80px;">活动产品：</label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output13" bind-ref="ref(&quot;pro&quot;)"/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col7"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit7"> 
                                      <label class="x-label" xid="label7" style="width:80px;">费用类型：</label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output16" bind-ref="ref(&quot;feetype&quot;)"/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col8"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit8"> 
                                      <label class="x-label" xid="label9" style="width:80px;">活动时间：</label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output14" bind-ref="ref(&quot;start&quot;)" onRender="output14Render"/> 
                                    </div> 
                                  </div> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div7"> 
                      <span class="x-pull-up-label" xid="span12">加载更多...</span> 
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
