<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="checkData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{"id":"1","col1":"张三","col2":"流动","col3":"","col4":"0","col5":"","col6":"","col7":"","col8":""},{"id":"2","col1":"李四","col2":"专职","col3":"","col4":"35000","col5":"","col6":"6212.5","col7":"","col8":""}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data2" idColumn="id"> 
      <column name="id" type="String" xid="column6"/>  
      <column name="type" type="String" xid="column5"/>  
      <data xid="default4">[{"id":"1","type":"1"},{"id":"2","type":"2"}]</data>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/orderQueryInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属导购日报表"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属导购日报表</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="192"> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col20">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
     <label class="x-label" xid="label8">二级考核期：</label>
     <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select6" bind-options="data2" bind-optionsValue="type" bind-optionsLabel="type"></select></div> 
    
    
    </div> </div><div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1" style="text-align:center;"> 
            <div class="x-col" xid="col1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="查询" xid="button2"> 
                <i xid="i2"/>  
                <span xid="span1">查询</span>
              </a> 
            </div>  
            <div class="x-col" xid="col2"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="更多查询条件" xid="button3" onClick="button3Click"> 
                <i xid="i3"/>  
                <span xid="span2">更多查询条件</span>
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col15"></div>
   <div class="x-col" xid="col16"></div>
   <div class="x-col" xid="col17" style="text-align:right;"><span xid="span12"><![CDATA[单位：元]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3" style="text-align:center;padding:0px;background-color:#3EA0FF;color:#ffffff;"> 
            <div class="x-col border-table" xid="col3"> 
              <span xid="span3">姓名</span>
            </div>  
            <div class="x-col border-table" xid="col4"> 
              <span xid="span5">岗位</span>
            </div>  
            <div class="x-col border-table" xid="col5"> 
              <span xid="span6">本月目标</span>
            </div>  
            <div class="x-col border-table" xid="col6"> 
              <span xid="span7">本月销售累计</span>
            </div>  
            <div class="x-col border-table" xid="col7"> 
              <span xid="span8">达成率</span>
            </div>  
            <div class="x-col border-table" xid="col10"> 
              <span xid="span9">昨日销售</span>
            </div> 
          </div> 
        </div>
        <div class="x-panel-content" xid="content3"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"/>  
              <span class="x-pull-down-label" xid="span10">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content" xid="div2">
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" style="background-color:white;" data="checkData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" class="border-Two x-min-height  x-scroll-view"
                    bind-click="li2Click"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row5" style="text-align:center;padding:0px;"> 
                      <div class="x-col border-table" xid="col28"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output2" bind-ref="ref(&quot;col1&quot;)"/>
                      </div>  
                      <div class="x-col border-table" xid="col12">
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output4" bind-ref='ref("col2")'/>
                      </div>
                      <div class="x-col border-table" xid="col13"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output5" bind-ref='ref("col3")'/>
                      </div>  
                      <div class="x-col border-table" xid="col8"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output6" bind-ref='ref("col4")'/>
                      </div>  
                      <div class="x-col border-table" xid="col11"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output1" bind-ref='ref("col5")'/>
                      </div>  
                      <div class="x-col border-table" xid="col14"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output" xid="output3" bind-ref='ref("col6")'/>
                      </div>
                    </div> 
                  </li> 
                </ul> 
              </div>
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span11">加载更多...</span>
            </div> 
          </div>
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1">
   <div class="x-popOver-overlay" xid="div5"></div>
   <div class="x-popOver-content" xid="div6" style="background-color:white;width:100%;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col9">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
     <label class="x-label" xid="label1">二级考核期：</label>
     <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="data2" bind-optionsValue="type" bind-optionsLabel="type"></select></div> <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5">姓名：</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
     <label class="x-label" xid="label3">财年：</label>
     <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select3" bind-options="data2" bind-optionsValue="type" bind-optionsLabel="type"></select></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
     <label class="x-label" xid="label4">岗位：</label>
     <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select4" bind-options="data2" bind-optionsValue="type" bind-optionsLabel="type"></select></div></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="text-align:center;">
   <div class="x-col" xid="col25">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button4">
     <i xid="i5"></i>
     <span xid="span16">查询</span></a> </div> 
   </div></div></div><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
