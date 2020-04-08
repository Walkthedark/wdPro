<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data>
    <column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="sn" type="String" xid="xid3"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="costDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/statementsListCost.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="paymentDialog" src="$UI/TheSaleEnterprise/CustomerManagement/dialog/statementsPayment.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属经销商对账单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属经销商对账单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" _xid="C7E1BB556C000001138D1E5D797C1106" style="bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
   <div class="col col-xs-12" xid="col4"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label font-One" xid="label2" style="width:110px;"><![CDATA[经销商名称：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output1" bind-ref='$model.CData.ref("name")'></div></div></div>
   <div class="col col-xs-12" xid="col5"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label font-One" xid="label3" style="width:110px;"><![CDATA[经销商编号：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output2" bind-ref='$model.CData.ref("sn")'></div></div></div>
   <div class="col col-xs-12" xid="col6"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="background-color:white;" bind-click="row3Click">
   <div class="x-col border-Two" xid="col8">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4">
     <div class="col col-xs-2" xid="col7" style="height:40;">
      <img src="$UI/TheSaleEnterprise/CustomerManagement/img/001.png" alt="" xid="image3" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col7" style="height:40;">
      <label xid="label4" style="margin-top:10px;" class="font-One"><![CDATA[费用对账单]]></label></div> 
     <div class="col col-xs-3" xid="col8" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image4" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="background-color:white;" bind-click="row5Click">
   <div class="x-col border-Two" xid="col9">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row6">
     <div class="col col-xs-2" xid="col10" style="height:40;">
      <img src="$UI/TheSaleEnterprise/CustomerManagement/img/001.png" alt="" xid="image1" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col11" style="height:40;">
      <label xid="label5" style="margin-top:10px;" class="font-One"><![CDATA[货款对账单]]></label></div> 
     <div class="col col-xs-3" xid="col12" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image2" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div></div></div></div>
   </div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
