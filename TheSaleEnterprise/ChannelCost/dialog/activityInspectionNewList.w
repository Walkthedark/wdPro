<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData"/>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="detailData" idColumn="id">
      <column name="id" type="String" xid="xid1"/>  
      <column name="address" type="String" xid="xid2"/>  
      <column name="ctime" type="String" xid="xid3"/>  
      <column name="cuser" type="String" xid="xid4"/>  
      <column name="status" type="String" xid="xid5"/>  
      <column name="qddesc" type="String" xid="xid6"/>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityInspectionNewListNew.w" onReceive="newDialogReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/AskForLeaveInfo.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="进场活动检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">进场活动检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="144"> 
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
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row1" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col3"/>  
            <div class="x-col" xid="col2" style="text-align:center;"> 
              <label xid="label2" class="font-One" style="display:block;" id="checkTitle"><![CDATA[]]></label>  
              <label xid="label1" style="display:block;" class="font-Two" id="checkProduct"><![CDATA[]]></label>
            </div>  
            <div class="x-col x-col-20" xid="col1"/>
          </div>
        </div>  
        <div class="x-panel-content" xid="content1" _xid="C7DF78904F900001988700701AF31363"
          style="background-size: cover; background-image: url(http://localhost:40177/x5/UI2/v_/TheSaleEnterprise/Commonly/dialog/none);"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list2" data="detailData"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2" style="background-color:white;"> 
                <div component="$UI/system/components/justep/row/row" class="x-row mar2"
                  xid="row2" style="background-color:white;"> 
                  <div class="x-col" xid="col17"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row4"> 
                      <div class="col col-xs-6" xid="col15" style="margin:auto;height:30px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit11"> 
                          <label class="x-label" xid="label12" style="width:80px;"><![CDATA[填报人：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output22" bind-ref='ref("cuser")'/>
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col16" style="text-align:right;height:30px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit2"> 
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref='ref("ctime")'/>
                        </div>
                      </div>  
                      <div class="col col-xs-12" xid="col6"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit13"> 
                          <label class="x-label" xid="label14" style="width:80px;"><![CDATA[填报地址：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output24" bind-ref='ref("address")'/>
                        </div> 
                      </div>  
                      <div class="col col-xs-12 border-Two" xid="col14"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit6"> 
                          <label class="x-label" xid="label8" style="width:80px;"><![CDATA[描述：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output18" bind-ref='ref("qddesc")'/>
                        </div> 
                      </div>  
                      <div class="col col-xs-7" xid="col4"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit10"> 
                          <label class="x-label" xid="label6" style="width:80px;"><![CDATA[状态：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output19" bind-ref='ref("status")'/>
                        </div> 
                      </div>  
                      <div class="col col-xs-5" xid="col5" style="border-left:1px solid #f0f0f0;"> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>
</div>
