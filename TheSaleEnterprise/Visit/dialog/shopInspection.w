<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:85px;left:207px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id" onCustomRefresh="CDataCustomRefresh"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="type" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"1","type":"是"},{"id":"2","type":"否"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true">
      <column label="id" name="id" type="String" xid="xid3"/>  
      <column label="网点id" name="net_id" type="String" xid="xid4"/>  
      <column label="网点名称" name="net" type="String" xid="xid5"/>  
      <column label="导购编号" name="dg_id" type="String" xid="xid7"/>  
      <column label="姓名" name="xm" type="String" xid="xid10"/>  
      <column label="岗位类型" name="gwlx" type="String" xid="xid6"/>  
      <column label="联系方式" name="lxfs" type="String" xid="xid11"/>  
      <column label="目前状态" name="mqzt" type="String" xid="xid12"/>  
      <column label="在岗记录" name="zgjl" type="String" xid="xid13"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="radioData" idColumn="value">
      <column label="值" name="value" type="Integer" xid="xid8"/>  
      <column label="lable" name="lable" type="String" xid="xid9"/>  
      <data xid="default3">[{"value":1,"lable":"是"},{"value":0,"lable":"否"}]</data>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="导购员在岗检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购员在岗检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div id="container" xid="div1" style="display:none;"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row7"> 
        <div class="x-col x-col-33" xid="col14" style="margin:auto;text-align:center;">
          <img src=" " alt="" xid="image2" style="width:80px;height:80px;"/>
        </div>  
        <div class="x-col" xid="col15">
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row6"> 
            <div class="col col-xs-12" xid="col11">
              <label xid="label3" bind-text="$model.infoData.ref(&quot;col1&quot;)" class="font-One">label</label>
            </div>  
            <div class="col col-xs-12" xid="col12">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label label-w" xid="label4" style="width:100px;"><![CDATA[工牌号：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output1" bind-ref="$model.infoData.ref(&quot;col2&quot;)"/>
              </div>
            </div>  
            <div class="col col-xs-12" xid="col13">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label label-w" xid="label5" style="width:100px;"><![CDATA[联系方式：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output2" bind-ref="$model.infoData.ref(&quot;lxfs&quot;)"/>
              </div>
            </div>  
            <div class="col col-xs-12" xid="col17">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label label-w" xid="label6" style="width:100px;"><![CDATA[导购员类型：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output3" bind-ref="$model.infoData.ref(&quot;gwlx&quot;)"/>
              </div>
            </div>
          </div>
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row border-One mar2"
        xid="row1"> 
        <div class="x-col" xid="col1" style="text-align:center;"> 
          <span xid="addresSpan" style="line-height:3em;"/> 
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
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-12" xid="col18">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[是否在岗：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="radioData"
                  bind-itemsetValue="ref(&quot;value&quot;)" bind-itemsetLabel="ref(&quot;lable&quot;)"
                  style="color: #FA7922;" bind-ref="$model.infoData.ref(&quot;mqzt&quot;)"/>
              </div>
            </div>  
            <div class="col col-xs-12" xid="col19">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[检查描述：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.infoData.ref(&quot;zgjl&quot;)"/> 
              </div>
            </div>  
            <div class="col col-xs-12" xid="col21">
              <span xid="span1"><![CDATA[上传照片（最多录入6张。）]]></span>
            </div>
          </div>
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;"> 
        <div class="x-col" xid="col4">
          <img src="$UI/TheSaleEnterprise/ClockIn/img/001.jpeg" alt="" xid="GImage"
            style="width:100px;margin-left:10px;" bind-click="GImageClick"/>
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
