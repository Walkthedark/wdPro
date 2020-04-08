<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="depReceiver"/>  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="depData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"人事部"},{"id":"2","col1":"销售部"},{"id":"3","col1":"采购部"}]</data>  
      <column name="id" type="String" xid="xid1"></column>
  <column name="title" type="String" xid="xid2"></column>
  <column name="sn" type="String" xid="xid3"></column>
  <column name="shr" type="String" xid="xid4"></column>
  <column name="shdh" type="String" xid="xid5"></column>
  <column name="shdz" type="String" xid="xid6"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cData" idColumn="temp" autoNew="true">
      <column name="temp" type="String" xid="xid7"/>  
      <column name="select" type="String" xid="xid8"/>  
      <column name="selectM" type="String" xid="xid9"/>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="clientData" idColumn="client_id"><column name="client_id" type="String" xid="xid10"></column>
  <column name="client_name" type="String" xid="xid11"></column>
  <column name="client_sn" type="String" xid="xid12"></column>
  <column name="client_source" type="String" xid="xid13"></column>
  <column name="department_name" type="String" xid="xid14"></column>
  <column name="is_dh" type="String" xid="xid15"></column>
  <column name="level_name" type="String" xid="xid16"></column>
  <column name="mobile" type="String" xid="xid17"></column>
  <column name="name" type="String" xid="xid18"></column>
  <column name="salesman_name" type="String" xid="xid19"></column>
  <column name="user_name" type="String" xid="xid20"></column>
  <column name="area" type="String" xid="xid21"></column>
  <column name="level_id" type="String" xid="xid22"></column>
  <column name="address" type="String" xid="xid23"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="110"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="选择客户"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">选择客户</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
        <div class="x-col" xid="col2">
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input1" placeHolder="请输入客户名称/收货人/收货手机号" bind-ref="$model.cData.ref(&quot;temp&quot;)"/>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon"
              label="查询" xid="button3" icon="linear linear-magnifier" onClick="button3Click"> 
              <i xid="i3" class="linear linear-magnifier"/>  
              <span xid="span2">查询</span> 
            </a> 
          </div>
        </div> 
      </div>
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="clientData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two" bind-click="li1Click"> 
                <div xid="div1" class="list-group-item" style="padding:7px 5px 5px 5px;"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col " xid="col1"><span xid="span3" bind-text='val("client_name")'><![CDATA[上海市浦东新区]]></span><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs " label="三级代理" xid="button4" bind-text=' val("level_name")'>
   <i xid="i4"></i>
   <span xid="span5">三级代理</span></a></div>
   <div class="x-col x-col-10" xid="col4"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col7"><h5 xid="h51" style="color:#989898;"><![CDATA[地址:上海市，杨浦区，宁国路第三大道15弄大楼502]]></h5></div></div></div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn_bord" label="代下单" xid="button2" style="color:#5C5C5C;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#56B9C9 #56B9C9 #56B9C9 #56B9C9;margin-top:30px;width:60px;">
   <i xid="i2"></i>
   <span xid="span1">代下单</span></a></div></div></div></li> 
            </ul> 
          </div></div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
