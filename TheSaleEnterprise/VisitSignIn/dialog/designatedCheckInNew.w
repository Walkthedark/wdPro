<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cData" idColumn="qdlx" autoNew="true"> 
      <column name="qdlx" type="String" xid="xid3"/>  
      <column name="qdzp" type="String" xid="xid4"/>  
      <column name="qdms" type="String" xid="xid5"/>  
      <column name="qddz" type="String" xid="xid6"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="新增进场活动拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">新增进场活动拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div id="container" xid="div1" style="display:none;"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One mar2"
        xid="row1"> 
        <div class="x-col" xid="col1" style="text-align:center;"> 
          <div component="$UI/system/components/justep/output/output" class="x-output"
            xid="output1" bind-ref="$model.cData.ref(&quot;qddz&quot;)"/> 
        </div>  
        <div class="x-col x-col-20" xid="col2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button2" icon="img:$UI/TheSaleEnterprise/ClockIn/img/002.png|"
            onClick="button2Click"> 
            <i xid="i2"/>  
            <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image1"
              style="width:20px;"/>  
            <span xid="span2"/> 
          </a> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3" style="margin-top: 10px;"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit3"> 
            <label class="x-label" xid="label3"><![CDATA[签到类型：]]></label>  
            <select component="$UI/system/components/justep/select/select" class="form-control x-edit"
              xid="select1" bind-ref="$model.cData.ref(&quot;qdlx&quot;)" bind-options="CData"
              bind-optionsValue="id" bind-optionsLabel="title"/> 
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit1"> 
            <label class="x-label" xid="label1" style="width:80px;"><![CDATA[签到描述：]]></label>  
            <textarea component="$UI/system/components/justep/textarea/textarea"
              class="form-control x-edit" xid="textarea1" bind-ref="$model.cData.ref(&quot;qdms&quot;)"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
        <div class="x-col" xid="col7"> 
          <span xid="span1"><![CDATA[上传照片（最多上传6张。）]]></span> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col4"> 
          <div class="imgline" xid="div74" id="DesignatedCheckInImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="DesignatedCheckInImg1">+
              <input id="uploadDesignatedCheckIn" type="file" class="upfile"
                accept="image/*,video/*;" capture="camera" xid="file1"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="padding:20px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="保 存" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">保 存</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1"/> 
</div>
