<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="routeData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="name" type="String" xid="xid2"/>  
      <column name="address" type="String" xid="xid3"/>  
      <column name="state" type="String" xid="xid4"/>  
      <column name="code" type="String" xid="xid5"/>  
      <column name="daogou" type="String" xid="xid6"/>  
      <column name="zhongdian" type="String" xid="xid7"/>  
      <column name="time" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <column name="col9" type="String" xid="xid10"/>  
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;1.万家公用分店&quot;,&quot;address&quot;:&quot;万家公用分店大厦&quot;,&quot;state&quot;:&quot;未拜访&quot;,&quot;code&quot;:&quot;10100001&quot;,&quot;daogou&quot;:&quot;导购&quot;,&quot;zhongdian&quot;:&quot;重点&quot;,&quot;time&quot;:&quot;2018-02-12&quot;,&quot;col8&quot;:&quot;999M&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;2.长城饭店&quot;,&quot;address&quot;:&quot;渭南路111大厦&quot;,&quot;state&quot;:&quot;已拜访&quot;,&quot;code&quot;:&quot;10100002&quot;,&quot;daogou&quot;:&quot;导购&quot;,&quot;zhongdian&quot;:&quot;重点&quot;,&quot;time&quot;:&quot;2018-02-12&quot;,&quot;col8&quot;:&quot;50M&quot;}]</data></div>  
    </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="线路下网点信息"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">线路下网点信息</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top border-Two" xid="top1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="text-align:center;">
   <div class="x-col" xid="col2"><label xid="label1" class="font-One"><![CDATA[路线名：杭州-东线]]></label></div>
   </div></div>
   <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DFAAD2E06000016D8C11C415A0BF30" style="background-size: cover; background-image: url(http://localhost:44768/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="routeData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class=" border-Two"><div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row6">
   <div class="col col-xs-12" xid="col20">
    <label xid="label2" bind-text='ref("name")' class="font-One">label</label></div> 
   
   <div class="col col-xs-6" xid="col22">
    <span xid="span11" style="float:left;"><![CDATA[编号：]]></span>
    <div component="$UI/system/components/justep/output/output" xid="output1" style="float:left;" bind-ref='ref("code")'></div></div> 
   
   
   <div class="col col-xs-6" xid="col25" style="margin-top:-10px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" style="float:left;color:#FF8000;" icon="e-commerce e-commerce-shangpin">
     <i xid="i9" class="e-commerce e-commerce-shangpin"></i>
     <span xid="span13"></span></a> 
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" style="float:left;color:#FF8000;" bind-ref='ref("daogou")'></div>
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" style="float:left;color:#FF8000;margin-left:10px;" icon="e-commerce e-commerce-shangpu">
     <i xid="i10" class="e-commerce e-commerce-shangpu"></i>
     <span xid="span14"></span></a> 
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" style="float:left;color:#FF8000;" bind-ref='ref("zhongdian")'></div></div> 
   <div class="col col-xs-12" xid="col26">
    <img src="$UI/TheSaleEnterprise/Visit/dialog/img/activity_card_locate.png" alt="" xid="image1" style="width:20px;float:left;"></img><div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("address")' style="float:left;margin-top:-10px;"></div>
  </div> </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default2 btn-only-label" label="返回查看其它路线" xid="button2" onClick='{"operation":"window.close"}'>
    <i xid="i3"></i>
    <span xid="span3">返回查看其它路线</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="选择此路线" xid="button3">
    <i xid="i4"></i>
    <span xid="span5">选择此路线</span></a> </div></div></div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
