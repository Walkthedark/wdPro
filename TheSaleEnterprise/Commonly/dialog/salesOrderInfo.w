<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"安顺市新城区副食品经销部","col2":"李四","col3":"东南大区经理","col4":"2018021700001","col5":"增值税发票","col6":"没有优惠","col7":"2018-02-17","col8":"../TheSaleEnterprise/Commonly/img/006.png"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="bm" type="String" xid="xid2"/>  
      <column name="sqr" type="String" xid="xid3"/>  
      <column name="zw" type="String" xid="xid4"/>  
      <column name="sn" type="String" xid="xid5"/>  
      <column name="fpType" type="String" xid="xid6"/>  
      <column name="yhPolicy" type="String" xid="xid7"/>  
      <column name="sqrq" type="String" xid="xid8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="spData" idColumn="id"> 
      <column name="id" type="String" xid="xid19"/>  
      <column name="name" type="String" xid="xid20"/>  
      <column name="time" type="String" xid="xid21"/>  
      <column name="type" type="String" xid="xid22"/>  
      <column name="content" type="String" xid="xid23"/>  
      <data xid="default2">[{"id":"1","name":"张三","time":"2018-01-08","type":"0","content":"什么都没有"},{"id":"2","name":"李四","time":"2018-01-08","type":"1","content":"请填写正确网点"},{"id":"3","name":"张三","time":"2018-01-08","type":"2","content":"提交"},{"id":"4","name":"张三","time":"2018-01-08","type":"3","content":"执行活动"},{"id":"5","name":"老张","time":"2018-01-08","type":"4","content":"抄送"}]</data> 
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
      <data xid="default3">[{"id":"1","col1":"椰子冻","col2":"10","col3":"10","col4":"0","col5":"1000","col6":"销售"},{"id":"2","col1":"叫花鸡","col2":"10","col3":"13","col4":"0","col5":"1300","col6":"销售"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="销售订单申请查看视图"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">销售订单申请查看视图</div>  
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
                    class="x-output font-One" xid="output1" bind-ref="&quot;（&quot;+$model.CData.val(&quot;sqr&quot;) + &quot;）的销售订单申请&quot;"/> 
                </div>  
                <div class="col col-xs-12" xid="col11"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output5" bind-ref="$model.CData.val(&quot;sqr&quot;) + &quot;(&quot;+$model.CData.val(&quot;bm&quot;)+&quot;)&quot;"/> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label2" style="width: 80px;"><![CDATA[订单编号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output8" bind-ref="$model.CData.ref(&quot;sn&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col3"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2"> 
            <label class="x-label" xid="label3" style="width: 80px;"><![CDATA[发票类型：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output9" bind-ref="$model.CData.ref(&quot;fpType&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit3"> 
            <label class="x-label" xid="label4" style="width: 80px;"><![CDATA[优惠政策：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output10" bind-ref="$model.CData.ref(&quot;yhPolicy&quot;)"/> 
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col13"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4"> 
            <label class="x-label" xid="label5" style="width: 80px;"><![CDATA[申请时间：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output11" bind-ref="$model.CData.ref(&quot;sqrq&quot;)"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
        <div class="x-col" xid="col9"> 
          <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
            altRows="true" class="x-grid-no-bordered" xid="grid1" data="orderData"
            width="100%" height="auto" headerMenu="hideColumn,setColumn,groupColumn,saveLayout"
            multiselectWidth="-1" onReload="grid1Reload" useFooter="true"> 
            <columns xid="columns1"> 
              <column width="50" name="col6" xid="column6" label="类型" align="center"/>  
              <column width="100" name="col1" xid="column1" label="产品名称" align="center"/>  
              <column width="60" name="col2" xid="column2" label="订货数量" align="center"/>  
              <column width="60" name="col4" xid="column4" label="搭赠数量" align="center"/>  
              <column width="100" name="col5" xid="column5" label="金额" align="center"/> 
            </columns>  
            <groupHeaders xid="default4"> 
              <groupHeader xid="default5"> 
                <item columnCount="5" startColumn="col6" titleText="成品销售单" xid="default6"/> 
              </groupHeader> 
            </groupHeaders> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row26"
        style="border-bottom:3px solid #cccccc;margin-left:2%;width:96%;"> 
        <div class="x-col" xid="col62"> 
          <label xid="label1"><![CDATA[审批意见]]></label> 
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
                    class="x-output" xid="output6" bind-ref="ref(&quot;name&quot;)"/> 
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
                        class="x-output" xid="output21" bind-ref="ref(&quot;type&quot;)" onRender="output21Render"
                        style="float:left;"/> 
                    </div>  
                    <div class="col col-xs-12" xid="col66"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output22" bind-ref="ref(&quot;time&quot;)"/> 
                    </div>  
                    <div class="col col-xs-12" xid="col67"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output23" bind-ref="ref(&quot;content&quot;)"/> 
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
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
