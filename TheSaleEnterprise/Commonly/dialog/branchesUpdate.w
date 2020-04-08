<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"经销商"},{"id":"1","text":"配送商"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
      <column name="id" type="String" xid="xid10"/>  
      <column name="col1" type="String" xid="xid11"/>  
      <column name="col2" type="String" xid="xid12"/>  
      <column name="col3" type="String" xid="xid13"/>  
      <column name="col4" type="String" xid="xid14"/>  
      <column name="col5" type="String" xid="xid15"/>  
      <column name="col6" type="String" xid="xid16"/>  
      <data xid="default3">[{"id":"1","col1":"椰子冻","col2":"1箱15袋","col3":"2元/袋","col4":"78.00","col5":"","col6":""},{"id":"2","col1":"叫花鸡","col2":"1箱15只","col3":"13元/只","col4":"195","col5":"","col6":""}]</data>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/branchesUpdateInfo.w"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="修改订单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">修改订单</div>  
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
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[网点：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output1" bind-ref="&quot;万家公园分店&quot;"/>
              </div>
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label7" style="width:80px;"><![CDATA[经销商：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4" bind-ref="&quot;金六福经销部&quot;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:80px;"><![CDATA[联系人：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input3" bind-ref="&quot;张三&quot;"/>
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:80px;"><![CDATA[电话：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input5" bind-ref="&quot;13888888888&quot;"/>
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label10" style="width:80px;"><![CDATA[地址：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea2" bind-ref="&quot;世纪大道11111&quot;"/>
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit12"> 
                <label class="x-label" xid="label12" style="width:115px;"><![CDATA[配送类型：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="CData" bind-itemsetValue="ref(&quot;id&quot;)"
                  bind-itemsetLabel="ref(&quot;text&quot;)" style="color: #FA7922;"/>
              </div>
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit11"> 
                <label class="x-label" xid="label11" style="width:80px;">备注：</label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea3"/>
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col4"> 
          <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
            altRows="true" class="x-grid-no-bordered" xid="grid1" data="orderData"
            height="auto" headerMenu="hideColumn,setColumn,groupColumn,saveLayout"
            multiselectWidth="-1" onReload="grid1Reload" useFooter="true" width="100%"> 
            <columns xid="columns1"> 
              <column width="100" name="col1" xid="column1" label="产品名称" align="center"/>  
              <column width="60" name="col2" xid="column2" label="产品数量" align="center"/>  
              <column width="100" name="col3" xid="column3" label="供货价"/>
              <column width="110" name="col4" xid="column4" label="总额（单位：元）" align="center"/> 
            </columns>  
            <groupHeaders xid="default2"/>
          </div>
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default2 btn-only-label"
          label="修 改 明 细" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">修 改 明 细</span> 
        </a> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="提 交" xid="button2" style="width:100%;"> 
          <i xid="i2"/>  
          <span xid="span2">提 交</span>
        </a> 
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
