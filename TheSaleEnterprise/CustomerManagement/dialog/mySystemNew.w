<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:331px;left:440px;height:auto;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="systemInfo" idColumn="title" autoNew="true"><column name="title" type="String" xid="xid1"></column>
  <column name="jxs_id" type="String" xid="xid2"></column>
  <column name="twoCType" type="String" xid="xid3"></column>
  <column name="cusType" type="String" xid="xid5"></column>
  <column name="stuff" type="String" xid="xid4"></column>
  <column name="sj" type="String" xid="xid6"></column>
  <column name="detailAddress" type="String" xid="xid7"></column>
  <column name="brief" type="String" xid="xid8"></column>
  <column name="jxs_name" type="String" xid="xid9"></column>
  <column name="twoCTypeName" type="String" xid="xid10"></column>
  <column name="cusTypeName" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="two" idColumn="id"><column name="id" type="String" xid="xid12"></column>
  <column name="title" type="String" xid="xid13"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cusType" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
   <column name="title" type="String" xid="column2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="我的系统"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">我的系统</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div id="container" xid="div1" style="display:none;"></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
   <div class="col col-xs-12" xid="col4"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:95px;"><![CDATA[系统名称：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.systemInfo.ref("title")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit2">
   <label class="x-label" xid="label2" style="width:95px;">所属经销商：</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.systemInfo.ref("jxs_name")'></input><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="选择" xid="button3" icon="linear linear-magnifier" onClick="button3Click">
   <i xid="i3" class="linear linear-magnifier"></i>
   <span xid="span2">选择</span></a></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit3">
   <label class="x-label" xid="label3" style="width:95px;"><![CDATA[二级渠道：]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-ref='$model.systemInfo.ref("twoCType")' bind-labelRef='$model.systemInfo.ref("twoCTypeName")' bind-options="two" bind-optionsValue="id" bind-optionsLabel="title"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit4">
   <label class="x-label" xid="label4" style="width:95px;"><![CDATA[客户类型：]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-ref='$model.systemInfo.ref("cusType")' bind-labelRef='$model.systemInfo.ref("cusTypeName")' bind-options="cusType" bind-optionsValue="id" bind-optionsLabel="title"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit5">
   <label class="x-label" xid="label5" style="width:95px;"><![CDATA[联系人：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.systemInfo.ref("stuff")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit6">
   <label class="x-label" xid="label6" style="width:95px;"><![CDATA[手机：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.systemInfo.ref("sj")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 border-Two" xid="labelEdit7" style="height:115px;">
   <label xid="label7" style="width:95px;margin-top:-50px;" class="x-label"><![CDATA[详细地址：]]></label>
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="点击获取当前地址" xid="button2" icon="img:$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png|" style="margin-left:-105px;margin-top:40px;" onClick="map">
   <i xid="i2"></i>
   <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png" xid="image1" style="width:20px;"></img><span xid="span1" style="font-size:8px;">点击获取当前地址</span></a><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="addresText" style="height:100px;" bind-ref='$model.systemInfo.ref("detailAddress")'></textarea></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="label8" style="width:95px;"><![CDATA[备注：]]></label>
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea2" bind-ref='$model.systemInfo.ref("brief")'></textarea></div>
  </div>
   </div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:20px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="提 交" xid="button4" style="width:100%;" onClick="button4Click">
    <i xid="i4"></i>
    <span xid="span5">提 交</span></a> </div>
  </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/dealers.w" forceRefreshOnOpen="true" onReceived="windowDialog1Received"></span>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1"></span></div>
