<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:73px;left:457px;height:auto;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="enteringDate" type="String" xid="xid2"></column>
  <column name="enteringPort" type="String" xid="xid3"></column>
  <column name="enteringUser" type="String" xid="xid4"></column>
  <column name="enteringUser_id" type="String" xid="xid5"></column>
  <column name="faultDes" type="String" xid="xid6"></column>
  <column name="faultLevel" type="String" xid="xid7"></column>
  <column name="faultReason" type="String" xid="xid8"></column>
  <column name="faultTime" type="String" xid="xid9"></column>
  <column name="faultType" type="String" xid="xid10"></column>
  <column name="liftIDNo" type="String" xid="xid11"></column>
  <column name="sp_state" type="String" xid="xid12"></column>
  <column name="sp_reason" type="String" xid="xid13"></column>
  <column name="sp_date" type="String" xid="xid14"></column>
  <column name="sp_user" type="String" xid="xid15"></column>
  <column name="project" type="String" xid="xid16"></column>
  <column name="sheetNo" type="String" xid="xid17"></column>
  <column name="buildingNo" type="String" xid="xid18"></column>
  <column name="liftNo" type="String" xid="xid19"></column>
  <column name="col19" type="String" xid="xid20"></column>
  <column name="col20" type="String" xid="xid21"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content3"><div xid="div2">
   <div class="media" xid="media2" style="background-color:#AAAAAA;">
    <div class="media-body" xid="mediaBody2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button4" label="报修信息" style="color:#545454;font-size:16px;width:100px;">
      <i xid="i4"></i>
      <span xid="span4">报修信息</span></a> </div> </div> </div><div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;"><div class="media" xid="media1">
   
   <div class="media-body" xid="mediaBody1">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[工单编号:]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='$model.data1.ref("sheetNo")'></div></div></div> </div></div>
  <div xid="div10" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media9">
    <div class="media-body" xid="mediaBody9">
     
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
   <label class="x-label" xid="label10"><![CDATA[审核状态:]]></label>
   <div class="x-edit" xid="div11" style="text-align:left;"><a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs" label="未审核" xid="button1" bind-visible=' $model.data1.val("sp_state") == 0' style="display:none">
   <i xid="i2"></i>
   <span xid="span2">未审核</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-xs" label="已通过" xid="button2" bind-visible='$model.data1.val("sp_state") == 1' style="display:none">
   <i xid="i5"></i>
   <span xid="span5">已通过</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-danger btn-xs" label="已退回" xid="button5" bind-visible='$model.data1.val("sp_state") == 2' style="display:none">
   <i xid="i6"></i>
   <span xid="span6">已退回</span></a></div></div></div> </div> </div><div xid="div4" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media4">
    <div class="media-body" xid="mediaBody4">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
      <label class="x-label" xid="label4"><![CDATA[注册代码:]]></label>
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='$model.data1.ref("liftIDNo")'></div></div> </div> </div> </div><div xid="div3" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media3">
    <div class="media-body" xid="mediaBody3">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
      <label class="x-label" xid="label3"><![CDATA[电梯位置:]]></label>
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-text='$model.data1.val("buildingNo")+"-" +$model.data1.val("liftNo")'></div></div> </div> </div> </div>
  <div xid="div8" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media8">
    <div class="media-body" xid="mediaBody8">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
      <label class="x-label" xid="label9"><![CDATA[报修人员:]]></label>
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.data1.ref("enteringUser")'></div></div> </div> </div> </div><div xid="div5" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media5">
    <div class="media-body" xid="mediaBody5">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
      <label class="x-label" xid="label5"><![CDATA[故障发生时间:]]></label>
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='$model.data1.ref("faultTime")'></div></div> </div> </div> </div>
  <div xid="div9" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media7">
    <div class="media-body" xid="mediaBody7">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
      <label class="x-label" xid="label1"><![CDATA[报修时间:]]></label>
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='$model.data1.ref("enteringDate")'></div></div> </div> </div> </div><div xid="div6" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media6">
    <div class="media-body" xid="mediaBody6">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
      <label class="x-label" xid="label6"><![CDATA[紧急程度:]]></label>
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref='$model.data1.ref("faultLevel")'></div></div> </div> </div> </div>
  <div xid="div7" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="label8"><![CDATA[故障描述]]></label>
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea1" bind-ref='$model.data1.ref("faultDes")' disabled="true" style="background-color:white;"></textarea></div></div>
  </div>
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-warning" label="退回" xid="button3" style="display:none;margin-top:7px;width:45%;" onClick="button3Click" bind-visible=' $model.data1.val("sp_state")  == 0'>
   <i xid="i3"></i>
   <span xid="span3">退回</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-primary" label="通过" xid="okSubBtn" style="display:none;margin-top:7px;width:45%;" onClick="okSubBtnClick" bind-visible='$model.data1.val("sp_state")  == 0'>
   <i xid="i1"></i>
   <span xid="span1">通过</span></a></div></div></div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver2">
   <div class="x-popOver-overlay" xid="div20"></div>
   <div class="x-popOver-content div-radius" xid="div19">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents2">
     <div class="x-contents-content" xid="content6">
      <div xid="div18" style="width:350px;background-color:white;height:300px;">
       <div xid="div17" style="background-color:#4599E4;height:40px;">
        <span xid="span24" style="color:#FFFFFF;line-height:40px;margin-left:8px;"><![CDATA[请填写退回说明]]></span></div> 
       <div xid="div16" class="list-group-item" style="padding:0px 0px 0px 5px;">
        <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea2" placeHolder="说点什么吧..." style="height:200px;"></textarea></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="bottom:0px;position:absolute;">
        <div class="x-col" xid="col11" style="text-align:right;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-primary" label="取消" xid="button18" onClick="button18Click" style="width:30%;">
          <i xid="i18"></i>
          <span xid="span20">取消</span></a> 
         <a component="$UI/system/components/justep/button/button" class="btn btn-primary" label="确定" xid="button17" onClick="button17Click" style="width:30%;">
          <i xid="i19"></i>
          <span xid="span19">确定</span></a> </div> </div> </div> </div> </div> </div> </div></div>