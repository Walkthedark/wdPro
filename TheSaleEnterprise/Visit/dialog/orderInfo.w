<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="did"> 
      <column name="did" type="String" xid="column9"/>  
      <column name="pro_name" type="String" xid="column10"/>  
      <column name="ghj" type="String" xid="column1"/>  
      <column name="xiang" type="String" xid="column2"/>  
      <column name="ge" type="String" xid="column3"/>  
      <column name="unit" type="String" xid="column4"/>  
      <column name="status" type="String" xid="column5"/>  
      <column name="xslx" type="String" xid="column6"/>  
      <column name="yhms" type="String" xid="column7"/>  
      <column name="bz" type="String" xid="column8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="orderData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="sn" type="String" xid="xid3"/>  
      <column name="net_id" type="String" xid="xid4"/>  
      <column name="net" type="String" xid="xid5"/>  
      <column name="jsn" type="String" xid="xid6"/>  
      <column name="jxs" type="String" xid="xid7"/>  
      <column name="shdz" type="String" xid="xid8"/>  
      <column name="shr" type="String" xid="xid2"/>  
      <column name="dh" type="String" xid="xid9"/>  
      <column name="yszje" type="String" xid="xid10"/>  
      <column name="yhPolicy" type="String" xid="xid11"/>  
      <column name="yhPolicymc" type="String" xid="xid12"/>  
      <column name="status" type="String" xid="xid13"/>  
      <column name="sqrq" type="String" xid="xid14"/>  
      <column name="bz" type="String" xid="xid16"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newOrder.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="订单详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">订单详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2"> 
            <div class="col col-xs-12" xid="col4"> 
              <div component="$UI/system/components/justep/output/output" class="x-output font-One"
                xid="output1" bind-ref="$model.orderData.ref(&quot;jxs&quot;)" style="float:left;"/>  
              <div component="$UI/system/components/justep/output/output" class="x-output font-One"
                xid="output2" style="float:left;" bind-ref="&quot;(&quot;+$model.orderData.val(&quot;jsn&quot;)+&quot;)&quot;"/> 
            </div>  
            <div class="col col-xs-12" xid="col5"> 
              <div component="$UI/system/components/justep/output/output" class="x-output font-One"
                xid="output3" bind-ref="$model.orderData.ref(&quot;shdz&quot;)"/> 
            </div>  
            <div class="col col-xs-12" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label font-One" xid="label2" style="width:80px;"><![CDATA[联系人：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-One" xid="output4" bind-ref="$model.orderData.ref(&quot;shr&quot;)"/>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-One" xid="output7" bind-ref="$model.orderData.ref(&quot;dh&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[订单日期：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output6" bind-ref="$model.orderData.ref(&quot;sqrq&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:80px;"><![CDATA[订单编号：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output8" bind-ref="$model.orderData.ref(&quot;sn&quot;)"/>  
                <img src="$UI/TheSaleEnterprise/Visit/dialog/img/dingdanjine.png"
                  alt="" xid="image1" style="width:20px;margin-left:-10px;"/>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output font-Two" xid="output11" bind-ref="$model.orderData.ref(&quot;yszje&quot;)"
                  style="margin-top:-10px;margin-left:5px;"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col9"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[处理状态：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output9" bind-ref="$model.orderData.ref(&quot;status&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12  border-Two" xid="col10"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label font-One" xid="label5" style="width:80px;"><![CDATA[备注：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output10" bind-ref="$model.orderData.ref(&quot;bz&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two mar2"
        xid="row5" style="background-color:white;"> 
        <div class="x-col" xid="col19"> 
          <label xid="label11" style="color:#8FC41C;"><![CDATA[订单明细]]></label> 
        </div>  
        <div class="x-col" xid="col20"/>  
        <div class="x-col" xid="col21"/> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list2" data="infoData"> 
        <ul class="x-list-template" xid="listTemplateUl2"> 
          <li xid="li2" style="background-color:white;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row3"> 
              <div class="x-col" xid="col17"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row4"> 
                  <div class="col col-xs-12" xid="col15"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit11"> 
                      <label class="x-label" xid="label12" style="width:80px;"><![CDATA[产品：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output22" bind-ref="ref(&quot;pro_name&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col16"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit12"> 
                      <label class="x-label" xid="label13" style="width:80px;"><![CDATA[供货价：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output23" bind-ref="ref(&quot;ghj&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col13"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit13"> 
                      <label class="x-label" xid="label14" style="width:80px;"><![CDATA[订单数量：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output24" bind-ref="ref(&quot;xiang&quot;)"
                        onRender="output24Render"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col14"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit6"> 
                      <label class="x-label" xid="label8" style="width:80px;"><![CDATA[优惠描述：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output18" bind-ref="ref(&quot;yhms&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col12"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit10"> 
                      <label class="x-label" xid="label6" style="width:80px;">处理状态：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output19" bind-ref="ref(&quot;status&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 border-Two" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit9"> 
                      <label class="x-label" xid="label7" style="width:80px;">备注：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output20" bind-ref="ref(&quot;bz&quot;)"/> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/> 
</div>
