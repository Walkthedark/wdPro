<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="orderData" idColumn="netId" autoNew="true"> 
      <data xid="default2">[{"id":"1","col1":"万家天河公园分店","col2":"广州市汇佳贸易有限公司","col3":"张三","col4":"13888888888","col5":"S363（吉利大道）","col6":"经销商"}]</data>  
      <column name="netId" type="String" xid="xid1"/>  
      <column name="date" type="Date" xid="xid2"/>  
      <column name="target" type="String" xid="xid3"/>  
      <column name="dz" type="String" xid="xid4"/>  
      <column name="bz" type="String" xid="xid5"/>  
      <column name="netName" type="String" xid="xid6"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="新增拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">新增拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8" style="margin:0px"> 
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[网点：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4" bind-ref='$model.orderData.ref("netName")' readonly="true"/>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="选择" xid="button3"> 
                  <i xid="i3"/>  
                  <span xid="span2">选择</span> 
                </a> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[计划时间：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.orderData.ref(&quot;date&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col19"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:80px;"><![CDATA[计划目标：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref="$model.orderData.ref(&quot;target&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[拜访地址：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.orderData.ref(&quot;dz&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:80px;">备注：</label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea3" bind-ref="$model.orderData.ref(&quot;bz&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="padding:20px;"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="padding:20px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="保 存" xid="button2" style="width:100%;" onClick="button2Click"> 
          <i xid="i2"/>  
          <span xid="span1">保 存</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newOrderInfo.w"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
