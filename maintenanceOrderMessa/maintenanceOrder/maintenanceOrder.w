<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="TenplanData" idColumn="id">
   <column name="id" type="String" xid="xid1"></column>
  <column name="project" type="String" xid="xid2"></column>
  <column name="teamName" type="String" xid="xid3"></column>
  <column name="address" type="String" xid="xid4"></column>
  <column name="maintainDate" type="String" xid="xid5"></column>
  <column name="maintainDays" type="String" xid="xid6"></column>
  <column name="elevatorId" type="String" xid="xid7"></column>
  <column name="is_qm" type="String" xid="xid8"></column>
  <column name="fpEvaluate1" type="String" xid="xid9"></column></div></div> 
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
     <div class="x-panel-content" xid="content2" style="background-color:#F4F4F4;"><ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list2" data="TenplanData">
   <li xid="li1">
    <div xid="tenPlanInfoDIv" bind-click="tenPlanInfoDIvClick">
     <div xid="div8" class="list-group-item" style="padding:8px 0px 0px 10px;border-bottom-style:none;">
      <div class="media" xid="media3">
       <div class="media-left" xid="mediaLeft1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label" xid="button10" style="font-weight:bold;color:#878688;font-size:14px;" bind-text='"项目名称："+val("project") '>
   <i xid="i16"></i>
   <span xid="span19"></span></a></div> 
       <div class="media-body" xid="mediaBody3"></div>
       <div class="media-right" xid="mediaRight3">
        <a component="$UI/system/components/justep/button/button" class="btn x-green btn-xs btn-only-label btn-radius" label="保养已完成" xid="button9">
         <i xid="i8"></i>
         <span xid="span16">保养已完成</span></a> </div> </div> </div> 
     <div xid="div7" style="border-bottom-style:none;border-top-style:none;background-color:white;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
       <div class="x-col" xid="col12"></div>
       <div class="x-col x-col-90" xid="col10">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
         <label class="x-label" xid="label1" style="text-align:center;width:80px;font-weight:bold;color:#080808;">维保小组:</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("teamName")' style="color:#080808;"></div></div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
         <label class="x-label" xid="label3" style="text-align:center;width:80px;font-weight:bold;color:#080808;">维保日期:</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("maintainDate")' style="color:#080808;"></div></div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
         <label class="x-label" xid="label4" style="text-align:center;width:80px;font-weight:bold;color:#080808;">维保周期:</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("maintainDays")' style="color:#080808;"></div></div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
         <label class="x-label" xid="label2" style="text-align:center;width:80px;font-weight:bold;color:#080808;">电梯位置:</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("address")' style="color:#080808;"></div></div> </div> 
       <div class="x-col" xid="col11"></div></div> </div> 
  <div xid="div11" style="padding:0px 0px 0px 0px;border-bottom-style:none;" class="list-group-item">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
    <div class="x-col" xid="col19"></div>
    <div class="x-col x-col-90" xid="col20">
     <a component="$UI/system/components/justep/button/button" class="btn btn-danger btn-xs btn-radius" label="尚未签字" xid="button7" style="margin-left:5px;display:none" bind-visible='val("is_qm")  == 0'>
   <i xid="i10"></i>
   <span xid="span15">尚未签字</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs btn-radius" label="尚未评价" xid="button14" style="margin-left:5px;display:none" bind-visible='val("fpEvaluate1") ==null   || val("fpEvaluate1") ==""'>
   <i xid="i14"></i>
   <span xid="span17">尚未评价</span></a></div> 
    <div class="x-col" xid="col21"></div></div> </div></div> 
    <div xid="div7" style="height:10px;"></div></li> </ul>
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
        <span xid="span11"><![CDATA[工单状态]]></span>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
         <div class="x-col" xid="col7">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="全部" xid="button11" style="width:100%;">
           <i xid="i11"></i>
           <span xid="span12">全部</span></a> </div> 
         <div class="x-col" xid="col8">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="正在保养" xid="button12" style="width:100%;background-color:#F4F4F4;">
           <i xid="i12"></i>
           <span xid="span13">正在保养</span></a> </div> 
         <div class="x-col" xid="col9">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="保养完成" xid="button13" style="width:100%;background-color:#F4F4F4;">
           <i xid="i13"></i>
           <span xid="span14">保养完成</span></a> </div> </div> 
        </div> </div> 
      <div xid="div32">
       <div xid="div31" class="list-group-item" style="border-bottom-style:none;">
        <span xid="span37"><![CDATA[是否超期]]></span>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
         <div class="x-col" xid="col42">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="全部" xid="button35" style="width:100%;">
           <i xid="i24"></i>
           <span xid="span36">全部</span></a> </div> 
         <div class="x-col" xid="col40">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="超期保养" xid="button34" style="width:100%;background-color:#F4F4F4;">
           <i xid="i27"></i>
           <span xid="span32">超期保养</span></a> </div> 
         <div class="x-col" xid="col41">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="正常保养" xid="button29" style="width:100%;background-color:#F4F4F4;">
           <i xid="i26"></i>
           <span xid="span31">正常保养</span></a> </div> </div> </div> </div> 
      <div xid="div24">
       <div xid="div23" class="list-group-item" style="border-bottom-style:none;">
        <span xid="span40">是否签字</span>
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
        <span xid="span7">是否更换过配件</span>
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
           <span xid="span8">未更换配件</span></a> </div> </div> </div> </div> 
      <div xid="div2">
       <div xid="div3" class="list-group-item">
        <span xid="span2">开始时间</span>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
         <div class="x-col" xid="col1">
          <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" style="background-color:transparent;"></input></div> 
         <div class="x-col x-col-10" xid="col2" style="text-align:center;">
          <span xid="span4" style="line-height:30px">一</span></div> 
         <div class="x-col" xid="col3">
          <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" style="background-color:transparent;"></input></div> </div> </div> </div> </div> 
     <div class="x-panel-bottom" xid="bottom5" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="重置" xid="button33" style="width:40%;margin-top:4px;background-color:#D3D9D2;color:#838683;">
       <i xid="i38"></i>
       <span xid="span47">重置</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="确定" xid="button32" style="width:40%;margin-left:5px;margin-top:4px;">
       <i xid="i25"></i>
       <span xid="span35">确定</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="auto" xid="popMenu1">
   <div class="x-popMenu-overlay" xid="div9"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu1"><li class="x-menu-item" xid="item1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="升序" xid="button1" icon="icon-arrow-up-b">
    <i xid="i1" class="icon-arrow-up-b"></i>
    <span xid="span9">升序</span></a> </li>
  <li class="x-menu-divider divider" xid="divider1"></li>
  <li class="x-menu-item" xid="item2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="降序" xid="button2" icon="icon-arrow-down-b">
    <i xid="i2" class="icon-arrow-down-b"></i>
    <span xid="span10">降序</span></a> </li></ul></div></div>