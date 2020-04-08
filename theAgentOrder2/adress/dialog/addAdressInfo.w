<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="Long" xid="xid2"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2" style="background-color:#F2F1F2;"><div xid="div1" style="padding-left:5px;background-color:white;"><div xid="div4" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[发货方式]]></label>
   <div class="x-edit" xid="div6" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right" label="物流" xid="button1" icon="icon-chevron-right" style="color:#4C4C4C;font-size:16px">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span1">物流</span></a></div></div></div>
  <div xid="div8" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
      <label class="x-label" xid="label2"><![CDATA[物流公司]]></label>
      <div class="x-edit" xid="div7" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right" label="随机" xid="button2" icon="icon-chevron-right" style="color:#4C4C4C;font-size:16px">
   <i xid="i2" class="icon-chevron-right"></i>
   <span xid="span2">随机</span></a></div></div></div></div>
  <div xid="div2" style="height:20px;"></div>
  <div xid="div13" style="padding-left:5px;background-color:white;">
   
   <div xid="div9" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6"><![CDATA[收货人]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2"></input></div></div> 
  <div xid="div14" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
    <label class="x-label" xid="label7"><![CDATA[联系方式]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" dataType="Integer" bind-ref='$model.data1.ref("name")' onBlur="input3Blur"></input></div> </div>
  <div xid="div15" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11"><![CDATA[所在地区]]></label>
   <div class="x-edit" xid="div18" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right" label="地址" xid="button6" icon="icon-chevron-right" style="color:#4C4C4C;font-size:16px" onClick='{"operation":"windowDialog1.open"}'>
   <i xid="i6" class="icon-chevron-right"></i>
   <span xid="span6">地址</span></a></div></div></div>
  <div xid="div16" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
    <label xid="label9" class="x-label"><![CDATA[详细地址]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5"></input></div> </div>
  <div xid="div17" class="list-group-item" style="padding:5px 5px 5px 5px;text-align:center;border-left-style:none;">
   <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" label="是否设置为默认地址" checkedValue="1" uncheckedValue="0"></span></div></div></div>
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius" label="保存地址" xid="button3" style="width:80%;margin-top:5px;background-color:#00BFFF;border-style:none none none none;" bind-click="button3Click">
   <i xid="i3"></i>
   <span xid="span3">保存地址</span></a></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/theAgentOrder2/adress/dialog/text.w" status="normal" width="90%" showTitle="true" title="选择地址"></span></div>