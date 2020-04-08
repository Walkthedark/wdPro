<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="BData" idColumn="hd_id"> 
      <column name="hd_id" type="String" xid="xid1"/>  
      <column name="feetype" type="String" xid="xid2"/>  
      <column name="start" type="String" xid="xid3"/>  
      <column name="end" type="String" xid="xid4"/>  
      <column name="pro_type" type="String" xid="xid5"/>  
      <column name="pro" type="String" xid="xid6"/>  
      <column name="type" type="String" xid="xid7"/>  
      <column name="hd_sn" type="String" xid="xid8"/>  
      <column name="hc_stauts" type="String" xid="xid9"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/belongsMarketApproach.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="市场活动检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">市场活动检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" _xid="C7DFADB3D7F00001A85171B66873D660"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="BData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two" bind-click="li1Click"> 
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row1"> 
                  <div class="x-col" xid="col1"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row2"> 
                      <div class="col col-xs-9 font-One" xid="col4" style="height:40px; padding-right: 0px;"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output font-One" xid="output1" bind-ref="ref(&quot;hd_sn&quot;)"
                          style="float:left;"/>  
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-default4" label="button" xid="button2" style="height:25px;float:left;margin-top:7px;margin-left:5px;padding:2px 12px;"
                          bind-text=" val(&quot;type&quot;)"> 
                          <i xid="i3"/>  
                          <span xid="span3" bind-text="ref(&quot;col2&quot;)" style="display:block;margin-top:-7px;"/> 
                        </a> 
                      </div>  
                      <div class="col col-xs-3" xid="col5" style="text-align:right;height:40px;"> 
                        <img src="$UI/TheSaleEnterprise/VisitSignIn/dialog/img/007.png"
                          alt="" xid="image1" style="width:35px;"/> 
                      </div>  
                      <div class="col col-xs-12" xid="col6"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit2"> 
                          <label class="x-label" xid="label2" style="width:80px;">活动产品：</label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref="ref(&quot;pro&quot;)"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col7"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit1"> 
                          <label class="x-label" xid="label1" style="width:80px;"><![CDATA[费用类型：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output2" bind-ref="ref(&quot;feetype&quot;)"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col8"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit3"> 
                          <label class="x-label" xid="label3" style="width:80px;"><![CDATA[活动时间：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output4" bind-ref="ref(&quot;start&quot;)"
                            onRender="output4Render"/> 
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
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/> 
</div>
