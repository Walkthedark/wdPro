<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <script src="http://api.map.baidu.com/api?v=2.0&amp;ak=EzfQTH533pbevnhohMX4QZRK"/>  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="sn" type="String" xid="xid3"/>  
      <column name="lat" type="String" xid="xid4"/>  
      <column name="lng" type="String" xid="xid5"/>  
      <column name="detailAddress" type="String" xid="xid6"/>  
      <column name="net_id" type="String" xid="xid7"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel6"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="活动执行检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">活动执行检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView2"> 
        <div class="x-content-center x-pull-down container" xid="div6"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
          <span class="x-pull-down-label" xid="span10">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div5"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list2" style="padding-top:10p;xbackground-color:white;" data="pData"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2" class="border-Two" bind-click="li2Click"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                  xid="row3"> 
                  <div class="col col-xs-9" xid="col20" style="font-weight:bold;"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit13"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit font-One" xid="output5" bind-ref="ref(&quot;title&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-3" xid="col17" style="text-align:right;"/>  
                  <div class="col col-xs-6" xid="col19"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit12"> 
                      <label class="x-label" xid="label6">编号：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output6" bind-ref="ref(&quot;sn&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col23"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit11" style="margin-top:-10px;"> 
                      <label class="x-label" xid="label8" style="x;"><![CDATA[]]></label>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" label="button" xid="button10"
                        style="float:right;color:#000;" icon="linear linear-mapmarker"> 
                        <i xid="i11" class="linear linear-mapmarker"/>  
                        <span xid="span5"/> 
                      </a>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output7" bind-ref="ref(&quot;sn&quot;)"
                        onRender="output7Render"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit17" style="margin-top:-10px;"> 
                      <label class="x-label" xid="label5"><![CDATA[地址：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output8" bind-ref="ref(&quot;detailAddress&quot;)"/> 
                    </div> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div>  
        <div class="x-content-center x-pull-up" xid="div4"> 
          <span class="x-pull-up-label" xid="span8">加载更多...</span> 
        </div> 
      </div> 
    <div xid="div1" id="BMap"></div></div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="activityInspectionInfoDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityInspectionInfo.w"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
