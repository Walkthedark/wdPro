<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <data xid="default2">[]</data>  
      <column name="id" type="String" xid="column9"/>  
      <column name="title" type="String" xid="column10"/>  
      <column name="kaohe" type="String" xid="column1"/>  
      <column name="jrbm" type="String" xid="column2"/>  
      <column name="payway" type="String" xid="column3"/>  
      <column name="reason" type="String" xid="column4"/>  
      <column name="kaohem" type="String" xid="xid8"/>  
      <column name="jrbmm" type="String" xid="xid9"/>  
      <column name="paywaym" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"是"},{"id":"1","text":"否"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="costData" idColumn="id" confirmDelete="false" confirmRefresh="false"> 
      <column name="id" type="String" xid="xid3"/>  
      <column name="feis" type="String" xid="xid4"/>  
      <column name="start" type="String" xid="xid5"/>  
      <column name="end" type="String" xid="xid6"/>  
      <column name="chufa" type="String" xid="xid7"/>  
      <column name="mudi" type="String" xid="xid11"/>  
      <column name="remark" type="String" xid="xid12"/>  
      <column name="jxs" type="String" xid="xid13"/>  
      <column name="feiid" type="String" xid="xid14"/>  
      <column name="feim" type="String" xid="xid15"/>  
      <column name="jxsm" type="String" xid="xid16"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="payTypeList" idColumn="id"> 
      <column name="id" type="String" xid="column7"/>  
      <column name="title" type="String" xid="column6"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="depDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/department.w" onReceive="depDialogReceive"
    forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="periodDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/period.w" onReceive="periodDialogReceive"
    forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dailyCostNewInfo.w" forceRefreshOnOpen="true"
    onReceive="infoDialogReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="日常费用报销申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">日常费用报销申请</div>  
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
                <label class="x-label" xid="label6" style="width:125px;"><![CDATA[报销单主题：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.infoData.ref(&quot;title&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:125px;"><![CDATA[报销归入考核期：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="periodInput" bind-click="input4Click" bind-ref="$model.infoData.ref(&quot;kaohem&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:125px;"><![CDATA[费用计入部门：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="depInput" bind-click="depInputClick" bind-ref="$model.infoData.ref(&quot;jrbmm&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:125px;"><![CDATA[支付方式：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-ref="$model.infoData.ref(&quot;payway&quot;)"
                  bind-options="payTypeList" bind-optionsValue="id" bind-optionsLabel="title"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit16"> 
                <label class="x-label" xid="label16" style="width:125px;"><![CDATA[报销事由：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.infoData.ref(&quot;reason&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"
        style="background-color:white;"> 
        <div class="x-col" xid="col1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="添加明细" xid="button3" onClick="button3Click"> 
            <i xid="i3"/>  
            <span xid="span6">添加明细</span> 
          </a> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8"
        style="margin:0px;padding:0px;background-color:white;"> 
        <div class="x-col" xid="col10" style="margin:0px;padding:0px;"> 
          <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
            altRows="true" class="x-grid-no-bordered" xid="grid1" data="costData"
            width="100%" height="auto" showRowNumber="false" headerMenu="hideColumn,setColumn,groupColumn,saveLayout"
            directEdit="false" onCellRender="grid1CellRender"> 
            <columns xid="columns1"> 
              <column name="feim" multiRowEditor="false" disableEditorDisplay="false"
                editable="false" xid="column11" label="费用科目" resizable="false" align="center"
                width="100"/>  
              <column name="feis" editable="false" xid="column16" label="报销金额(元)"
                resizable="false" align="center" width="100"/>  
              <column name="remark" editable="false" editor="input" xid="column15"
                label="费用说明" resizable="false" align="center" width="60"/>  
              <column width="40" name="handle" xid="column14" label="操作" align="center"
                editable="false" resizable="false"/> 
            </columns> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col4"> 
          <span xid="span1">上传照片（最多录入6张。）</span> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col5"> 
          <div class="imgline" xid="div74" id="newDailyCostImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="newDailyCostImg1">+
              <input id="uploadnewDailyCost" type="file" class="upfile" accept="image/*,video/*;"
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
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1"></span></div>
