<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="checkData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;2018-02-17&quot;,&quot;col2&quot;:&quot;杨洋&quot;,&quot;col3&quot;:&quot;上海经销部&quot;,&quot;col4&quot;:&quot;4800&quot;,&quot;col5&quot;:&quot;4800&quot;,&quot;col6&quot;:&quot;13888888888&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;2018-02-17&quot;,&quot;col2&quot;:&quot;杨洋&quot;,&quot;col3&quot;:&quot;杭州经销部&quot;,&quot;col4&quot;:&quot;2500&quot;,&quot;col5&quot;:&quot;4800&quot;,&quot;col6&quot;:&quot;13888888888&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div>  
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
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="noData" idColumn="id">
   <column name="id" type="String" xid="column11"></column>
   <column name="col1" type="String" xid="column12"></column>
   <column name="col2" type="String" xid="column13"></column>
   <column name="col3" type="String" xid="column14"></column>
   <column name="col4" type="String" xid="column15"></column>
   <column name="col5" type="String" xid="column16"></column>
   <column name="col6" type="String" xid="column17"></column>
   <column name="col7" type="String" xid="column18"></column>
   <column name="col8" type="String" xid="column19"></column>
   <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;2018-02-17&quot;,&quot;col2&quot;:&quot;杨洋&quot;,&quot;col3&quot;:&quot;上海经销部&quot;,&quot;col4&quot;:&quot;未排班&quot;,&quot;col5&quot;:&quot;13888888888&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;2018-02-17&quot;,&quot;col2&quot;:&quot;杨洋&quot;,&quot;col3&quot;:&quot;杭州经销部&quot;,&quot;col4&quot;:&quot;未排班&quot;,&quot;col5&quot;:&quot;13888888888&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersSalesCheck.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="导购销量确认"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购销量确认</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48"> 
          <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1" style="background-color:#FFFFFF;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link active" label="待确认" xid="button2" target="content4">
    <i xid="i2"></i>
    <span xid="span1">待确认</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="已确认" xid="button3" target="content5">
    <i xid="i3"></i>
    <span xid="span2">已确认</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="未汇报" xid="button14" target="content7">
    <i xid="i16"></i>
    <span xid="span24">未汇报</span></a> 
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
                        data="checkData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col2" style="font-weight:bold;"> 
                                <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output13" bind-ref="ref(&quot;col1&quot;)" /></div>  
                              <div class="col col-xs-12" xid="col1" style="font-weight:bold;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="text-align:center;padding:0px;background-color:#3EA0FF;color:#ffffff;">
   <div class="x-col border-table" xid="col3"><span xid="span3"><![CDATA[导购姓名]]></span></div>
   <div class="x-col border-table" xid="col4"><span xid="span5"><![CDATA[网点名称]]></span></div>
   <div class="x-col border-table" xid="col5"><span xid="span6"><![CDATA[网点日均销量（元）]]></span></div>
  <div class="x-col border-table" xid="col6"><span xid="span7"><![CDATA[当日汇报销量（元）]]></span></div>
  <div class="x-col border-table" xid="col7"><span xid="span9"><![CDATA[手机号]]></span></div></div></div>
  <div class="col col-xs-12" xid="col29" style="font-weight:bold;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="text-align:center;padding:0px;">
    <div class="x-col border-table" xid="col28">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("col2")'></div></div> 
    
    <div class="x-col border-table" xid="col12"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("col3")'></div></div><div class="x-col border-table" xid="col13">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("col4")'></div></div> 
    <div class="x-col border-table" xid="col8">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("col5")'></div>
  <a component="$UI/system/components/justep/button/button" class="btn2 btn-default7" label="点击确认" xid="button4" style="width:60px;" onClick="button4Click">
   <i xid="i4"></i>
   <span xid="span15" style="margin-top:-4px;display:block;">点击确认</span></a></div> 
    <div class="x-col border-table" xid="col11">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("col6")' style="word-break:break-all;"></div></div> </div> </div></div> 
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
   <div class="x-panel-content x-scroll-view" xid="content2" _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:45635/x5/UI2/v_/TheSaleEnterprise/Shoppers/dialog/none);">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
     <div class="x-content-center x-pull-down container" xid="div1">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
      <span class="x-pull-down-label" xid="span22">下拉刷新...</span></div> 
     <div class="x-scroll-content" xid="div2">
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" style="background-color:white;" data="checkData">
       <ul class="x-list-template" xid="listTemplateUl1">
        <li xid="li1" class="border-Two" bind-click="li2Click">
         <div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row6">
          <div class="col col-xs-12" xid="col38" style="font-weight:bold;">
           <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output12" bind-ref='ref("col1")'></div></div> 
          <div class="col col-xs-12" xid="col40" style="font-weight:bold;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="text-align:center;padding:0px;background-color:#3EA0FF;color:#ffffff;">
            <div class="x-col border-table" xid="col39">
             <span xid="span16">导购姓名</span></div> 
            <div class="x-col border-table" xid="col36">
             <span xid="span18">网点名称</span></div> 
            <div class="x-col border-table" xid="col37">
             <span xid="span19">网点日均销量（元）</span></div> 
            <div class="x-col border-table" xid="col34">
             <span xid="span20">当日汇报销量（元）</span></div> 
            <div class="x-col border-table" xid="col35">
             <span xid="span23">手机号</span></div> </div> </div> 
          <div class="col col-xs-12" xid="col41" style="font-weight:bold;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="text-align:center;padding:0px;">
            <div class="x-col border-table" xid="col42">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='ref("col2")'></div></div> 
            <div class="x-col border-table" xid="col31">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output7" bind-ref='ref("col3")'></div></div> 
            <div class="x-col border-table" xid="col30">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='ref("col4")'></div></div> 
            <div class="x-col border-table" xid="col33">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='ref("col5")'></div>
             </div> 
            <div class="x-col border-table" xid="col32">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-ref='ref("col6")' style="word-break:break-all;"></div></div> </div> </div> </div> </li> </ul> </div> </div> 
     <div class="x-content-center x-pull-up" xid="div3">
      <span class="x-pull-up-label" xid="span21">加载更多...</span></div> </div> </div> </div></div> 
          <div class="x-contents-content" xid="content7"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
   <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:45635/x5/UI2/v_/TheSaleEnterprise/Shoppers/dialog/none);">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3">
     <div class="x-content-center x-pull-down container" xid="div7">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"></i>
      <span class="x-pull-down-label" xid="span31">下拉刷新...</span></div> 
     <div class="x-scroll-content" xid="div8">
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" style="background-color:white;" data="noData">
       <ul class="x-list-template" xid="listTemplateUl3">
        <li xid="li3" class="border-Two" bind-click="li2Click">
         <div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row9">
          <div class="col col-xs-12" xid="col51" style="font-weight:bold;">
           <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output19" bind-ref='ref("col1")' style="float:left;"></div></div> 
          <div class="col col-xs-12" xid="col53" style="font-weight:bold;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="text-align:center;padding:0px;background-color:#3EA0FF;color:#ffffff;">
            <div class="x-col border-table" xid="col52">
             <span xid="span26">导购姓名</span></div> 
            <div class="x-col border-table" xid="col49">
             <span xid="span27">网点名称</span></div> 
            
            <div class="x-col border-table" xid="col47">
             <span xid="span29"><![CDATA[班次]]></span></div> 
            <div class="x-col border-table" xid="col48">
             <span xid="span32">手机号</span></div> </div> </div> 
          <div class="col col-xs-12" xid="col54" style="font-weight:bold;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="text-align:center;padding:0px;">
            <div class="x-col border-table" xid="col55">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output16" bind-ref='ref("col2")'></div></div> 
            <div class="x-col border-table" xid="col44">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output14" bind-ref='ref("col3")'></div></div> 
            
            <div class="x-col border-table" xid="col46">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output17" bind-ref='ref("col4")'></div>
              </div> 
            <div class="x-col border-table" xid="col45">
             <div component="$UI/system/components/justep/output/output" class="x-output" xid="output20" bind-ref='ref("col5")' style="word-break:break-all;"></div></div> </div> </div> </div> </li> </ul> </div> </div> 
     <div class="x-content-center x-pull-up" xid="div9">
      <span class="x-pull-up-label" xid="span30">加载更多...</span></div> </div> </div> </div></div>
  </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
