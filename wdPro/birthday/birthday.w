<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="popData" idColumn="staff_id"><column name="client" type="String" xid="xid1"></column>
  <column name="day" type="String" xid="xid2"></column>
  <column name="duty" type="String" xid="xid3"></column>
  <column name="head_img" type="String" xid="xid4"></column>
  <column name="phone" type="String" xid="xid5"></column>
  <column name="staff_id" type="String" xid="xid6"></column>
  <column name="staff_name" type="String" xid="xid7"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1">
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="300"><div xid="div1" style="width:100%;height:100%;"><img src="$UI/wdPro/common/img/happy.jpeg" alt="" xid="image1" style="width:100%;" height="100%"></img></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content2" style="background-color:#E6DFDA;" _xid="C8CCA65CE200000198451000C4B01FA1"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div32">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="popData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1">
       <div xid="div72" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;">
        <div xid="div73" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
         <div class="media" xid="media1">
          <div class="media-left" xid="mediaLeft1">
           <a href="#" xid="a1">
            <img class="media-object" src="$UI/wdPro/common/img/head1.png" alt="" xid="image2" style="width:45px;height:45px;"></img></a> </div> 
          <div class="media-body" xid="mediaBody1">
           <h4 class="media-heading" xid="h41">
            <span xid="span1" style="color:#585958;" bind-text='val("staff_name")'>张三</span>
            <span xid="span2" bind-text='val("phone")' style="color:#585958;font-size:12px"></span>
            </h4> 
           <h5 xid="h51" style="color:#585958;" bind-text=' val("client")'>苏宁电器商城</h5></div> 
  <div class="media-right" xid="mediaRight2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="button" xid="button1" style="color:#585958;;margin-top:5px;" bind-text=' val("day")+"天后生日"'>
   <i xid="i1"></i>
   <span xid="span3"></span></a></div></div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div33">
    <span class="x-pull-up-label" xid="span27">加载更多...</span></div> </div></div>
   </div></div></div></div>