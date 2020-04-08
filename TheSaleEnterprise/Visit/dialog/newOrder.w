<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="type" type="String" xid="column2"/>  
      <data xid="default1">[{"id":"1","type":"经销商"},{"id":"2","type":"配送商"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="orderData" idColumn="id" autoNew="true" onValueChanged="orderDataValueChanged"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="sn" type="String" xid="xid3"/>  
      <column name="net_id" type="String" xid="xid4"/>  
      <column name="net" type="String" xid="xid5"/>  
      <column name="jid" type="String" xid="xid6"/>  
      <column name="jxs" type="String" xid="xid7"/>  
      <column name="shdz" type="String" xid="xid8"/>  
      <column name="shr" type="String" xid="xid2"/>  
      <column name="dh" type="String" xid="xid9"/>  
      <column name="yszje" type="String" xid="xid10"/>  
      <column name="yhPolicy" type="String" xid="xid11"/>  
      <column name="yhPolicymc" type="String" xid="xid12"/>  
      <column name="status" type="String" xid="xid13"/>  
      <column name="sqrq" type="String" xid="xid14"/>  
      <column name="sendType" type="String" xid="xid15"/>  
      <column name="bz" type="String" xid="xid16"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="activityList" idColumn="id"> 
      <column name="id" type="String" xid="xid17"/>  
      <column name="title" type="String" xid="xid18"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="did"> 
      <column name="did" type="String" xid="column9"/>  
      <column name="pro_name" type="String" xid="column10"/>  
      <column name="ghj" type="String" xid="column3"/>  
      <column name="ge" type="String" xid="column3"/>  
      <column name="unit" type="String" xid="column4"/>  
      <column name="status" type="String" xid="column5"/>  
      <column name="xslx" type="String" xid="column6"/>  
      <column name="yhms" type="String" xid="column7"/>  
      <column name="bz" type="String" xid="column8"/>  
      <column name="box" type="String" xid="xid19"/>  
      <column name="ghj" type="String" xid="xid20"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="新增订单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">新增订单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[网点：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output1" bind-ref="$model.orderData.ref(&quot;net&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[经销商：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.orderData.ref(&quot;jxs&quot;)" readonly="true"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col19"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:80px;"><![CDATA[联系人：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref="$model.orderData.ref(&quot;shr&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col21"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:80px;"><![CDATA[电话：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4" bind-ref="$model.orderData.ref(&quot;dh&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[地址：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.orderData.ref(&quot;shdz&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:80px;"><![CDATA[配送类型：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="CData" bind-itemsetValue="ref(&quot;id&quot;)"
                  bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;" bind-ref="$model.orderData.ref(&quot;sendType&quot;)"
                  readonly="true"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col4"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:80px;"><![CDATA[促销活动：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." class="form-control x-edit" xid="select1"
                  bind-ref="$model.orderData.ref(&quot;yhPolicy&quot;)" bind-options="activityList"
                  bind-optionsValue="id" bind-optionsLabel="title"/> 
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
        style="padding:20px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default2 btn-only-label"
          label="添 加 订 单 明 细" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">添 加 订 单 明 细</span> 
        </a> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" style="padding:0px 10px;" data="infoData"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row"
              xid="row2"> 
              <div class="col col-xs-12" xid="col5"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelEdit12"> 
                  <label class="x-label font-One" xid="label12" style="width:80px;">产品：</label>  
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output x-edit font-One" xid="output2" bind-ref="ref(&quot;pro_name&quot;)"/> 
                </div> 
              </div>  
              <div class="col col-xs-12" xid="col6"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelEdit13"> 
                  <label class="x-label" xid="label7" style="width:80px;">供货价：</label>  
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output x-edit" xid="output5" bind-ref="ref(&quot;ghj&quot;)"/> 
                </div> 
              </div>  
              <div class="col col-xs-12" xid="col10"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelEdit11"> 
                  <label class="x-label" xid="label13" style="width:80px;">订单数量：</label>  
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output x-edit" xid="output3" bind-ref='ref("box")' onRender="output3Render"/> 
                </div> 
              </div>  
              <div class="col col-xs-12" xid="col9"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelEdit7"> 
                  <label class="x-label" xid="label10" style="width:80px;"><![CDATA[优惠描述：]]></label>  
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output x-edit" xid="output4" bind-ref="ref(&quot;yhms&quot;)"/> 
                </div> 
              </div>  
              <div class="col col-xs-12" xid="col7"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelEdit10"> 
                  <label class="x-label" xid="label11" style="width:80px;">产品备注：</label>  
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output x-edit" xid="output6" bind-ref="ref(&quot;bz&quot;)"/> 
                </div> 
              </div> 
            
  <div class="col col-xs-12" xid="col13" style="text-align:right"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="true" xid="buttonGroup1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="删除" xid="button5" icon="linear linear-trash" style="color:#000000;" onClick="button5Click">
      <i xid="i3" class="linear linear-trash"></i>
      <span xid="span3">删除</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="修改" xid="button3" icon="linear linear-pencil" style="color:#000000;" onClick="button3Click">
      <i xid="i5" class="linear linear-pencil"></i>
      <span xid="span3">修改</span></a> </div></div></div> 
          </li> 
        </ul> 
      </div>  
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newOrderInfo.w" forceRefreshOnOpen="true"
    onClose="infoDialogClose"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="editDialog" src="$UI/TheSaleEnterprise/Visit/dialog/editOrderInfo.w" forceRefreshOnOpen="true" onClose="infoDialogClose"></span></div>
