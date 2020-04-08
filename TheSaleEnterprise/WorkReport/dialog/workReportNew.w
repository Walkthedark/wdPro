<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:147px;left:400px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="rq" type="Date" xid="column10"/>  
      <column name="lx" type="String" xid="column1"/>  
      <column name="nr" type="String" xid="column2"/>  
      <column name="zp" type="String" xid="column3"/>  
      <column name="col5" type="String" xid="column4"/>  
      <column name="col6" type="String" xid="column5"/>  
      <column name="col7" type="String" xid="column6"/>  
      <column name="col8" type="String" xid="column6"/>  
      <column name="col9" type="String" xid="column7"/>  
      <column name="co20" type="String" xid="column8"/>
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="typeList" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="title" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="我的工作日报"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">我的工作日报</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col17"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4"> 
            <div class="col col-xs-12" xid="col15"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[日期：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.infoData.ref(&quot;rq&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col16"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:80px;"><![CDATA[类型：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-ref="$model.infoData.ref(&quot;lx&quot;)" bind-options="typeList" bind-optionsValue="id" bind-optionsLabel="title"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:80px;"><![CDATA[内容：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.infoData.ref(&quot;nr&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col4"> 
          <span xid="span1">上传照片（最多录入6张。）</span> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col5"> 
          <div class="imgline" xid="div74" id="workReportImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="workReportImg1">+
              <input id="upload6" type="file" class="upfile" accept="image/*,video/*;"
                capture="camera" xid="file1"/>
            </div> 
          </div>
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="提 交" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">提 交</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
