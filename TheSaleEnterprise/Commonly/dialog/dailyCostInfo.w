<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"李四","col2":"东南大区","col3":"2018-02-17 14:00","col4":"2018021700001","col5":"上海消消乐有限公司","col6":"现金","col7":"2017-2月","col8":"../TheSaleEnterprise/Commonly/img/006.png"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="no" type="String" xid="xid2"/>  
      <column name="cuser" type="String" xid="xid3"/>  
      <column name="ctime" type="String" xid="xid4"/>  
      <column name="title" type="String" xid="xid5"/>  
      <column name="payway" type="String" xid="xid6"/>  
      <column name="payway_title" type="String" xid="xid7"/>  
      <column name="kaohe" type="String" xid="xid8"/>  
      <column name="kaohe_title" type="String" xid="xid9"/>  
      <column name="cuser_bm" type="String" xid="xid18"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="feeList" idColumn="did"> 
      <column name="did" type="String" xid="xid24"/>  
      <column name="feiid" type="String" xid="xid25"/>  
      <column name="feiid_title" type="String" xid="xid26"/>  
      <column name="feis" type="String" xid="xid27"/>  
      <column name="pizhunfeiyong" type="String" xid="xid28"/>  
      <column name="syr" type="String" xid="xid17"/>  
      <column name="remark" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="spData" idColumn="USERNAME"> 
      <column name="USERNAME" type="String" xid="xid20"/>  
      <column name="ACTIONTIME" type="String" xid="xid21"/>  
      <column name="COMMENTS" type="String" xid="xid22"/>  
      <column name="MEMO" type="String" xid="xid23"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="日常费用报销申请详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">日常费用报销申请详情</div>  
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
                xid="image1" class="wh"/> 
            </div>  
            <div class="x-col" xid="col8"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row3"> 
                <div class="col col-xs-12" xid="col10"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-One" xid="output1" bind-ref="$model.CData.val(&quot;cuser&quot;) + &quot;的日常费用申请&quot;"/> 
                </div>  
                <div class="col col-xs-12" xid="col11"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output5" bind-ref="$model.CData.val(&quot;cuser&quot;) + &quot;(&quot;+$model.CData.val(&quot;cuser_bm&quot;)+&quot;)&quot;"/> 
                </div>  
                <div class="col col-xs-12" xid="col12"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output7" bind-ref="$model.CData.ref(&quot;ctime&quot;)"/> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label2" style="width: 95px;"><![CDATA[编号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output8" bind-ref="$model.CData.ref(&quot;no&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col3" style="display:none"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2"> 
            <label class="x-label" xid="label3" style="width: 95px;"><![CDATA[费用归属：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output9" bind-ref="$model.CData.ref(&quot;col5&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit3"> 
            <label class="x-label" xid="label4" style="width: 95px;"><![CDATA[支付方式：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output10" bind-ref="$model.CData.ref(&quot;payway_title&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col13"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4"> 
            <label class="x-label" xid="label5" style="width: 95px;"><![CDATA[归入考核期：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output11" bind-ref="$model.CData.ref(&quot;kaohe_title&quot;)"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"> 
        <div class="x-col" xid="col15"> 
          <label xid="label6" class="font-One"><![CDATA[报销明细]]></label> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
        <div class="x-col" xid="col14"> 
          <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
            altRows="true" class="x-grid-no-bordered" xid="grid1" data="feeList" height="auto"
            headerMenu="hideColumn,setColumn,groupColumn,saveLayout" multiselectWidth="-1"
            onReload="grid1Reload" useFooter="true" width="100%" directEdit="false"> 
            <columns xid="columns1"> 
              <column name="feiid_title" xid="column2" label="费用科目" align="center"/>  
              <column name="feis" xid="column3" label="报销金额（元）" align="center"/>  
              <column name="remark" xid="column1" label="费用说明" align="center"/> 
            </columns>  
            <groupHeaders xid="default4"/> 
          </div> 
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
