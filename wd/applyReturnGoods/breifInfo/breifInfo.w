<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="briefData" idColumn="id" onCustomRefresh="briefDataCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column name="brief_content" type="String" xid="xid2"></column>
  <column name="brief_create_time" type="String" xid="xid3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="备注信息"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">备注信息</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="briefData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1" style="padding:3px 0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" style="border-bottom:1px solid #e6e7e8;"><div xid="div2" style="padding:3px;"><span xid="span2" bind-text=' ref("brief_content")'></span></div>
  <div xid="div3" style="padding:3px 3px;display:flex;" class="h-style"><div xid="div4" style="flex:1;"><span xid="span3"><![CDATA[18092337815]]></span></div>
  <div xid="div5" style="flex:1;text-align:right;"><span xid="span4" bind-text=' ref("brief_create_time")'></span></div></div></div>
   </div></div></li></ul> </div></div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="添加备注" xid="button1" style="color:#fff;background-color:#47D1D1;width:100%;height:48px;line-height:2">
   <i xid="i1"></i>
   <span xid="span1">添加备注</span></a></div></div> 
</div>