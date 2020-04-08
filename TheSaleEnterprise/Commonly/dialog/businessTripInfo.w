<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="bm" type="String" xid="xid2"/>  
      <column name="cuser_name" type="String" xid="xid3"/>  
      <column name="zw" type="String" xid="xid4"/>  
      <column name="title" type="String" xid="xid5"/>  
      <column name="no" type="String" xid="xid6"/>  
      <column name="traveltype" type="String" xid="xid7"/>  
      <column name="target" type="String" xid="xid8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="spData" idColumn="USERNAME"> 
      <column name="USERNAME" type="String" xid="xid19"/>  
      <column name="MEMO" type="String" xid="xid20"/>  
      <column name="COMMENTS" type="String" xid="xid21"/>  
      <column name="ACTIONTIME" type="String" xid="xid22"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="XData" idColumn="start"> 
      <column name="start" type="String" xid="column1"/>  
      <column name="end" type="String" xid="column2"/>  
      <column name="chufa" type="String" xid="column3"/>  
      <column name="mudi" type="String" xid="column4"/>  
      <column name="fangshi" type="String" xid="column5"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="出差申请详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">出差申请详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row row-padding border-Two"
        xid="row1"> 
        <div class="col col-xs-12 col-padding" xid="col1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2"> 
            <div class="x-col x-col-25" xid="col7" style="margin:auto;text-align:center;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt=""
                xid="image1" class="wh" bind-attr-src=" "/> 
            </div>  
            <div class="x-col" xid="col8"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row3"> 
                <div class="col col-xs-12" xid="col10"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-One" xid="output1" bind-ref="$model.CData.val(&quot;cuser_name&quot;)+'的出差申请'"/> 
                </div>  
                <div class="col col-xs-12" xid="col11"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output5" bind-ref="$model.CData.val(&quot;cuser_name&quot;) + &quot;(&quot;+$model.CData.val(&quot;bm&quot;)+&quot;)&quot;"/> 
                </div>  
                <div class="col col-xs-12" xid="col12"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output7" bind-ref="$model.CData.val(&quot;traveltype&quot;)"/> 
                </div> 
              </div> 
            </div>  
            </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label2" style="width: 80px;"><![CDATA[编号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output8" bind-ref="$model.CData.ref(&quot;no&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col3"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2"> 
            <label class="x-label" xid="label3" style="width: 80px;"><![CDATA[类型：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output9" bind-ref="$model.CData.ref(&quot;traveltype&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit3"> 
            <label class="x-label" xid="label4" style="width: 80px;"><![CDATA[目的：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output10" bind-ref="$model.CData.ref(&quot;target&quot;)"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="border-bottom:3px solid #cccccc;margin-left:2%;width:96%;"> 
        <div class="x-col" xid="col15"> 
          <label xid="label5" class="font-One"><![CDATA[行程]]></label> 
        </div>  
        <div class="x-col" xid="col14"/>  
        <div class="x-col" xid="col13"/> 
      </div>  
      <div xid="div1" class="border-Two"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list2" data="XData"> 
          <ul class="x-list-template" xid="listTemplateUl2"> 
            <li xid="li2"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row8"> 
                <div class="x-col" xid="col22"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit4"> 
                    <label class="x-label" xid="label6"><![CDATA[时间：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output12" bind-ref="val(&quot;start&quot;)+'~'+val(&quot;end&quot;)"/> 
                  </div> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row6"> 
                <div class="x-col" xid="col16" style="border-bottom:1px solid #cccccc"> 
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit5"> 
                    <label class="x-label" xid="label7"><![CDATA[地点：]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output2" bind-ref="val(&quot;chufa&quot;)+'至'+val(&quot;mudi&quot;)+'('+val(&quot;fangshi&quot;)+')'"/> 
                  </div> 
                </div> 
              </div> 
            </li> 
          </ul> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row26"
        style="border-bottom:3px solid #cccccc;margin-left:2%;width:96%;"> 
        <div class="x-col" xid="col62"> 
          <label xid="label1" class="font-One"><![CDATA[审批意见]]></label> 
        </div>  
        <div class="x-col" xid="col63"/>  
        <div class="x-col" xid="col64"/> 
      </div>  
      <div xid="div7"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list1" data="spData"> 
          <ul class="x-list-template" xid="listTemplateUl1"> 
            <li xid="li1"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                xid="row4"> 
                <div class="col col-xs-2" xid="col5"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output6" bind-ref="ref(&quot;USERNAME&quot;)"/> 
                </div>  
                <div class="col col-xs-1" xid="col68"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-lg btn-only-icon" label="button" xid="sp2"
                    icon="e-commerce e-commerce-quancha" style="margin-left:-15px;margin-top:-6px;color:#81C160;"> 
                    <i xid="i2" class="e-commerce e-commerce-quangou e-commerce-quancha"
                      bind-style="{color: val(&quot;type&quot;) == 1 ? '#FF8000' : '#81C160'}"
                      bind-css="{ 'e-commerce e-commerce-quancha':  val('type') == '1', 'e-commerce e-commerce-quangou':  val('type') != '1'}"/>  
                    <span xid="span40"/> 
                  </a> 
                </div>  
                <div class="col col-xs-8" xid="col6"> 
                  <div component="$UI/system/components/bootstrap/row/row"
                    class="row" xid="row27"> 
                    <div class="col col-xs-12" xid="col65"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output21" bind-ref="ref(&quot;MEMO&quot;)" onRender="output21Render"
                        style="float:left;"/> 
                    </div>  
                    <div class="col col-xs-12" xid="col66"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output22" bind-ref="ref(&quot;ACTIONTIME&quot;)"/> 
                    </div>  
                    <div class="col col-xs-12" xid="col67"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output23" bind-ref="ref(&quot;COMMENTS&quot;)"/> 
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
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/> 
</div>
