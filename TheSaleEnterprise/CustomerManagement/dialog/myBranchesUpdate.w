<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:213px;left:477px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="netLevel" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="title" type="String" xid="xid2"/>  
      <data xid="default3">[]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="netData" idColumn="id" autoNew="true"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data>  
      <column name="id" type="String" xid="xid1"></column>
  <column name="sn" type="String" xid="column1"></column>
  <column name="net" type="String" xid="xid3"></column>
  <column name="jxs" type="String" xid="xid4"></column>
  <column name="sys" type="String" xid="xid5"></column>
  <column name="mysn" type="String" xid="xid6"></column>
  <column name="cat" type="String" xid="xid7"></column>
  <column name="grade" type="String" xid="xid8"></column>
  <column name="iskey" type="String" xid="xid9"></column>
  <column name="guide" type="String" xid="xid10"></column>
  <column name="area" type="String" xid="xid11"></column>
  <column name="cashiers" type="String" xid="xid12"></column>
  <column name="shelf_num" type="String" xid="xid13"></column>
  <column name="addr" type="String" xid="xid14"></column>
  <column name="breif" type="String" xid="xid15"></column>
  <column name="starttime" type="String" xid="xid16"></column>
  <column name="lianxiren" type="String" xid="xid17"></column>
  <column name="jinchang" type="String" xid="xid18"></column>
  <column name="competitor" type="String" xid="xid19"></column>
  <column name="dg" type="String" xid="xid20"></column>
  <column name="name" type="String" xid="xid21"></column>
  <column name="phone" type="String" xid="xid22"></column></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="type" idColumn="id">
   <column name="id" type="String" xid="column2"></column>
  <column name="type" type="String" xid="column3"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;type&quot;:&quot;是&quot;},{&quot;id&quot;:&quot;0&quot;,&quot;type&quot;:&quot;不是&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="netType" idColumn="id">
   <column name="id" type="String" xid="column4"></column>
   <column name="title" type="String" xid="column5"></column>
   <data xid="default4">[]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="网点修改"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">网点修改</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div id="container" xid="div1" style="display:none;"/>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col2"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2"> 
            <div class="col col-xs-12" xid="col4"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:110px;"><![CDATA[网点编号：]]></label>  
                 
              <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='$model.netData.ref("sn")'></div></div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit16"> 
                <label class="x-label" xid="label15" style="width:110px;">门头照：</label>  
                <div class="x-edit" xid="div4"> 
                  <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png"
                    alt="" xid="image3" style="width:80px;"/> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit10"> 
                <label class="x-label" xid="label10" style="width:110px;"><![CDATA[所属系统：]]></label>  
                 
              <div class="x-edit" xid="div2"> 
                  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='$model.netData.ref("sys")'/></div></div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:110px;"><![CDATA[系统自编店号：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref='$model.netData.ref("mysn")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit11"> 
                <label class="x-label" xid="label11" style="width:110px;"><![CDATA[营销城市：]]></label>  
                <div class="x-edit" xid="div5"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3"></div></div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:110px;"><![CDATA[网点类型：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-ref='$model.netData.ref("cat")' bind-options="netType" bind-optionsValue="id" bind-optionsLabel="title"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit12"> 
                <label class="x-label" xid="label12" style="width:110px;"><![CDATA[重点网点：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="type"
                  bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;"
                  bind-ref='$model.netData.ref("iskey")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit13"> 
                <label class="x-label" xid="label13" style="width:110px;"><![CDATA[导购网点：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup2" bind-itemset="type"
                  bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;"
                  bind-ref='$model.netData.ref("guide")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit border-Two" xid="labelEdit5"> 
                <label class="x-label" xid="label5"><![CDATA[店面面积（平方米）：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4" bind-ref='$model.netData.ref("area")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:110px;"><![CDATA[收银台数：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input3" bind-ref='$model.netData.ref("cashiers")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit border-Two" xid="labelEdit14"> 
                <label class="x-label" xid="label14"><![CDATA[同品类货架节数（各产品）：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref='$model.netData.ref("shelf_num")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit15"> 
                <label class="x-label" xid="label16" style="width:110px;"><![CDATA[开店日期：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input5" dataType="Date" bind-ref='$model.netData.ref("starttime")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit17"> 
                <label class="x-label" xid="label17" style="width:110px;"><![CDATA[网点等级：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select1" bind-ref='$model.netData.ref("grade")' bind-options="netLevel" bind-optionsValue="id" bind-optionsLabel="title"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit18"> 
                <label class="x-label" xid="label18" style="width:110px;"><![CDATA[定位地址：]]></label>  
                <div class="x-edit" xid="div6"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default2" label="刷新定位地址" xid="button9" onClick="map"> 
                    <i xid="i8"/>  
                    <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image2"
                      style="width:15px;"/>  
                    <span xid="span9">刷新定位地址</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default2" label="复制为经销商地址" xid="button8" style="margin-left:10px;" onClick="button8Click"> 
                    <i xid="i9"/>  
                    <span xid="span10">复制为经销商地址</span> 
                  </a> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:110px;"><![CDATA[网点地址：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="address" bind-ref='$model.netData.ref("addr")'/> 
              </div>  
              <span xid="span1" style="display:block;" class="border-Two font-Three"><![CDATA[提示：如果系统定位信息不准确，请输入正确的地址信息。]]></span>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit20"> 
                <label class="x-label" xid="label20" style="width:110px;"><![CDATA[联系人：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input6" bind-ref='$model.netData.ref("name")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit21"> 
                <label class="x-label" xid="label21" style="width:110px;"><![CDATA[手机：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input7" bind-ref='$model.netData.ref("phone")'/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30 border-Two" xid="labelEdit19"> 
                <label class="x-label" xid="label19" style="width:110px;"><![CDATA[备注：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref='$model.netData.ref("breif")'/> 
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
