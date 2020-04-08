<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;2018-02-02&quot;,&quot;col2&quot;:&quot;15:29:30&quot;,&quot;col4&quot;:&quot;迟到，没有下班签到记录&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;2018-02-03&quot;,&quot;col2&quot;:&quot;15:29:30&quot;,&quot;col3&quot;:&quot;16:29:30&quot;,&quot;col4&quot;:&quot;上班签到正常，早退&quot;}]</data>
  <column name="id" type="String" xid="xid1"></column>
  <column name="date" type="String" xid="xid2"></column>
  <column name="sbsj" type="String" xid="xid3"></column>
  <column name="xbsj" type="String" xid="xid4"></column>
  <column name="bz" type="String" xid="xid5"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog" src="$UI/TheSaleEnterprise/IntegratedQuery/dialog/workQueryInfo.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="考勤查询"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">考勤查询</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" style="background-color: rgb(240, 240, 240); bottom: 0px; background-size: cover; background-image: url(http://localhost:45635/x5/UI2/v_/TheSaleEnterprise/IntegratedQuery/dialog/none);"
      _xid="C7E2C3ADF42000016182A4937EC0DAF0"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span>
        </div>  
        <div class="x-scroll-content" xid="div2">
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="CData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" style="background-color:white;" class="mar2 border-Two" bind-click="li1Click">
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row1"> 
                  <div class="x-col" xid="col1">
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row2" style="padding:0px;margin:0px;"> 
                      <div class="col col-xs-6" xid="col4"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:80px;"><![CDATA[上班时间：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("sbsj")'></div></div></div>  
                      <div class="col col-xs-6" xid="col5"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("date")' style="text-align:right;"></div></div></div>  
                      <div class="col col-xs-12" xid="col6"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" style="width:80px;"><![CDATA[下班时间：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("xbsj")'></div></div></div>
                    <div class="col col-xs-12" xid="col7">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
    <label class="x-label" xid="label4" style="width:80px;"><![CDATA[备注：]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("bz")'></div></div> </div></div>
                  </div> 
                </div>
              </li>
            </ul> 
          </div>
        </div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span2">加载更多...</span>
        </div> 
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
