<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="pro_id" autoNew="true"> 
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data>  
      <column name="pro_id" type="String" xid="xid1"/>  
      <column name="pro_name" type="String" xid="xid5"/>  
      <column name="inday" type="Date" xid="xid6"/>  
      <column name="Infee" type="Float" xid="xid7"/>  
      <column name="price" type="Float" xid="xid8"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id">
      <column name="id" type="String" xid="xid3"/>  
      <column name="pro_name" type="String" xid="xid4"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="进场条码添加"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">进场条码添加</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div id="container" xid="div1" style="display:none;"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One mar2"
        xid="row1"> 
        <div class="x-col" xid="col1" style="text-align:center;"> 
          <span xid="addresSpan" style="line-height:3em;"/> 
        </div>  
        <div class="x-col x-col-20" xid="col2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            xid="button9"> 
            <i xid="i8"/>  
            <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image2"
              style="width:20px;"/>  
            <span xid="span9"/>
          </a>
        </div>
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3" style="margin-top: 10px;"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30 border-Two" xid="labelEdit1"> 
            <label class="x-label" xid="label1" style="width:80px;"><![CDATA[产品：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input1" bind-ref="$model.CData.ref(&quot;pro_name&quot;)"/>
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group" tabbed="true" xid="buttonGroup1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="扫码" xid="button2" style="display:none"> 
                <i xid="i2"/>  
                <span xid="span6">扫码</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="选择" xid="button3" onClick="{&quot;operation&quot;:&quot;windowDialog1.open&quot;}"> 
                <i xid="i3"/>  
                <span xid="span7">选择</span>
              </a> 
            </div>
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30 border-Two" xid="labelEdit5"> 
            <label class="x-label" xid="label5" style="width:80px;">进场日期：</label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input5" dataType="Date" bind-ref="$model.CData.ref(&quot;inday&quot;)"/>
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30 border-Two" xid="labelEdit6"> 
            <label class="x-label" xid="label6" style="width:80px;"><![CDATA[进场费：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input6" bind-ref="$model.CData.ref(&quot;Infee&quot;)"/>
            <span xid="span2" class="font-four"><![CDATA[元]]></span>
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30 border-Two" xid="labelEdit7"> 
            <label class="x-label" xid="label7" style="width:80px;"><![CDATA[零售价：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input7" bind-ref="$model.CData.ref(&quot;price&quot;)"/>
            <span xid="span3" class="font-four"><![CDATA[元]]></span>
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col3"> 
          <span xid="span1">上传照片（最多录入6张。）</span>
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col4">
          <div class="imgline" xid="div74" id="barcodeAddImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="barcodeAddImg1">+
              <input id="upload4" type="file" class="upfile" accept="image/*,video/*;"
                capture="camera" xid="file1"/>
            </div> 
          </div>
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="padding:20px;"> 
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
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/product.w" forceRefreshOnOpen="true"
    onReceive="windowDialog1Receive" showTitle="false"/>
</div>
