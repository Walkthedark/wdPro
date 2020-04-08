<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="myreData" idColumn="report_id">
   <column name="accessory" type="String" xid="xid1"></column>
   <column name="report_id" type="String" xid="xid2"></column>
   <column name="cc_department" type="String" xid="xid3"></column>
   <column name="cc_staff" type="String" xid="xid4"></column>
   <column name="client" type="String" xid="xid5"></column>
   <column name="comment" type="String" xid="xid6"></column>
   <column name="create_at" type="String" xid="xid7"></column>
   <column name="create_staff" type="String" xid="xid8"></column>
   <column name="create_staff_id" type="String" xid="xid9"></column>
   <column name="date_begin" type="String" xid="xid10"></column>
   <column name="date_end" type="String" xid="xid11"></column>
   <column name="department" type="String" xid="xid12"></column>
   <column name="image" type="String" xid="xid13"></column>
   <column name="likes" type="String" xid="xid14"></column>
   <column name="only_mine" type="String" xid="xid15"></column>
   <column name="report_action" type="String" xid="xid16"></column>
   <column name="report_content" type="String" xid="xid17"></column>
   <column name="report_state" type="String" xid="xid18"></column>
   <column name="staff" type="String" xid="xid19"></column>
   <column name="sync_company" type="String" xid="xid20"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cc_staffData" idColumn="staff_id">
   <column name="staff_id" type="String" xid="xid21"></column>
   <column name="staff_name" type="String" xid="xid22"></column>
   <column name="fID" type="String" xid="xid23"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="行为" xid="button1" target="content3" onClick="button1Click">
    <i xid="i1"></i>
    <span xid="span1">行为</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="计划" xid="button2" onClick="button2Click">
    <i xid="i2"></i>
    <span xid="span2">计划</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="待定" xid="button3" onClick="button3Click">
   <i xid="i3"></i>
   <span xid="span3">待定</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多" xid="button4">
   <i xid="i4"></i>
   <span xid="span4">更多</span></a></div></div>
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content3"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
     <div class="x-col" xid="col1" style="text-align:right;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button6" icon="icon-arrow-left-b" style="color:#4E4E4E;font-size:14px" onClick="button6Click">
       <i xid="i6" class="icon-arrow-left-b"></i>
       <span xid="span5"></span></a> </div> 
     <div class="x-col x-col-50" xid="col2">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" style="height:100%;border-style:none none none none;text-align:center;font-size:16px;" format="yyyy-MM-dd"></input></div> 
     <div class="x-col" xid="col3" style="text-align:left;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button7" icon="icon-arrow-right-b" style="color:#4E4E4E;font-size:14px" onClick="button7Click">
       <i xid="i5" class="icon-arrow-right-b"></i>
       <span xid="span8"></span></a> </div> </div> </div> 
   <div class="x-panel-content  x-scroll-view" xid="content2" style="background-color:#F3F4F3;" _xid="C8D54C7193900001B2A9115812831180">
     
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div7"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="myreData" dataItemAlias="fatherList">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" bind-click="li1Click">
       <div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;">
        <div class="media" xid="media1">
         <div class="media-left" xid="mediaLeft1">
          <a href="#" xid="a1">
           <img class="media-object imag" src="$UI/wdPro/common/img/head4.jpeg" alt="" xid="image1" style="width:57px;height:46px;"></img>
           <h5 xid="h51" bind-text='val("create_staff")' style="text-align:center;font-size:16px;color:#2C2C2C;"></h5></a> </div> 
         <div class="media-body" xid="mediaBody1">
          <h4 xid="h41" style="font-size:16px;color:#2C2C2C;" class="media-heading">
           <a component="$UI/system/components/justep/button/button" class="btn btn-primary btn-xs" label="行为" xid="button9" bind-visible=" val(&quot;report_action&quot;)=='行为'">
   <i xid="i10"></i>
   <span xid="span10">行为</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-danger btn-xs" label="计划" xid="button11" bind-visible=" val(&quot;report_action&quot;)=='计划'">
   <i xid="i12"></i>
   <span xid="span16">计划</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-warning btn-xs" label="待定" xid="button12" bind-visible=" val(&quot;report_action&quot;)=='待定'">
   <i xid="i13"></i>
   <span xid="span17">待定</span></a><span xid="span7" bind-text=' val("create_at").substring(5,val("create_at").length)'></span>
           <span xid="span5" bind-text='$model.getWeek(val("create_at"))'></span>
  </h4> 
          <h4 xid="h44" style="font-size:16px;color:#2C2C2C;" class="media-heading">
           <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="$model.cc_staffData" filter="$row.val('fID') == fatherList.val('report_id') " disableInfiniteLoad="true" disablePullToRefresh="true">
            <ul class="x-list-template" xid="listTemplateUl2">
             <li xid="li2">
              <h5 xid="h52">
               <span xid="span9" style="float:left;" bind-text='"@"+val("staff_name")'>@哈哈</span></h5> </li> </ul> </div> </h4> </div> </div> </div> 
       <div xid="div2" class="list-group-item" style="padding:0px 0px 0px 0px;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="button" xid="button5" bind-text=' val("report_action")+"总结"' style="font-size:14px;color:#949494;">
         <i xid="i6"></i>
         <span xid="span14"></span></a> 
        <div xid="div3">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="button" xid="button5" bind-text=' val("report_content")' style="color:#767676;">
          <i xid="i5"></i>
          <span xid="span12"></span></a> </div> </div> 
       <div xid="div5" class=" list-group-item" style="padding:0px 0px 0px 0px;text-align:right;">
        <div xid="div9" style="height:100%;width:100%;">
         <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup2" style="background-color:white;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="点赞" xid="button6" icon="e-commerce e-commerce-zan" style="font-size:14px">
           <i xid="i9" class="e-commerce e-commerce-zan" style="font-size:14px"></i>
           <span xid="span15" bind-text=' val("likes")'>点赞</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button8" label="评论" icon="e-commerce e-commerce-xiaoxi" style="font-size:14px">
           <i xid="i8" class="e-commerce e-commerce-xiaoxi" style="font-size:14px"></i>
           <span xid="span6" bind-text='val("comment")'>评论</span></a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="操作" xid="button7" icon="e-commerce e-commerce-suoyou">
           <i xid="i7" class="e-commerce e-commerce-suoyou" style="font-size:14px"></i>
           <span xid="span13">操作</span></a> </div> </div> </div> 
       <div xid="div6" style="height:7px;"></div></li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span19">加载更多...</span></div> </div></div> 
   </div></div></div></div>
   </div></div>