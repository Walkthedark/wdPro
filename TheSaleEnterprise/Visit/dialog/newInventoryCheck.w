<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:457px;left:176px;height:auto;">
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="id" autoNew="true">
      <column name="id" type="String" xid="xid1"/>  
      <column name="cp_id" type="String" xid="xid2"/>  
      <column name="cp_dpmc" type="String" xid="xid3"/>  
      <column name="kcqk_scrq" type="Date" xid="xid4"/>  
      <column name="kcqk_kcsl_x" type="String" xid="xid5"/>  
      <column name="kcqk_kcsl_z" type="String" xid="xid6"/>  
      <column name="sm" type="String" xid="xid7"/>  
      <column name="kcqk_lx" type="String" xid="xid8"/>  
      <column name="kcqk_lx_title" type="String" xid="xid9"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeList" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="title" type="String" xid="column2"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="库存检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">库存检查</div>  
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
                  xid="input1" bind-ref="$model.cDate.ref(&quot;cp_dpmc&quot;)"/>  
                <div component="$UI/system/components/justep/button/buttonGroup"
                  class="btn-group" tabbed="true" xid="buttonGroup1"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default" label="扫码" xid="button2" style="display:none"> 
                    <i xid="i2"/>  
                    <span xid="span6">扫码</span>
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default" label="选择" xid="button3" onClick="{&quot;operation&quot;:&quot;windowDialog1.open&quot;}"> 
                    <i xid="i3"/>  
                    <span xid="span7">选择</span>
                  </a> 
                </div> 
              </div>
            </div>  
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:80px;"><![CDATA[临期类型：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-optionsCaption="请选择..."
                  bind-ref="$model.cDate.ref(&quot;kcqk_lx&quot;)" bind-options="typeList" bind-optionsValue="id"
                  bind-optionsLabel="title"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col19"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:80px;"><![CDATA[生产日期：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref='$model.cDate.ref("kcqk_scrq")'/>
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col21"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:80px;"><![CDATA[库存：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input3" style="width:30px;" bind-ref='$model.cDate.ref("kcqk_kcsl_x")'/>  
                <span xid="span2"><![CDATA[箱]]></span>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input5" bind-ref='$model.cDate.ref("kcqk_kcsl_z")'/>  
                <span xid="span3"><![CDATA[支]]></span> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[说明：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref='$model.cDate.ref("sm")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col3"> 
              <span xid="span1"><![CDATA[上传照片（最多录入6张。）]]></span> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;"> 
        <div class="x-col" xid="col4"> 
          <div class="imgline" xid="div74" id="newInventoryCheckImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="newInventoryCheckImg1">+
              <input id="uploadnewInventoryCheck" type="file" class="upfile"
                accept="image/*,video/*;" capture="camera" xid="file1"/> 
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
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/product.w" forceRefreshOnOpen="true"
    onReceive="windowDialog1Receive" showTitle="false"/>
</div>
