<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:-4px;left:14px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="materialData" idColumn="id" onCustomRefresh="materialDataCustomRefresh">
   <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="物料名称" name="wlmc" type="String" xid="xid2"></column>
  <column label="1正常2异常" name="jcjg" type="String" xid="xid3"></column>
  <column label="数量" name="jcskcsl" type="String" xid="xid4"></column>
  <column label="检查描述" name="jcms" type="String" xid="xid5"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newMaterialInspection.w" forceRefreshOnOpen="true" onClose="newDialogClose"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="物料检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">物料检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11"/>  
            <div class="x-col" xid="col12"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="填 写" xid="button4" style="width:100%;" onClick="button4Click"> 
                <i xid="i5"/>  
                <span xid="span6">填 写</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div> 
        </div>  
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF87FBB4B00001E4759D02186014A5" style="background-size: cover; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" style="background-color:white;">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="materialData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="border-Two">
       <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row1">
        <div class="x-col" xid="col1">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4">
          <div class="col col-xs-12" xid="col7">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
            <label class="x-label font-One" xid="label1" style="width:100px;"><![CDATA[物料名称：]]></label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output1" bind-ref='ref("wlmc")'></div></div> </div> 
          <div class="col col-xs-12" xid="col8">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
            <label class="x-label" xid="label2" style="width:100px;"><![CDATA[检查结果：]]></label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("jcjg")'></div></div> </div> 
          <div class="col col-xs-12" xid="col9">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
            <label class="x-label" xid="label3" style="width:100px;"><![CDATA[数量：]]></label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("jcskcsl")'></div></div> </div> 
          <div class="col col-xs-12" xid="col15">
           <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
            <label class="x-label" xid="label4" style="width:100px;"><![CDATA[检查描述：]]></label>
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref='ref("jcms")'></div></div> </div> 
          </div> </div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
        <div class="x-col" xid="col4"></div>
        <div class="x-col" xid="col6" style="text-align:right;">
         <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="true" xid="buttonGroup1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="删除" xid="button2" icon="linear linear-trash" style="color:#000000;" onClick="button2Click">
           <i xid="i3" class="linear linear-trash"></i>
           <span xid="span3">删除</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="修改" xid="button3" icon="linear linear-pencil" style="color:#000000;" onClick="button3Click">
           <i xid="i4" class="linear linear-pencil"></i>
           <span xid="span5">修改</span></a> </div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>  
        <div class="x-panel-bottom" xid="bottom1"/> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="editDialog" src="$UI/TheSaleEnterprise/Visit/dialog/editMaterialInspection.w" forceRefreshOnOpen="true" onClose="newDialogClose"></span></div>
