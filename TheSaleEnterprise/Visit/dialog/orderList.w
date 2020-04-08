<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
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
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newOrder.w" onClose="newDialogClose" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/orderInfo.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="订单汇报"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">订单汇报</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11"/>  
            <div class="x-col" xid="col12"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="填 写" xid="button4" style="width:100%;" onClick="button4Click"> 
                <i xid="i5"/>  
                <span xid="span6">填 写</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div> 
        </div>  
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF78904F900001988700701AF31363"
          style="background-size: cover; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" style="background-color:white;"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="orderData" style="padding:0px;"> 
                <ul class="x-list-template" xid="listTemplateUl1" style="margin:0px;"> 
                  <li xid="li1" class="border-Two"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                      xid="row1" bind-click="li1Click" style="padding-right:0px;"> 
                      <div class="x-col" xid="col1"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-12" xid="col7"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit1"> 
                              <label class="x-label" xid="label1" style="width:80px;"><![CDATA[订单日期：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output1" bind-ref="ref(&quot;sqrq&quot;)"/>  
                                
                               
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col8"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit2"> 
                              <label class="x-label" xid="label2" style="width:80px;"><![CDATA[订单编号：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output2" bind-ref="ref(&quot;sn&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col9"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit3"> 
                              <label class="x-label" xid="label3" style="width:80px;"><![CDATA[供应商：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output3" bind-ref="ref(&quot;jxs&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col15"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit4"> 
                              <label class="x-label" xid="label4" style="width:80px;"><![CDATA[收货地址：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output5" bind-ref="ref(&quot;shdz&quot;)"/> 
                            </div> 
                          </div> 
                        </div> 
                      </div>  
                      <div xid="col17" style="overflow: hidden;margin:auto;margin-top:0px;width:85px;"
                        class="lanren"> 
                        <!-- <div class="box"> 
                          <div class="text">hello world</div> 
                        </div>   -->  
                          
                        <!--  <div xid="div4" bind-text=" val(&quot;status&quot;)" bind-css="{'ribbon-green':  val(&quot;status&quot;)=='未处理'}"/>  --> 
                      
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="margin:0px;padding:0px;">
   <div class="x-col" xid="col2" style="margin:0px;padding:0px;height:88px;"><div class="ribbon-lanren-green"> 
                          <div class="ribbon-green" bind-text=" val(&quot;status&quot;)" bind-css="{'ribbon-grey': val(&quot;status&quot;)=='未处理'}" /> 
                        </div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="margin:0px;padding:0px;">
   <div class="x-col" xid="col10" style="margin:0px;padding:0px;"><img src="$UI/TheSaleEnterprise/Visit/dialog/img/dingdanjine.png" alt="" xid="image1" style="width:20px;margin-left:0px;" /><div component="$UI/system/components/justep/output/output" class="x-output font-Two" xid="output4" bind-ref="ref(&quot;yszje&quot;)" style="margin-top:-28px;margin-left:20px;" /></div>
   </div></div> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row2"> 
                      <div class="x-col" xid="col4"/>  
                      <div class="x-col" xid="col6" style="text-align:right;"> 
                        <div component="$UI/system/components/justep/button/buttonGroup"
                          class="btn-group" tabbed="true" xid="buttonGroup1"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link" label="删除" xid="button2" icon="linear linear-trash"
                            style="color:#000000;" onClick="button2Click"> 
                            <i xid="i3" class="linear linear-trash"/>  
                            <span xid="span3">删除</span> 
                          </a>  
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link" label="修改" xid="button3" icon="linear linear-pencil"
                            style="color:#000000;" onClick="button3Click"> 
                            <i xid="i4" class="linear linear-pencil"/>  
                            <span xid="span5">修改</span> 
                          </a> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
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
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="editDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/editOrder.w" onClose="newDialogClose"
    forceRefreshOnOpen="true"/> 
</div>
