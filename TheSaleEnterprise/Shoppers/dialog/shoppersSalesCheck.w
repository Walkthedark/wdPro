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
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;冰魄月饼&quot;,&quot;col2&quot;:&quot;2&quot;,&quot;col3&quot;:&quot;100&quot;,&quot;col4&quot;:&quot;2&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;叫花鸡&quot;,&quot;col2&quot;:&quot;1&quot;,&quot;col3&quot;:&quot;200&quot;,&quot;col4&quot;:&quot;35&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="id">
   <column name="id" type="String" xid="column6"></column>
   <column name="type" type="String" xid="column5"></column>
   <data xid="default4">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;在岗&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;type&quot;:&quot;旷工&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/orderQueryInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="销量库存确认"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">销量库存确认</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48"> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col9"><span xid="span1" class="font-One"><![CDATA[日报日期]]></span></div>
   <div class="x-col" xid="col10"><span xid="span2" class="font-One"><![CDATA[2018-02-02]]></span></div>
   </div></div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2"> 
                <div class="x-panel-content" xid="content1" _xid="C7DF23A047C000015332AA703E904750" style="top: 0px; bottom: 0px; background-size: cover; background-image: url(http://localhost:45635/x5/UI2/v_/TheSaleEnterprise/Shoppers/dialog/none);"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="text-align:center;padding:0px;background-color:#3EA0FF;color:#ffffff;">
   <div class="x-col border-table" xid="col3">
    <span xid="span3">存货名称</span></div> 
   <div class="x-col border-table" xid="col4">
    <span xid="span5">销售数量</span></div> 
   <div class="x-col border-table" xid="col5">
    <span xid="span6">库存数量</span></div> 
   <div class="x-col border-table" xid="col6">
    <span xid="span7">单价（元）</span></div> </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" style="background-color:white;" data="checkData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="text-align:center;padding:0px;">
    <div class="x-col border-table" xid="col28">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("col1")'></div></div> 
    
    <div class="x-col border-table" xid="col12"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" bind-ref='ref("col2")'></input></div><div class="x-col border-table" xid="col13">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" bind-ref='ref("col3")'></input></div> 
    <div class="x-col border-table" xid="col8">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" bind-ref='ref("col4")'></input></div> 
    </div></li> 
                        </ul> 
                      </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label10" style="width:150px;"><![CDATA[导购当天是否在岗：]]></label>
   <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup1" bind-itemset="data2" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:20px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="确 认 销 量" xid="button4" style="width:100%;">
    <i xid="i4"></i>
    <span xid="span8">确 认 销 量</span></a> </div></div> 
              </div></div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
