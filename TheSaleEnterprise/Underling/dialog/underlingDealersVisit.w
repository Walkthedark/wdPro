<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="xm" type="String" xid="xid2"/>  
      <column name="bfjxssl" type="String" xid="xid3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="time" autoNew="true"> 
      <data xid="default1">[{"id":"0","text":"只看直接下属"},{"id":"1","text":"查看所有下属"}]</data>  
      <column name="time" type="String" xid="column1"/>  
      <column name="name" type="String" xid="column2"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingDealersVisitInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="下属经销商拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">下属经销商拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel6"> 
        <div class="x-panel-top" xid="top2" height="192"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row4"> 
            <div class="x-col" xid="col4" style="text-align:center;"> 
              <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
                xid="inputGroup1"> 
                <div class="input-group-btn" xid="layoutWizard2"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" label="button" xid="button4"
                    icon="glyphicon glyphicon-triangle-left" style="color: #8FC41C;"
                    onClick="button4Click"> 
                    <i xid="i4" class="glyphicon glyphicon-triangle-left"/>  
                    <span xid="span3"/> 
                  </a> 
                </div>  
                <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
                  xid="dateInput" bind-ref="$model.CData.ref(&quot;time&quot;)" style="text-align:center"/>  
                <div class="input-group-btn" xid="layoutWizard1"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" label="button" xid="button7"
                    icon="glyphicon glyphicon-triangle-right" style="color: #8FC41C;"
                    onClick="button7Click"> 
                    <i xid="i9" class="glyphicon glyphicon-triangle-right"/>  
                    <span xid="span11"/> 
                  </a> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1"> 
            <div class="x-col" xid="col1"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row2"> 
                <div class="col col-xs-12" xid="col5"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit" xid="labelEdit1"> 
                    <label class="x-label" xid="label1"><![CDATA[姓名：]]></label>  
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control x-edit" xid="input3" bind-ref="$model.CData.ref(&quot;name&quot;)"/> 
                  </div> 
                </div>  
                <div class="col col-xs-12" xid="col6"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row3" style="text-align:center;"> 
                    <div class="x-col" xid="col11"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-default3" label="清除" xid="button6" onClick="button6Click"> 
                        <i xid="i6"/>  
                        <span xid="span6">清除</span> 
                      </a> 
                    </div>  
                    <div class="x-col" xid="col12"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-default2" label="查询" xid="button8" onClick="button8Click"> 
                        <i xid="i8"/>  
                        <span xid="span7">查询</span> 
                      </a> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row5" style="text-align:center;"> 
            <div class="x-col x-col-25 " xid="col7"> 
              <span xid="span13" class="font-One"><![CDATA[姓名]]></span> 
            </div>  
            <div class="x-col" xid="col8"> 
              <span xid="span14" class="font-One"><![CDATA[拜访经销商数量]]></span> 
            </div>  
            <div class="x-col x-col-25 " xid="col9"> 
              <span xid="span15" class="font-One"><![CDATA[查看详情]]></span> 
            </div> 
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
                xid="list2" style="background-color:white;padding:0px" data="pData"> 
                <ul class="x-list-template" xid="listTemplateUl2" style="margin:0px;"> 
                  <li xid="li2" class="border-Two"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row6" style="text-align:center;"> 
                      <div class="x-col x-col-25 " xid="col21"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output5" bind-ref="ref(&quot;xm&quot;)"/> 
                      </div>  
                      <div class="x-col" xid="col17"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output6" bind-ref="ref(&quot;bfjxssl&quot;)"/> 
                      </div>  
                      <div class="x-col x-col-25 " xid="col18"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-link font-XX " label="查看详情" xid="button2"
                          onClick="button2Click" style="padding: 7px 0px;"> 
                          <i xid="i2"/>  
                          <span xid="span1">查看详情</span> 
                        </a> 
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
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
