<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="yData" idColumn="id"> 
      <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;西部人葵瓜子&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;50元/箱&quot;,&quot;col4&quot;:&quot;无&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;QQ糖&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;8元/箱&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;芝士卷&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;11元/箱&quot;,&quot;col4&quot;:&quot;&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;col1&quot;:&quot;冰皮月饼&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;50元/箱&quot;,&quot;col5&quot;:&quot;&quot;}]</data>
  <column name="id" type="String" xid="column11"></column>
  <column name="prod" type="String" xid="column12"></column>
  <column name="status" type="String" xid="column13"></column>
  <column name="retailPrice" type="String" xid="column14"></column>
  <column name="beizhu" type="String" xid="column15"></column>
  <column name="unit" type="String" xid="column16"></column></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dData" idColumn="id">
   <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;西部人葵瓜子&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;50元/箱&quot;,&quot;col4&quot;:&quot;无&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;QQ糖&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;8元/箱&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;芝士卷&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;11元/箱&quot;,&quot;col4&quot;:&quot;&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;col1&quot;:&quot;冰皮月饼&quot;,&quot;col2&quot;:&quot;正常&quot;,&quot;col3&quot;:&quot;50元/箱&quot;,&quot;col5&quot;:&quot;&quot;}]</data>
   <column name="id" type="String" xid="column2"></column>
   <column name="prod" type="String" xid="column1"></column>
   <column name="status" type="String" xid="column6"></column>
   <column name="retailPrice" type="String" xid="column5"></column>
   <column name="beizhu" type="String" xid="column4"></column>
   <column name="unit" type="String" xid="column3"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myBranchesInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/barcodeAdd.w" onClose="newDialogClose" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="进场条码"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">进场条码</div>  
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
              label="已进场" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">已进场</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="待审批" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">待审批</span> 
            </a> 
          </div>  
          </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
                  style="bottom: 0px; background-size: cover; background-image: url(http://localhost:40672/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i7"/>  
                      <span class="x-pull-down-label" xid="span8">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" data="yData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li1Click"> 
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row1"> 
                              <div class="x-col" xid="col1"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row2"> 
                                  <div class="col col-xs-12" xid="col4"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2">
   <label class="x-label" xid="label1"><![CDATA[产品：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("prod")'></div></div></div>  
                                  <div class="col col-xs-12" xid="col5"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit" xid="labelEdit1"> 
                                      <label class="x-label" xid="label3"><![CDATA[状态：]]></label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output9"
                                        bind-ref='ref("status")'/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-12" xid="col10"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit3">
   <label class="x-label" xid="label2"><![CDATA[价格：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("retailPrice")'></div></div></div><div class="col col-xs-12" xid="col8"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[备注：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("beizhu")'></div></div></div></div> 
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
                <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="background-color:white;">
   <div class="x-col x-col-20" xid="col16"></div>
   <div class="x-col" xid="col15">
    <a component="$UI/system/components/justep/button/button" class="btn border-r" label="填 写" xid="button5" style="width:100%;" target="content4" onClick="button5Click">
     <i xid="i6"></i>
     <span xid="span7">填 写</span></a> </div> 
   <div class="x-col x-col-20" xid="col14"></div></div></div><div class="x-panel-content  x-scroll-view" xid="content2" _xid="C7DF1CBB13E00001685AFC9516009210"
                  style="bottom: 0px; background-size: cover; top: 96px; background-image: url(http://localhost:40672/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span6">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="dData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="border-Two" bind-click="li1Click">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
        <div class="x-col" xid="col7">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row5">
          <div class="col col-xs-12" xid="col3">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7">
            <label class="x-label" xid="label6">产品：</label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref='ref("prod")'></div></div> </div> 
          <div class="col col-xs-12" xid="col6">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit5">
            <label class="x-label" xid="label8">状态：</label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='ref("status")'></div></div> </div> 
          <div class="col col-xs-12" xid="col9">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit6">
            <label class="x-label" xid="label7">价格：</label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='ref("retailPrice")'></div></div> </div> 
          <div class="col col-xs-12" xid="col2">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit8">
            <label class="x-label" xid="label5">备注：</label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("beizhu")'></div></div> </div> </div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div> 
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
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
