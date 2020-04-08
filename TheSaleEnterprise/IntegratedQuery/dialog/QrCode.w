<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="企业二维码"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">企业二维码</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="text-align:center;">
   <div class="x-col" xid="col1"><span xid="span1" class="font-One"><![CDATA[打开微信扫码关注企业号]]></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="text-align:center;">
   <div class="x-col" xid="col4">
    <img src="$UI/TheSaleEnterprise/IntegratedQuery/dialog/img/1519444684.png" alt="" xid="image2"></img></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5">
    <span xid="span3" style="border-radius:25px;color:#ffffff;background-color:#8FC41C;display:block;width:150px;text-align:center;"><![CDATA[ 认证成功后，即可： ]]></span>
  <span xid="span5" style="display:block;"><![CDATA[（1）不用再输入用户名密码，扫码直接登录WEB系统。]]></span>
  <span xid="span6" style="display:block;"><![CDATA[（2）在微信上使用软件。]]></span></div> </div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
