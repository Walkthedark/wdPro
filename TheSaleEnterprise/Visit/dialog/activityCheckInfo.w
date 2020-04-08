<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="LData" idColumn="id">
   <column name="id" type="String" xid="column34"></column>
   <column name="feetype" type="String" xid="column35"></column>
   <column name="start" type="String" xid="column29"></column>
   <column name="end" type="String" xid="column30"></column>
   <column name="pro_type" type="String" xid="column31"></column>
   <column name="pro" type="String" xid="column32"></column>
   <column name="type" type="String" xid="column33"></column>
   <column name="hc_status" type="String" xid="xid1"></column>
   <column name="sn" type="String" xid="xid2"></column>
   <column name="imgSrc" type="String" xid="xid3"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/activityCheckNew.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="市场活动检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">市场活动检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" _xid="C7DFADB3D7F00001A85171B66873D660"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span>
        </div>  
        <div class="x-scroll-content" xid="div2">
          <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="LData">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4" class="border-Two">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
      <div class="x-col" xid="col29">
       <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
        <div class="col col-xs-8 font-One" xid="col27" style="height:40px;">
         <div component="$UI/system/components/justep/output/output" class="x-output font-One" xid="output15" bind-ref='ref("sn")' style="float:left;"></div>
         <a component="$UI/system/components/justep/button/button" class="btn btn-default4" label="button" xid="button7" style="height:25px;float:left;margin-top:7px;margin-left:5px;    padding: 2px 12px;" bind-text=' val("type")' target="content4">
          <i xid="i10"></i>
          <span xid="span14" bind-text='ref("col2")' style="display:block;margin-top:-7px;"></span></a> </div> 
        <div class="col col-xs-4" xid="col28" style="text-align:right;height:40px;">
         <img alt="" xid="image1" bind-attr-src=' val("imgSrc")'></img></div> 
        <div class="col col-xs-12" xid="col6">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
          <label class="x-label" xid="label8" style="width:80px;">活动产品：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output13" bind-ref='ref("pro")'></div></div> </div> 
        <div class="col col-xs-12" xid="col7">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
          <label class="x-label" xid="label7" style="width:80px;">费用类型：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output16" bind-ref='ref("feetype")'></div></div> </div> 
        <div class="col col-xs-12" xid="col8">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
          <label class="x-label" xid="label9" style="width:80px;">活动时间：</label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output14" bind-ref='ref("start")' onRender="output14Render"></div></div> </div> </div> </div> </div> </li> </ul> </div></div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span2">加载更多...</span>
        </div> 
      </div>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
