<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default1">[{"id":"1","col1":"李四","col2":"东南大区","col3":"2018-02-17 14:00","col4":"2018021700001","col5":"2018-02-17 14:00至2018-02-17 15:00","col6":"共（0天1小时）","col7":"测试","col8":"../TheSaleEnterprise/Commonly/img/006.png"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="spData" idColumn="id"> 
      <column name="id" type="String" xid="xid19"/>  
      <column name="name" type="String" xid="xid20"/>  
      <column name="time" type="String" xid="xid21"/>  
      <column name="type" type="String" xid="xid22"/>  
      <column name="content" type="String" xid="xid23"/>  
      <data xid="default2">[{"id":"1","name":"张三","time":"2018-01-08","type":"0","content":"什么都没有"},{"id":"2","name":"李四","time":"2018-01-08","type":"1","content":"请填写正确网点"},{"id":"3","name":"张三","time":"2018-01-08","type":"2","content":"提交"},{"id":"4","name":"张三","time":"2018-01-08","type":"3","content":"执行活动"},{"id":"5","name":"老张","time":"2018-01-08","type":"4","content":"抄送"}]</data> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="id">
   <column name="id" type="String" xid="column6"></column>
   <column name="type" type="String" xid="column5"></column>
   <data xid="default4">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;是&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;type&quot;:&quot;否&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="导购申请详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购申请详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row row-padding border-Two"
        xid="row1"> 
        <div class="col col-xs-12 col-padding" xid="col1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2"> 
            <div class="x-col x-col-25" xid="col7" style="margin:auto;text-align:center;">
              <img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt="" xid="image1" style="width:80px;"></img>
  <span xid="span1" style="display:block;" class="font-XX mar2"><![CDATA[在职]]></span></div>  
            <div class="x-col" xid="col8">
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row3"> 
                <div class="col col-xs-12" xid="col10">
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label font-six" xid="label4" style="width:110px;"><![CDATA[姓名：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='"张三"'></div></div></div>  
                <div class="col col-xs-12" xid="col11">
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label font-six" xid="label5" style="width:110px;"><![CDATA[所属主网点：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='"上海是是是有限公司"'></div></div></div>  
                <div class="col col-xs-12" xid="col12">
                  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label font-six" xid="label6" style="width:110px;"><![CDATA[入职时间：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='"2017-02-02"'></div></div></div>
              <div class="col col-xs-12" xid="col4">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
    <label class="x-label font-six" xid="label7" style="width:110px;"><![CDATA[岗位类型：]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='"流动"'></div></div> </div></div>
            </div>  
            </div>
        </div>  
        <div class="col col-xs-12 col-padding" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" xid="label8" style="width:150px;"><![CDATA[离职生效日：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" dataType="Date"></input></div></div>  
        <div class="col col-xs-12 col-padding" xid="col3"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="label9" style="width:150px;"><![CDATA[离职类型：]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1"></select></div></div>  
        <div class="col col-xs-12 col-padding" xid="col45">
   
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label10" style="width:150px;"><![CDATA[是否允许返聘：]]></label>
   <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup1" bind-itemset="data2" bind-itemsetValue='ref("id")' bind-itemsetLabel='ref("type")' style="color: #FA7922;"></span></div></div>
  <div class="col col-xs-12 col-padding" xid="col9">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label12" style="width:150px;"><![CDATA[离职主要原因及备注：]]></label>
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea1" placeHolder="请填写备注相关信息"></textarea></div></div></div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13">
    <span xid="span2">上传照片（最多上传6张。）</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col14">
    <img src="$UI/TheSaleEnterprise/ClockIn/img/001.jpeg" alt="" xid="GImage" style="width:100px;background-color:#FFFFFF;" bind-click="GImageClick"></img></div> 
   <div class="x-col" xid="col5"></div>
   <div class="x-col" xid="col6"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:20px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="提 交 申 请" xid="button4" style="width:100%;">
    <i xid="i4"></i>
    <span xid="span5">提 交 申 请</span></a> </div></div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
