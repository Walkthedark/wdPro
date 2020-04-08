<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="AskForLeaveData" idColumn="id">
      <data xid="default1">[{"id":"1","col1":"请假测试（事假）","col2":"2018021600001","col3":"0天1小时","col4":"已归档","col5":"2018-02-16 11:44"}]</data>  
      <column name="id" type="String" xid="xid1"></column>
  <column name="title" type="String" xid="xid2"></column>
  <column name="type" type="String" xid="xid3"></column>
  <column name="neirong" type="String" xid="xid4"></column>
  <column name="iscost" type="String" xid="xid5"></column>
  <column name="fujian" type="String" xid="xid6"></column>
  <column name="state" type="String" xid="xid7"></column>
  <column name="cuser" type="String" xid="xid8"></column>
  <column name="ctime" type="String" xid="xid9"></column>
  <column name="no" type="String" xid="xid10"></column>
  <column name="statetype" type="String" xid="xid11"></column></div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/universalNew.w" forceRefreshOnOpen="true" onClose="newDialogClose"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/universalInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="万用申请单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">万用申请单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
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
        <div class="x-panel-content" xid="content1" _xid="C7DF78904F900001988700701AF31363"
          style="background-size: cover; background-image: url(http://localhost:40177/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="AskForLeaveData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" bind-click="li1Click">
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row1"> 
                  <div class="x-col" xid="col1"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row4"> 
                      <div class="col col-xs-12" xid="col7"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit1"> 
                          <label class="x-label font-One" xid="label1"/>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit font-One" xid="output1" bind-ref="ref(&quot;title&quot;)"/>
                        </div> 
                      </div>  
                      <div class="col col-xs-12 font-style" xid="col8"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit2"> 
                          <label class="x-label" xid="label2"/>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit  font-style" xid="output2" bind-ref='ref("no")'/>
                        </div> 
                      </div>  
                      <div class="col col-xs-12 border-Two font-style" xid="col9"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit3"> 
                          <label class="x-label" xid="label3"/>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit  font-style" xid="output3" bind-ref="ref(&quot;type&quot;)"/>
                        </div>
                      </div>  
                      <div class="col col-xs-6" xid="col15"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit4"> 
                          <label class="x-label" xid="label4"/>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output5" bind-ref='ref("statetype")'/>
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col10" style="text-align:right;padding:0px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit6"> 
                          <label class="x-label" xid="label5"/>  
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
        <div class="x-panel-bottom" xid="bottom1"/> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
