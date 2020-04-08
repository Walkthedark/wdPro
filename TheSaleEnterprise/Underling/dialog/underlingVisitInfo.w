<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="pData" idColumn="em_name" autoNew="true"> 
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;张三&quot;,&quot;col2&quot;:&quot;东南大区&quot;,&quot;col3&quot;:&quot;东南大区经理&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;李四&quot;,&quot;col2&quot;:&quot;华南大区&quot;,&quot;col3&quot;:&quot;华南大区客户主管&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data>
  <column name="em_name" type="String" xid="xid2"></column>
  <column name="de_name" type="String" xid="xid3"></column>
  <column name="qdslxj" type="String" xid="xid4"></column>
  <column name="sl_jxs" type="String" xid="xid5"></column>
  <column name="sl_qdhb" type="String" xid="xid6"></column>
  <column name="sl_schd" type="String" xid="xid7"></column>
  <column name="sl_kq" type="String" xid="xid8"></column>
  <column name="sl_wd" type="String" xid="xid1"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="yData"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sData"></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingDealersVisitInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="下属拜访轨迹详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">下属拜访轨迹详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="display:none">
   <div class="x-col" xid="col4" style="text-align:center;">
    <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
     <div class="input-group-btn" xid="layoutWizard2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="glyphicon glyphicon-triangle-left" style="color: #8FC41C;" onClick="button4Click">
       <i xid="i4" class="glyphicon glyphicon-triangle-left"></i>
       <span xid="span3"></span></a> </div> 
     <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="vdateInput"></input>
     <div class="input-group-btn" xid="layoutWizard1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" icon="glyphicon glyphicon-triangle-right" style="color: #8FC41C;" onClick="button7Click">
       <i xid="i9" class="glyphicon glyphicon-triangle-right"></i>
       <span xid="span11"></span></a> </div> </div> <label xid="label2" class="font-One mar2" bind-text='$model.pData.val("em_name")+"/"+$model.pData.val("de_name")'><![CDATA[]]></label></div> </div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row1">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7">
   <label class="x-label" xid="label8"><![CDATA[签到数量小计：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.pData.ref("qdslxj")'></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit8">
   <label class="x-label" xid="label9"><![CDATA[总行程：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='$model.pData.ref("qdslxj")'></div></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="text-align:center;">
   <div class="x-col border-table col1" xid="col58">
    
    <span xid="span53">拜访小计</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="text-align:center;">
   <div class="x-col border-table" xid="col52">
    <span xid="span43">签到类型</span></div> 
   <div class="x-col border-table" xid="col56">
    <span xid="span42">经销商</span></div> 
   <div class="x-col border-table" xid="col55">
    <span xid="span44">网点</span></div> 
   <div class="x-col border-table" xid="col54">
    <span xid="span45">签到汇报</span></div> 
   <div class="x-col border-table" xid="col53">
    <span xid="span46">市场活动</span></div> 
   <div class="x-col border-table" xid="col57">
    <span xid="span47">考勤</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="text-align:center;">
   <div class="x-col border-table" xid="col5">
    
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output13" onRender="output13Render"></div></div> 
  <div class="x-col border-table" xid="col46" bind-text=' '><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='$model.pData.ref("sl_jxs")'></div></div>
  <div class="x-col border-table" xid="col47"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='$model.pData.ref("sl_wd")'></div></div>
  <div class="x-col border-table" xid="col48"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='$model.pData.ref("sl_qdhb")'></div></div>
  <div class="x-col border-table" xid="col49"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='$model.pData.ref("sl_schd")'></div></div>
  <div class="x-col border-table" xid="col50"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='$model.pData.ref("sl_kq")'></div></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row border-Two mar2" xid="row5">
   <div class="x-col" xid="col19">
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-default2" label="在地图上查看拜访轨迹" xid="button2" style="width:100%;display:none" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span17">在地图上查看拜访轨迹</span></a></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="text-align:center;">
   <div class="x-col border-table col1" xid="col59">
    <span xid="span65"><![CDATA[已拜访客户]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="text-align:center;">
   <div class="x-col border-table" xid="col70">
    <span xid="span58"><![CDATA[NO.]]></span></div> 
   <div class="x-col border-table" xid="col61">
    <span xid="span59"><![CDATA[客户名称]]></span></div> 
   <div class="x-col border-table" xid="col62">
    <span xid="span61"><![CDATA[签到时间]]></span></div> 
   <div class="x-col border-table" xid="col68">
    <span xid="span60"><![CDATA[签到地点]]></span></div> 
   <div class="x-col border-table" xid="col69">
    <span xid="span55"><![CDATA[离上一站距离（千米）]]></span></div> 
   </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" style="padding:0px;margin:0px;" data="yData">
   <ul class="x-list-template" xid="listTemplateUl2" style="padding:0px;margin:0px;">
    <li xid="li2" style="padding:0px;margin:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="text-align:center;">
   <div class="x-col border-table" xid="col22">
    <span xid="span18">1</span></div> 
   <div class="x-col border-table" xid="col17">
    <span xid="span7">上海经销部</span></div> 
   <div class="x-col border-table" xid="col18">
    <span xid="span15">15：30：30</span></div> 
   <div class="x-col border-table" xid="col20">
    <span xid="span5">渭南路</span></div> 
   <div class="x-col border-table" xid="col21">
    <span xid="span14">0.5</span></div> </div></li></ul> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="text-align:center;">
   <div class="x-col border-table col1" xid="col2">
    <span xid="span6"><![CDATA[失访客户]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="text-align:center;">
   <div class="x-col border-table" xid="col14">
    <span xid="span9">NO.</span></div> 
   <div class="x-col border-table" xid="col9">
    <span xid="span13"><![CDATA[失访网点]]></span></div> 
   <div class="x-col border-table" xid="col8">
    <span xid="span1"><![CDATA[网点地址]]></span></div> 
   
   </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" style="padding:0px;margin:0px;">
   <ul class="x-list-template" xid="listTemplateUl1" style="padding:0px;margin:0px;">
    <li xid="li1" style="padding:0px;margin:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="text-align:center;">
   <div class="x-col border-table" xid="col25">
    <span xid="span19">1</span></div> 
   <div class="x-col border-table" xid="col24">
    <span xid="span21">上海经销部</span></div> 
   <div class="x-col border-table" xid="col23">
    <span xid="span20">上海市渭南路百联讲吧111号</span></div> </div></li></ul> </div>
  </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
