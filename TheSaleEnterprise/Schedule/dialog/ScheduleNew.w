<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="lx" autoNew="true"> 
      <data xid="default2">[]</data>
    <column name="lx" type="String" xid="column10"></column>
  <column name="ks" type="Date" xid="column1"></column>
  <column name="js" type="Date" xid="column2"></column>
  <column name="dd" type="String" xid="column3"></column>
  <column name="yq" type="String" xid="column4"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="type" type="String" xid="xid2"/>  
      <data xid="default3">[{"id":"1","type":"是"},{"id":"2","type":"否"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="listDialog" src="$UI/TheSaleEnterprise/Project/dialog/ProjectArchive.w"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="staffDialog" src="$UI/TheSaleEnterprise/Schedule/dialog/staff.w" onReceive="staffDialogReceive"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="新的日程安排"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">新的日程安排</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="background-color:white;"> 
              <div class="x-col" xid="col17"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4"> 
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label3" style="width:80px;"><![CDATA[类型：]]></label>  
                      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.infoData.ref("lx")'/>
                    </div>
                  </div>  
                  <div class="col col-xs-12" xid="col2"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4"> 
                      <label class="x-label" xid="label4" style="width:80px;"><![CDATA[开始：]]></label>  
                      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" dataType="Date" bind-ref='$model.infoData.ref("ks")'/>
                    </div>
                  </div>  
                  <div class="col col-xs-12" xid="col4"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6"> 
                      <label class="x-label" xid="label6" style="width:80px;"><![CDATA[结束：]]></label>  
                      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" dataType="Date" bind-ref='$model.infoData.ref("js")'/>
                    </div>
                  </div>
                <div class="col col-xs-12" xid="col3">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
    <label class="x-label" xid="label1" style="width:80px;"><![CDATA[地点：]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.infoData.ref("dd")'></input></div> </div></div> 
              </div> 
            </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="display:none;background-color:white;">
   <div class="x-col" xid="col5">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多选项" xid="button4">
   <i xid="i4"></i>
   <span xid="span3">更多选项</span></a>
  </div> </div><div xid="more"></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="background-color:white;">
   <div class="x-col" xid="col7">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row7">
     <div class="col col-xs-12" xid="col6">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
       <label class="x-label" xid="label2" style="width:80px;">邀请：</label>
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="staffInput" bind-ref='$model.infoData.ref("yq")'></input>
       <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="批量邀请" xid="button5" onClick="button5Click">
        <i xid="i5"></i>
        <span xid="span5">批量邀请</span></a> </div> </div> </div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="添 加" xid="button2" style="width:100%;" onClick="button2Click"> 
          <i xid="i2"/>  
          <span xid="span1">添 加</span>
        </a> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default3 btn-only-label"
          label="取消" xid="button3" style="width:100%;" onClick="button3Click"> 
          <i xid="i3"/>  
          <span xid="span2">取消</span>
        </a> 
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1"></span></div>
