<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="DData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="time" type="String" xid="xid3"/>  
      <column name="name" type="String" xid="xid4"/>  
      <column name="type" type="String" xid="xid5"/>  
      <column name="state" type="String" xid="xid6"/>  
      <column name="city" type="String" xid="xid7"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;上海1线&quot;,&quot;time&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;type&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;city&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;杭州-东线&quot;,&quot;time&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;type&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;city&quot;:&quot;&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;title&quot;:&quot;渭南路线&quot;,&quot;time&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;type&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;city&quot;:&quot;&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;title&quot;:&quot;三八线&quot;,&quot;time&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;type&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;city&quot;:&quot;&quot;}]</data></div>  
    </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog" src="$UI/TheSaleEnterprise/Visit/dialog/selectRouteInfo.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="选择拜访客户"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">选择拜访客户</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="144" style="background-color:white;">
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="按路线拜访" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">按路线拜访</span>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="按计划外客户拜访" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">按计划外客户拜访</span>
            </a> 
          </div>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col4"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" placeHolder="请输入路线关键字"></input></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col12"><span xid="span7" style="font-size:16px;color:#800000;"><![CDATA[> 请选择您需要拜访的路线：]]></span></div>
   </div></div>  
        <div class="x-panel-content" xid="content3">
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content  x-scroll-view" xid="content4">
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView1" style="background-color:white;"> 
                <div class="x-content-center x-pull-down container" xid="div2"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"/>  
                  <span class="x-pull-down-label" xid="span3">下拉刷新...</span>
                </div>  
                <div class="x-scroll-content" xid="div3">
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list1" data="DData"> 
                    <ul class="x-list-template" xid="listTemplateUl1"> 
                      <li xid="li1" class="border-Two" bind-click="li1Click">
                        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/output/output" class="x-output font-One" xid="output1" bind-ref='ref("title")'></div></div>
   <div class="x-col x-col-25" xid="col2" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-default3" label="选择" xid="button4">
   <i xid="i5"></i>
   <span xid="span6">选择</span></a></div>
   </div></li>
                    </ul> 
                  </div>
                </div>  
                <div class="x-content-center x-pull-up" xid="div4"> 
                  <span class="x-pull-up-label" xid="span5">加载更多...</span>
                </div> 
              </div>
            </div>  
            <div class="x-contents-content  x-scroll-view" xid="content5">
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView3"> 
                <div class="x-content-center x-pull-down container" xid="div10"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"/>  
                  <span class="x-pull-down-label" xid="span9">下拉刷新...</span>
                </div>  
                <div class="x-scroll-content" xid="div9"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list2" data="YData"> 
                    <ul class="x-list-template" xid="listTemplateUl2"> 
                      <li xid="li2" bind-click="li2Click"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row row-padding" xid="row2" style="background-color:#FFFFFF;margin-top:5px;"> 
                          <div class="col col-xs-8" xid="col10"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output font-One" xid="output9" bind-ref="ref(&quot;title&quot;)"/>
                          </div>  
                          <div class="col col-xs-4" xid="col8" style="text-align:right;"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output" xid="output10" bind-ref="ref(&quot;state&quot;)"
                              onRender="output10Render"/>
                          </div>  
                          <div class="col col-xs-12" xid="col9"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output" xid="output7" bind-ref="ref(&quot;type&quot;)"/>
                          </div>  
                          <div class="col col-xs-8" xid="col6"> 
                            <img src="$UI/TheSaleEnterprise/Process/img/001.png"
                              alt="" xid="image2" style="float:left;"/>  
                            <div component="$UI/system/components/justep/output/output"
                              xid="output8" bind-ref="ref(&quot;name&quot;)" style="float:left;"/>  
                            <span xid="span11" style="float:left;">/</span>  
                            <div component="$UI/system/components/justep/output/output"
                              xid="output11" bind-ref="ref(&quot;city&quot;)" style="float:left;"/>
                          </div>  
                          <div class="col col-xs-4" xid="col7" style="text-align:right;"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output" xid="output12" bind-ref="ref(&quot;time&quot;)"/>
                          </div> 
                        </div> 
                      </li> 
                    </ul> 
                  </div> 
                </div>  
                <div class="x-content-center x-pull-up" xid="div8"> 
                  <span class="x-pull-up-label" xid="span10">加载更多...</span>
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
