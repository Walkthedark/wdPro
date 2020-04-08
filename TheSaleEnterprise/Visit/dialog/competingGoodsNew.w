<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="net_id" type="String" xid="column10"/>  
      <column name="jp_id" type="String" xid="column1"/>  
      <column name="jpgg" type="String" xid="column2"/>  
      <column name="lsj" type="String" xid="column3"/>  
      <column name="sfcx" type="String" xid="column4"/>  
      <column name="jpms" type="String" xid="column5"/>  
      <column name="category" type="String" xid="column6"/>  
      <column name="col8" type="String" xid="column6"/>  
      <column name="hbr" type="String" xid="column7"/>  
      <column name="day" type="String" xid="column8"/>  
      <column name="competitor" type="String" xid="xid1"/>  
      <column name="category_id" type="String" xid="xid5"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeList" idColumn="id"> 
      <column name="id" type="String" xid="column11"></column>
  <column name="category_name" type="String" xid="column12"></column>
  <column name="category_no" type="String" xid="xid8"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="googdList" idColumn="id">
      <column name="id" type="String" xid="xid2"/>  
      <column name="c_name" type="String" xid="xid3"/>  
      <column name="format" type="String" xid="xid4"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id">
      <column name="id" type="String" xid="xid6"/>  
      <column name="type" type="String" xid="xid7"/>
    <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;是&quot;},{&quot;id&quot;:&quot;0&quot;,&quot;type&quot;:&quot;否&quot;}]</data></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="新增竞品"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">新增竞品</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col17"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4"> 
            <div class="col col-xs-12" xid="col15"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[竞品品类：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select1" bind-ref="$model.infoData.ref(&quot;category_id&quot;)"
                  bind-options="typeList" bind-optionsValue="id" bind-optionsLabel="category_name"
                  onChange="select1Change"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col16"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:80px;"><![CDATA[竞品：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-ref="$model.infoData.ref(&quot;jp_id&quot;)"
                  bind-options="googdList" bind-optionsValue="id" bind-optionsLabel="c_name" onChange="select2Change"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit13"> 
                <label class="x-label" xid="label14" style="width:80px;"><![CDATA[竞品规格]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output24" bind-ref="$model.infoData.ref(&quot;jpgg&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col14"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[零售价：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.infoData.ref(&quot;lsj&quot;)"/>  
                <span xid="span2"><![CDATA[元]]></span> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[是否促销：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="$model.CData"
                  bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;"
                  bind-ref='$model.infoData.ref("sfcx")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:80px;"><![CDATA[竞品描述]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref='$model.infoData.ref("jpms")'/> 
              </div> 
            </div> 
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
          <div class="imgline" xid="div74" id="newComGoodsImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="newComGoodsImg1">+
              <input id="uploadnewComGoods" type="file" class="upfile" accept="image/*,video/*;"
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
