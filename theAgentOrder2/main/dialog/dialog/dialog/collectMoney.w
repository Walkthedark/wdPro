<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="PaymenTypeData" onCustomRefresh="PaymenTypeDataCustomRefresh" idColumn="id">
   <column name="id" type="String" xid="xid57"></column>
   <column name="name" type="String" xid="xid58"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2" style="background-color:#F2F1F2;">
    <div xid="div1" class="list-group-item" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button1" style="font-size:20px;" icon="e-commerce e-commerce-renminbi">
   <i xid="i1" class="e-commerce e-commerce-renminbi"></i>
   <span xid="span1" style="color:#363636;"></span></a></div>
  <div xid="div2" style="height:20px;"></div>
  <div xid="div3" class="list-group-item"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[收款金额]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" dataType="Float"></input></div></div>
  <div xid="div4" class="list-group-item">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2"><![CDATA[收款时间]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" dataType="Date"></input></div> </div>
  <div xid="div5" class="list-group-item">
   
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[收款方式]]></label>
   <div class="x-edit" xid="div6" style="text-align:right;" bind-click="div6Click"><a component="$UI/system/components/justep/button/button" class="btn  btn-icon-right" label="现金" xid="button15" style="color:#212121;" icon="linear linear-chevronright">
   <i xid="i15" style="color:black;font-weight:bold;" class="linear linear-chevronright"></i>
   <span xid="span20">现金</span></a></div></div></div>
  <div xid="div8" class="list-group-item">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
    <label class="x-label" xid="label5"><![CDATA[备注]]></label>
    <div class="x-edit" xid="div7" style="text-align:right;">
     <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:100px;" placeHolder="请输入"></textarea></div> </div> </div></div> 
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius" label="确定" xid="button9" style="width:80%;margin-top:5px;background-color:#00BFFF;" bind-click="button3Click">
     <i xid="i9"></i>
     <span xid="span14">确定</span></a> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver4">
   <div class="x-popOver-overlay" xid="div32"></div>
   <div class="x-popOver-content div_radius" xid="div39" style="height:60%;width:75%;">
    <div xid="div41" style="height:100%;width:100%;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
      <div class="x-panel-top" xid="top2">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#E1D6BD;">
        <div class="x-titlebar-left" xid="left2"></div>
        <div class="x-titlebar-title" xid="title2">收货账户</div>
        <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
      <div class="x-panel-content" xid="content8" style="background-color:#EEEEEE;">
       <div xid="div40" style="padding:8px 3px 3px 5px;">
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list7" data="PaymenTypeData">
         <ul class="x-list-template" xid="listTemplateUl7">
          <li xid="li4" bind-click="li4Click">
           <div xid="div32" class="list-group-item">
            <div class="media" xid="media11">
             <div class="media-body" xid="mediaBody12">
              <h4 class="media-heading" xid="h41" bind-text=' val("name")' style="text-align:center;font-size:18px;color:#484848;">Media heading</h4></div> </div> </div> </li> </ul> </div> </div> </div> </div> </div> </div> </div></div>