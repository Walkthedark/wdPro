<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" style="top:210px;left:399px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="myreData" idColumn="report_id" confirmRefresh="false" confirmDelete="false">
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
  <column name="sync_company" type="String" xid="xid20"></column>
  <column name="is_like" type="String" xid="xid26"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cc_staffData" idColumn="staff_id" confirmDelete="false" confirmRefresh="false">
   <column name="staff_id" type="String" xid="xid21"></column>
   <column name="staff_name" type="String" xid="xid22"></column>
   <column name="fID" type="String" xid="xid23"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imageData" idColumn="id" confirmDelete="false" confirmRefresh="false"><column name="id" type="String" xid="xid24"></column>
  <column name="url" type="String" xid="xid25"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="commentData" idColumn="comment_id" confirmDelete="false" confirmRefresh="false"><column name="comment_id" type="String" xid="xid27"></column>
  <column name="content" type="String" xid="xid28"></column>
  <column name="create_at" type="String" xid="xid29"></column>
  <column name="is_show" type="String" xid="xid30"></column>
  <column name="parent_id" type="String" xid="xid31"></column>
  <column name="report_id" type="String" xid="xid32"></column>
  <column name="staff_id" type="String" xid="xid33"></column>
  <column name="staff_name" type="String" xid="xid34"></column>
  <column name="target_id" type="String" xid="xid35"></column>
  <column name="target_name" type="String" xid="xid36"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sonCommenData" idColumn="comment_id" confirmRefresh="false" confirmDelete="false">
   <column name="comment_id" type="String" xid="column1"></column>
   <column name="content" type="String" xid="column2"></column>
   <column name="create_at" type="String" xid="column3"></column>
   <column name="is_show" type="String" xid="column7"></column>
   <column name="parent_id" type="String" xid="column8"></column>
   <column name="report_id" type="String" xid="column9"></column>
   <column name="staff_id" type="String" xid="column10"></column>
   <column name="staff_name" type="String" xid="column4"></column>
   <column name="target_id" type="String" xid="column5"></column>
   <column name="target_name" type="String" xid="column6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="AccessoryData" idColumn="accessory_id">
   <column name="accessory_id" type="String" xid="column11"></column>
   <column name="accessory_name" type="String" xid="column12"></column>
   <column name="accessory_url" type="String" xid="column13"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content3"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#F3F4F3;"><div xid="div2" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:#F3F4F3;border-style:none none none none;">
   </div><div xid="div1" style="padding:5px 5px 5px 5px;border-style:none none none none;" class="list-group-item"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <img class="media-object imag" src="$UI/wdPro/common/img/head4.jpeg" alt="" xid="image1" style="width:56px;height:57px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E8E8E8 #E8E8E8 #E8E8E8 #E8E8E8;"></img></div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41" bind-text=' $model.myreData.val("create_staff")' style="font-size:16px;color:#FF9655;"><![CDATA[]]></h4>
  <h4 xid="h42" style="font-size:14px;color:#AFAFAF;"><span xid="span1" bind-text='$model.myreData.val("create_at")'></span>
  </h4></div> </div>
  <div xid="div8" style="width:100%;"><h4 xid="h44" style="font-size:14px;color:#AFAFAF;">
      <span xid="span3" bind-text='$model.myreData.val("report_content")' style="float:left;"></span>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="cc_staffData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2">
     <span xid="span9" style="float:left;color:#4081ED;" bind-text='"@"+val("staff_name")'>@哈哈</span>
  </li> </ul> </div></h4></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:10px;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3"></div></div>
  <div xid="div3"><div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="threeClassList" data="imageData" dataItemAlias="threeClassRow">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" class="col col-xs-4 text-center tb-listBox text-black">
     <div xid="div4">
      <img src="" alt="" bind-attr-src=' val("url")' class="img-responsive" xid="image2" style="width:106px;height:97px;"></img>
      </div> </li> </ul> 
  </div>
  </div>
  <div xid="div25" style="width:100%;background-color:white;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="AccessoryData">
    <ul class="x-list-template" xid="listTemplateUl5">
     <li xid="li5">
      <div xid="div26" style="padding:5px 5px 5px 5px;">
       <a component="$UI/system/components/justep/button/button" class="btn x-gray" label="button" xid="button4" bind-text=' val("accessory_name")' style="color:#4B76AE;border-radius:30px;text-decoration:underline;width:100%;text-align:left;">
        <i xid="i5"></i>
        <span xid="span10"></span></a> </div> </li> </ul> </div> </div></div>
  <div xid="div5" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:#F3F4F3;border-style:none none none none;top:10px;"></div>
  <div xid="div6" class="list-group-item" style="padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;">
   <div class="x-col x-col-20" xid="col4"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="转发0" xid="button1" style="font-size:16px;color:#9C9C9C;">
   <i xid="i1"></i>
   <span xid="span2">转发0</span></a></div>
   <div class="x-col x-col-25" xid="col5"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="评论0" xid="button2" style="font-size:16px;color:#2F2F2F;font-weight:bold;border-bottom-style:solid;border-bottom-color:#FF9655;border-bottom-width:2px;">
   <i xid="i2"></i>
   <span xid="span4">评论0</span></a></div>
   <div class="x-col" xid="col6" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="赞0" xid="button3" style="font-size:16px;font-size:16px;color:#9C9C9C;">
   <i xid="i3"></i>
   <span xid="span5">赞0</span></a></div></div></div>
  <div xid="div7" style="padding:0px 0px 0px 0px;">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="commentData" dataItemAlias="shopRow">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click">
  <div xid="div10" class="list-group-item"><div class="media" xid="media2">
   
   <div class="media-body" xid="mediaBody2">
    <h4 class="media-heading" xid="h43" bind-text=' val("staff_name")' style="font-size:16px;color:#FF9655;"></h4>
    <h4 xid="h45" style="font-size:14px;color:#121212;">
     <span xid="span6" bind-text='val("content")'></span></h4> </div> </div><div xid="div11"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="$model.sonCommenData" filter="$row.val('parent_id')==shopRow.val('comment_id')">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4">
  <div xid="div20" style="padding:10px 10px 10px 10px;background-color:#F3F4F3;"><div class="media" xid="media3">
   <div class="media-body" xid="mediaBody3">
    <h4 xid="h47" style="font-size:14px;color:#121212;" class="media-heading">
     <span xid="span8" bind-text=' val("staff_name")+":"' style="color:#4081ED;"></span><span xid="span7" bind-text='val("content")'></span>
  </h4> </div> </div></div></li></ul> </div></div></div>
  
  </li></ul> </div></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom2"><div xid="div9" style="height:100%;width:100%;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:#F3F4F3;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="转发" xid="button7" icon="e-commerce e-commerce-jinru1">
    <i xid="i7" class="e-commerce e-commerce-jinru1"></i>
    <span xid="span13">转发</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button8" label="评论" icon="e-commerce e-commerce-xiaoxi" onClick='{"operation":"popOver1.show"}'>
    <i xid="i8" class="e-commerce e-commerce-xiaoxi"></i>
    <span xid="span14">评论</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="点赞" xid="button9" icon="e-commerce e-commerce-zan" bind-visible='$model.myreData.val("is_like") != 1' style="display:none" onClick="button9Click">
   <i xid="i9" class="e-commerce e-commerce-zan"></i>
   <span xid="span15">点赞</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="点赞" xid="button10" icon="e-commerce e-commerce-zan" style="color:#FF9655;display:none" bind-visible=' $model.myreData.val("is_like") == 1' onClick="button10Click">
   <i xid="i10" class="e-commerce e-commerce-zan"></i>
   <span xid="span16">点赞</span></a></div></div></div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" anchor="bottom2">
   <div class="x-popOver-overlay" xid="div12"></div>
   <div class="x-popOver-content ddd" xid="div13" style="width:100%;background-color:#F3F4F3;height:180px;"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel9">
   <div class="x-panel-content" xid="content9" style="background-color:#F3F4F3;">
    <div xid="div14" style="padding:5px 5px 5px 5px;">
     
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-80" xid="col11"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:150px;"></textarea></div>
   <div class="x-col" xid="col12"><div xid="div15" style="height:110px;"></div><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="确认" xid="button27" style="color:#FEFFFE;color:#FF9655;" onClick="button27Click">
      <i xid="i27"></i>
      <span xid="span12">确认</span></a>
  </div></div></div> </div> 
   </div></div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver2" anchor="bottom2">
   <div class="x-popOver-overlay" xid="div16"></div>
   <div class="x-popOver-content ddd" xid="div17" style="width:100%;background-color:#F3F4F3;height:180px;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
     <div class="x-panel-content" xid="content2" style="background-color:#F3F4F3;">
      <div xid="div18" style="padding:5px 5px 5px 5px;">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
        <div class="x-col x-col-80" xid="col14">
         <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea2" style="height:150px;"></textarea></div> 
        <div class="x-col" xid="col13">
         <div xid="div19" style="height:110px;"></div>
         <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="确认" xid="button11" style="color:#FEFFFE;color:#FF9655;" onClick="button11Click">
          <i xid="i11"></i>
          <span xid="span17">确认</span></a> </div> </div> </div> </div> </div> </div> </div></div>