<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="hithData" idColumn="id" limit="-1"><column name="id" type="String" xid="xid1"></column>
  <column name="DetectionType" type="String" xid="xid2"></column>
  <column name="autograph" type="String" xid="xid3"></column>
  <column name="backStateName" type="String" xid="xid4"></column>
  <column name="brand" type="String" xid="xid5"></column>
  <column name="buildingNo" type="String" xid="xid6"></column>
  <column name="callTime" type="String" xid="xid7"></column>
  <column name="callUser" type="String" xid="xid8"></column>
  <column name="callUser_id" type="String" xid="xid9"></column>
  <column name="confirmUser" type="String" xid="xid10"></column>
  <column name="confirmUser_id" type="String" xid="xid11"></column>
  <column name="contractID" type="String" xid="xid12"></column>
  <column name="contractNo" type="String" xid="xid13"></column>
  <column name="customerName" type="String" xid="xid14"></column>
  <column name="enteringDate" type="String" xid="xid15"></column>
  <column name="enteringPort" type="String" xid="xid16"></column>
  <column name="enteringUser" type="String" xid="xid17"></column>
  <column name="enteringUser_id" type="String" xid="xid18"></column>
  <column name="faultDes" type="String" xid="xid19"></column>
  <column name="faultLevel" type="String" xid="xid20"></column>
  <column name="faultReason" type="String" xid="xid21"></column>
  <column name="faultTime" type="String" xid="xid22"></column>
  <column name="fileBoxNo" type="String" xid="xid23"></column>
  <column name="finishTime" type="String" xid="xid24"></column>
  <column name="fpEvaluate1" type="String" xid="xid25"></column>
  <column name="fpEvaluate2" type="String" xid="xid26"></column>
  <column name="fpOption" type="String" xid="xid27"></column>
  <column name="fpStateName" type="String" xid="xid28"></column>
  <column name="groupId" type="String" xid="xid29"></column>
  <column name="liftIDNo" type="String" xid="xid30"></column>
  <column name="liftModel" type="String" xid="xid31"></column>
  <column name="liftNo" type="String" xid="xid32"></column>
  <column name="maintainDutyName" type="String" xid="xid33"></column>
  <column name="nextWarnDate" type="String" xid="xid34"></column>
  <column name="opSign" type="String" xid="xid35"></column>
  <column name="overTimeType" type="String" xid="xid36"></column>
  <column name="productNo" type="String" xid="xid37"></column>
  <column name="project" type="String" xid="xid38"></column>
  <column name="repairman" type="String" xid="xid39"></column>
  <column name="repairman_id" type="String" xid="xid40"></column>
  <column name="replaceParts" type="String" xid="xid41"></column>
  <column name="serveAttitude" type="String" xid="xid42"></column>
  <column name="serveIdea" type="String" xid="xid43"></column>
  <column name="serveMass" type="String" xid="xid44"></column>
  <column name="sheetNo" type="String" xid="xid45"></column>
  <column name="signInAddr" type="String" xid="xid46"></column>
  <column name="signInAddrlat" type="String" xid="xid47"></column>
  <column name="signInAddrlng" type="String" xid="xid48"></column>
  <column name="signInTime" type="String" xid="xid49"></column>
  <column name="signInUser" type="String" xid="xid50"></column>
  <column name="signInUser_id" type="String" xid="xid51"></column>
  <column name="signOutAddr" type="String" xid="xid52"></column>
  <column name="signOutAddrlat" type="String" xid="xid53"></column>
  <column name="signOutAddrlng" type="String" xid="xid54"></column>
  <column name="signOutTime" type="String" xid="xid55"></column>
  <column name="signOutUser" type="String" xid="xid56"></column>
  <column name="signOutUser" type="String" xid="xid57"></column>
  <column name="solution" type="String" xid="xid58"></column>
  <column name="thisWarnType" type="String" xid="xid59"></column>
  <column name="usingNo" type="String" xid="xid60"></column>
  <column name="address" type="String" xid="xid61"></column>
  <column name="is_pj" type="String" xid="xid62"></column>
  <column name="is_qm" type="String" xid="xid63"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F4F4F4;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
     <div class="x-panel-top" xid="top2" height="48">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2" style="background-color:white;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="排序" xid="button8" icon="linear linear-chevrondown" style="color:#444344;">
        <i xid="i6" class="linear linear-chevrondown"></i>
        <span xid="span3">排序</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="筛选" xid="button6" icon="linear linear-chevrondown" style="color:#444344;" target="content3">
        <i xid="i7" class="linear linear-chevrondown"></i>
        <span xid="span6">筛选</span></a> </div> </div> 
     <div class="x-panel-content" xid="content2" style="background-color:#F4F4F4;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="height:7px;"></div><ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list1" data="hithData" limit="20">
   <li xid="li2">
    <div xid="div22" bind-click="tenPlanInfoDIvClick">
     <div xid="div7" class="list-group-item" style="padding:8px 0px 0px 10px;height:40px;">
      <div class="media" xid="media1">
       <div class="media-left" xid="mediaLeft2">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label" xid="button1" style="font-weight:bold;color:#878688;font-size:14px;" bind-text='"项目名称："+val("project") '>
         <i xid="i16"></i>
         <span xid="span17"></span></a> </div> 
       <div class="media-body" xid="mediaBody1"></div>
       <div class="media-right" xid="mediaRight1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-xs btn-only-label btn-radius" label="维修已完成" xid="button19">
         <i xid="i20"></i>
         <span xid="span20">维修已完成</span></a> </div> </div> </div> 
     <div xid="div20" style="border-bottom-style:none;border-top-style:none;background-color:white;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
       <div class="x-col" xid="col13"></div>
       <div class="x-col x-col-90" xid="col14">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit30">
         <label class="x-label" xid="label30" style="width:80px;font-weight:bold;color:#080808;text-align:left;"><![CDATA[电梯位置:]]></label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output28" style="color:#080808;" bind-text='val("buildingNo")+"-"+val("liftNo")'></div></div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit29">
         <label class="x-label" xid="label20" style="width:80px;font-weight:bold;color:#080808;text-align:left;"><![CDATA[维保工人:]]></label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output20" bind-ref='ref("signInUser")' style="color:#080808;"></div></div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit17">
         <label class="x-label" xid="label19" style="width:80px;font-weight:bold;color:#080808;text-align:left;"><![CDATA[开始时间:]]></label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output29" bind-ref='ref("signInTime")' style="color:#080808;"></div></div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit18">
         <label class="x-label" xid="label29" style="width:80px;font-weight:bold;color:#080808;text-align:left;"><![CDATA[结束时间]]></label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output22" bind-ref='ref("finishTime")' style="color:#080808;"></div></div> 
        </div> 
       <div class="x-col" xid="col15"></div></div> </div> 
  <div xid="div8" style="padding:0px 0px 0px 0px;border-bottom-style:none;" class="list-group-item">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col19"></div>
   <div class="x-col x-col-90" xid="col20"><a component="$UI/system/components/justep/button/button" class="btn btn-danger btn-xs btn-radius1" label="尚未签字" xid="button7" style="margin-left:5px;display:none" bind-visible='val("is_qm")  == 0'>
   <i xid="i1"></i>
   <span xid="span9">尚未签字</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs btn-radius1" label="尚未评价" xid="button9" style="margin-left:5px;display:none" bind-visible='val("fpEvaluate1") ==null   || val("fpEvaluate1") ==""'>
   <i xid="i8"></i>
   <span xid="span10">尚未评价</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn x-black btn-xs btn-radius1" label="更换配件" xid="button10" style="margin-left:5px;display:none" bind-visible='val("is_pj") != "null"  || val("is_pj") ==1'>
   <i xid="i9"></i>
   <span xid="span16">更换配件</span></a></div>
   <div class="x-col" xid="col21"></div></div></div></div> 
    <div xid="div18" style="height:10px;"></div></li> </ul>
  <div xid="loadDataRefashDiv" style="background-color:white;display:none" bind-click="loadDataRefashDivClick">
   <div xid="div19" style="text-align:center;height:30px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs " label="点击召唤更多" xid="button18" icon="icon-loop" style="line-height:30px;color:#969597;">
     <i xid="i19" class="icon-loop"></i>
     <span xid="span22">点击召唤更多</span></a> </div> </div></div></div> </div> 
   <div class="x-contents-content" xid="content3" style="background-color:#F4F4F4;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
     <div class="x-panel-content" xid="content13">
      <div xid="div35">
       <div xid="div36" class="list-group-item">
        <span xid="span46">项目名称</span></div> 
       <div xid="div34" style="height:1px;"></div>
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="input5" style="background-color:transparent;"></input></div> 
      <div xid="div28">
       <div xid="div21" class="list-group-item">
        <span xid="span33">电梯位置</span></div> 
       <div xid="div29" style="height:1px;"></div>
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4" style="background-color:transparent;"></input></div> 
      <div xid="div5">
   <div xid="div6" class="list-group-item" style="border-bottom-style:none;">
    <span xid="span11">电梯类型</span>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
     <div class="x-col" xid="col7">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="客梯" xid="button11" style="width:100%;">
       <i xid="i11"></i>
       <span xid="span12">客梯</span></a> </div> 
     <div class="x-col" xid="col8">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="杂物梯" xid="button12" style="width:100%;background-color:#F4F4F4;">
       <i xid="i12"></i>
       <span xid="span13">杂物梯</span></a> </div> 
     <div class="x-col" xid="col9">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="货梯" xid="button13" style="width:100%;background-color:#F4F4F4;">
       <i xid="i13"></i>
       <span xid="span14">货梯</span></a> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
     <div class="x-col" xid="col10">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="餐梯" xid="button14" style="width:100%;background-color:#F4F4F4;">
       <i xid="i14"></i>
       <span xid="span15">餐梯</span></a> </div> 
     <div class="x-col" xid="col11">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="扶梯" xid="button2" style="width:100%;background-color:#F4F4F4;">
       <i xid="i2"></i>
       <span xid="span28">扶梯</span></a> </div> 
     <div class="x-col" xid="col12"></div></div> </div> </div><div xid="div32">
       <div xid="div31" class="list-group-item" style="border-bottom-style:none;">
        <span xid="span37"><![CDATA[工单状态]]></span>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
         <div class="x-col" xid="col42">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="全部" xid="button35" style="width:100%;">
           <i xid="i24"></i>
           <span xid="span36">全部</span></a> </div> 
         <div class="x-col" xid="col40">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="正在维修" xid="button34" style="width:100%;background-color:#F4F4F4;">
           <i xid="i27"></i>
           <span xid="span32">正在维修</span></a> </div> 
         <div class="x-col" xid="col41">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="维修完成" xid="button29" style="width:100%;background-color:#F4F4F4;">
           <i xid="i26"></i>
           <span xid="span31">维修完成</span></a> </div> </div> 
        </div> </div> 
      <div xid="div24">
       <div xid="div23" class="list-group-item" style="border-bottom-style:none;">
        <span xid="span40"><![CDATA[是否签字]]></span>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
         <div class="x-col" xid="col38">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="全部" xid="button26" style="width:100%;">
           <i xid="i34"></i>
           <span xid="span41">全部</span></a> </div> 
         <div class="x-col" xid="col34">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="已签字" xid="button27" style="width:100%;background-color:#F4F4F4;">
           <i xid="i35"></i>
           <span xid="span39">已签字</span></a> </div> 
         <div class="x-col" xid="col39">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="未签字" xid="button24" style="width:100%;background-color:#F4F4F4;">
           <i xid="i36"></i>
           <span xid="span44">未签字</span></a> </div> </div> </div> </div> 
      <div xid="div4">
   <div xid="div1" class="list-group-item" style="border-bottom-style:none;">
    <span xid="span7"><![CDATA[是否更换过配件]]></span>
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
     <div class="x-col" xid="col5">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="全部" xid="button5" style="width:100%;">
       <i xid="i4"></i>
       <span xid="span5">全部</span></a> </div> 
     <div class="x-col" xid="col6">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="已更换配件" xid="button4" style="width:100%;background-color:#F4F4F4;">
       <i xid="i3"></i>
       <span xid="span1">已更换配件</span></a> </div> 
     <div class="x-col" xid="col4">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="未更换配件" xid="button3" style="width:100%;background-color:#F4F4F4;">
       <i xid="i5"></i>
       <span xid="span8">未更换配件</span></a> </div> </div> </div> </div><div xid="div2">
       <div xid="div3" class="list-group-item">
        <span xid="span2"><![CDATA[开始时间]]></span>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
         <div class="x-col" xid="col1">
          <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" style="background-color:transparent;"></input></div> 
         <div class="x-col x-col-10" xid="col2" style="text-align:center;">
          <span xid="span4" style="line-height:30px">一</span></div> 
         <div class="x-col" xid="col3">
          <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" style="background-color:transparent;"></input></div> </div> </div> </div> 
  </div> 
     <div class="x-panel-bottom" xid="bottom5" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="重置" xid="button33" style="width:40%;margin-top:4px;background-color:#D3D9D2;color:#838683;">
       <i xid="i38"></i>
       <span xid="span47">重置</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="确定" xid="button32" style="width:40%;margin-left:5px;margin-top:4px;">
       <i xid="i25"></i>
       <span xid="span35">确定</span></a> </div> </div> </div> </div></div>