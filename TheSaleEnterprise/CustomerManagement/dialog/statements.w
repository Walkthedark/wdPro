<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="title"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data>
    <column name="title" type="String" xid="xid1"></column>
  <column name="sn" type="String" xid="xid2"></column>
  <column name="lng" type="String" xid="xid3"></column>
  <column name="lat" type="String" xid="xid4"></column>
  <column name="addr" type="String" xid="xid5"></column>
  <column name="id" type="String" xid="xid6"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/statementsList.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属经销商对账单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属经销商对账单</div>  
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
            xid="list1" data="CData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two" bind-click="li1Click">
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row1" style="margin:0px;"> 
                  <div class="x-col" xid="col1">
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row2" style="margin:0px;"> 
                      <div class="col col-xs-12" xid="col4">
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output font-One" xid="output1" bind-ref='ref("title")'/>
                      </div>  
                      <div class="col col-xs-12" xid="col5">
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit1"> 
                          <label class="x-label font-Three" xid="label1"><![CDATA[编号：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit font-Three" xid="output2" bind-ref='ref("sn")'/>
                        </div>
                      </div>  
                      <div class="col col-xs-12" xid="col6">
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit2"> 
                          <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png" alt="" xid="image1" style="width:20px;"/>
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref='ref("addr")' onRender="output3Render"/>
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
</div>
