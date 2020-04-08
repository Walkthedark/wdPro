<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:455px;left:656px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="khData" idColumn="sskh" limit="-1"> 
      <column name="sskh" type="String" xid="xid9"/>  
      <column name="sskhmc" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="lxData" idColumn="id" limit="-1"> 
      <column name="sskh" type="String" xid="xid11"/>  
      <column name="sskhmc" type="String" xid="xid12"/>  
      <column name="khlx" type="String" xid="xid13"/>  
      <column name="xm" type="String" xid="xid14"/>  
      <column name="sjh" type="String" xid="xid15"/>  
      <column name="yx" type="String" xid="xid16"/>  
      <column name="id" type="String" xid="xid17"/>  
      <column name="cz" type="String" xid="xid18"/>  
      <column name="dh" type="String" xid="xid19"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="telData" idColumn="tel" autoNew="true"> 
      <column name="tel" type="String" xid="xid20"></column>
  <column name="mail" type="String" xid="xid21"></column>
  <column name="xm" type="String" xid="xid22"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="企业通讯录"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">企业通讯录</div>  
        <div class="x-titlebar-right reverse" xid="right2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="全选" xid="button3" onClick="" style="display:none;"> 
            <i xid="i3"/>  
            <span xid="span3">全选</span> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <input component="$UI/system/components/justep/input/input" class="form-control"
        xid="input1" placeHolder="请输入姓名查询"/>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list2" data="khData"> 
        <ul class="x-list-template" xid="listTemplateUl2"> 
          <li xid="li2"> 
            <div component="$UI/system/components/justep/controlGroup/controlGroup"
              class="x-control-group" title="title" xid="YHcontrolGroup" collapsible="true"
              collapsed="true"> 
              <div class="x-control-group-title" xid="controlGroupTitle1"> 
                <span xid="titleSpan" bind-text="ref(&quot;sskhmc&quot;)"><![CDATA[]]></span> 
              </div>  
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row3"> 
                <div class="col col-xs-12" xid="col7"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list3" data="lxData" filter="val(&quot;sskh&quot;) == $row.val(&quot;sskh&quot;)"
                    autoLoad="true"> 
                    <ul class="x-list-template" xid="listTemplateUl2"> 
                      <li xid="li2" bind-click="li2Click"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output font-One" xid="output2" bind-ref="ref(&quot;xm&quot;)"/> 
                      </li> 
                    </ul> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1"> 
    <div class="x-popOver-overlay" xid="div5"/>  
    <div class="x-popOver-content" xid="div6" style="width:90%;left:5%;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="text-align:center;"> 
        <div class="x-col" xid="col2"> 
          <img src="$UI/TheSaleEnterprise/main/Img/head.png" alt="" xid="image2"
            style="border:5px solid #8FC41C;border-radius:50px;width:100px;"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="border-radius:25px 25px 0px 0px;text-align:center;background-color:#8FC41C;height:100px;margin-top:-50px;"> 
        <div class="x-col" xid="col4"> 
          <span xid="span5" style="margin-top:50px;color:#ffffff;font-size:16px;font-weight:bold;display:block;" bind-text='$model.telData.val("xm")'><![CDATA[]]></span> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="text-align:center;border-radius:0px 0px 25px 25px;background-color:white;"> 
        <div class="x-col" xid="col5"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1" style="border-bottom:3px solid #8FC41C;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon"
              label="button" xid="button2" icon="icon-android-call" style="color:#8FC41C;"> 
              <i xid="i4" class="icon-android-call"/>  
              <span xid="span6"/> 
            </a>  
            <div class="x-edit" xid="div7"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output3" bind-ref="$model.telData.ref(&quot;tel&quot;)" style="margin-top:-12px;text-align:left;"/> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon"
              label="button" xid="button4" icon="icon-android-mail" style="color:#8FC41C;"> 
              <i xid="i5" class="icon-android-mail"/>  
              <span xid="span7"/> 
            </a>  
            <div class="x-edit" xid="div8"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output4" bind-ref="$model.telData.ref(&quot;mail&quot;)" style="margin-top:-12px;text-align:left;"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
