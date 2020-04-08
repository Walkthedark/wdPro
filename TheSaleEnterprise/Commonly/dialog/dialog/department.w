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
  <column name="title" type="String" xid="xid2"></column></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="cData" idColumn="temp" autoNew="true"><column name="temp" type="String" xid="xid7"></column>
  <column name="select" type="String" xid="xid8"></column>
  <column name="selectM" type="String" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="110"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="选择部门"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">选择部门</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
       
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col2"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1"> 
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入部门名称" bind-ref='$model.cData.ref("temp")'/>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button3" icon="linear linear-magnifier" onClick="button3Click"> 
          <i xid="i3" class="linear linear-magnifier"/>  
          <span xid="span2" >查询</span> 
        </a> 
      </div></div>
   </div></div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row1" style="margin-left:4%;width:92%;"> 
        <div class="x-col" xid="col1"> 
          <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group x-radio-group-vertical"
            xid="radioGroup1" bind-itemset="depData" bind-itemsetValue="ref(&quot;id&quot;)"
            bind-itemsetLabel='ref("title")' name="dep" bind-ref='$model.cData.ref("select")'/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col x-col-20" xid="col4"/>  
        <div class="x-col" xid="col5"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="保 存" xid="button2" style="width:100%;" onClick="button2Click"> 
            <i xid="i2"/>  
            <span xid="span1">保 存</span> 
          </a> 
        </div>  
        <div class="x-col x-col-20" xid="col6"/> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
