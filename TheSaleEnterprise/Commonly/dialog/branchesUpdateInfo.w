<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:10px;left:10px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <data xid="default1">[{"id":"1","col1":"椰子冻","col2":"元/箱","col3":"箱","col4":"个"},{"id":"2","col1":"叫花鸡","col2":"元/桶","col3":"桶","col4":"只"},{"id":"3","col1":"条头糕","col2":"元/袋","col3":"袋","col4":"个"}]</data>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加订单明细"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">添加订单明细</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col7">
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit7"> 
            <label class="x-label font-One" xid="label7" style="text-align:right;"><![CDATA[添加产品：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input9"/>
          </div>
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="orderData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="border-Two"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row8"> 
                  <div class="col col-xs-12" xid="col5" style="text-align:right;">
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-default3" label="删除" xid="button2"> 
                      <i xid="i2"/>  
                      <span xid="span1">删除</span>
                    </a>
                  </div>
                  <div class="col col-xs-12" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit2"> 
                      <label class="x-label font-One" xid="label2" style="width:80px;"><![CDATA[产品：]]></label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit font-One" xid="output1" bind-ref="ref(&quot;col1&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col21"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit4"> 
                      <label class="x-label" xid="label4" style="width:80px;"><![CDATA[供货价：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input2" style="width:30px;"/>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output5" bind-ref="ref(&quot;col2&quot;)"/> 
                    </div>
                  </div>  
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label3" style="width:80px;"><![CDATA[订单数量：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input3" style="width:30px;"/>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output2" bind-ref="ref(&quot;col3&quot;)"/>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input5"/>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output3" bind-ref="ref(&quot;col4&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col2"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit6"> 
                      <label class="x-label" xid="label6" style="width:80px;"><![CDATA[促销活动：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input8" style="width:30px;"/> 
                    </div>
                  </div>  
                  <div class="col col-xs-12" xid="col4"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit1"> 
                      <label class="x-label" xid="label1" style="width:80px;"><![CDATA[产品备注：]]></label>  
                      <textarea component="$UI/system/components/justep/textarea/textarea"
                        class="form-control x-edit" xid="textarea1"/> 
                    </div>
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"
        style="padding:20px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="保 存" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">保 存</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
