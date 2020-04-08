<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="GoodsData" idColumn="cp_id"> 
      <data xid="default1">[{"id":"1","col1":"沙田柚","col2":"正常","col3":"300","col4":"元/个","col5":"无"},{"id":"2","col1":"椰子冻","col2":"正常","col3":"200","col4":"元/个"},{"id":"3","col1":"大肉粽","col2":"异常","col3":"100","col4":"元/个","col5":"送达方是个个人"}]</data>  
      <column name="cp_id" type="String" xid="xid1"/>  
      <column name="unit" type="String" xid="xid2"/>  
      <column name="jcqk_zt" type="String" xid="xid3"/>  
      <column name="jcqk_jg" type="String" xid="xid4"/>  
      <column name="jcqk_bz" type="String" xid="xid5"/>  
      <column name="pro_name" type="String" xid="xid6"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="statesData" idColumn="id"> 
      <column name="id" type="String" xid="xid7"/>  
      <column name="states" type="String" xid="xid8"/>  
      <data xid="default2">[{"id":"1","states":"正常"},{"id":"2","states":"异常"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/barcodeAdd.w" onClose="editDialogClose" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="产品检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">产品检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="58"> 
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11"/>  
            <div class="x-col" xid="col12"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="填 写" xid="button4" style="width:100%;" onClick="button4Click"> 
                <i xid="i5"/>  
                <span xid="span6">填 写</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div> 
        </div>  
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF6BC6CD4000012E3B1F9E14A42AA0"
          style="background-size: cover; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" style="background-color:white;"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="GoodsData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="border-Two"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row8"> 
                      <div class="col col-xs-12" xid="col18"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit7"> 
                          <label class="x-label font-One" xid="label6" style="width:80px;">产品：</label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit font-One" xid="output3" bind-ref="ref(&quot;pro_name&quot;)"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col14"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit8"> 
                          <label class="x-label" xid="label8" style="width:80px;">状态：</label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-edit" xid="output6" bind-ref="ref(&quot;jcqk_zt&quot;)" onRender="output6Render"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col21"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit6"> 
                          <label class="x-label" xid="label7" style="width:80px;"><![CDATA[价格：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            xid="output5" bind-ref="ref(&quot;jcqk_jg&quot;)" class="x-edit"
                            onRender="output5Render"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col6"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit4"> 
                          <label class="x-label" xid="label4" style="width:80px;">备注：</label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output4" bind-ref="ref(&quot;jcqk_bz&quot;)"/> 
                        </div> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row5"> 
                      <div class="x-col" xid="col5"/>  
                      <div class="x-col" xid="col6" style="text-align:right;"> 
                        <div component="$UI/system/components/justep/button/buttonGroup"
                          class="btn-group" tabbed="true" xid="buttonGroup1"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link" label="编辑" xid="button3" icon="linear linear-pencil"
                            style="color:#000000;" onClick="button3Click"> 
                            <i xid="i4" class="linear linear-pencil"/>  
                            <span xid="span5">编辑</span> 
                          </a> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
            </div> 
          </div> 
        </div>  
        </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="editDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/editGoodsCheck.w" forceRefreshOnOpen="true"
    onClose="editDialogClose"/>
</div>
