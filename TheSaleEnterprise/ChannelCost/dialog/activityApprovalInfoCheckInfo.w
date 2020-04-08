<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="net_name" confirmRefresh="false" confirmDelete="false"> 
      <column name="net_name" type="String" xid="column10"/>  
      <column name="sfjyhx" type="String" xid="column1"/>  
      <column name="address" type="String" xid="column2"/>  
      <column name="hdms" type="String" xid="column3"/>  
      <column name="hdzp" type="String" xid="column4"/>  
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dpData" idColumn="id" confirmRefresh="false" confirmDelete="false"><column name="id" type="String" xid="xid1"></column>
  <column name="dpxx" type="String" xid="xid2"></column>
  <column name="cuser" type="String" xid="xid3"></column>
  <column name="ctime" type="String" xid="xid4"></column>
  <column name="status" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="tData" idColumn="yj" autoNew="true" confirmDelete="false" confirmRefresh="false"><column name="yj" type="String" xid="xid6"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/competingGoodsNew.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/orderInfo.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="96"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="网点活动明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">网点活动明细</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11" />  
            <div class="x-col" xid="col12" style="text-align:center;"> 
              <label xid="label2" class="font-One" style="display:block;" bind-text="$model.infoData.val(&quot;net_name&quot;)"><![CDATA[]]></label> 
            </div>  
            <div class="x-col x-col-20" xid="col13" /> 
          </div></div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2" xid="row1" style="background-color:white;"> 
            <div class="x-col" xid="col17"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4"> 
                <div class="col col-xs-12" xid="col14"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6"> 
                    <label class="x-label" xid="label8" style="width:80px;"><![CDATA[是否核销：]]></label>  
                    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output18" bind-ref="$model.infoData.ref(&quot;sfjyhx&quot;)" onRender="output18Render" /> 
                  </div> 
                </div>  
                <div class="col col-xs-12" xid="col2"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10"> 
                    <label class="x-label" xid="label6" style="width:80px;"><![CDATA[活动地址：]]></label>  
                    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output19" bind-ref="$model.infoData.ref(&quot;address&quot;)" /> 
                  </div> 
                </div>  
                <div class="col col-xs-12" xid="col3" style="border-left:1px solid #f0f0f0;"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1"> 
                    <label class="x-label" xid="label1" style="width:80px;"><![CDATA[活动描述：]]></label>  
                    <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-four" xid="output1" bind-ref="$model.infoData.ref(&quot;hdms&quot;)" /> 
                  </div> 
                </div>  
                <div class="col col-xs-12" xid="col4" style="border-left:1px solid #f0f0f0;"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2"> 
                    <label class="x-label" xid="label3" style="width:80px;"><![CDATA[活动图片：]]></label>  
                    <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-four" xid="output2" />
                  </div> 
                </div>  
                <div class="col col-xs-12" xid="col5" style="border-left:1px solid #f0f0f0;"> 
                  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref="$model.infoData.ref(&quot;hdzp&quot;)" onRender="output3Render" />
                </div>
              </div> 
            </div> 
          </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-top:10px;"> 
            <div class="x-col" xid="col6" />  
            <div class="x-col" xid="col7" style="text-align:center;">
              <label xid="label5" class="font-One"><![CDATA[点评信息]]></label>
            </div>  
            <div class="x-col" xid="col8" />
          </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="dpData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two">
                <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="background-color:white;"> 
                  <div class="x-col" xid="col9"> 
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row6"> 
                      <div class="col col-xs-12" xid="col18" style="margin:auto;height:30px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4"> 
                          <label class="x-label" xid="label13" style="width:80px;"><![CDATA[点评人：]]></label>  
                          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='ref("cuser")' />
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col24"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8"> 
                          <label class="x-label" xid="label10" style="width:80px;"><![CDATA[点评时间：]]></label>  
                          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='ref("ctime")' />
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col19"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7"> 
                          <label class="x-label" xid="label9" style="width:80px;"><![CDATA[点评意见：]]></label>  
                          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='ref("dpxx")' />
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col22"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5"> 
                          <label class="x-label" xid="label7" style="width:80px;"><![CDATA[点评结果：]]></label>  
                          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='ref("status")' onRender="output7Render" />
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </li>
            </ul> 
          </div></div> 
  <div class="x-panel-bottom" xid="bottom2" height="138"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="background-color:white;"> 
            <div class="x-col" xid="col26">
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14"> 
                <label class="x-label" xid="label16" style="width:110px;"><![CDATA[本次点评意见：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea1" bind-ref='$model.tData.ref("yj")' />
              </div>
            </div> 
          </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="text-align:center;margin-top:-5px;"> 
            <div class="x-col" xid="col28">
              <a component="$UI/system/components/justep/button/button" class="btn btn-default2" label="通过审核" xid="button2" onClick="passButton2Click"> 
                <i xid="i2" />  
                <span xid="span1">通过审核</span>
              </a>
            </div>  
            <div class="x-col" xid="col29">
              <a component="$UI/system/components/justep/button/button" class="btn btn-default3" label="重新整改" xid="button3" onClick="button3Click"> 
                <i xid="i3" />  
                <span xid="span2">重新整改</span>
              </a>
            </div> 
          </div></div></div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
