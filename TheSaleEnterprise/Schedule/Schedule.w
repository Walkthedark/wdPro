<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="InData" idColumn="id"> 
      <data xid="default1">[{"id":"1","name":"万家公用分店","address":"","state":"","code":"","daogou":"","zhongdian":"","time":"","col8":"","col9":""},{"id":"2","name":"长城饭店","address":"","state":"","code":"","daogou":"","zhongdian":"","time":"","col8":""}]</data> 
    <column name="id" type="String" xid="column12"></column>
  <column name="lx" type="String" xid="column16"></column>
  <column name="ks" type="String" xid="column15"></column>
  <column name="js" type="String" xid="column14"></column>
  <column name="dd" type="String" xid="column13"></column></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="cDate" idColumn="time" autoNew="true"><column name="time" type="String" xid="xid1"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Schedule/dialog/ScheduleNew.w" onReceived="newDialogReceived"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="日程安排"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">日程安排</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"> 
        <div class="x-col" xid="col4" style="text-align:center;"> 
          <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
            xid="inputGroup1"> 
            <div class="input-group-btn" xid="layoutWizard2"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="button4" icon="glyphicon glyphicon-triangle-left"
                style="color: #8FC41C;" onClick="button4Click"> 
                <i xid="i4" class="glyphicon glyphicon-triangle-left"/>  
                <span xid="span3"/> 
              </a> 
            </div>  
            <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
              xid="sdateInput" style="text-align:center" bind-ref='$model.cDate.ref("time")'/>  
            <div class="input-group-btn" xid="layoutWizard1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="button7" icon="glyphicon glyphicon-triangle-right"
                style="color: #8FC41C;" onClick="button7Click"> 
                <i xid="i9" class="glyphicon glyphicon-triangle-right"/>  
                <span xid="span11"/> 
              </a> 
            </div> 
          </div> 
        </div> 
      </div>  
      <!--    <div component="$UI/system/components/justep/calendar/calendar" view="month"
        day="now" firstDay="monday" lunarDay="false" xid="calendar1" onEventsSelected="calendar1EventsSelected"
        bind-click="calendar1Click"/>   -->  
      <div style="background-color:#f0f0f0;"> 
        <table class="tableWidth" style="top:0px;"> 
          <tr> 
            <th class="yw_font yt_style">周一</th>  
            <th class="yw_font yt_style">周二</th>  
            <th class="yw_font yt_style">周三</th>  
            <th class="yw_font yt_style">周四</th>  
            <th class="yw_font yt_style">周五</th>  
            <th class="yw_font yt_style">周六</th>  
            <th class="yw_font yt_style">周日</th> 
          </tr> 
        </table> 
      </div>  
      <div class="top10" id="divTable1" style="width:100%;" xid="div15"/>  
       
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col2"><label xid="label2"><![CDATA[]]></label></div>
   </div><div id="troubleList" xid="div3"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="InData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
     <div class="col col-xs-12" xid="col1" style="padding:0px;margin:0px;">
      <div component="$UI/system/components/justep/output/output" class="x-output font-One" xid="output8" bind-ref='ref("lx")' style="padding-top:0px;"></div></div> 
     <div class="col col-xs-6" xid="col5" style="padding:0px;margin:0px;">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit1" style="margin-top:8px;">
       <label class="x-label font-Three" xid="label3"><![CDATA[开始时间：]]></label>
       <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-Three" xid="output9" bind-ref='ref("ks")'></div></div> </div> 
     <div class="col col-xs-6" xid="col10" style="padding:0px;margin:0px;">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit3" style="margin-top:8px;">
   <label class="x-label font-Three" xid="label1"><![CDATA[结束时间：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-Three" xid="output1" bind-ref='ref("js")'></div></div></div> 
     
     <div class="col col-xs-12" xid="col6" style="padding:0px;margin:0px;">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
       <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png" alt="" xid="image1" style="width:20px;"></img>
       <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='ref("dd")'></div></div> </div> </div> </div> </div></li></ul> </div></div>
  <div xid="div2" style="width:100%;text-align:center;display:none;" id="MyCustomerNone">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="暂无数据" xid="button5" icon="img:$UI/TheSaleEnterprise/img/ic_empty.png|">
    <i xid="i5"></i>
    <img src="$UI/TheSaleEnterprise/img/ic_empty.png" xid="image3" height="50px" style="width:50px;"></img>
    <span xid="span5" class="tr_s">暂无数据</span></a> </div>
  </div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="background-color:white;"> 
         
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="添加日程安排" xid="button2" style="width:100%;" onClick="button2Click"> 
          <i xid="i2" />  
          <span xid="span1">添加日程安排</span> 
        </a></div></div></div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
