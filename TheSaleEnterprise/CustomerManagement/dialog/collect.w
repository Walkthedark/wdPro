<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="数据采集"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">数据采集</div>  
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
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One mar2"
        xid="row6" style="text-align:center;"> 
        <div class="x-col" xid="col7"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default2"
            label="刷新定位地址" xid="button9"> 
            <i xid="i8"/>  
            <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image2"
              style="width:15px;"/>  
            <span xid="span9">刷新定位地址</span>
          </a>
        </div>  
        <div class="x-col" xid="col10">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default2"
            label="复制为经销商地址" xid="button8" onClick="button8Click"> 
            <i xid="i9"/>  
            <span xid="span10">复制为经销商地址</span>
          </a>
        </div>
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3" style="margin-top: 10px;"> 
        <div class="x-col" xid="col8" style="text-align:center;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label1"><![CDATA[经销商地址：]]></label>  
            <textarea component="$UI/system/components/justep/textarea/textarea"
              class="form-control x-edit" xid="textarea1" bind-ref="$model.CData.ref(&quot;text&quot;)"/> 
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
          <div class="imgline" xid="div74" id="customerCollectImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="customerCollectImg1">+
              <input id="upload1" type="file" class="upfile" accept="image/*,video/*;"
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
</div>
