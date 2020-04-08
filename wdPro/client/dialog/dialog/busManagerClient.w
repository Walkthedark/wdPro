<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:97px;left:39px;height:auto;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="business_Type_Data" idColumn="staff_id">
      <column name="staff_id" type="String" xid="xid1"></column>
  <column name="staff_name" type="String" xid="xid2"></column>
  <column name="phone" type="String" xid="xid3"></column>
  <column name="is_checked" type="Integer" xid="xid4"></column>
  <column name="head_img" type="String" xid="xid5"></column>
  <column name="department_name" type="String" xid="xid6"></column>
  <column name="custom_code" type="String" xid="xid7"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px 0px 0px 0px;">
   <div xid="col3" style="width:1em;"></div>
   <div class="x-col x-col-80" xid="col4">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="background-color:white;height:35px;" placeHolder="名称/手机号"></input></div> 
   <div xid="col5" class="x-col "><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="确定" xid="button2" onClick="button2Click">
   <i xid="i3"></i>
   <span xid="span5">确定</span></a></div></div></div><div class="x-panel-content  x-scroll-view" xid="content2" _xid="C8D2264D9D300001191918FC333A1A6A"> 
      
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div3"><div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:#EBEAF0;">
   <div class="media" xid="media1">
    <div class="media-body" xid="mediaBody1">
     <h5 xid="h51" style="color:#181919;"><![CDATA[业务经理]]></h5></div> 
    </div> </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="business_Type_Data"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1">
            <div xid="div22" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
              <div xid="div72" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;">
   <div xid="div73" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div class="media" xid="media2">
     <div class="media-left" xid="mediaLeft1">
      <a href="#" xid="a1">
       <img class="media-object" alt="" xid="image1" style="width:45px;height:45px;" bind-attr-src=' val("head_img")'></img></a> </div> 
     <div class="media-body" xid="mediaBody2">
      <h4 class="media-heading" xid="h41">
       <span xid="span4" style="color:#585958;" bind-text='val("staff_name")'>张三</span>
       </h4> 
      <h5 xid="h53"><![CDATA[]]><span xid="span3" bind-text='val("phone")' style="color:#585958;font-size:12px"></span></h5></div> 
     <div class="media-right" xid="mediaRight9">
      <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" bind-ref='ref("is_checked")' checked="1"></span></div> </div> </div> </div></div>
          </li>
        </ul> 
      </div></div>
   <div class="x-content-center x-pull-up" xid="div4">
    <span class="x-pull-up-label" xid="span7">加载更多...</span></div> </div></div>  
    <div class="x-panel-bottom" xid="bottom1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="取消" xid="button1" style="background-color:white;" onClick='button1Click'> 
          <i xid="i1"/>  
          <span xid="span1">取消</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="确定" xid="okBtn" style="background-color:#4B76AE;color:#FFFFFF;" onClick="okBtnClick"> 
          <i xid="i2"/>  
          <span xid="span2">确定</span>
        </a> 
      </div>
    </div>
  </div>
</div>
