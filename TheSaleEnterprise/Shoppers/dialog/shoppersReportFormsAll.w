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
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;东南大区&quot;,&quot;col2&quot;:&quot;-&quot;,&quot;col3&quot;:&quot;-&quot;,&quot;col4&quot;:&quot;0.5&quot;,&quot;col5&quot;:&quot;-&quot;,&quot;col6&quot;:&quot;-&quot;,&quot;col7&quot;:&quot;-&quot;,&quot;col8&quot;:&quot;-&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;西北大区&quot;,&quot;col2&quot;:&quot;-&quot;,&quot;col3&quot;:&quot;-&quot;,&quot;col4&quot;:&quot;0.5&quot;,&quot;col5&quot;:&quot;-&quot;,&quot;col6&quot;:&quot;-&quot;,&quot;col7&quot;:&quot;-&quot;,&quot;col8&quot;:&quot;-&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="InData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="name" type="String" xid="column2"/>  
      <column name="address" type="String" xid="column3"/>  
      <column name="state" type="String" xid="column4"/>  
      <column name="code" type="String" xid="column5"/>  
      <column name="daogou" type="String" xid="column6"/>  
      <column name="zhongdian" type="String" xid="column7"/>  
      <column name="time" type="String" xid="column8"/>  
      <column name="col8" type="String" xid="column9"/>  
      <column name="col9" type="String" xid="column10"/>  
      <data xid="default1">[{"id":"1","name":"万家公用分店","address":"万家公用分店","state":"未拜访","code":"10100001","daogou":"导购","zhongdian":"重点","time":"2018-02-12","col8":"999M"},{"id":"2","name":"长城饭店","address":"渭南路111","state":"已拜访","code":"10100002","daogou":"导购","zhongdian":"重点","time":"2018-02-12","col8":"50M"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="noData" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="col1" type="String" xid="column12"/>  
      <column name="col2" type="String" xid="column13"/>  
      <column name="col3" type="String" xid="column14"/>  
      <column name="col4" type="String" xid="column15"/>  
      <column name="col5" type="String" xid="column16"/>  
      <column name="col6" type="String" xid="column17"/>  
      <column name="col7" type="String" xid="column18"/>  
      <column name="col8" type="String" xid="column19"/>  
      <data xid="default3">[{"id":"1","col1":"2018-02-17","col2":"杨洋","col3":"上海经销部","col4":"未排班","col5":"13888888888","col6":"","col7":"","col8":""},{"id":"2","col1":"2018-02-17","col2":"杨洋","col3":"杭州经销部","col4":"未排班","col5":"13888888888","col6":"","col7":"","col8":""}]</data> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="id">
   <column name="id" type="String" xid="column21"></column>
   <column name="type" type="String" xid="column20"></column>
   <data xid="default4">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;分区&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;type&quot;:&quot;省份&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="id">
   <column name="id" type="String" xid="column23"></column>
   <column name="type" type="String" xid="column22"></column>
   <data xid="default5">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;全国&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;type&quot;:&quot;直营&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;type&quot;:&quot;非直营&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data3" idColumn="id">
   <column name="id" type="String" xid="column25"></column>
   <column name="type" type="String" xid="column24"></column>
   <data xid="default6">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;全部&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;type&quot;:&quot;一级渠道&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;type&quot;:&quot;二级渠道&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersSalesCheck.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="96"> 
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
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card"
        tabbed="true" xid="buttonGroup1" style="background-color:#FFFFFF;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
          label="按区域查询" xid="button2" target="content4"> 
          <i xid="i2"/>  
          <span xid="span1">按区域查询</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="按人查询" xid="button3" target="content5"> 
          <i xid="i3"/>  
          <span xid="span2">按人查询</span> 
        </a> 
      </div>
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2" swipe="false"> 
        <div class="x-contents-content" xid="content4"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top5" height="192"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col20">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
     <label class="x-label" xid="label8">二级考核期：</label>
     <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select6"></select></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="text-align:center;">
   <div class="x-col" xid="col1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button6">
     <i xid="i8"></i>
     <span xid="span28">查询</span></a> </div> 
   <div class="x-col" xid="col2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多查询条件" xid="button7" onClick="button3Click">
     <i xid="i9"></i>
     <span xid="span27">更多查询条件</span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col16"></div>
   <div class="x-col" xid="col16"></div>
   <div class="x-col" xid="col17" style="text-align:right;">
    <span xid="span12"><![CDATA[单位：万元]]></span></div> </div>
  </div>
   <div class="x-panel-content" xid="content1" _xid="C7DF23A047C000015332AA703E904750" style="bottom: 0px; background-size: cover; top: 144px; background-image: url(http://localhost:45635/x5/UI2/v_/TheSaleEnterprise/Shoppers/dialog/none);">
    <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" class="x-grid-no-bordered" xid="grid1" data="checkData" height="auto" width="100%" useFooter="true" frozenColumnCount="1" onReload="grid1Reload">
   <columns xid="columns1"><column width="100" name="col1" xid="column26" label="分区"></column>
  <column width="100" name="col2" xid="column27" label="零售目标"></column>
  <column width="100" name="col3" xid="column28" label="当日零售"></column>
  <column width="100" name="col4" xid="column29" label="零售累计"></column>
  <column width="100" name="col5" xid="column30" label="销售达成"></column>
  <column width="100" name="col6" xid="column31" label="同比幅度"></column>
  <column width="100" name="col7" xid="column32"></column>
  <column width="100" name="col8" xid="column33"></column></columns></div></div> </div></div>  
        <div class="x-contents-content  x-content-on-remoting-sibling" xid="content5"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel4"> 
            <div class="x-panel-top" xid="top4" height="144"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14">
   <div class="x-col" xid="col22">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
     <label class="x-label" xid="label4">二级考核期：</label>
     <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2"></select></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="text-align:center;">
   <div class="x-col" xid="col24">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button8">
     <i xid="i11"></i>
     <span xid="span30">查询</span></a> </div> 
   <div class="x-col" xid="col23">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多查询条件" xid="button9" onClick="button9Click">
     <i xid="i12"></i>
     <span xid="span31">更多查询条件</span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
   <div class="x-col" xid="col21"></div>
   <div class="x-col" xid="col21"></div>
   <div class="x-col" xid="col19" style="text-align:right;">
    <span xid="span32">单位：万元</span></div> </div></div><div class="x-panel-content" xid="content2" _xid="C7DF23A047C000015332AA703E904750"> 
              <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" class="x-grid-no-bordered" xid="grid2" data="checkData" height="auto" width="100%" useFooter="true" frozenColumnCount="1" onReload="grid2Reload">
   <columns xid="columns2">
    <column width="100" name="col1" xid="column37" label="姓名"></column>
    <column width="100" name="col2" xid="column36" label="零售目标"></column>
    <column width="100" name="col3" xid="column35" label="当日零售"></column>
    <column width="100" name="col4" xid="column34" label="零售累计"></column>
    <column width="100" name="col5" xid="column41" label="销售达成"></column>
    <column width="100" name="col6" xid="column40" label="同比幅度"></column>
    <column width="100" name="col7" xid="column39"></column>
    <column width="100" name="col8" xid="column38"></column></columns> </div></div> 
          </div> 
        </div> 
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1">
   <div class="x-popOver-overlay" xid="div10"></div>
   <div class="x-popOver-content" xid="div9" style="background-color:white;width:100%;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
     <div class="x-col" xid="col18">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
       <label class="x-label" xid="label1">日期：</label>
       <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="data2" bind-optionsValue="type" bind-optionsLabel="type"></select></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
       <label class="x-label" xid="label10" style="width:150px;">区域：</label>
       <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup1" bind-itemset="data1" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div> 
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1"></input>
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
       <label class="x-label" xid="label2" style="width:150px;">范围：</label>
       <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup2" bind-itemset="data2" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
       <label class="x-label" xid="label3" style="width:150px;">渠道类型：</label>
       <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup3" bind-itemset="data3" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="text-align:center;">
     <div class="x-col" xid="col25">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button4">
       <i xid="i10"></i>
       <span xid="span29">查询</span></a> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver2">
   <div class="x-popOver-overlay" xid="div11"></div>
   <div class="x-popOver-content" xid="div12" style="background-color:white;width:100%;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
     <div class="x-col" xid="col26">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
       <label class="x-label" xid="label6">日期：</label>
       <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select3" bind-options="data2" bind-optionsValue="type" bind-optionsLabel="type"></select></div> 
      
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11"><![CDATA[职员：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
       <label class="x-label" xid="label7" style="width:150px;">范围：</label>
       <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup5" bind-itemset="data2" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
       <label class="x-label" xid="label9" style="width:150px;">渠道类型：</label>
       <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup6" bind-itemset="data3" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="text-align:center;">
     <div class="x-col" xid="col27">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button10">
       <i xid="i13"></i>
       <span xid="span33">查询</span></a> </div> </div> </div> </div></div>
