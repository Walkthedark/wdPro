<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:73px;left:67px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="rlinkManList" idColumn="client_id" confirmDelete="false"><column name="client_id" type="String" xid="xid1"></column>
  <column name="client_name" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="linkManData" idColumn="staff_id" confirmRefresh="false" confirmDelete="false">
   <column name="staff_id" type="String" xid="column1"></column>
  <column name="staff_name" type="String" xid="column2"></column>
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
  <column name="is_checked" type="String" xid="xid15"></column>
  <column name="birthday" type="String" xid="xid16"></column>
  <column name="sex_trans" type="String" xid="xid17"></column>
  <column name="email" type="String" xid="xid18"></column>
  <column name="wechat" type="String" xid="xid19"></column>
  <column name="micro_blog" type="String" xid="xid20"></column>
  <column name="qq" type="String" xid="xid21"></column>
  <column name="native_place" type="String" xid="xid22"></column>
  <column name="hobby" type="String" xid="xid23"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#EBEAF0;"><div xid="div1" class="list-group-item" style="background-color:#EBEAF0;"><span xid="span1"><![CDATA[基本信息]]></span>
  </div>
  <div xid="div2" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;"><div xid="div3" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:80px;"><![CDATA[姓名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.linkManData.ref("staff_name")'></input></div></div>
  <div xid="div4" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2" style="width:80px;"><![CDATA[手机]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.linkManData.ref("phone")'></input></div> 
  </div><div xid="div28" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit21">
    <label class="x-label" style="width:80px;" xid="label21"><![CDATA[联系人标签]]></label>
    <div class="x-edit" xid="div26">
     <div class="input-group" xid="div27">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="tagInp" placeHolder="请选择" style="background-color:white;border-style:none none none none;" disabled="true" bind-ref='$model.linkManData.ref("tag")'></input>
      <span class="input-group-btn" xid="span4">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="tagBtn" style="color:#838484;" onClick="tagBtnClick">
        <i class="icon-chevron-right" xid="i3"></i></a> </span> </div> </div> </div> </div><div xid="div5" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
    <label class="x-label" xid="label3" style="width:80px;"><![CDATA[职务]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.linkManData.ref("duty")'></input></div> </div><div xid="div34" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11" style="width:80px;"><![CDATA[生日]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input10" dataType="Date" bind-ref='$model.linkManData.ref("birthday")'></input></div></div><div xid="div31" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit22">
    <label class="x-label" style="width:80px;" xid="label22"><![CDATA[性别]]></label>
    <div class="x-edit" xid="div29">
     <div class="input-group" xid="div30">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="sexInp" placeHolder="请选择" style="background-color:white;border-style:none none none none;" disabled="true" bind-ref='$model.linkManData.ref("sex_trans")'></input>
      <span class="input-group-btn" xid="span5">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="sexBtn" style="color:#838484;" onClick="sexBtnClick">
        <i class="icon-chevron-right" xid="i4"></i></a> </span> </div> </div> </div> </div><div xid="div8" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
    <label class="x-label" xid="label4" style="width:80px;"><![CDATA[座机]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" bind-ref='$model.linkManData.ref("special_plane")'></input></div> </div>
  <div xid="div7" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
    <label class="x-label" xid="label5" style="width:80px;"><![CDATA[邮箱]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.linkManData.ref("email")'></input></div> </div>
  <div xid="div6" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
    <label class="x-label" xid="label6" style="width:80px;"><![CDATA[微信]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.linkManData.ref("wechat")'></input></div> </div>
  <div xid="div11" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
    <label class="x-label" xid="label7" style="width:80px;"><![CDATA[微博]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input9" bind-ref='$model.linkManData.ref("micro_blog")'></input></div> </div>
  <div xid="div10" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
    <label class="x-label" xid="label8" style="width:80px;"><![CDATA[QQ]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input8" bind-ref='$model.linkManData.ref("qq")'></input></div> </div>
  <div xid="div9" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
    <label class="x-label" xid="label9" style="width:80px;"><![CDATA[籍贯]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7" bind-ref='$model.linkManData.ref("native_place")'></input></div> </div>
  <div xid="div14" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
    <label class="x-label" xid="label10" style="width:80px;"><![CDATA[兴趣爱好]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input12" bind-ref='$model.linkManData.ref("hobby")'></input></div> </div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:5px;">
   <div class="x-col" xid="col3"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:5px;">
   <div class="x-col" xid="col4"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:10px;">
   <div class="x-col" xid="col1"></div></div>
  <div xid="div77" class="list-group-item" style="text-align:center;background-color:#4B76AE;padding:5px 5px 5px 5px;" bind-click="div77Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" label="保存" xid="button18" style="color:#FFFFFF;" icon="icon-plus-round">
    <i xid="i18" class="icon-plus-round"></i>
    <span xid="span19" style="font-size:16px;">保存</span></a> </div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="tagWinDialog" src="$UI/wdPro/contactPep/dialog/dialog/linkManCommon.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="sexWinDialog" src="$UI/wdPro/contactPep/dialog/dialog/sexChoose.w" forceRefreshOnOpen="true"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" position="bottom">
   <div class="x-popOver-overlay dd" xid="div12"></div>
   <div class="x-popOver-content d" xid="div13" style="width:100%;height:auto;"><div xid="div15" style="width:100%;"><div xid="div16" style="text-align:center;" class="list-group-item"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="新增客户" xid="button1" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span2">新增客户</span></a></div>
  <div xid="div17" class="list-group-item" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="关联现有客户" xid="button2" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span3">关联现有客户</span></a></div>
  <div xid="div19" class="list-group-item" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="取消" xid="button3" onClick='{"operation":"popOver1.hide"}'>
   <i xid="i5"></i>
   <span xid="span6">取消</span></a></div></div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="alreadyWinDialog" src="$UI/wdPro/contactPep/dialog/dialog/linkManPop.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="addPopWinDialog" src="$UI/wdPro/contactPep/dialog/dialog/addPopC.w"></span></div>