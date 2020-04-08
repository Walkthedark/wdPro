<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="dwsj" type="String" xid="xid2"/>  
      <column name="qdbm" type="String" xid="xid3"/>  
      <column name="qddz" type="String" xid="xid4"/>  
      <column name="qdlx" type="String" xid="xid5"/>  
      <column name="qdms" type="String" xid="xid6"/>  
      <column name="qdr" type="String" xid="xid7"/>  
      <column name="qdr_name" type="String" xid="xid8"/>  
      <column name="qdrq" type="String" xid="xid9"/>  
      <column name="qdsj" type="String" xid="xid10"/>  
      <column name="qdzp" type="String" xid="xid11"/>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="签到汇报详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">签到汇报详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col1">
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2"> 
            <div class="col col-xs-12 border-Two font-One" xid="col4" style="text-align:center;">
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output1" bind-ref='$model.CData.ref("qdr_name")'/>
            </div>  
            <div class="col col-xs-12" xid="col5">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit1"> 
                <label class="x-label" xid="label1"><![CDATA[签到类型：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output2" bind-ref="$model.CData.ref(&quot;qdlx&quot;)"/>
              </div>
            </div>  
            <div class="col col-xs-12" xid="col6">
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit2"> 
                <label class="x-label" xid="label2"><![CDATA[签到时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output3" bind-ref="$model.CData.ref(&quot;qdsj&quot;)"/>
              </div>
            </div>  
            <div class="col col-xs-12" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit3"> 
                <label class="x-label" xid="label3"><![CDATA[定位时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output5" bind-ref="$model.CData.ref(&quot;dwsj&quot;)"/>
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit4"> 
                <label class="x-label" xid="label4"><![CDATA[签到地址：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output4" bind-ref="$model.CData.ref(&quot;qddz&quot;)"/>
                <img src="$UI/TheSaleEnterprise/VisitSignIn/dialog/img/008.png"
                  alt="" xid="image2" style="width:20px;"/>
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col10"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit5"> 
                <label class="x-label" xid="label5"><![CDATA[签到描述：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output7" bind-ref="$model.CData.ref(&quot;qdms&quot;)"/>
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col9"> 
              <span xid="span1"><![CDATA[图片信息：]]></span>
            </div>  
            <div class="col col-xs-12" xid="col11"> 
              <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
                xid="output10" bind-ref="$model.CData.ref(&quot;qdzp&quot;)" onRender="output10Render"/>
            </div>
          </div>
        </div> 
      </div>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
