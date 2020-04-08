<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="column9"></column>
  <column name="start" type="Date" xid="column10"></column>
  <column name="end" type="Date" xid="column1"></column>
  <column name="chufa" type="String" xid="column2"></column>
  <column name="mudi" type="String" xid="column3"></column>
  <column name="gl" type="String" xid="xid1"></column>
  <column name="qishi" type="Time" xid="xid2"></column>
  <column name="fangshi" type="String" xid="xid3"></column>
  <column name="shijian" type="String" xid="xid4"></column>
  <column name="peitongid" type="String" xid="xid5"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeList" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="title" type="String" xid="column12"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="persons" idColumn="id"> 
      <column name="id" type="String" xid="column13"/>  
      <column name="em_name" type="String" xid="column14"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加出差申请明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">添加出差申请明细</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"
        style="margin-top:10px;background-color:white;"> 
        <div class="x-col" xid="col7"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row7"> 
            <div class="col col-xs-12" xid="col15"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:115px;">开始时间：</label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input8" bind-ref="$model.infoData.ref(&quot;start&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col16"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:115px;">结束时间：</label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input9" bind-ref="$model.infoData.ref(&quot;end&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:115px;"><![CDATA[出发地：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.infoData.ref(&quot;chufa&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:115px;">目的地：</label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref="$model.infoData.ref(&quot;mudi&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col14"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:115px;"><![CDATA[点对点公里数：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input3" bind-ref="$model.infoData.ref(&quot;gl&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label10" style="width:115px;"><![CDATA[发车/起飞时间：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input10" bind-ref="$model.infoData.ref(&quot;qishi&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col19"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit11"> 
                <label class="x-label" xid="label11" style="width:115px;"><![CDATA[交通工具：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select4" bind-ref="$model.infoData.ref(&quot;fangshi&quot;)"
                  bind-options="typeList" bind-optionsValue="id" bind-optionsLabel="title"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col20"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit12"> 
                <label class="x-label" xid="label12" style="width:115px;"><![CDATA[乘车所需时间：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input5" bind-ref="$model.infoData.ref(&quot;shijian&quot;)"/>  
                <span xid="span7"><![CDATA[（小时）]]></span> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col21"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit13"> 
                <label class="x-label" xid="label13" style="width:115px;"><![CDATA[陪同人员：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." class="form-control x-edit" xid="select1"
                  bind-ref="$model.infoData.ref(&quot;peitongid&quot;)" bind-options="persons"
                  bind-optionsValue="id" bind-optionsLabel="em_name"/> 
              </div> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/> 
</div>
