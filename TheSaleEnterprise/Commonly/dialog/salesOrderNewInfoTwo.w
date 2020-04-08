<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="col1" type="String" xid="column10"/>  
      <column name="col2" type="String" xid="column1"/>  
      <column name="col3" type="String" xid="column2"/>  
      <column name="col4" type="String" xid="column3"/>  
      <column name="col5" type="String" xid="column4"/>  
      <column name="col6" type="String" xid="column5"/>  
      <column name="col7" type="String" xid="column6"/>  
      <column name="col8" type="String" xid="column6"/>  
      <column name="col9" type="String" xid="column7"/>  
      <column name="co20" type="String" xid="column8"/>  
      <data xid="default2">[]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;text&quot;:&quot;成品&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;text&quot;:&quot;销售物料&quot;}]</data></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加出差申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2"><![CDATA[添加销售订单]]></div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col17"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4"> 
            <div class="col col-xs-12" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[类型：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup1" bind-itemset="CData" bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;text&quot;)" style="color: #FA7922;" />
              </div><div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label7" style="width:80px;"><![CDATA[销售物料：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4"/> 
              </div>  
              
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:80px;"><![CDATA[销售人员：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5" style="width:80px;"><![CDATA[编码：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
   <label class="x-label" xid="label14" style="width:80px;">原供价：</label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3"></div>
   <span xid="span3">元</span></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit18">
   <label class="x-label" xid="label18" style="width:80px;"><![CDATA[供货单价：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input8"></input><span xid="span2"><![CDATA[元]]></span></div>
  
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit19">
   <label class="x-label" xid="label19" style="width:80px;"><![CDATA[订货数量：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input9"></input>
   </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit20">
   <label class="x-label" xid="label20" style="width:80px;"><![CDATA[搭赠数量：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input10"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit21">
   <label class="x-label" xid="label21" style="width:80px;"><![CDATA[原金额：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5"></div>
   <span xid="span10">元</span></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit22">
   <label class="x-label" xid="label22" style="width:80px;"><![CDATA[应收金额：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6"></div>
   <span xid="span11">元</span></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit23">
   <label class="x-label" xid="label23" style="width:80px;"><![CDATA[备注：]]></label>
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea2"></textarea></div></div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="提 交" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">提 交</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
