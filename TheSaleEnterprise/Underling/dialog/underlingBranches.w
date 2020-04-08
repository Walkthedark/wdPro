<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="xm"> 
      <column name="xm" type="String" xid="xid2"/>  
      <column name="jh" type="String" xid="xid3"/>  
      <column name="sj" type="String" xid="xid4"/>  
      <column name="jhw" type="String" xid="xid5"/>  
      <column name="sf" type="String" xid="xid1"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="text" type="String" xid="column2"/>  
      <data xid="default1">[{"id":"0","text":"只看直接下属"},{"id":"1","text":"查看所有下属"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="type" autoNew="true" onValueChanged="cDateValueChanged"> 
      <column name="type" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dData" idColumn="xm"> 
      <column name="xm" type="String" xid="column4"/>  
      <column name="jh" type="String" xid="column5"/>  
      <column name="sj" type="String" xid="column6"/>  
      <column name="jhw" type="String" xid="column7"/>  
      <column name="sf" type="String" xid="xid6"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingBranchesInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="下属拜访查询"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">下属拜访查询</div>  
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
              label="月报表" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">月报表</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="日报表" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">日报表</span> 
            </a> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1"> 
            <div class="x-col" xid="col1" style="text-align:center;"> 
              <span component="$UI/system/components/justep/select/radioGroup"
                class="x-radios x-edit" xid="radioGroup1" bind-itemset="CData" bind-itemsetValue="ref(&quot;id&quot;)"
                bind-itemsetLabel="ref(&quot;text&quot;)" style="color: #FA7922;" bind-ref="$model.cDate.ref(&quot;type&quot;)"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false" onActiveChange="contents2ActiveChange"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel6"> 
                <div class="x-panel-top" xid="top2" height="96"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row4"> 
                    <div class="x-col" xid="col4" style="text-align:center;"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-lg btn-only-icon" label="button" xid="button4"
                        icon="glyphicon glyphicon-triangle-left" style="color: #8FC41C;"
                        onClick="button4Click"> 
                        <i xid="i4" class="glyphicon glyphicon-triangle-left"/>  
                        <span xid="span3"/> 
                      </a>  
                      <span xid="bdateSpan" class="font-One"><![CDATA[2018-01]]></span>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-lg btn-only-icon" label="button" xid="button7"
                        icon="glyphicon glyphicon-triangle-right" style="color: #8FC41C;"
                        onClick="button7Click"> 
                        <i xid="i9" class="glyphicon glyphicon-triangle-right"/>  
                        <span xid="span11"/> 
                      </a> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row5" style="text-align:center;"> 
                    <div class="x-col" xid="col7"> 
                      <span xid="span13" class="font-One"><![CDATA[姓名]]></span> 
                    </div>  
                    <div class="x-col" xid="col8"> 
                      <span xid="span14" class="font-One"><![CDATA[计划]]></span> 
                    </div>  
                    <div class="x-col" xid="col9"> 
                      <span xid="span15" class="font-One"><![CDATA[实际]]></span> 
                    </div>  
                    <div class="x-col" xid="col10"> 
                      <span xid="span16" class="font-One"><![CDATA[失访]]></span> 
                    </div>  
                    <div class="x-col" xid="col11"> 
                      <span xid="span17" class="font-One"><![CDATA[计划外]]></span> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i7"/>  
                      <span class="x-pull-down-label" xid="span10">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" style="background-color:white;"
                        data="pData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row6" style="text-align:center;"> 
                              <div class="x-col" xid="col21"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output5" bind-ref="ref(&quot;xm&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col17"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output6" bind-ref="ref(&quot;jh&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col18"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output7" bind-ref="ref(&quot;sj&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col20"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output8" bind-ref="ref(&quot;sf&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col19"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output9" bind-ref="ref(&quot;jhw&quot;)"/> 
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
                xid="panel2"> 
                <div class="x-panel-top" xid="top4" height="96"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row9"> 
                    <div class="x-col" xid="col31" style="text-align:center;"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-lg btn-only-icon" label="button" xid="button8"
                        icon="glyphicon glyphicon-triangle-left" style="color: #8FC41C;"
                        onClick="button8Click"> 
                        <i xid="i10" class="glyphicon glyphicon-triangle-left"/>  
                        <span xid="span24"/> 
                      </a>  
                      <span xid="bdateSpan2" class="font-One"><![CDATA[2018-01-23]]></span>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-lg btn-only-icon" label="button" xid="button9"
                        icon="glyphicon glyphicon-triangle-right" style="color: #8FC41C;"
                        onClick="button9Click"> 
                        <i xid="i12" class="glyphicon glyphicon-triangle-right"/>  
                        <span xid="span32"/> 
                      </a> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row2" style="text-align:center;"> 
                    <div class="x-col" xid="col6"> 
                      <span xid="span7" class="font-One">姓名</span> 
                    </div>  
                    <div class="x-col" xid="col3"> 
                      <span xid="span6" class="font-One">计划</span> 
                    </div>  
                    <div class="x-col" xid="col5"> 
                      <span xid="span12" class="font-One">实际</span> 
                    </div>  
                    <div class="x-col" xid="col12"> 
                      <span xid="span9" class="font-One">失访</span> 
                    </div>  
                    <div class="x-col" xid="col2"> 
                      <span xid="span5" class="font-One">计划外</span> 
                    </div> 
                  </div> 
                </div>  
                <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
                  style="bottom: 0px; background-size: cover; top: 96px; background-image: url(http://localhost:46678/x5/UI2/v_/TheSaleEnterprise/Underling/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div1"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i11"/>  
                      <span class="x-pull-down-label" xid="span31">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div2"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list1" style="background-color:white;"
                        data="dData"> 
                        <ul class="x-list-template" xid="listTemplateUl1"> 
                          <li xid="li1" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row7" style="text-align:center;"> 
                              <div class="x-col" xid="col28"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output12" bind-ref="ref(&quot;xm&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col23"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output13" bind-ref="ref(&quot;jh&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col22"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output10" bind-ref="ref(&quot;sj&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col30"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output11" bind-ref="ref(&quot;sf&quot;)"/> 
                              </div>  
                              <div class="x-col" xid="col25"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output14" bind-ref="ref(&quot;jhw&quot;)"/> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div3"> 
                      <span class="x-pull-up-label" xid="span26">加载更多...</span> 
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
</div>
