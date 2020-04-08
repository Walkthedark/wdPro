<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{"id":"1","col1":"张三","col2":"1","col3":"1","col4":"0","col5":"0","col6":"","col7":"","col8":""}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="text" type="String" xid="column2"/>  
      <data xid="default1">[{"id":"0","text":"只看直接下属"},{"id":"1","text":"查看所有下属"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="InData" idColumn="id"> 
      <column name="id" type="String" xid="column3"/>  
      <column name="col1" type="String" xid="column4"/>  
      <column name="col2" type="String" xid="column5"/>  
      <column name="col3" type="String" xid="column6"/>  
      <column name="col4" type="String" xid="column7"/>  
      <column name="col5" type="String" xid="column8"/>  
      <column name="col6" type="String" xid="column9"/>  
      <column name="col7" type="String" xid="column10"/>  
      <column name="col8" type="String" xid="column11"/>  
      <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;2018-01-01&quot;,&quot;col2&quot;:&quot;失访&quot;,&quot;col3&quot;:&quot;8&quot;,&quot;col4&quot;:&quot;0&quot;,&quot;col5&quot;:&quot;8&quot;,&quot;col6&quot;:&quot;0&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;2018-01-02&quot;,&quot;col2&quot;:&quot;失访&quot;,&quot;col3&quot;:&quot;1&quot;,&quot;col4&quot;:&quot;0&quot;,&quot;col5&quot;:&quot;1&quot;,&quot;col6&quot;:&quot;1&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;2018-01-03&quot;,&quot;col2&quot;:&quot;失访&quot;,&quot;col3&quot;:&quot;2&quot;,&quot;col4&quot;:&quot;2&quot;,&quot;col5&quot;:&quot;2&quot;,&quot;col6&quot;:&quot;2&quot;}]</data></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingBranchesMap.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="张三"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">张三</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel6"> 
        <div class="x-panel-top border-Two" xid="top2" height="144"> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col16" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button4" icon="glyphicon glyphicon-triangle-left" style="color: #8FC41C;" onClick="button4Click">
     <i xid="i4" class="glyphicon glyphicon-triangle-left"></i>
     <span xid="span13"></span></a> 
    <span xid="idateSpan" class="font-One">2018-01</span>
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button7" icon="glyphicon glyphicon-triangle-right" style="color: #8FC41C;" onClick="button7Click">
     <i xid="i9" class="glyphicon glyphicon-triangle-right"></i>
     <span xid="span11"></span></a> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2" style="text-align:center;"> 
            <div class="x-col" xid="col5"> 
              <span xid="span6" class="font-One">计划</span> 
            </div>  
            <div class="x-col" xid="col5"> 
              <span xid="span12" class="font-One">实际</span> 
            </div>  
            <div class="x-col" xid="col12"> 
              <span xid="span9" class="font-One">失访</span> 
            </div>  
            <div class="x-col" xid="col4"> 
              <span xid="span5" class="font-One">计划外</span> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row6" style="text-align:center;"> 
            <div class="x-col" xid="col17"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output6" bind-ref="$model.pData.ref(&quot;col2&quot;)"/> 
            </div>  
            <div class="x-col" xid="col18"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output7" bind-ref="$model.pData.ref(&quot;col3&quot;)"/> 
            </div>  
            <div class="x-col" xid="col20"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output8" bind-ref="$model.pData.ref(&quot;col4&quot;)"/> 
            </div>  
            <div class="x-col" xid="col19"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output9" bind-ref="$model.pData.ref(&quot;col5&quot;)"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750" style="background-color:#f0f0f0;"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView2"> 
            <div class="x-content-center x-pull-down container" xid="div6"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
              <span class="x-pull-down-label" xid="span10">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div5"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="InData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" bind-click="li1Click" class="mar2" style="background-color:white;"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                      xid="row3" style="text-align:center;"> 
                      <div class="x-col" xid="col14"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("col1")'></div></div>  
                      <div class="x-col" xid="col13"> 
                        <span xid="span2" class="font-One">计划</span> 
                      </div>  
                      <div class="x-col" xid="col13"> 
                        <span xid="span7" class="font-One">实际</span> 
                      </div>  
                      <div class="x-col" xid="col8"> 
                        <span xid="span3" class="font-One">失访</span> 
                      </div>  
                      <div class="x-col" xid="col11"> 
                        <span xid="span1" class="font-One">计划外</span> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row1" style="text-align:center;"> 
                      <div class="x-col" xid="col7"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output3" bind-ref='ref("col2")'/> 
                      </div>  
                      <div class="x-col" xid="col6"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output1" bind-ref='ref("col3")'/> 
                      </div>  
                      <div class="x-col" xid="col10"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output2" bind-ref='ref("col4")'/> 
                      </div>  
                      <div class="x-col" xid="col9"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output4" bind-ref='ref("col5")'/> 
                      </div> 
                    <div class="x-col" xid="col15"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='ref("col6")'></div></div></div> 
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
