<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="设置服务器信息">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">设置服务器信息</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1">
  <ul xid="ul2" style="margin-top:5%;">
   <li class="list-group-item" xid="li1">
    <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
     <span class="input-group-addon" xid="span4"><![CDATA[服务器地址]]></span>
     <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="nameInput" placeHolder="请输入连接地址"></input></div> </li> 
   <li class="list-group-item" xid="li1">
    <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup3">
     <span class="input-group-addon" xid="span5"><![CDATA[服务器名称]]></span>
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="servernameInput"></input></div> </li> 
  <li class="list-group-item" xid="li2">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
    <span class="input-group-addon" xid="detaBase"><![CDATA[服务数据源]]></span>
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="dataBaseInp"></input></div> </li></ul>
  <div xid="div5" class="list-group-item" style="margin-top:20px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="验证" xid="loginBtn" onClick="button1Click">
    <i xid="i2"></i>
    <span xid="span2">验证</span></a> </div>
  </div>
   </div></div>