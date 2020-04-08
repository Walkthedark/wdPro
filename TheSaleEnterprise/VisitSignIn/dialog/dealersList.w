<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="BData" idColumn="id" onCustomRefresh="BDataCustomRefresh"> 
      <column name="id" type="String" xid="xid1"></column>
  <column name="addr" type="String" xid="xid2"></column>
  <column name="jhbf" type="String" xid="xid3"></column>
  <column name="scbf" type="String" xid="xid4"></column>
  <column name="sn" type="String" xid="xid5"></column>
  <column name="title" type="String" xid="xid6"></column>
  <column name="cishu" type="Integer" xid="xid7"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersInfoList.w" forceRefreshOnOpen="true" onClose="infoDialogClose"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="经销商拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">经销商拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2" style="background-color:white;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row4"> 
            <div class="x-col" xid="col14"> 
              <input component="$UI/system/components/justep/input/input" class="form-control"
                xid="input2" placeHolder="请输入经销商关键字" onBlur="input2Blur"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content2"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div2"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"/>  
              <span class="x-pull-down-label" xid="span3">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div3"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="BData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="border-Two" bind-click="li1Click"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row row-padding" xid="row1" style="padding:5px;background-color:#FFFFFF; "> 
                      <div class="col col-xs-12" xid="col1" style="padding:0px;"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output font-One" xid="output1" bind-ref='ref("title")'
                          style="float:left;"/>  
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output4" bind-ref='"已访问"+val("cishu")+"次"'
                          style="color:#FA7922;float:left;"/> 
                      </div>  
                      <div class="col col-xs-12" xid="col3" style="padding:0px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit1"> 
                          <label class="x-label" xid="label1" style="width:80px;"><![CDATA[客户编号：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output2" bind-ref='ref("sn")'/> 
                        </div> 
                      </div>  
                        
                      <div class="col col-xs-6" xid="col5" style="padding:0px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit2"> 
                          <label class="x-label" xid="label2" style="width:5em;"><![CDATA[上次拜访:]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref='ref("scbf")'/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col2" style="padding:0px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit3"> 
                          <label class="x-label" xid="label3" style="width:5em;"><![CDATA[计划拜访:]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output6" bind-ref='ref("jhbf")'/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-10" xid="col6" style="padding:0px;"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit4"> 
                          <label class="x-label" xid="label4" style="width:5em;"><![CDATA[地址:]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output7" bind-ref='ref("addr")'/> 
                        </div> 
                      </div> 
                    <div class="col col-xs-2" xid="col4"> 
                        <div component="$UI/system/components/justep/output/output" xid="output5" bind-ref="ref(&quot;col3&quot;)" style="float:right;margin-top:10px;" />  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button10" style="float:right;color:#000;" icon="linear linear-mapmarker"> 
                          <i xid="i11" class="linear linear-mapmarker" />  
                          <span xid="span7" /> 
                        </a> 
                      </div></div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div4"> 
              <span class="x-pull-up-label" xid="span5">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
