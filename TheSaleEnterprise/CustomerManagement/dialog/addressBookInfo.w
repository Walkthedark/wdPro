<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:424px;left:670px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="orderData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="xm" type="String" xid="column2"/>  
      <column name="lxdh" type="String" xid="column3"/>  
      <column name="sskh" type="String" xid="column4"/>  
      <column name="khlx" type="String" xid="column1"/>  
      <column name="sj" type="String" xid="column2"/>  
      <column name="yx" type="String" xid="column3"/>  
      <column name="cz" type="String" xid="column4"/>  
      <column name="zw" type="String" xid="column5"/>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/orderQueryInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="客户详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">客户详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-content" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
          style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2"> 
            <div class="x-col" xid="col9">
              <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                xid="row1"> 
                <div class="col col-xs-12 border-Two" xid="col2"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit1"> 
                    <label class="x-label" xid="label5" style="width:80px;"><![CDATA[姓名：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output13" bind-ref="$model.orderData.ref(&quot;xm&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col1"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit2"> 
                    <label class="x-label" xid="label6" style="width:80px;"><![CDATA[所属客户：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output14" bind-ref="$model.orderData.ref(&quot;sskh&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col7"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit3"> 
                    <label class="x-label" xid="label7" style="width:80px;"><![CDATA[客户类型：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output15" bind-ref="$model.orderData.ref(&quot;khlx&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col6"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit4"> 
                    <label class="x-label" xid="label8" style="width:80px;"><![CDATA[联系电话：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output16" bind-ref="$model.orderData.ref(&quot;lxdh&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col5"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit5"> 
                    <label class="x-label" xid="label9" style="width:80px;"><![CDATA[手机：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output17" bind-ref="$model.orderData.ref(&quot;sj&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col4"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit6"> 
                    <label class="x-label" xid="label10" style="width:80px;"><![CDATA[邮箱：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output18" bind-ref="$model.orderData.ref(&quot;yx&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col3"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit13"> 
                    <label class="x-label" xid="label1" style="width:80px;"><![CDATA[传真：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output1" bind-ref="$model.orderData.ref(&quot;cz&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12 border-Two" xid="col8"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit7"> 
                    <label class="x-label" xid="label2" style="width:80px;">职位：</label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output2" bind-ref="$model.orderData.ref(&quot;zw&quot;)"/>
                  </div> 
                </div>
              </div>
            </div> 
          </div>
        </div> 
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>
</div>
