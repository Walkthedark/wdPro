<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:7px;left:10px;height:57px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="MsgData" idColumn="id" limit="-1"> 
      <data xid="default1">[]</data> 
    <column name="id" type="String" xid="xid1"></column>
  <column name="title" type="String" xid="xid2"></column>
  <column name="is_read" type="String" xid="xid3"></column>
  <column name="fssj" type="String" xid="xid4"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="企业营销门户 EMP"> 
        <div class="x-titlebar-left" xid="left2"/>  
        <div class="x-titlebar-title" xid="title2">企业营销门户 EMP</div>  
        <div class="x-titlebar-right reverse" xid="right2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button2" icon="icon-checkmark-round" onClick="button2Click"> 
            <i xid="i1" class="icon-checkmark-round"/>  
            <span xid="span1"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" _xid="C7D9F4726D80000145FC183AC7207760"
      style="background-size: cover;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span2">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="MsgData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" bind-click="li1Click"> 
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row1"> 
                  <div class="x-col" xid="col1"> 
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output font-One" xid="output1" bind-ref='ref("title")'/>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output" xid="output2" bind-ref='ref("fssj")'/> 
                  </div>  
                  <div class="x-col x-col-20" xid="col2"> 
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output" xid="output3" bind-ref='ref("is_read")' onRender="output3Render"/> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span3">加载更多...</span> 
        </div> 
      </div> 
    </div>  
    </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/main/other/dialog/message/messageInfo.w" forceRefreshOnOpen="true"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
