<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData" idColumn="id"> 
      <column name="id" type="String" xid="column1"></column>
  <column name="col1" type="String" xid="xid1"></column>
  <column name="col2" type="String" xid="xid2"></column>
  <column name="col3" type="String" xid="xid3"></column>
  <column name="col4" type="String" xid="xid4"></column>
  <column name="col5" type="String" xid="xid5"></column>
  <column name="col6" type="String" xid="xid6"></column>
  <column name="col7" type="String" xid="xid7"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;万家天河公园分店&quot;,&quot;col2&quot;:&quot;2018-01-26&quot;,&quot;col3&quot;:&quot;78元&quot;,&quot;col4&quot;:&quot;1&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;百佳金田店&quot;,&quot;col2&quot;:&quot;2018-01-26&quot;,&quot;col3&quot;:&quot;26元&quot;,&quot;col4&quot;:&quot;2&quot;}]</data></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="selectData" idColumn="id"><column name="id" type="String" xid="xid8"></column>
  <column name="col1" type="String" xid="xid9"></column>
  <column name="col2" type="String" xid="xid10"></column>
  <column name="col3" type="String" xid="xid11"></column>
  <column name="col4" type="String" xid="xid12"></column>
  <column name="col5" type="String" xid="xid13"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;万家天河公园分店&quot;,&quot;col2&quot;:&quot;0.0&quot;,&quot;col3&quot;:&quot;156.0&quot;,&quot;col4&quot;:&quot;156.0&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="updateDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/branchesUpdate.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/activityCheck.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="网点订单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">网点订单</div>  
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
              label="下网点订单" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">下网点订单</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="网点订单查询" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">网点订单查询</span> 
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
                    xid="row3" style="background-color:white;"> 
                    <div class="x-col x-col-20" xid="col11"/>  
                    <div class="x-col" xid="col12"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn border-r" label="填 写" xid="button4" style="width:100%;"
                        target="content4" onClick="button4Click"> 
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
                        data="listData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                             
                          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col8"><div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col2"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label  font-One" xid="label3" style="width:90px;"><![CDATA[网点名称：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit  font-One" xid="output7" bind-ref='ref("col1")'></div></div></div>  
                              <div class="col col-xs-12" xid="col1"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label4" style="width:90px;"><![CDATA[订单日期：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='ref("col2")'></div><img src="$UI/TheSaleEnterprise/Commonly/img/009.png" alt="" xid="image1" style="width:20px;"></img><div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='val("col3")' style="margin-top:-10px;"></div></div>
  
  </div>  
                              </div></div>
   <div class="x-col x-col-20" xid="col17" style="text-align:right;"><img src="$UI/TheSaleEnterprise/Commonly/img/wcl.png" alt="" xid="image3" style="width:50px;" bind-visible=' val("col4") == 1'></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col29" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-default2" label="修改" xid="button9" onClick="button9Click">
    <i xid="i7"></i>
    <span xid="span5">修改</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default3" label="删除" xid="button10" style="margin-left:5px;">
    <i xid="i11"></i>
    <span xid="span15">删除</span></a></div>
   </div></li> 
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
                    xid="row4" style="background-color:white;"> 
                    <div class="x-col" xid="col15"> 
                      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit3">
   <label class="x-label" xid="label1"><![CDATA[时间：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" dataType="Date"></input></div></div>  
                    <div class="x-col" xid="col3"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4">
   <label class="x-label" xid="label2"><![CDATA[至：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" dataType="Date"></input></div></div>
  <div class="x-col x-col-20" xid="col4"><a component="$UI/system/components/justep/button/button" class="btn btn-default2 " label="查询" xid="button5" style="margin-top:7px;">
   <i xid="i4"></i>
   <span xid="span7">查询</span></a></div></div>  
                  </div>  
                <div class="x-panel-content" xid="content2" _xid="C7DF1CBB13E00001685AFC9516009210"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row mar2" xid="row6">
   <div class="x-col" xid="col9"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='"已处理订单金额：0.0元"'></div>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='"未处理订单金额：156.0元"'></div>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='"总订单金额：156.0元"'></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col5"><div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" class="x-grid-no-bordered" xid="grid1" data="selectData" height="auto" width="100%" headerMenu="hideColumn,setColumn,groupColumn,saveLayout" multiselectWidth="-1" showRowNumber="true">
   <columns xid="columns1"><column width="100" name="col1" xid="column2" label="网点名称"></column>
  <column width="100" name="col2" xid="column3" label="已处理"></column>
  <column width="100" name="col3" xid="column4" label="未处理"></column>
  <column width="100" name="col4" xid="column5" label="总额"></column></columns></div></div>
   </div>
  </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
