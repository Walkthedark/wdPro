<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="AskForLeaveData" idColumn="id">
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/> 
      <column name="col6" type="String" xid="xid7"/> 
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;请假测试（事假）&quot;,&quot;col2&quot;:&quot;2018021600001&quot;,&quot;col3&quot;:&quot;0天1小时&quot;,&quot;col4&quot;:&quot;已归档&quot;,&quot;col5&quot;:&quot;2018-02-16 11:44&quot;,&quot;col6&quot;:&quot;杨洋&quot;}]</data></div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/AskForLeaveNew.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/AskForLeaveInfo.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属导购请假申请查询"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属导购请假申请查询</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
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
                            <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-One" xid="output1" bind-ref="ref(&quot;col1&quot;)" /></div>  
                          <div class="col col-xs-12" xid="col2"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit3">
   <label class="x-label font-style" xid="label6"><![CDATA[申请人：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit  font-style" xid="output4" bind-ref='ref("col6")'></div></div></div><div class="col col-xs-6 border-Two font-style" xid="col8"
                            style="height:30px;"> 
                            <div component="$UI/system/components/justep/output/output" class="x-output x-edit  font-style" xid="output2" bind-ref="ref(&quot;col2&quot;)" /></div>  
                          <div class="col col-xs-6 border-Two font-style" xid="col9"
                            style="text-align:right;height:30px;"> 
                            <div component="$UI/system/components/justep/output/output" class="x-output x-edit  font-style" xid="output3" bind-ref='ref("col3")' style="float:right;"></div>
  <label class="x-label" xid="label3" style="float:right;margin-top:9px;">请假时长：</label></div>  
                          <div class="col col-xs-6" xid="col15"> 
                            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref="ref(&quot;col4&quot;)" /></div>  
                          <div class="col col-xs-6" xid="col10" style="text-align:right;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit" xid="labelEdit6"> 
                              <label class="x-label" xid="label5"><![CDATA[]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output6" bind-ref="ref(&quot;col5&quot;)"/> 
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
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
