<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
     <!--  <data xid="default2">[{"id":"1","col1":"椰子冻","col2":"条码费","col3":"2018-01-01 至 2018-01-05","col4":"20180201000001","col5":"进场","col6":"","col7":"","col8":"","col9":"","co20":""},{"id":"2","col1":"叫花鸡","col2":"条码费","col3":"2018-01-01 至 2018-01-05","col4":"20180201000002","col5":"进场"}]</data> -->  
      <column name="id" type="String" xid="column9"/>  
      <column name="product" type="String" xid="column10"/>  
      <column name="feetype" type="String" xid="column1"/>  
      <column name="start" type="String" xid="column2"/>  
      <column name="end" type="String" xid="column3"/>  
      <column name="sn" type="String" xid="column4"/>  
      <column name="type_id" type="String" xid="column5"/>  
      <column name="is" type="String" xid="column6"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/competingGoodsNew.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/orderInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="updateDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityInspectionNewList.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="网点活动明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">网点活动明细</div>  
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
            <div class="x-col" xid="col12" style="text-align:center;"> 
              <label xid="label2" class="font-One" id="checkMxTitle"><![CDATA[]]></label> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div> 
        </div>  
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF78904F900001988700701AF31363"
          style="background-size: cover; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" data="infoData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" style="background-color:white;"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row mar2"
                      xid="row1" style="background-color:white;"> 
                      <div class="x-col" xid="col17"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-6" xid="col15" style="margin:auto;height:30px;" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit11"> 
                              <label class="x-label" xid="label12" style="width:80px;"><![CDATA[活动产品：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output22" bind-ref="ref(&quot;product&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col16" style="text-align:right;height:30px;"> 
                            <span component="$UI/system/components/justep/button/checkbox"
                              class="x-checkbox" xid="checkbox2" bind-ref="ref(&quot;is&quot;)"
                              checkedValue="true" uncheckedValue="false" bind-value="ref(&quot;is&quot;)"/> 
                          </div>  
                          <div class="col col-xs-12" xid="col1" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit13"> 
                              <label class="x-label" xid="label14" style="width:80px;"><![CDATA[费用类型：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output24" bind-ref="ref(&quot;feetype&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12 border-Two" xid="col14" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit6"> 
                              <label class="x-label" xid="label8" style="width:80px;"><![CDATA[活动日期：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output18" bind-ref="ref(&quot;start&quot;)"
                                onRender="output18Render"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-7" xid="col2" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit10"> 
                              <label class="x-label" xid="label6" style="width:80px;"><![CDATA[活动编号：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output19" bind-ref="ref(&quot;sn&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-5" xid="col3" style="border-left:1px solid #f0f0f0;" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit1"> 
                              <label class="x-label" xid="label1" style="width:80px;"><![CDATA[活动类型：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output1" bind-ref='ref("type_id")' onRender="output1Render"/> 
                            </div> 
                          </div> 
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
        <div class="x-panel-bottom" xid="bottom1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="全选" xid="button2" onClick="button2Click"> 
              <i xid="i3"/>  
              <span xid="span3">全选</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="确定汇报" xid="button3" onClick="button3Click"> 
              <i xid="i4"/>  
              <span xid="span5">确定汇报</span> 
            </a> 
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
