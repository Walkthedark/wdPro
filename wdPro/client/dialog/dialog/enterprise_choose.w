<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:97px;left:39px;height:auto;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="paret_data" idColumn="trade_id"><column name="trade_id" type="String" xid="xid1"></column>
  <column name="parent_id" type="String" xid="xid2"></column>
  <column name="trade_name" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="child_data" idColumn="trade_id"><column name="parent_id" type="String" xid="xid4"></column>
  <column name="trade_id" type="String" xid="xid5"></column>
  <column name="trade_name" type="String" xid="xid6"></column>
  <column name="choose" type="Integer" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content2"> 
      <div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:#EBEAF0;"> 
        <div class="media" xid="media1"> 
          <div class="media-body" xid="mediaBody1"> 
            <h5 xid="common_Span" style="color:#181919;"><![CDATA[企业]]></h5>
          </div> 
        </div> 
      </div>
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="paret_data" dataItemAlias="paretlist"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1" style="height:auto;"> 
            
  
  <div xid="div4"><div component="$UI/system/components/bootstrap/accordion/accordion" xid="accordion1">
   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
    <div class="panel-heading" xid="heading1">
     <h4 class="panel-title" xid="h41">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" label="button" xid="button4" bind-text=' val("trade_name")' style="color:#181919;">
   <i xid="i5"></i>
   <span xid="span5"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right btn-xs" xid="button5" icon="linear linear-chevronright" style="color:#181919;" onClick="button3Click">
   <i xid="i6" class="linear linear-chevronright"></i>
   <span xid="span6"></span></a></h4> </div> 
    <div class="panel-collapse collapse on" xid="div6">
     <div class="panel-body" xid="div7" style="padding:0px 0px 0px 0px;"><div xid="div3"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="$model.child_data" filter="$row.val('parent_id')==paretlist.val('trade_id')">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div xid="div22" class="list-group-item" style="padding:0px 0px 0px 15px;">
   <div class="media" xid="media9">
    <div class="media-body" xid="mediaBody9">
     <h5 xid="h518" style="color:#181919;" bind-text='val("trade_name")'>潜在用友客户</h5></div> 
    <div class="media-right" xid="mediaRight8">
     <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" checkedValue="1" uncheckedValue="0" bind-ref='ref("choose")'></span></div> </div> </div></li></ul> </div></div></div></div> </div> </div></div></li> 
        </ul> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="取消" xid="button1" style="background-color:white;" onClick='{"operation":"window.close"}'> 
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
