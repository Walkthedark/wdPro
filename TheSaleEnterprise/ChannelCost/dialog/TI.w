<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <data xid="default2">[{"id":"1","col1":"安顺市新城区副食品经销部","col2":"201802170001","col3":"2018-01-01","col4":"区域领导审批","col5":"15990元","col6":"","col7":"","col8":""},{"id":"2","col1":"柳州市白云区经销部","col2":"201802170002","col3":"2018-01-01","col4":"已作废","col5":"0元","col6":"","col7":"","col8":""}]</data>  
      <column name="id" type="String" xid="xid1"></column>
  <column name="jxs_id" type="String" xid="xid2"></column>
  <column name="sn" type="String" xid="xid3"></column>
  <column name="ctime" type="String" xid="xid4"></column>
  <column name="status" type="String" xid="xid5"></column>
  <column name="tax" type="String" xid="xid6"></column>
  <column name="jxs" type="String" xid="xid7"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="Ti费用核销"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">Ti费用核销</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView2"> 
        <div class="x-content-center x-pull-down container" xid="div6"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
          <span class="x-pull-down-label" xid="span10">下拉刷新...</span>
        </div>  
        <div class="x-scroll-content" xid="div5"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list2" style="padding-top:10px;background-color:white;" data="pData"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2" class="border-Two"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                  xid="row3"> 
                  <div class="col col-xs-9" xid="col20" style="font-weight:bold;"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit13"> 
                      <label class="x-label" xid="label7"/>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit font-One" xid="output5" bind-ref='ref("jxs")'/>
                    </div> 
                  </div>  
                  <div class="col col-xs-3" xid="col17" style="text-align:right;"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-default" label="流程图" xid="button6" onClick="button6Click"> 
                      <i xid="i8"/>  
                      <span xid="span9">流程图</span>
                    </a> 
                  </div>  
                  <div class="col col-xs-6" xid="col19" style="font-weight:bold;"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit12"> 
                      <label class="x-label" xid="label6">编号：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output6" bind-ref='ref("sn")'/>
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col23"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit11" style="text-align:right;"> 
                      <label class="x-label" xid="label8" style="x;"><![CDATA[]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output7" bind-ref='ref("ctime")'/>
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit17"> 
                      <label class="x-label" xid="label5"><![CDATA[状态：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output8" bind-ref='ref("status")'/>
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col1" style="text-align:right;"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit1"> 
                      <label class="x-label" xid="label1"/>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output1" bind-ref='ref("tax")'/>
                    </div> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" position="top" style="height:100%;width:100%;" opacity="1">
   <div class="x-popOver-overlay" xid="div10"></div>
   <div class="x-popOver-content" xid="div11" style="height:100%;width:100%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
     <div class="x-panel-top" xid="top2">
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title" xid="titleBar1" title="流程图">
       <div class="x-titlebar-left" xid="left1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="返回" xid="button4" onClick='{"operation":"popOver1.hide"}'>
         <i xid="i4"></i>
         <span xid="span3">返回</span></a> </div> 
       <div class="x-titlebar-title" xid="title1">流程图</div>
       <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
     <div class="x-panel-content" xid="content1">
      <iframe src="" id="iframeMap1" height="100%" width="100%" xid="iframe1"></iframe></div> 
     <div class="x-panel-bottom" xid="bottom1"></div></div> </div> </div></div>
