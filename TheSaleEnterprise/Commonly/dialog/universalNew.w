<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="title" type="String" xid="column10"/>  
      <column name="type" type="String" xid="column1"/>  
      <column name="neirong" type="String" xid="column2"/>  
      <column name="iscost" type="String" xid="column3"/>  
      <column name="bm" type="String" xid="xid8"/>  
      <column name="kaohe" type="String" xid="xid9"/>  
      <column name="zhifu" type="String" xid="xid10"/>  
      <column name="shoukuan" type="String" xid="xid11"/>  
      <column name="bmm" type="String" xid="xid12"/>  
      <column name="kaohem" type="String" xid="xid13"/>  
      <column name="zhifum" type="String" xid="xid14"/>  
      <column name="shoukuanm" type="String" xid="xid15"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"1","text":"是"},{"id":"0","text":"否"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="costData" idColumn="id" confirmRefresh="false" confirmDelete="false"> 
      <column name="id" type="String" xid="xid3"/>  
      <column name="feetype" type="String" xid="xid4"/>  
      <column name="fee" type="String" xid="xid5"/>  
      <column name="remark" type="String" xid="xid6"/>  
      <column name="handle" type="String" xid="xid16"/>  
      <column name="feetypeID" type="String" xid="xid18"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeList" idColumn="id"> 
      <column name="id" type="String" xid="column4"/>  
      <column name="title" type="String" xid="column5"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="payTypeList" idColumn="id"> 
      <column name="id" type="String" xid="column7"/>  
      <column name="title" type="String" xid="column6"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="feeTypeList" idColumn="id"> 
      <column name="id" type="String" xid="column17"/>  
      <column name="title" type="String" xid="column18"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="feeData" idColumn="feetype" confirmRefresh="false" confirmDelete="false"> 
      <column name="feetype" type="String" xid="column21"/>  
      <column name="fee" type="String" xid="column22"/>  
      <column name="remark" type="String" xid="column23"/>  
      <column name="feeTypeM" type="String" xid="xid17"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="depDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/department.w" onReceive="depDialogReceive" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="periodDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/period.w" onReceive="periodDialogReceive" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="personDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/person.w" forceRefreshOnOpen="true" onReceive="personDialogReceive"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="万用申请单添加"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">万用申请单添加</div>  
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
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:80px;"><![CDATA[主题：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.infoData.ref(&quot;title&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[申请类型：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select1" bind-ref="$model.infoData.ref(&quot;type&quot;)"
                  bind-options="typeList" bind-optionsValue="id" bind-optionsLabel="title"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit16"> 
                <label class="x-label" xid="label16" style="width:80px;"><![CDATA[申请内容：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.infoData.ref(&quot;neirong&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[涉及费用：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="CData" bind-itemsetValue="ref(&quot;id&quot;)"
                  bind-itemsetLabel="ref(&quot;text&quot;)" style="color: #FA7922;" onChange="radioGroup1Change"
                  bind-ref="$model.infoData.ref(&quot;iscost&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div xid="cosrDiv" style="display:none"> 
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row6" style="background-color:white;"> 
          <div class="x-col" xid="col1"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit3"> 
              <label class="x-label" xid="label3" style="width:80px;"><![CDATA[部门：]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="depInput" bind-click="depInputClick" bind-ref="$model.infoData.ref(&quot;bmm&quot;)"/> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit5"> 
              <label class="x-label" xid="label5" style="width:80px;"><![CDATA[考核期：]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="periodInput" bind-click="input4Click" bind-ref="$model.infoData.ref(&quot;kaohem&quot;)"/> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit8"> 
              <label class="x-label" xid="label8" style="width:80px;"><![CDATA[支付方式：]]></label>  
              <select component="$UI/system/components/justep/select/select" class="form-control x-edit"
                xid="select2" bind-ref="$model.infoData.ref(&quot;zhifu&quot;)" bind-options="payTypeList"
                bind-optionsValue="id" bind-optionsLabel="title"/> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit9"> 
              <label class="x-label" xid="label9" style="width:80px;"><![CDATA[收款人：]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input6" bind-ref="$model.infoData.ref(&quot;shoukuanm&quot;)" bind-click="input6Click"/> 
            </div> 
          </div> 
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row7" style="background-color:white;"> 
          <div class="x-col" xid="col7"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default3"
              label="添加费用" xid="button2" onClick="button2Click"> 
              <i xid="i2"/>  
              <span xid="span2">添加费用</span> 
            </a>  
            <span xid="span3"><![CDATA[（至少添加一条费用记录）]]></span> 
          </div> 
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row8" style="margin:0px;padding:0px;background-color:white;"> 
          <div class="x-col" xid="col10" style="margin:0px;padding:0px;"> 
            <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
              altRows="true" class="x-grid-no-bordered" xid="grid1" data="costData"
              width="100%" height="auto" showRowNumber="false" headerMenu="hideColumn,setColumn,groupColumn,saveLayout"
              directEdit="false" onCellRender="grid1CellRender"> 
              <columns xid="columns1"> 
                <column name="feetype" multiRowEditor="false" disableEditorDisplay="false"
                  editable="false" xid="column8" label="费用科目" resizable="false" align="center" width="100"/>  
                <column name="fee" editable="false" editor="input" xid="column15"
                  label="费用金额" resizable="false" align="center" width="60"/>  
                <column name="remark" editable="false" xid="column16"
                  label="费用说明" resizable="false" align="center" width="100"/>  
                <column width="40" name="handle" xid="column14" label="操作" align="center"
                  editable="false" resizable="false"> 
                  </column> 
              </columns> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col4"> 
          <span xid="span1">上传照片（最多录入6张。）</span>  
          <div class="imgline" xid="div74" id="newUniversalImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="newUniversalImg1">+
              <input id="uploadnewUniversal" type="file" class="upfile" accept="image/*,video/*;"
                capture="camera" xid="file1"/> 
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
    xid="windowReceiver1"/>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" dismissible="false"> 
    <div class="x-popOver-overlay" xid="div1"/>  
    <div class="x-popOver-content" xid="div2" style="background-color:white;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="background-color:white;"> 
        <div class="x-col" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit7"> 
            <label class="x-label" xid="label10" style="width:80px;"><![CDATA[费用科目：]]></label>  
            <select component="$UI/system/components/justep/select/select" class="form-control x-edit"
              xid="select4" bind-ref="$model.feeData.ref(&quot;feetype&quot;)" bind-options="feeTypeList"
              bind-optionsValue="id" bind-optionsLabel="title" bind-labelRef="$model.feeData.ref(&quot;feeTypeM&quot;)"/> 
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit10"> 
            <label class="x-label" xid="label1" style="width:80px;"><![CDATA[费用金额：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input4" bind-ref="$model.feeData.ref(&quot;fee&quot;)"/> 
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit11"> 
            <label class="x-label" xid="label7" style="width:80px;"><![CDATA[费用说明：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input3" bind-ref="$model.feeData.ref(&quot;remark&quot;)"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9"> 
        <div class="x-col" xid="col3" style="text-align:center"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="取消" xid="button3" style="width:100%;" onClick="button3Click"> 
            <i xid="i3"/>  
            <span xid="span6">取消</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col9" style="text-align:center"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="提交" xid="button5" style="width:100%;" onClick="button5Click"> 
            <i xid="i5"/>  
            <span xid="span7">提交</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
