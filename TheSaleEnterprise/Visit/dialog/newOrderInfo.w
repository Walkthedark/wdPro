<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:10px;left:10px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="orderData" idColumn="cp_id" autoNew="true"> 
      <column name="cp_id" type="String" xid="xid1"/>  
      <column name="ghj" type="String" xid="xid2"/>  
      <column name="x" type="String" xid="xid3"/>  
      <column name="g" type="String" xid="xid4"/>  
      <column name="cpbz" type="String" xid="xid5"/>  
      <column name="cp_title" type="String" xid="xid6"/>  
      <column name="unit" type="String" xid="xid7"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加订单明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">添加订单明细</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="orderData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row8"> 
                  <div class="col col-xs-12" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit2"> 
                      <label class="x-label font-One" xid="label2" style="width:80px;"><![CDATA[产品：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input4" readonly="true" bind-ref="ref(&quot;cp_title&quot;)"/>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-default" label="选择产品" xid="button5" onClick="button5Click"> 
                        <i xid="i5"/>  
                        <span xid="span3">选择产品</span> 
                      </a> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col21"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit4"> 
                      <label class="x-label" xid="label4" style="width:80px;"><![CDATA[供货价：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input2" style="width:30px;"
                        bind-ref="ref(&quot;ghj&quot;)"/>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output5" bind-ref="ref(&quot;unit&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label3" style="width:80px;"><![CDATA[订单数量：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input3" style="width:30px;"
                        bind-ref="ref(&quot;x&quot;)"/>  
                      <label class="x-label" xid="label5" style="width:1em;"><![CDATA[箱]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input5" bind-ref="ref(&quot;g&quot;)"/>  
                      <label class="x-label" xid="label6" style="width:1em;"><![CDATA[个]]></label> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col4"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit1"> 
                      <label class="x-label" xid="label1" style="width:80px;"><![CDATA[产品备注：]]></label>  
                      <textarea component="$UI/system/components/justep/textarea/textarea"
                        class="form-control x-edit" xid="textarea1" bind-ref="ref(&quot;cpbz&quot;)"/> 
                    </div> 
                  </div> 
                </div> 
              </li> 
            </ul> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/product1.w" forceRefreshOnOpen="true"
    onReceive="windowDialog1Receive" showTitle="false"/> 
</div>
