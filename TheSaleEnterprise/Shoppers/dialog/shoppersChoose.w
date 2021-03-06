<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;沙田柚&quot;,&quot;col2&quot;:&quot;上海&quot;,&quot;col3&quot;:&quot;上海经销部&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;椰子冻&quot;,&quot;col2&quot;:&quot;杭州&quot;,&quot;col3&quot;:&quot;杭州经销部&quot;,&quot;col4&quot;:&quot;&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;大肉粽&quot;,&quot;col2&quot;:&quot;北京&quot;,&quot;col3&quot;:&quot;北京经销部&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;}]</data></div>  
    </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersDepartureNew.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="96"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="导购选择"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购选择</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="text-align:center;">
   <div class="x-col" xid="col6"><span xid="span3" class="font-One"><![CDATA[姓名]]></span></div>
   <div class="x-col" xid="col7"><span xid="span5" class="font-One"><![CDATA[城市]]></span></div>
   <div class="x-col" xid="col8"><span xid="span6" class="font-One"><![CDATA[网点名称]]></span></div>
  <div class="x-col" xid="col9"></div></div></div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF6BC6CD4000012E3B1F9E14A42AA0" style="background-color:#f0f0f0;"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="sData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="border-Two" style="background-color:white;"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="text-align:center;">
   <div class="x-col" xid="col12">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("col1")'></div></div> 
   <div class="x-col" xid="col13">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("col2")'></div></div> 
   <div class="x-col" xid="col10">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("col3")'></div></div> 
   <div class="x-col" xid="col11"><a component="$UI/system/components/justep/button/button" class="btn btn-default6" label="选择" xid="button2" onClick="button2Click" style="margin-left:10px;">
   <i xid="i4"></i>
   <span xid="span11" style="margin-top:-4px;display:block;">选择</span></a></div></div></li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
            </div> 
          </div> 
        </div>  
        </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersInfo.w"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
