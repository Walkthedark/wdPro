<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" style="top:84px;left:364px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imageData" idColumn="img_id">
   <column name="img_id" type="String" xid="xid74"></column>
   <column name="img_url" type="String" xid="xid75"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1" style="background-color:#EBEAF0;">
  <div xid="div3" class="list-group-item" style=";padding:5px 5px 5px 5px;background-color:transparent;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" xid="button1" style="color:#6F6F6F;">
   <i xid="i1"></i>
   <span xid="span1"><![CDATA[共有]]></span><span xid="span2" bind-text=" $model.imageData.getCount()"></span><span xid="span3"><![CDATA[张图片]]></span></a>
  </div><div xid="div2" style="padding:5px 5px 5px 5px;background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="imageData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col col-xs-4 text-center tb-listBox text-black"><div xid="div1"><img src=" " alt="" xid="image1" style="width:100px;height:100px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#E3E3E3 #E3E3E3 #E3E3E3 #E3E3E3;" bind-attr-src=' val("img_url")'></img></div></li></ul> </div></div>
  </div></div></div>