<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:10px;left:10px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="salesData" idColumn="cp_id"> 
      <column name="cp_id" type="String" xid="xid1"/>  
      <column name="unit" type="String" xid="xid2"/>  
      <column name="xiang" type="String" xid="xid3"/>  
      <column name="zhi" type="String" xid="xid4"/>  
      <column name="bz" type="String" xid="xid5"/>  
      <column name="pro_name" type="String" xid="xid6"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="销量汇报"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">销量汇报</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row"
        xid="row3"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="salesData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row8"> 
                  <div class="col col-xs-12" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit2"> 
                      <label class="x-label font-One" xid="label2" style="width:80px;"><![CDATA[产品：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit font-One" xid="output1" bind-ref="ref(&quot;pro_name&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col21"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label3" style="width:80px;"><![CDATA[销量：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output5" bind-ref="ref(&quot;xiang&quot;)" onRender="output5Render"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit1"> 
                      <label class="x-label" xid="label1" style="width:80px;"><![CDATA[备注：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output4" bind-ref="ref(&quot;bz&quot;)"/> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row2"> 
                  <div class="x-col" xid="col4"/>  
                  <div class="x-col" xid="col6" style="text-align:right;"> 
                    <div component="$UI/system/components/justep/button/buttonGroup"
                      class="btn-group" tabbed="true" xid="buttonGroup1"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link" label="编辑" xid="button3" icon="linear linear-pencil"
                        style="color:#000000;" onClick="button3Click"> 
                        <i xid="i2" class="linear linear-pencil"/>  
                        <span xid="span1">编辑</span> 
                      </a> 
                    </div> 
                  </div> 
                </div> 
              </li> 
            </ul> 
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
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="editDialog" src="$UI/TheSaleEnterprise/Visit/dialog/editSalesReport.w" forceRefreshOnOpen="true" onClose="editDialogClose"></span></div>
