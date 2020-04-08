<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="wlbh" type="String" xid="xid2"/>  
      <column name="wlmc" type="String" xid="xid3"/>  
      <column name="wllb" type="String" xid="xid4"/>  
      <column name="kc" type="String" xid="xid5"/>  
      <column name="kcdw" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cData" idColumn="store" autoNew="true"> 
      <column name="store" type="String" xid="column2"/>  
      <column name="type" type="String" xid="xid14"/>  
      <column name="no" type="String" xid="xid15"/>  
      <column name="name" type="String" xid="xid16"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="storeList" idColumn="id"> 
      <column name="id" type="String" xid="xid10"/>  
      <column name="title" type="String" xid="xid11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeList" idColumn="id"> 
      <column name="id" type="String" xid="xid12"/>  
      <column name="title" type="String" xid="xid13"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingVisitInfo.w" showTitle="true"
    forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="库存查询"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">库存查询</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel6"> 
        <div class="x-panel-top" xid="top2" height="270"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1"> 
            <div class="x-col" xid="col1"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row2"> 
                <div class="col col-xs-12" xid="col5"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit" xid="labelEdit4"> 
                    <label class="x-label" xid="label4" style="width:80px;"><![CDATA[仓库：]]></label>  
                    <select component="$UI/system/components/justep/select/select"
                      class="form-control x-edit" xid="select1" bind-ref="$model.cData.ref(&quot;store&quot;)"
                      bind-options="storeList" bind-optionsValue="id" bind-optionsLabel="title"/> 
                  </div>  
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit" xid="labelEdit5"> 
                    <label class="x-label" xid="label5" style="width:80px;"><![CDATA[物料类型：]]></label>  
                    <select component="$UI/system/components/justep/select/select"
                      class="form-control x-edit" xid="select2" bind-ref="$model.cData.ref(&quot;type&quot;)"
                      bind-options="typeList" bind-optionsValue="id" bind-optionsLabel="title"/> 
                  </div>  
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit" xid="labelEdit1"> 
                    <label class="x-label" xid="label1" style="width:80px;"><![CDATA[物料编号：]]></label>  
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control x-edit" xid="input3" bind-ref="$model.cData.ref(&quot;no&quot;)"/> 
                  </div>  
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit" xid="labelEdit3"> 
                    <label class="x-label" xid="label3" style="width:80px;"><![CDATA[物料名称：]]></label>  
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control x-edit" xid="input2" bind-ref="$model.cData.ref(&quot;name&quot;)"/> 
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
                xid="list2" style="background-color:white;" data="pData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" class="border-Two"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row6"> 
                      <div class="x-col" xid="col21"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-12" xid="col14"> 
                            <div component="$UI/system/components/justep/output/output"
                              class="x-output" xid="output5" bind-ref="ref(&quot;wlmc&quot;)" style="font-weight:900"/> 
                          </div>  
                          <div class="col col-xs-12" xid="col15"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit6"> 
                              <label class="x-label" xid="label6" style="width:80px;"><![CDATA[物料编号：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output2" bind-ref="ref(&quot;wlbh&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col16"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit7"> 
                              <label class="x-label" xid="label7" style="width:80px;"><![CDATA[物料类型：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output3" bind-ref="ref(&quot;wllb&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col17"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit8"> 
                              <label class="x-label" xid="label8" style="width:80px;"><![CDATA[库存数量：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output4" bind-ref="ref(&quot;kc&quot;)"
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
