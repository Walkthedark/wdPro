<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ListData" idColumn="documentary_id" confirmDelete="false" confirmRefresh="false">
   <column name="category" type="String" xid="xid1"></column>
   <column name="client_id" type="String" xid="xid2"></column>
   <column name="client_name" type="String" xid="xid3"></column>
   <column name="create_at" type="String" xid="xid4"></column>
   <column name="create_staff" type="String" xid="xid5"></column>
   <column name="create_staff_id" type="String" xid="xid6"></column>
   <column name="department" type="String" xid="xid7"></column>
   <column name="documentary_id" type="String" xid="xid8"></column>
   <column name="goods" type="String" xid="xid9"></column>
   <column name="images" type="String" xid="xid10"></column>
   <column name="money" type="String" xid="xid11"></column>
   <column name="remark" type="String" xid="xid12"></column>
   <column name="staff_id" type="String" xid="xid13"></column>
   <column name="stage" type="String" xid="xid14"></column>
   <column name="title" type="String" xid="xid15"></column>
   <column name="update_at" type="String" xid="xid16"></column>
   <column name="update_staff" type="String" xid="xid17"></column>
   <column name="no_change_days" type="String" xid="xid18"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="goods_id" confirmDelete="false">
   <column name="cate_name" type="String" xid="column1"></column>
   <column name="goods_id" type="String" xid="column2"></column>
   <column name="goods_name" type="String" xid="column3"></column>
   <column name="specification" type="String" xid="column4"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   
   <div class="x-panel-content" xid="content1">
     
  <div xid="div3" class="list-group-item" style="background-color:#F3F4F3;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#D7D7DA #D7D7DA #D7D7DA #D7D7DA;">
   </div><div xid="div1" class="list-group-item" style="background-color:white;padding:5px 5px 5px 5px;">
     <div xid="div4" style="padding:0px 0px 0px 5px;"><h5 xid="h51" style="color:#292929;font-size:16px;" bind-text=' $model.ListData.val("title")'><![CDATA[标题]]></h5>
  <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm" xid="button1" style="color:#6F6F6F;" bind-text=' $model.ListData.val("stage")'>
   <i xid="i3"></i>
   <span xid="span4"></span></a>
  <h5 xid="h52" style="color:#6F6F6F;"><![CDATA[0天未联系]]></h5>
  <h5 xid="h53">客户名称</h5>
  <h5 xid="h54" style="color:#6F6F6F;" bind-text='"最近修改时间"+ $model.ListData.val("update_at")'><![CDATA[修改时间]]></h5></div>
  </div><div xid="div2" class="list-group-item" style="background-color:#F3F4F3;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#D7D7DA #D7D7DA #D7D7DA #D7D7DA;">
   <span xid="span7" style="color:#6B6C6C;"><![CDATA[基本信息]]></span></div>
  <div xid="div5" class="list-group-item" style="padding:0px 0px 0px 5px;">
  <div xid="div6" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:120px;"><![CDATA[跟单金额]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='$model.ListData.ref("money")'></div></div></div>
  <div xid="div7" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2" style="width:120px;"><![CDATA[跟单产品]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2"></div></div> </div>
  <div xid="div20">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsData">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1">
      <div xid="div21" style="padding:5px 5px 5px 5px;" class="list-group-item">
       </div> </li> </ul> </div> </div><div xid="div8" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
    <label class="x-label" xid="label3" style="width:120px;"><![CDATA[联系人]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3"></div></div> </div>
  <div xid="div9" class="list-group-item" style="display:none;padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
    <label class="x-label" xid="label4" style="width:120px;"><![CDATA[跟单说明]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='$model.ListData.ref("remark")'></div></div> </div>
  <div xid="div10" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
    <label class="x-label" xid="label5" style="width:120px;"><![CDATA[跟单阶段]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref='$model.ListData.ref("stage")'></div></div> </div>
  <div xid="div11" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
    <label class="x-label" xid="label6" style="width:120px;"><![CDATA[未变化原因]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6"></div></div> </div>
  <div xid="div13" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7" bind-click="labelEdit7Click">
   <label class="x-label" xid="label7"><![CDATA[查看详细信息]]></label>
   <div class="x-edit" xid="div14" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-chevron-right" style="color:#6B6C6C;">
   <i xid="i4" class="icon-chevron-right"></i>
   <span xid="span3"></span></a></div></div></div></div>
  <div xid="div12" class="list-group-item" style="background-color:#F3F4F3;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#D7D7DA #D7D7DA #D7D7DA #D7D7DA;">
   <span xid="span6" style="color:#6B6C6C;"><![CDATA[创建人信息]]></span></div>
  <div xid="div19" class="list-group-item" style="padding:0px 0px 0px 5px;">
   <div xid="div18" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
     <label class="x-label" xid="label10" style="width:120px;"><![CDATA[创建人]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='$model.ListData.ref("create_staff")'></div></div> </div> 
   <div xid="div17" class="list-group-item" style="padding:5px 5px 5px 5px;border-left-style:none;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
     <label class="x-label" xid="label11" style="width:120px;"><![CDATA[创建时间]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref='$model.ListData.ref("create_at")'></div></div> </div> 
   
   
   
   </div></div> 
   <div class="x-panel-bottom" xid="bottom1">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="删除" xid="delBtn" style="background-color:white;" onClick='delBtnClick'>
      <i xid="i1"></i>
      <span xid="span1">删除</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="修改" xid="editBtn" style="background-color:#4B76AE;color:#FFFFFF;" onClick="editBtnClick">
      <i xid="i2"></i>
      <span xid="span2">修改</span></a> </div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" title="温馨提示" message="是否要删除跟单记录？" type="OKCancel" onOK="messageDialogOK"></span></div>