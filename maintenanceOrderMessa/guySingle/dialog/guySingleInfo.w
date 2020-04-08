<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:70px;left:448px;height:auto;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imageList" idColumn="id">
   <column name="id" type="String" xid="column5"></column>
   <column name="filename" type="String" xid="column7"></column>
   <column name="url" type="String" xid="column8"></column>
   <column name="size" type="String" xid="column4"></column>
   <column name="uploadUser" type="String" xid="column6"></column>
   <column name="extension" type="String" xid="column1"></column>
   <column name="newUrl" type="String" xid="column2"></column>
   <column name="newName" type="String" xid="column1"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="hithData" idColumn="id" limit="-1">
   <column name="id" type="String" xid="xid1"></column>
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
  <column name="is_qm" type="String" xid="xid63"></column>
  <column name="elevatorId" type="String" xid="xid64"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="Accessories" idColumn="id">
   <column name="id" type="String" xid="column15"></column>
   <column name="liftIDNo" type="String" xid="column16"></column>
   <column name="accessories" type="String" xid="column3"></column>
   <column name="date" type="String" xid="column9"></column>
   <column name="num" type="String" xid="column10"></column>
   <column name="unit" type="String" xid="column11"></column>
   <column name="model" type="String" xid="column12"></column>
   <column name="des" type="String" xid="column13"></column>
   <column name="hitchId" type="String" xid="column14"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" height="200"><div xid="div1" style="text-align:center;height:200px;" class="top_back">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:5px;">
    </div> 
   <div xid="div2" style="padding:2px 5px 2px 2px;text-align:left;background-color:transparent;">
  
  <div class="media" xid="media9">
   <div class="media-left" xid="mediaLeft1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="工单信息" xid="button1" icon="dataControl dataControl-project24" style="color:#FDFCFF;font-size:16px;">
   <i xid="i1" class="dataControl dataControl-project24" style="font-size:18px;"></i>
   <span xid="span1">工单信息</span></a></div> 
   <div class="media-body" xid="mediaBody9">
    </div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label btn-radius1" label="填写评价" style="color:#FFFFFF;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;display:none;margin-right:5px;" xid="evaluationBtn" onClick="evaluationBtnClick" bind-visible='$model.hithData.val("fpEvaluate1") ==""  ||$model.hithData.val("fpEvaluate1") == null '>
   <i xid="i14"></i>
   <span xid="span18">填写评价</span></a></div></div></div>
  <div xid="div3">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="color:#FDFCFF;padding:8px 2px 8px 17px;text-align:left;background-color:transparent;">
   <label class="x-label" xid="label1"><![CDATA[电梯注册：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='$model.hithData.ref("liftIDNo")' style="color:#FDFCFF;"></div></div></div>
  <div xid="div4">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="color:#FDFCFF;padding:8px 2px 8px 17px;text-align:left;background-color:transparent;">
   <label class="x-label" xid="label2"><![CDATA[电梯位置：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" style="color:#FDFCFF;" bind-text=' $model.hithData.val("buildingNo") +"-" + $model.hithData.val("liftNo")'></div></div></div>
  <div xid="div5">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="color:#FDFCFF;padding:8px 2px 8px 17px;text-align:left;background-color:transparent;">
   <label class="x-label" xid="label3"><![CDATA[合同编号：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" style="color:#FDFCFF;" bind-ref='$model.hithData.ref("contractNo")'></div></div></div>
  <div xid="div6">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="color:#FDFCFF;padding:8px 2px 8px 17px;text-align:left;background-color:transparent;">
    <label class="x-label" xid="label4"><![CDATA[维保工人：]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" style="color:#FDFCFF;" bind-ref='$model.hithData.ref("signInUser")'></div></div> </div></div></div>
   <div class="x-panel-content" xid="content4" style="background-color:#F4F4F4;"><div component="$UI/system/components/justep/panel/panel" class="x-panel " xid="panel3" style="background-color:white;height:340px;">
   <div class="x-panel-top" xid="top3">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;">
   <div xid="col1" style="width:0.5em;"></div>
   <div class="x-col " xid="col2"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group  btn-group-justified btngroup-radius" tabbed="true" xid="buttonGroup2">
     <a component="$UI/system/components/justep/button/button" class="btn active btn-link btn-color btngroup-radius" xid="sortingBtn" label="维修人员" style="border-style:solid none solid solid;border-width:thin thin thin thin;border-color:#666666 #666666 #666666 #666666;" target="content6">
      <i xid="i6"></i>
      <span xid="span3">维修人员</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-color btngroup-radius" label="事件节点" xid="button6" style="border-style:solid solid solid none;border-width:thin thin thin thin;border-color:#666666 #666666 #666666 #666666;" target="content7">
      <i xid="i7"></i>
      <span xid="span6">事件节点</span></a> </div></div>
   <div xid="col3" style="width:0.5em;"></div></div></div>
   <div class="x-panel-content" xid="content5" style="height:auto;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents3">
   <div class="x-contents-content" xid="content6"><div xid="div10" style="height:100%;" class="list-group-item">
   <div xid="div9" style="padding:5px 5px 5px 0px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" xid="button19" style="color:#252425;font-size:14px;font-weight:bold;" bind-text=' $model.hithData.val("signInUser")'>
   <i xid="i20"></i>
   <span xid="span19"></span></a></div> 
   <div xid="div8" style="background-color:#F4F4F4;padding:8px 3px 3px 5px;">
    <ul xid="ul2">
     <li xid="li1" class="li_class2">
      <div xid="div8">
       <div class="media" xid="media3" style="margin-left:2px;">
        <div class="media-body" xid="mediaBody1">
         <h5 xid="h58" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("faultTime")'><![CDATA[]]></h5>
         <h5 xid="h520" class="media-heading" bind-text=' $model.hithData.val("address")'><![CDATA[]]></h5></div> </div> </div> 
      <a component="$UI/system/components/justep/button/button" class="btn x-purple btn-xs span-index" label="故障发生" xid="button9">
   <i xid="i10"></i>
   <span xid="span10">故障发生</span></a></li> 
     <li xid="li4" class="li_class2">
      <div xid="div9">
       <div class="media" xid="media1" style="margin-left:2px;">
        <div class="media-body" xid="mediaBody3">
         <h5 xid="h510" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signInTime")'><![CDATA[]]></h5>
         <h5 xid="h521" class="media-heading" bind-text=' $model.hithData.val("signInAddr")'><![CDATA[]]></h5></div> </div> </div> 
      <a component="$UI/system/components/justep/button/button" class="btn x-purple btn-xs span-index" label="到达时间" xid="button2">
   <i xid="i2"></i>
   <span xid="span2">到达时间</span></a></li> 
  <li xid="li3" class="li_class2">
   <div xid="div12">
    <div class="media" xid="media4" style="margin-left:2px;">
     <div class="media-body" xid="mediaBody4">
      <h5 xid="h54" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("finishTime")'><![CDATA[]]></h5>
      <h5 xid="h522" class="media-heading" bind-text=' $model.hithData.val("address")'><![CDATA[]]></h5></div> </div> </div> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-xs span-index" label="修好时间" xid="button4">
   <i xid="i4"></i>
   <span xid="span11">修好时间</span></a></li><li xid="li2" class="li_class2">
   <div xid="div11">
    <div class="media" xid="media2" style="margin-left:2px;">
     <div class="media-body" xid="mediaBody2">
      <h5 xid="h51" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signOutTime")'><![CDATA[]]></h5>
      <h5 xid="h523" class="media-heading" bind-text=' $model.hithData.val("signOutAddr")'><![CDATA[]]></h5></div> </div> </div> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-primary btn-xs span-index" label="签退时间" xid="button3">
   <i xid="i3"></i>
   <span xid="span4">签退时间</span></a></li>
  </ul> </div> </div></div>
  <div class="x-contents-content" xid="content7"><div xid="div14" style="height:100%;" class="list-group-item">
   <div xid="div16" style="padding:5px 5px 5px 0px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="维修工人" xid="button20" style="color:#252425;font-size:14px;font-weight:bold;">
     <i xid="i13"></i>
     <span xid="span16">维修工人</span></a> </div> 
   <div xid="div29" style="background-color:#F4F4F4;padding:8px 3px 3px 5px;">
   <ul xid="ul1">
    <li xid="li6" class="li_class2">
     <div xid="div29">
      <div class="media" xid="media7" style="margin-left:2px;">
       <div class="media-body" xid="mediaBody8">
        <h5 xid="h55" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("faultTime")'></h5>
        <h5 xid="h513" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("enteringPort")'></h5><h5 xid="h514" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("enteringUser")'></h5><h5 xid="h57" class="media-heading" bind-text=' $model.hithData.val("address")' style="font-size:14px;color:#8C8C8C;"></h5>
  
  </div> </div> </div> 
     <a component="$UI/system/components/justep/button/button" class="btn x-purple btn-xs span-index" label="故障发生" xid="button11">
      <i xid="i8"></i>
      <span xid="span9">故障发生</span></a> </li> 
    <li xid="li7" class="li_class2">
     <div xid="div17">
      <div class="media" xid="media8" style="margin-left:2px;">
       <div class="media-body" xid="mediaBody6">
        <h5 xid="h56" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signInTime")'></h5>
        <h5 xid="h515" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signInUser")'></h5><h5 xid="h59" class="media-heading" bind-text=' $model.hithData.val("signInAddr")' style="font-size:14px;color:#8C8C8C;"></h5>
  </div> </div> </div> 
     <a component="$UI/system/components/justep/button/button" class="btn x-purple btn-xs span-index" label="到达时间" xid="button8">
      <i xid="i9"></i>
      <span xid="span7">到达时间</span></a> </li> 
    <li xid="li8" class="li_class2">
     <div xid="div13">
      <div class="media" xid="media5" style="margin-left:2px;">
       <div class="media-body" xid="mediaBody7">
        <h5 xid="h53" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("finishTime")'></h5>
        <h5 xid="h516" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signInUser")'></h5><h5 xid="h511" class="media-heading" bind-text=' $model.hithData.val("address")' style="font-size:14px;color:#8C8C8C;"></h5>
  </div> </div> </div> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-xs span-index" label="修好时间" xid="button7">
      <i xid="i12"></i>
      <span xid="span12">修好时间</span></a> </li> 
    <li xid="li5" class="li_class2">
     <div xid="div15">
      <div class="media" xid="media6" style="margin-left:2px;">
       <div class="media-body" xid="mediaBody5">
        <h5 xid="h52" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signOutTime")'></h5>
        <h5 xid="h517" class="media-heading" style="font-size:14px;color:#8C8C8C;" bind-text=' $model.hithData.val("signOutUser")'></h5><h5 xid="h512" class="media-heading" bind-text=' $model.hithData.val("signOutAddr")' style="font-size:14px;color:#8C8C8C;"></h5>
  </div> </div> </div> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-primary btn-xs span-index" label="签退时间" xid="button10">
      <i xid="i11"></i>
      <span xid="span8">签退时间</span></a> </li> </ul> </div></div></div></div></div>
   </div>
  <div xid="div7"><div xid="div18" style="padding:5px 5px 5px 0px;background-color:white;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="故障原因" xid="button21" icon="glyphicon glyphicon-warning-sign">
   <i xid="i22" class="glyphicon glyphicon-warning-sign"></i>
   <span xid="span22" style="color:#252425;font-size:14px;">故障原因</span></a></div>
  <div xid="div19"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="background-color:white;height:50px;" bind-ref='$model.hithData.ref("faultReason")'></textarea></div></div>
  <div xid="div28">
   <div xid="div26" style="padding:5px 5px 5px 0px;background-color:white;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="解决方案" xid="button5" icon="glyphicon glyphicon-warning-sign">
     <i xid="i5" class="glyphicon glyphicon-warning-sign"></i>
     <span xid="span5" style="color:#252425;font-size:14px;">解决方案</span></a> </div> 
   <div xid="div27">
    <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea4" style="background-color:white;height:50px;" bind-ref='$model.hithData.ref("solution")'></textarea></div> </div><div xid="div22" bind-visible='$model.hithData.val("is_pj")=="null"  || $model.hithData.val("is_pj")==0'>
   <div xid="div20" style="padding:5px 5px 5px 0px;background-color:white;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="更换配件" xid="button22" icon="glyphicon glyphicon-wrench">
     <i xid="i23" class="glyphicon glyphicon-wrench"></i>
     <span xid="span23" style="color:#252425;font-size:14px;">更换配件</span></a> </div> 
   <div xid="div21">
    <div xid="div31" style="height:auto;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="Accessories">
    <ul class="x-list-template" xid="listTemplateUl2">
     <li xid="li10" style="box-shadow: 1px 1px 2px 2px #888888;background-color:#F3F3F3;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="border-bottom:1px #BBBBBB solid;">
       <div class="x-col " xid="col13">
        <div component="$UI/system/components/justep/row/row" class="x-row " xid="row6">
         <div class="x-col" xid="col4">
          <div component="$UI/system/components/justep/output/output" class="my-output" xid="output14" bind-ref='ref("date")' onRender="output2Render"></div></div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row " xid="row7">
         <div class="x-col" xid="col8">
          <div component="$UI/system/components/justep/output/output" class="my-output" xid="output13" bind-ref='ref("model")' onRender="output13Render"></div></div> </div> </div> </div> </li> </ul> </div> </div></div> </div>
  <div xid="div25">
   <div xid="div23" style="padding:5px 5px 5px 0px;background-color:white;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="工单照片" xid="button23" icon="glyphicon glyphicon-picture">
     <i xid="i24" class="glyphicon glyphicon-picture"></i>
     <span xid="span24" style="color:#252425;font-size:14px;">工单照片</span></a> </div> 
   <div xid="div24">
    
  <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list1" data="imageList">
   <li xid="li9">
  <div xid="div30" style="float:left;padding:5px 5px 5px 5px;margin-left:5px;"><img src=" " alt="" xid="image1" style="width:60px;height:60px;" bind-attr-src='val("newUrl")' bind-click="image1Click"></img></div></li></ul></div> </div>
  </div>
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="签字" xid="okBtn" style="width:40%;margin-left:4px;margin-top:8px;display:none" onClick="okBtnClick" bind-visible=' $model.hithData.val("is_qm") ==0'>
   <i xid="i26"></i>
   <span xid="span26">签字</span></a></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="signaturewinDialog" src="$UI/maintenanceOrderMessa/signature-pad/signature.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" src="$UI/maintenanceOrderMessa/evaluation/evaluation.w"></span></div>