<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
      <data xid="default2">[{"id":"1","col1":"2018-01-01","col2":"期初余额","col3":"未确认","col4":"3000元","col5":"1500元","col6":"20000元","col7":"","col8":""},{"id":"2","col1":"2018-01-05","col2":"标准应收单","col3":"未确认","col4":"3000元","col5":"1500元","col6":"20000元"}]</data> 
    <column name="id" type="String" xid="column1"></column>
  <column name="jxs" type="String" xid="column2"></column>
  <column name="rq" type="String" xid="column3"></column>
  <column name="djlx" type="String" xid="column4"></column>
  <column name="ys" type="String" xid="xid5"></column>
  <column name="yis" type="String" xid="xid6"></column>
  <column name="qmye" type="String" xid="xid7"></column>
  <column name="zt" type="String" xid="xid8"></column>
  <column name="dzf" type="String" xid="xid10"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/statementsList.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="货款对账单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">货款对账单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" _xid="C7E1BB556C000001138D1E5D797C1106"
      style="bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
          <span class="x-pull-down-label" xid="span2">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list2" style="background-color:white;" data="orderData"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2" class="border-Two" bind-click="li2Click"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                  xid="row1"> 
                  <div class="col col-xs-6" xid="col2"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit1"> 
                      <label class="x-label" xid="label5"><![CDATA[日期：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output13" bind-ref='ref("rq")'/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit2"> 
                      <label class="x-label" xid="label6"><![CDATA[应收：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output14" bind-ref='ref("ys")'/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col7"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit3"> 
                      <label class="x-label" xid="label7"><![CDATA[类型：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output15" bind-ref='ref("djlx")'/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col6"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit4"> 
                      <label class="x-label" xid="label8"><![CDATA[已收：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output16" bind-ref='ref("ys")'/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col5"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit5"> 
                      <label class="x-label" xid="label9"><![CDATA[状态：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit font-Two" xid="output17" bind-ref='ref("zt")'/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-6" xid="col4"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit" xid="labelEdit6"> 
                      <label class="x-label" xid="label10"><![CDATA[余额：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output18" bind-ref='ref("qmye")'/> 
                    </div> 
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
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>
</div>
