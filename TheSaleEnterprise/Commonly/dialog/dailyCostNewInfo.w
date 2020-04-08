<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="feeTypeList" idColumn="id"> 
      <column name="id" type="String" xid="column17"/>  
      <column name="title" type="String" xid="column18"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cData" idColumn="feiid" autoNew="true"> 
      <column name="feiid" type="String" xid="xid1"></column>
  <column name="feis" type="String" xid="xid2"></column>
  <column name="start" type="Date" xid="xid3"></column>
  <column name="end" type="Date" xid="xid4"></column>
  <column name="chufa" type="String" xid="xid5"></column>
  <column name="mudi" type="String" xid="xid6"></column>
  <column name="jxs" type="String" xid="xid7"></column>
  <column name="jxsm" type="String" xid="xid8"></column>
  <column name="remark" type="String" xid="xid9"></column>
  <column name="feim" type="String" xid="xid10"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加费用明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">添加费用明细</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;width:100%;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col17"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4"> 
            <div class="col col-xs-12" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:125px;"><![CDATA[三级费用科目：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-ref="$model.cData.ref(&quot;feiid&quot;)"
                  bind-options="feeTypeList" bind-optionsValue="id" bind-optionsLabel="title" bind-labelRef='$model.cData.ref("feim")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:125px;"><![CDATA[报销金额(元)：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.cData.ref(&quot;feis&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:125px;"><![CDATA[起始时间：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="periodInput" bind-ref="$model.cData.ref(&quot;start&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:125px;"><![CDATA[截止时间：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="depInput" bind-ref="$model.cData.ref(&quot;end&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:125px;"><![CDATA[出发地点：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input6" bind-ref="$model.cData.ref(&quot;chufa&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:125px;"><![CDATA[到达地点：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref="$model.cData.ref(&quot;mudi&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit16"> 
                <label class="x-label" xid="label16" style="width:125px;"><![CDATA[费用说明：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.cData.ref(&quot;remark&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:125px;"><![CDATA[费用计入经销商：]]></label>  
                <span class="second x-edit" xid="span1"> 
                  <input type="text" name="makeupCo" id="makeupCo1" onfocus="setfocus(this)"
                    oninput="setinput(this);" placeholder="请选择或输入" bind-value='$model.cData.ref("jxsm")'
                    xid="input4"/>  
                  <select name="makeupCoSe" id="typenum1" onchange="changeF(this)"
                    size="10" style="display:none;" xid="select1"/> 
                </span> 
              </div> 
            </div> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/> 
</div>
