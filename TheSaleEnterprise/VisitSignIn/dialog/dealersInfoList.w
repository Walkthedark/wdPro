<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="BData" idColumn="id" onCustomRefresh="BDataCustomRefresh"> 
      <column name="id" type="String" xid="xid1"></column>
  <column name="bgrq" type="String" xid="xid2"></column>
  <column name="bcpfmb" type="String" xid="xid3"></column>
  <column name="bcbfxj" type="String" xid="xid4"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="detailsDialog" src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersDetails.w" forceRefreshOnOpen="true" onClose="detailsDialogClose"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="48"> 
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
        <div class="x-titlebar-right reverse" xid="right2"></div></div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="display:none">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1"></div></div>
   </div></div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2" style="background-color:white;"> 
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row3" style="background-color:white;">
   <div class="x-col x-col-20" xid="col11"></div>
   <div class="x-col" xid="col12">
    <a component="$UI/system/components/justep/button/button" class="btn border-r" label="填 写" xid="button4" style="width:100%;" onClick="button4Click">
     <i xid="i5"></i>
     <span xid="span6">填 写</span></a> </div> 
   <div class="x-col x-col-20" xid="col13"></div></div></div>  
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
                      class="row row-padding" xid="row1" style="background-color:#FFFFFF; "> 
                      <div class="col col-xs-12" xid="col3"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit1"> 
                          <label class="x-label" xid="label1" style="width:80px;"><![CDATA[拜访日期：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output2" bind-ref='ref("bgrq")'/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col5"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit2"> 
                          <label class="x-label" xid="label2" style="width:80px;"><![CDATA[拜访目标：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref='ref("bcpfmb")'/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col2"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit3"> 
                          <label class="x-label" xid="label3" style="width:80px;"><![CDATA[拜访小结：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output6" bind-ref='ref("bcbfxj")'/> 
                        </div> 
                      </div>  
                      </div> 
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
