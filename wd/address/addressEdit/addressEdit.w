<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="编辑地址"
        class="x-titlebar" style="background-color:#47D1D1;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">编辑地址</div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/controlGroup/controlGroup"
        class="x-control-group" title="title" xid="controlGroup1"> 
      <!--   <div class="x-control-group-title" xid="controlGroupTitle1"> 
          <span xid="span1">title</span>
        </div>   -->
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30"
          xid="labelEdit2"> 
          <label class="x-label" xid="label2" style="width:80px;"><![CDATA[客户名称]]></label>  
          <div class="x-edit" xid="div2"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" placeHolder="请输入"></input></div>
        </div>
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" style="width:80px;"><![CDATA[联系人]]></label>
   <div class="x-edit" xid="div3"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" placeHolder="姓名"></input></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4" style="width:80px;"><![CDATA[联系方式]]></label>
   <div class="x-edit" xid="div4"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" placeHolder="手机号码"></input></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label10" xid="inputDistpicker">
   <label class="x-label" xid="label6" style="width:80px;"><![CDATA[省/市/区]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-click="input1Click" readonly="true" placeHolder="选择省市区"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:80px;"><![CDATA[详细地址]]></label>
   <div class="x-edit" xid="div7">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input5" placeHolder="详细地址"></input></div> </div></div>
    </div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="保存" xid="save" style="border-top:0;border-left:0;border-right:0;background-color:#f66;width:100%;margin-top:-5px;box-shadow:2px 3px 6px #e6e7e8;" onClick="saveClick">
     <i xid="i7"></i>
     <span xid="span10">保存</span></a> </div> </div></div></div> 
<div component="$UI/system/components/justep/distpicker/distpicker2" class="x-popPicker" xid="distPicker2" dismissible="true" onOK="doOK" style="left:39px;top:11px;">
   <div class="x-popPicker-overlay" xid="div1"></div>
   <div class="x-popPicker-content" xid="div5">
    <div class="x-poppicker-header" xid="div6">
     <button class="btn btn-default x-btn-ok" xid="button1">确定</button></div> </div> </div></div>
