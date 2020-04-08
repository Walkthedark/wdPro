<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData" idColumn="id"> 
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;盘老白&quot;,&quot;col2&quot;:&quot;是&quot;,&quot;col3&quot;:&quot;广西柳州市北雀路&quot;,&quot;col4&quot;:&quot;0.01千米&quot;,&quot;col5&quot;:&quot;2018-02-14至2018-02-22&quot;,&quot;col6&quot;:&quot;解决&quot;,&quot;col7&quot;:&quot;../TheSaleEnterprise/VisitSignIn/dialog/img/007.png&quot;,&quot;col8&quot;:&quot;2018-02-14 08:49&quot;,&quot;col9&quot;:&quot;&quot;,&quot;col10&quot;:&quot;&quot;,&quot;col11&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;小黑&quot;,&quot;col2&quot;:&quot;是&quot;,&quot;col3&quot;:&quot;广州白云区什么路&quot;,&quot;col4&quot;:&quot;0.01千米&quot;,&quot;col5&quot;:&quot;2018-02-14至2018-02-22&quot;,&quot;col6&quot;:&quot;解决&quot;,&quot;col7&quot;:&quot;../TheSaleEnterprise/VisitSignIn/dialog/img/005.png&quot;,&quot;col8&quot;:&quot;2018-02-14 08:49&quot;,&quot;col9&quot;:&quot;&quot;,&quot;col10&quot;:&quot;&quot;,&quot;col11&quot;:&quot;&quot;}]</data>
  <column name="id" type="String" xid="xid1"></column>
  <column name="hbr" type="String" xid="xid2"></column>
  <column name="hbtime" type="String" xid="xid3"></column>
  <column name="jyhx" type="String" xid="xid4"></column>
  <column name="addr" type="String" xid="xid5"></column>
  <column name="hdms" type="String" xid="xid6"></column>
  <column name="zp" type="String" xid="xid7"></column>
  <column name="isthis" type="String" xid="xid8"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="进场活动拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">进场活动拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="listData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="border-Two x-min-height x-scroll-view" bind-click="li1Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
      <div class="x-col" xid="col1">
       <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
        <div class="col col-xs-12 font-One" xid="col4">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
          <label class="x-label" xid="label1" style="width:80px;"><![CDATA[检核人：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("hbr")'></div>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output12" bind-ref='ref("hbtime")'></div></div> </div> 
        <div class="col col-xs-12" xid="col5">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
          <label class="x-label" xid="label2" style="width:80px;"><![CDATA[建议核销：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("jyhx")'></div></div> </div> 
        <div class="col col-xs-12" xid="col6">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
          <label class="x-label" xid="label3" style="width:80px;"><![CDATA[检核地址：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("addr")'></div></div> </div> 
        <div class="col col-xs-12" xid="col8">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
          <label class="x-label" xid="label4" style="width:80px;"><![CDATA[距离偏差：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5"></div></div> </div> 
        <div class="col col-xs-12" xid="col7">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
          <label class="x-label" xid="label5" style="width:80px;"><![CDATA[活动描述：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("hdms")'></div></div> 
  </div> 
        
        <div class="col col-xs-12" xid="col9">
         <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("zp")' onRender="output6Render"></div></div> 
        
        
        </div> </div> </div> 
  </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span5">加载更多...</span></div> </div></div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row3" style="background-color:white;">
   <div class="x-col x-col-20" xid="col3"></div>
   <div class="x-col" xid="col2">
    <a component="$UI/system/components/justep/button/button" class="btn border-r" label="点击去核检活动" xid="button4" style="width:100%;margin-top:-5px;" onClick="button4Click">
     <i xid="i5"></i>
     <span xid="span6">点击去核检活动</span></a> </div> 
   <div class="x-col x-col-20" xid="col13"></div></div></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="goodsDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/belongsMarketApproachNew.w" forceRefreshOnOpen="true" onClose="goodsDialogClose"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
