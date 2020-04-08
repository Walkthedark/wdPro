<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <title class="color_css">客户列表</title>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="depReceiver" style="top:16px;left:130px;"/>  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:28px;left:371px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="depData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"人事部"},{"id":"2","col1":"销售部"},{"id":"3","col1":"采购部"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="sn" type="String" xid="xid3"/>  
      <column name="shr" type="String" xid="xid4"/>  
      <column name="shdh" type="String" xid="xid5"/>  
      <column name="shdz" type="String" xid="xid6"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cData" idColumn="temp" autoNew="true"> 
      <column name="temp" type="String" xid="xid7"/>  
      <column name="select" type="String" xid="xid8"/>  
      <column name="selectM" type="String" xid="xid9"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="clientData" idColumn="client_id">
      <column name="client_id" type="String" xid="xid10"/>  
      <column name="client_name" type="String" xid="xid11"/>  
      <column name="client_sn" type="String" xid="xid12"/>  
      <column name="client_source" type="String" xid="xid13"/>  
      <column name="department_name" type="String" xid="xid14"/>  
      <column name="category" type="String" xid="xid15"/>  
      <column name="level_name" type="String" xid="xid16"/>  
      <column name="mobile" type="String" xid="xid17"/>  
      <column name="name" type="String" xid="xid18"/>  
      <column name="salesman_name" type="String" xid="xid19"/>  
      <column name="user_name" type="String" xid="xid20"/>  
      <column name="area" type="String" xid="xid21"/>  
      <column name="level_id" type="String" xid="xid22"/>  
      <column name="address" type="String" xid="xid23"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="110"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="选择客户" style="background-color:#00BFFF;"> 
        <div class="x-titlebar-left" xid="left2"></div>  
        <div class="x-titlebar-title" xid="title2">选择客户</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
        <div class="x-col" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input1" placeHolder="请输入客户名称/收货人/收货手机号" bind-ref="$model.cData.ref(&quot;temp&quot;)"/>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              label="查询" xid="button3" icon="linear linear-magnifier" onClick="button3Click"
              style="background-color:#00BFFF;color:white"> 
              <i xid="i3" class="linear linear-magnifier"/>  
              <span xid="span2">查询</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div xid="div2">
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list1" data="clientData"> 
          <ul class="x-list-template" xid="listTemplateUl1"> 
            <li xid="li1" class="border-Two" bind-click="li1Click"> 
              <div xid="div1" class="list-group-item" style="padding:7px 5px 5px 5px;">
                <div class="media" xid="media1"> 
                  <div class="media-body" xid="mediaBody1"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row1"> 
                      <div class="x-col " xid="col1">
                        <span xid="span3" bind-text="val(&quot;client_name&quot;)"><![CDATA[上海市浦东新区]]></span>
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-default btn-xs " label="三级代理" xid="button4"
                          bind-text=" val(&quot;level_name&quot;)" bind-visible="val(&quot;level_name&quot;) != null"
                          style="border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#00BFFF #00BFFF #00BFFF #00BFFF;background-color:white;color:#00BFFF"> 
                          <i xid="i4"/>  
                          <span xid="span5">三级代理</span>
                        </a>
                        <h5 xid="h51" style="color:#989898;"><![CDATA[]]>  
                          <span xid="span1" bind-text="val(&quot;category&quot;)"><![CDATA[]]></span>  
                          <span xid="span4"><![CDATA[|]]></span>  
                          <span xid="span6" bind-text="val(&quot;client_id&quot;)"><![CDATA[]]></span>
                        </h5>
                      </div>  
                      <div class="x-col x-col-10" xid="col4"/>
                    </div> 
                  </div> 
                </div>
              </div>
            </li> 
          </ul> 
        </div>
      </div>
    </div> 
  </div> 
</div>
