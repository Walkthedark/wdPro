<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="pro_no" type="String" xid="xid2"/>  
      <column name="pro_name" type="String" xid="xid3"/>  
      <column name="unit" type="String" xid="xid4"/>  
      <column name="box_num" type="String" xid="xid5"/>  
      <column name="price" type="String" xid="xid6"/>  
      <column name="boxprice" type="String" xid="xid7"/>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myDealersInfo.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="90"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="产品价格"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">产品价格</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row1"> 
        <div class="x-col" xid="col1" style="text-align:center;">
          <span xid="span1" class="font-seven"><![CDATA[上海市食品经销部]]></span>
        </div> 
      </div></div>  
    <div class="x-panel-content  x-scroll-view" xid="content6" _xid="C7E1BB556C000001138D1E5D797C1106"
      style="bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
        
       
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2" />  
          <span class="x-pull-down-label" xid="span3">下拉刷新...</span>
        </div>  
        <div class="x-scroll-content" xid="div2">
          <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="CData"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2">
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row2"> 
                  <div class="x-col" xid="col2"> 
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2"> 
                      <div class="col col-xs-12" xid="col4"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit8">
   <label class="x-label font-Three" xid="label8" style="font-weight:900;"><![CDATA[产品名称：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-Three" xid="output8" bind-ref='ref("pro_name")' style="font-weight:900;"></div></div></div>  
                      <div class="col col-xs-12" xid="col5"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7">
   <label class="x-label font-Three" xid="label7"><![CDATA[产品编号：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-Three" xid="output2" bind-ref='ref("pro_no")'></div></div></div>  
                      <div class="col col-xs-12" xid="col6"> 
                        <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row3"> 
                          <div class="col col-xs-6" xid="col3">
                            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2"> 
                              <label class="x-label font-Three" xid="label2"><![CDATA[计件单位：]]></label>
                              <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("unit")' />
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col7">
                            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit3"> 
                              <label class="x-label font-Three" xid="label3"><![CDATA[每箱件数：]]></label>  
                              <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='ref("box_num")' />
                            </div>
                          </div> 
                        </div>  
                        <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4"> 
                          <div class="col col-xs-6" xid="col10"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit5"> 
                              <label class="x-label font-Three" xid="label4"><![CDATA[单件价格：]]></label>  
                              <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref='ref("price")' />
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col9"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4"> 
                              <label class="x-label font-Three" xid="label5"><![CDATA[每箱价格：]]></label>  
                              <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='ref("boxprice")' />
                            </div> 
                          </div> 
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
          <span class="x-pull-up-label" xid="span5">加载更多...</span>
        </div> 
      </div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
