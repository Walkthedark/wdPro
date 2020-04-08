<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="AskForLeaveData" idColumn="id" limit="-1"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="sn" type="String" xid="xid3"/>  
      <column name="type" type="String" xid="xid4"/>  
      <column name="qjts" type="String" xid="xid5"/>  
      <column name="qsxs" type="String" xid="xid6"/>  
      <column name="state" type="String" xid="xid7"/>  
      <column name="ctime" type="String" xid="xid8"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/AskForLeaveNew.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/AskForLeaveInfo.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="请假申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">请假申请</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
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
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF78904F900001988700701AF31363"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" style="background-color:white;"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="AskForLeaveData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="mar2" bind-click="li1Click"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row1"> 
                      <div class="x-col" xid="col1"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-12" xid="col7"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit1"> 
                              <label class="x-label font-One" xid="label1"><![CDATA[]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-One" xid="output1" bind-ref="ref(&quot;title&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-6 border-Two font-style" xid="col8"
                            style="height:30px;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit2"> 
                              <label class="x-label" xid="label2"><![CDATA[]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit  font-style" xid="output2"
                                bind-ref="ref(&quot;sn&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-6 border-Two font-style" xid="col9"
                            style="text-align:right;height:30px;"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output x-edit  font-style" xid="output3" bind-ref="ref(&quot;qjts&quot;)"
                              style="float:right;margin-top:-8px;" onRender="output3Render"/>  
                            <label class="x-label" xid="label3" style="float:right;"><![CDATA[请假时长：]]></label> 
                          </div>  
                          <div class="col col-xs-6" xid="col15"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit4"> 
                              <label class="x-label" xid="label4"><![CDATA[]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output5" bind-ref="ref(&quot;state&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col10" style="text-align:right;padding:0px;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit6"> 
                              <label class="x-label" xid="label5"><![CDATA[]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output6" bind-ref="ref(&quot;ctime&quot;)"/> 
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
        <div class="x-panel-bottom" xid="bottom1"/> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
