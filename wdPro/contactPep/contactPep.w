<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="linkManData" idColumn="staff_id"><column name="staff_id" type="String" xid="xid1"></column>
  <column name="staff_name" type="String" xid="xid2"></column>
  <column name="duty" type="String" xid="xid3"></column>
  <column name="phone" type="String" xid="xid4"></column>
  <column name="special_plane" type="String" xid="xid5"></column>
  <column name="create_staff" type="String" xid="xid6"></column>
  <column name="attention_type" type="String" xid="xid7"></column>
  <column name="is_audit" type="String" xid="xid8"></column>
  <column name="last_contract_staff" type="String" xid="xid9"></column>
  <column name="last_contract_time" type="String" xid="xid10"></column>
  <column name="client_arr" type="String" xid="xid11"></column>
  <column name="client" type="String" xid="xid12"></column>
  <column name="category" type="String" xid="xid13"></column>
  <column name="tag" type="String" xid="xid14"></column>
  <column name="is_checked" type="String" xid="xid15"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="client_Data" idColumn="client_id"><column name="client_id" type="String" xid="xid16"></column>
  <column name="client_name" type="String" xid="xid17"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="categoryData" idColumn="id" onCustomRefresh="dataJasonCustomRefresh">
   <column name="id" type="String" xid="xid22"></column>
   <column name="name" type="String" xid="xid23"></column>
   <column name="choose" type="String" xid="xid24"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="region_idData" idColumn="id">
   <column name="id" type="String" xid="column2"></column>
   <column name="name" type="String" xid="column1"></column>
   <column name="choose" type="String" xid="xid25"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="moreData" idColumn="id"><column name="id" type="String" xid="xid18"></column>
  <column name="attention_type" type="String" xid="xid19"></column>
  <column name="tag" type="String" xid="xid20"></column>
  <column name="sex" type="String" xid="xid21"></column>
  <column name="birthday_soon" type="String" xid="xid26"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;10001&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="80">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px 0px 0px 0px;background-color:#EBEAF0;">
     <div xid="col3" style="width:0.5em;"></div>
     <div class="x-col x-col-80" xid="col4">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="background-color:white;height:30px;" placeHolder="姓名/手机号"></input></div> 
     <div xid="col5" class="x-col"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="确定" xid="button2" onClick="button12Click">
   <i xid="i2"></i>
   <span xid="span10">确定</span></a></div></div> 
    <div xid="div1" class="list-group-item" style="padding:0px 0px 0px 0px;">
     <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="分类" xid="button4" style="color:#585958;" icon="icon-arrow-down-b" onClick="button4Click">
       <i xid="i4" class="icon-arrow-down-b"></i>
       <span xid="span4">分类</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="销售区域" xid="button5" style="color:#585958;" icon="icon-arrow-down-b" onClick="button5Click">
       <i xid="i5" class="icon-arrow-down-b"></i>
       <span xid="span5">销售区域</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="创建人" xid="button6" style="color:#585958;" icon="icon-arrow-down-b" onClick="button6Click">
       <i xid="i6" class="icon-arrow-down-b"></i>
       <span xid="span6">创建人</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="更多" xid="button7" style="color:#585958;" icon="icon-arrow-down-b" onClick="button7Click">
       <i xid="i7" class="icon-arrow-down-b"></i>
       <span xid="span7">更多</span></a> </div> </div> </div> 
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C884D9EC587000016D262090F8F01CBA">
    
    <div xid="div3" class="list-group-item" style="background-color:#EBEAF0;">
     </div> 
    
    
    
    
    
  
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div32"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="linkManData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div72" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;" bind-click="div72Click">
   <div xid="div73" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object" src="$UI/wdPro/common/img/head1.png" alt="" xid="image1" style="width:45px;height:45px;"></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41"><![CDATA[]]>
  <span xid="span1" style="color:#585958;" bind-text='val("staff_name")'><![CDATA[张三]]></span>
  <span xid="span2" bind-text='val("phone")' style="color:#585958;font-size:12px"><![CDATA[]]></span>
  </h4>
  <h5 xid="h51" style="color:#585958;" bind-text=' val("category")'><![CDATA[苏宁电器商城]]></h5></div> 
  <div class="media-right" xid="mediaRight9">
   <div xid="div24" class="btn-radius list_btn" bind-click="div9Click" style="margin-top:8px;">...</div></div></div></div> 
   
   
   
   </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div33">
    <span class="x-pull-up-label" xid="span27">加载更多...</span></div> </div></div> 
   <div class="x-panel-bottom" xid="bottom1">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="background-color:white;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="新增联系人" xid="button3" icon="icon-plus-round" onClick="button3Click">
      <i xid="i3" class="icon-plus-round"></i>
      <span xid="span3" style="font-size:16px;">新增联系人</span></a> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver4" anchor="button4">
   <div class="x-popOver-overlay tClass" xid="div8"></div>
   <div class="x-popOver-content" xid="div7" style="width:100%;height:100%;">
    <div xid="div10" style="width:100%;height:60%;">
     <div xid="div6" style="height:100%;width:100%;">
      <div component="$UI/system/components/justep/panel/panel" class=" x-full" xid="panel5" style="height:100%;width:100%;">
       <div class="x-panel-content" xid="content5" style="background-color:#EEEFEE;width:100%;height:60%;">
        <div xid="div37" class="list-group-item" style="padding:5px 5px 5px 5px;">
         <div class="media" xid="media19">
          <div class="media-body" xid="mediaBody19">
           <h5 xid="h527" style="color:#181919;">超期未联系客户</h5></div> 
          <div class="media-right" xid="mediaRight17">
           <span component="$UI/system/components/justep/button/radio" class="x-radio x-radio-success x-radio-sm" xid="radio11" style="margin-top:9px;"></span></div> </div> </div> 
        <div xid="div43" class="list-group-item" style="padding:5px 5px 5px 5px;">
         <div class="media" xid="media17">
          <div class="media-body" xid="mediaBody20">
           <h5 xid="h528" style="color:#181919;">无联系客户</h5></div> 
          <div class="media-right" xid="mediaRight16">
           <span component="$UI/system/components/justep/button/radio" class="x-radio x-radio-success x-radio-sm" xid="radio15" style="margin-top:9px;"></span></div> </div> </div> 
        <div xid="div38" class="list-group-item" style="padding:5px 5px 5px 5px;">
         <div class="media" xid="media16">
          <div class="media-body" xid="mediaBody16">
           <h5 xid="h529" style="color:#181919;">无跟单客户</h5></div> 
          <div class="media-right" xid="mediaRight18">
           <span component="$UI/system/components/justep/button/radio" class="x-radio x-radio-success x-radio-sm" xid="radio12" style="margin-top:9px;"></span></div> </div> </div> 
        <div xid="div45" class="list-group-item" style="padding:5px 5px 5px 5px;">
         <div class="media" xid="media20">
          <div class="media-body" xid="mediaBody17">
           <h5 xid="h530" style="color:#181919;">无订货客户</h5></div> 
          <div class="media-right" xid="mediaRight20">
           <span component="$UI/system/components/justep/button/radio" class="x-radio x-radio-success x-radio-sm" xid="radio13" style="margin-top:9px;"></span></div> </div> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="height:5px;">
         <div class="x-col" xid="col16"></div></div> 
        <div xid="div11" class="list-group-item" style="padding:5px 5px 5px 5px;">
         <div class="media" xid="media4">
          <div class="media-body" xid="mediaBody4">
           <h5 xid="h54" style="color:#181919;">无订货客户</h5></div> 
          <div class="media-right" xid="mediaRight1">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button15" icon="icon-chevron-right" style="margin-top:9px;color:#838484;">
            <i xid="i17" class="icon-chevron-right"></i>
            <span xid="span19"></span></a> </div> </div> </div> </div> 
       <div class="x-panel-bottom" xid="bottom5">
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup6" style="height:100%;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button16" style="background-color:#fff;">
          <i xid="i16"></i>
          <span xid="span18">取消</span></a> 
         <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button17" style="background-color:#4DA7F4;color:#FEFFFE;">
          <i xid="i15"></i>
          <span xid="span17">确认</span></a> </div> </div> </div> </div> </div> 
    <div xid="div9" style="width:100%;height:40%;" class="div_opacity"></div></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver7" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div12"></div>
   <div class="x-popOver-content" xid="div13" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel9">
     <div class="x-panel-content" xid="content9" style="background-color:white;">
      <div xid="div2">
       <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="categoryData">
        <ul class="x-list-template" xid="listTemplateUl5">
         <li xid="li5">
          <div xid="div16" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
           <div class="media" xid="media2">
            <div class="media-body" xid="mediaBody2">
             <h5 xid="h53" style="color:#181919;" bind-text=' val("name")'>未分类</h5></div> 
            <div class="media-right" xid="mediaRight4">
             <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox3" bind-ref='ref("choose")' checkedValue="1" uncheckedValue="0"></span></div> </div> </div> </li> </ul> </div> </div> </div> 
     <div class="x-panel-bottom" xid="bottom7">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup7">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button26" style="background-color:#fff;" onClick='{"operation":"popOver7.hide"}'>
        <i xid="i25"></i>
        <span xid="span11">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button27" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button27Click">
        <i xid="i27"></i>
        <span xid="span12">确认</span></a> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver1" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div4"></div>
   <div class="x-popOver-content" xid="div5" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
     <div class="x-panel-content" xid="content2" style="background-color:white;">
      <div xid="div14">
       <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="region_idData">
        <ul class="x-list-template" xid="listTemplateUl2">
         <li xid="li2">
          <div xid="div15" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
           <div class="media" xid="media3">
            <div class="media-body" xid="mediaBody3">
             <h5 xid="h52" style="color:#181919;" bind-text=' val("name")'>未分类</h5></div> 
            <div class="media-right" xid="mediaRight2">
             <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" bind-ref='ref("choose")' checkedValue="1" uncheckedValue="0"></span></div> </div> </div> </li> </ul> </div> </div> </div> 
     <div class="x-panel-bottom" xid="bottom2">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup3">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button9" style="background-color:#fff;" onClick='{"operation":"popOver1.hide"}'>
        <i xid="i8"></i>
        <span xid="span14">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button8" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button8Click">
        <i xid="i9"></i>
        <span xid="span13">确认</span></a> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver2" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div20"></div>
   <div class="x-popOver-content" xid="div19" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
     <div class="x-panel-content" xid="content3" style="background-color:white;">
      <div xid="div17">
       <div xid="div21"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="请输入创建人名称" xid="button12" style="font-size:14px">
   <i xid="i12"></i>
   <span xid="span20">请输入创建人名称</span></a></div>
  <div xid="div22"><input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInp"></input></div></div> </div> 
     <div class="x-panel-bottom" xid="bottom3">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup4">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button11" style="background-color:#fff;" onClick='{"operation":"popOver2.hide"}'>
        <i xid="i10"></i>
        <span xid="span15">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button10" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button10Click">
        <i xid="i11"></i>
        <span xid="span16">确认</span></a> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver3" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div27"></div>
   <div class="x-popOver-content" xid="div26" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
     <div class="x-panel-content" xid="content4" style="background-color:white;">
      <div xid="div25">
       
       <div xid="div29" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
   <div class="media" xid="media7">
    <div class="media-body" xid="mediaBody7">
     <h5 xid="h56" style="color:#181919;"><![CDATA[未关联客户的联系人]]></h5></div> 
    <div class="media-right" xid="mediaRight6">
     <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox4" checkedValue="1" uncheckedValue="0"></span></div> </div> </div></div> 
  <div xid="div18">
   <div xid="div23" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
    <div class="media" xid="media5">
     <div class="media-body" xid="mediaBody5">
      <h5 xid="h55" style="color:#181919;"><![CDATA[近期生日]]></h5></div> 
     <div class="media-right" xid="mediaRight3">
      <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox2" checkedValue="1" uncheckedValue="0"></span></div> </div> </div> </div><div xid="div28" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
   <div class="media" xid="media6">
    <div class="media-body" xid="mediaBody6">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
      <label class="x-label" xid="label7"><![CDATA[关注状态]]></label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit input-sty" xid="input4"></input></div> </div> 
    <div class="media-right" xid="mediaRight5">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button19" icon="icon-arrow-right-b" style="color:#909090;" onClick="button19Click">
      <i xid="i19" class="icon-arrow-right-b"></i>
      <span xid="span24"></span></a> </div> </div> </div>
  <div xid="div30" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
   <div class="media" xid="media8">
    <div class="media-body" xid="mediaBody8">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
      <label class="x-label" xid="label1"><![CDATA[联系人标签]]></label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit input-sty" xid="input5"></input></div> </div> 
    <div class="media-right" xid="mediaRight7">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button20" icon="icon-arrow-right-b" style="color:#909090;" onClick="button20Click">
      <i xid="i20" class="icon-arrow-right-b"></i>
      <span xid="span25"></span></a> </div> </div> </div>
  <div xid="div31" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px">
   <div class="media" xid="media9">
    <div class="media-body" xid="mediaBody9">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
      <label class="x-label" xid="label2"><![CDATA[性别]]></label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit input-sty" xid="input6"></input></div> </div> 
    <div class="media-right" xid="mediaRight8">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button21" icon="icon-arrow-right-b" style="color:#909090;" onClick="button21Click">
      <i xid="i21" class="icon-arrow-right-b"></i>
      <span xid="span26"></span></a> </div> </div> </div>
  </div> 
     <div class="x-panel-bottom" xid="bottom4">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup5">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button18" style="background-color:#fff;" onClick='{"operation":"popOver3.hide"}'>
        <i xid="i14"></i>
        <span xid="span22">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button13" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button13Click">
        <i xid="i13"></i>
        <span xid="span21">确认</span></a> </div> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="tagWinDialog" src="$UI/wdPro/contactPep/dialog/dialog/linkTagList.w" forceRefreshOnOpen="true"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver5" anchor="bottom1">
   <div class="x-popOver-overlay" xid="div36"></div>
   <div class="x-popOver-content ddd" xid="div34" style="width:100%;height:35%;">
    <div xid="div35" style="height:100%;width:100%;background-color:white;">
     <div component="$UI/system/components/justep/panel/panel" class=" x-full" xid="panel6">
      <div class="x-panel-content" xid="content6">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="padding:0px 0px 0px 0px;">
        <div class="x-col" xid="col12" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="打电话" xid="button41" icon="linear linear-phonehandset" style="color:#181919;" onClick="button41Click">
          <i xid="i37" class="linear linear-phonehandset" style="color:#BACE83;font-size:20px"></i>
          <span xid="span39">打电话</span></a> </div> 
        <div class="x-col" xid="col13" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="绑定外部联系人" xid="button40" icon="dataControl dataControl-save24" style="color:#181919;" onClick="button40Click">
          <i xid="i39" class="dataControl dataControl-save24" style="color:#DEAA64;font-size:20px"></i>
          <span xid="span38">绑定外部联系人</span></a> </div> 
        <div class="x-col" xid="col1" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="删除" xid="button1" icon="linear linear-trash" style="color:#181919;" onClick="button2Click">
          <i xid="i43" class="linear linear-trash" style="color:#9F96BC;font-size:20px"></i>
          <span xid="span41">删除</span></a></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="padding:0px 0px 0px 0px;">
        <div class="x-col" xid="col36" style="text-align:center;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="修改" xid="button45" icon="dataControl dataControl-pencils" style="color:#181919;" onClick="button45Click">
          <i xid="i42" class="dataControl dataControl-pencils" style="color:#469408;font-size:20px"></i>
          <span xid="span8">修改</span></a></div> 
        <div class="x-col" xid="col35" style="text-align:center;">
          </div> 
        <div class="x-col" xid="col34" style="text-align:center;"></div></div> </div> 
      <div class="x-panel-bottom" xid="bottom6">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="padding:0px 0px 0px 0px;">
        <div class="x-col" xid="col31" style="text-align:center;"></div>
        <div class="x-col" xid="col32" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top btn-only-label" label="取消" xid="button39" icon="linear linear-phonehandset" style="color:#181919;" onClick='{"operation":"popOver5.hide"}'>
          <i xid="i46" class="linear linear-phonehandset"></i>
          <span xid="span40">取消</span></a> </div> 
        <div class="x-col" xid="col33" style="text-align:center;"></div></div> </div> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" title="温馨提示" message="是否要删除联系人？" onOK="messageDialog1OK" type="OKCancel"></span></div>