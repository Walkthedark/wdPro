<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{"id":"1","col1":"安顺市新城区副食品经销部","col2":"201802170001","col3":"10","col4":"4800元","col5":"未发货","col6":"未收货","col7":"已归档","col8":"2018-02-17"},{"id":"2","col1":"柳州市白云区经销部","col2":"201802170002","col3":"11","col4":"2500元","col5":"未发货","col6":"未收货","col7":"已归档","col8":"2018-02-17"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="InData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="name" type="String" xid="column2"/>  
      <column name="address" type="String" xid="column3"/>  
      <column name="state" type="String" xid="column4"/>  
      <column name="code" type="String" xid="column5"/>  
      <column name="daogou" type="String" xid="column6"/>  
      <column name="zhongdian" type="String" xid="column7"/>  
      <column name="time" type="String" xid="column8"/>  
      <column name="col8" type="String" xid="column9"/>  
      <column name="col9" type="String" xid="column10"/>  
      <data xid="default1">[{"id":"1","name":"万家公用分店","address":"万家公用分店","state":"未拜访","code":"10100001","daogou":"导购","zhongdian":"重点","time":"2018-02-12","col8":"999M"},{"id":"2","name":"长城饭店","address":"渭南路111","state":"已拜访","code":"10100002","daogou":"导购","zhongdian":"重点","time":"2018-02-12","col8":"50M"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/salesReturnCheck.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="退货管理"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">退货管理</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="96"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11"/>  
            <div class="x-col" xid="col12"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="经销商退货" xid="button4" style="width:100%;" target="content4" onClick="button4Click"> 
                <i xid="i5"/>  
                <span xid="span6">经销商退货</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div>
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1" style="background-color:#FFFFFF;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link active" label="全部" xid="button2" target="content4">
    <i xid="i2"></i>
    <span xid="span1">全部</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="审批中" xid="button3" target="content5">
    <i xid="i3"></i>
    <span xid="span2">审批中</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="已审批" xid="button14" target="content7">
    <i xid="i16"></i>
    <span xid="span24">已审批</span></a> 
   </div></div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
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
                        data="orderData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col2" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit1"> 
                                  <label class="x-label" xid="label5" style="width:80px;font-weight:bold;"><![CDATA[经销商：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output13" bind-ref="ref(&quot;col1&quot;)"/>
                                </div>
                              </div>  
                              <div class="col col-xs-12" xid="col1" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit2"> 
                                  <label class="x-label" xid="label6" style="width:80px;font-weight:bold;"><![CDATA[单号：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output14" bind-ref="ref(&quot;col2&quot;)"/>
                                </div>
                              </div>  
                              <div class="col col-xs-6" xid="col7"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit3"> 
                                  <label class="x-label" xid="label7" style="width:80px;"><![CDATA[退货数量：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output15" bind-ref="ref(&quot;col3&quot;)"/>
                                </div>
                              </div>  
                              <div class="col col-xs-6" xid="col6" style="text-align:right;"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit4"> 
                                  <label class="x-label" xid="label8" style="width:80px;"><![CDATA[退货金额：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output16" bind-ref="ref(&quot;col4&quot;)"/>
                                </div>
                              </div>  
                              <div class="col col-xs-6" xid="col3"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output12" bind-ref="ref(&quot;col7&quot;)"/> 
                              </div>  
                              <div class="col col-xs-6" xid="col8"> 
                                <div component="$UI/system/components/justep/output/output"
                                  class="x-output" xid="output19" bind-ref="ref(&quot;col8&quot;)"/>
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
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   <div class="x-panel-content x-scroll-view" xid="content10" _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:40177/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" style="background-color:white;" data="orderData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="border-Two" bind-click="li2Click">
       <div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row2">
        <div class="col col-xs-12" xid="col10" style="font-weight:bold;">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
          <label class="x-label" xid="label1" style="width:80px;font-weight:bold;">经销商：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='ref("col1")'></div></div> </div> 
        <div class="col col-xs-12" xid="col15" style="font-weight:bold;">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
          <label class="x-label" xid="label2" style="width:80px;font-weight:bold;">单号：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("col2")'></div></div> </div> 
        <div class="col col-xs-6" xid="col9">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
          <label class="x-label" xid="label3" style="width:80px;">退货数量：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("col3")'></div></div> </div> 
        <div class="col col-xs-6" xid="col5" style="text-align:right;">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
          <label class="x-label" xid="label4" style="width:80px;">退货金额：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("col4")'></div></div> </div> 
        <div class="col col-xs-6" xid="col14">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("col7")'></div></div> 
        <div class="col col-xs-6" xid="col4">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("col8")'></div></div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div> </div></div> 
          <div class="x-contents-content" xid="content7"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
   <div class="x-panel-content x-scroll-view" xid="content11" _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:40177/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3">
   <div class="x-content-center x-pull-down container" xid="div7">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"></i>
    <span class="x-pull-down-label" xid="span9">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div8">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" style="background-color:white;" data="orderData">
     <ul class="x-list-template" xid="listTemplateUl3">
      <li xid="li3" class="border-Two" bind-click="li2Click">
       <div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row4">
        <div class="col col-xs-12" xid="col19" style="font-weight:bold;">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
          <label class="x-label" xid="label9" style="width:80px;font-weight:bold;">经销商：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output17" bind-ref='ref("col1")'></div></div> </div> 
        <div class="col col-xs-12" xid="col21" style="font-weight:bold;">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
          <label class="x-label" xid="label10" style="width:80px;font-weight:bold;">单号：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='ref("col2")'></div></div> </div> 
        <div class="col col-xs-6" xid="col18">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
          <label class="x-label" xid="label11" style="width:80px;">退货数量：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref='ref("col3")'></div></div> </div> 
        <div class="col col-xs-6" xid="col17" style="text-align:right;">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
          <label class="x-label" xid="label12" style="width:80px;">退货金额：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='ref("col4")'></div></div> </div> 
        <div class="col col-xs-6" xid="col20">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-ref='ref("col7")'></div></div> 
        <div class="col col-xs-6" xid="col16">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output7" bind-ref='ref("col8")'></div></div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div9">
    <span class="x-pull-up-label" xid="span7">加载更多...</span></div> </div></div> </div></div>
  </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span></div>
