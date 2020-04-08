<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:97px;left:39px;height:auto;"
    onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="business_Type_Data" idColumn="id">
      <column name="id" type="String" xid="xid1"/>  
      <column name="name" type="String" xid="xid2"/>  
      <column name="choose" type="Integer" xid="xid3"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content2"> 
      <div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;background-color:#EBEAF0;">
   <div class="media" xid="media1">
    <div class="media-body" xid="mediaBody1">
     <h5 xid="h51" style="color:#181919;"><![CDATA[业务模式]]></h5></div> 
    </div> </div><div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="business_Type_Data"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1">
            <div xid="div22" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
              <div class="media" xid="media9"> 
                <div class="media-body" xid="mediaBody9"> 
                  <h5 xid="h518" style="color:#181919;" bind-text=" val(&quot;name&quot;)"><![CDATA[]]></h5>
                </div>  
                <div class="media-right" xid="mediaRight8"> 
                  <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" checked="true" name="chooseName" onChange="radio1Change" checkedValue="1" uncheckedValue="0" bind-ref='ref("choose")'></span></div> 
              </div> 
            </div>
          </li>
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
