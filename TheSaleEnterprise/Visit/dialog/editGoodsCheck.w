<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:457px;left:176px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="GoodsData" idColumn="cp_id"> 
      <data xid="default1">[{"id":"1","col1":"沙田柚","col2":"正常","col3":"300","col4":"元/个","col5":"无"},{"id":"2","col1":"椰子冻","col2":"正常","col3":"200","col4":"元/个"},{"id":"3","col1":"大肉粽","col2":"异常","col3":"100","col4":"元/个","col5":"送达方是个个人"}]</data>  
      <column name="cp_id" type="String" xid="xid1"/>  
      <column name="unit" type="String" xid="xid2"/>  
      <column name="jcqk_zt" type="String" xid="xid3"/>  
      <column name="jcqk_jg" type="String" xid="xid4"/>  
      <column name="jcqk_bz" type="String" xid="xid5"/>  
      <column name="pro_name" type="String" xid="xid6"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="status" idColumn="id"> 
      <column name="id" type="String" xid="xid7"/>  
      <column name="type" type="String" xid="xid8"/>  
      <data xid="default2">[{"id":"1","type":"正常"},{"id":"0","type":"异常"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="产品检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">产品检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;">产品：</label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref='$model.GoodsData.ref("pro_name")' readonly="true"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;">产品：</label>  
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." class="form-control x-edit" xid="select1"
                  bind-ref="$model.GoodsData.ref(&quot;jcqk_zt&quot;)" bind-options="status"
                  bind-optionsValue="id" bind-optionsLabel="type"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col21"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:80px;"><![CDATA[销量：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input3" style="width:30px;" bind-ref='$model.GoodsData.ref("jcqk_jg")'/>  
                <span xid="span2"><![CDATA[元/个]]></span> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[备注：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref='$model.GoodsData.ref("jcqk_bz")'/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="padding:20px;"> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/> 
</div>
