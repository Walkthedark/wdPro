<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onModelConstructDone="modelModelConstructDone"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="DData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="time" type="String" xid="xid3"/>  
      <column name="name" type="String" xid="xid4"/>  
      <column name="type" type="String" xid="xid5"/>  
      <column name="state" type="String" xid="xid6"/>  
      <column name="city" type="String" xid="xid7"/>  
      <data xid="default1">[{"id":"1","title":"2017年东南大曲AP费用预算","time":"2017-03-22","name":"张三","type":"AP预算申请","state":"0","city":"东南大区"},{"id":"2","title":"2017年东南大曲日常费用预算","time":"2017-03-22","name":"张三","type":"日常费用预算申请","state":"0","city":"东南大区"},{"id":"3","title":"2017年个人销售目标","time":"2017-03-23","name":"李四","type":"个人销售目标申请","state":"0","city":"东南大区"},{"id":"4","title":"张三的请假单","time":"2017-03-23","name":"张三","type":"请假申请","state":"0","city":"东南大区"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="YData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="title" type="String" xid="column2"/>  
      <column name="time" type="String" xid="column3"/>  
      <column name="name" type="String" xid="column4"/>  
      <column name="type" type="String" xid="column5"/>  
      <column name="state" type="String" xid="column6"/>  
      <column name="city" type="String" xid="column7"/>  
      <data xid="default2">[{"id":"1","title":"2017年东南大曲AP费用预算","time":"2017-03-22","name":"张三","type":"AP预算申请","state":"1","city":"东南大区"},{"id":"2","title":"2017年东南大曲日常费用预算","time":"2017-03-22","name":"张三","type":"日常费用预算申请","state":"1","city":"东南大区"},{"id":"3","title":"2017年个人销售目标","time":"2017-03-23","name":"李四","type":"个人销售目标申请","state":"1","city":"东南大区"},{"id":"4","title":"张三的请假单","time":"2017-03-23","name":"张三","type":"请假申请","state":"1","city":"东南大区"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dData" idColumn="workId">
      <column name="workId" type="String" xid="xid8"/>  
      <column name="rwmcjbh" type="String" xid="xid9"/>  
      <column name="myId" type="String" xid="xid10"/>  
      <column name="trackId" type="String" xid="xid11"/>  
      <column name="department" type="String" xid="xid12"/>  
      <column name="sqr" type="String" xid="xid13"/>  
      <column name="sendTime" type="String" xid="xid14"/>  
      <column name="rwmcjbh" type="String" xid="xid15"/>  
      <column name="type" type="String" xid="xid16"/>  
      <column name="type_id" type="String" xid="xid17"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="yData" idColumn="workId"> 
      <column name="workId" type="String" xid="column14"/>  
      <column name="rwmcjbh" type="String" xid="column15"/>  
      <column name="myId" type="String" xid="column16"/>  
      <column name="trackId" type="String" xid="column17"/>  
      <column name="department" type="String" xid="column10"/>  
      <column name="sqr" type="String" xid="column11"/>  
      <column name="sendTime" type="String" xid="column12"/>  
      <column name="rwmcjbh" type="String" xid="column13"/>  
      <column name="type" type="String" xid="column8"/>  
      <column name="type_id" type="String" xid="column9"/>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Process/dialog/processInfo.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="任务流程"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">任务流程</div>  
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
              label="待办" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">待办</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="已办" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">已办</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content  x-scroll-view" xid="content4"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView1"> 
                <div class="x-content-center x-pull-down container" xid="div2"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"/>  
                  <span class="x-pull-down-label" xid="span3">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div3"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list1" data="dData"> 
                    <ul class="x-list-template" xid="listTemplateUl1"> 
                      <li xid="li1" bind-click="li2Click"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row row-padding" xid="row1" style="background-color:#FFFFFF;margin-top:5px;"> 
                          <div class="col col-xs-8" xid="col1"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output font-One" xid="output1" bind-ref="ref(&quot;rwmcjbh&quot;)"/> 
                          </div>  
                          <div class="col col-xs-4" xid="col2" style="text-align:right;"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output" xid="output2" bind-ref="ref(&quot;state&quot;)"
                              onRender="output2Render"/> 
                          </div>  
                          <div class="col col-xs-12" xid="col3"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output" xid="output3" bind-ref="ref(&quot;type&quot;)"/> 
                          </div>  
                          <div class="col col-xs-7" xid="col4"> 
                            <img src="$UI/TheSaleEnterprise/Process/img/001.png"
                              alt="" xid="image1" style="float:left;"/>  
                            <div component="$UI/system/components/justep/output/output"
                              xid="output4" bind-ref="ref(&quot;sqr&quot;)" style="float:left;"/>  
                            <span xid="span8" style="float:left;"><![CDATA[ / ]]></span>  
                            <div component="$UI/system/components/justep/output/output"
                              xid="output5" bind-ref="ref(&quot;department&quot;)" style="float:left;"/> 
                          </div>  
                          <div class="col col-xs-5" xid="col5" style="text-align:right;"> 
                            <div component="$UI/system/components/justep/output/output"
                              xid="output6" bind-ref="ref(&quot;sendTime&quot;)" style="font-size:0.8em;" onRender="output6Render"/> 
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
            <div class="x-contents-content  x-scroll-view" xid="content5"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView3"> 
                <div class="x-content-center x-pull-down container" xid="div10"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"/>  
                  <span class="x-pull-down-label" xid="span9">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div9"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list2" data="yData"> 
                    <ul class="x-list-template" xid="listTemplateUl2"> 
                      <li xid="li2" bind-click="li2Click"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row row-padding" xid="row2" style="background-color:#FFFFFF;margin-top:5px;"> 
                          <div class="col col-xs-8" xid="col10"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output font-One" xid="output9" bind-ref="ref(&quot;rwmcjbh&quot;)"/> 
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
                          <div class="col col-xs-7" xid="col6"> 
                            <img src="$UI/TheSaleEnterprise/Process/img/001.png"
                              alt="" xid="image2" style="float:left;"/>  
                            <div component="$UI/system/components/justep/output/output"
                              xid="output8" bind-ref="ref(&quot;sqr&quot;)" style="float:left;"/>  
                            <span xid="span11" style="float:left;">/</span>  
                            <div component="$UI/system/components/justep/output/output"
                              xid="output11" bind-ref="ref(&quot;department&quot;)" style="float:left;"/> 
                          </div>  
                          <div class="col col-xs-5" xid="col7" style="text-align:right;"> 
                            <div component="$UI/system/components/justep/output/output"
                              xid="output12" bind-ref="ref(&quot;sendTime&quot;)" style="font-size:0.8em;" onRender="output6Render"/> 
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
