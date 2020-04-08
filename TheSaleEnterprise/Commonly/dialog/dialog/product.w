<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id" limit="-1"> 
      <column name="id" type="String" xid="xid3"/>  
      <column name="pro_name" type="String" xid="xid4"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="产品信息"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">产品信息</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" _xid="C7E1BB556C000001138D1E5D797C1106"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="pData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two" bind-click="li1Click"> 
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row1"> 
                  <div class="x-col" xid="col1"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row2"> 
                      <div class="col col-xs-12" xid="col4"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output font-One" xid="output1" bind-ref='ref("pro_name")'/> 
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
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1"></span></div>
