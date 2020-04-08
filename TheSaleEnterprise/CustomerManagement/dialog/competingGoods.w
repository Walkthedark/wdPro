<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="col1" type="String" xid="column10"/>  
      <column name="col2" type="String" xid="column1"/>  
      <column name="col3" type="String" xid="column2"/>  
      <column name="col4" type="String" xid="column3"/>  
      <column name="col5" type="String" xid="column4"/>  
      <column name="col6" type="String" xid="column5"/>  
      <column name="col7" type="String" xid="column6"/>  
      <column name="col8" type="String" xid="column6"/>  
      <column name="col9" type="String" xid="column7"/>  
      <column name="co20" type="String" xid="column8"/>  
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;椰子冻&quot;,&quot;col2&quot;:&quot;休闲食品&quot;,&quot;col3&quot;:&quot;是&quot;,&quot;col4&quot;:&quot;150g&quot;,&quot;col5&quot;:&quot;36元&quot;,&quot;col6&quot;:&quot;什么鬼备注&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;,&quot;col9&quot;:&quot;&quot;,&quot;co20&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;叫花鸡&quot;,&quot;col2&quot;:&quot;熟食&quot;,&quot;col3&quot;:&quot;否&quot;,&quot;col4&quot;:&quot;500g&quot;,&quot;col5&quot;:&quot;48元&quot;}]</data></div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/competingGoodsNew.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/orderInfo.w" forceRefreshOnOpen="true"/>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="updateDialog" src="$UI/TheSaleEnterprise/Visit/dialog/competingGoodsUpdate.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="竞品汇报"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">竞品汇报</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
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
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF78904F900001988700701AF31363"
          style="background-size: cover; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);">
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" data="infoData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" style="background-color:white;" bind-click="li2Click"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row mar2"
                      xid="row1" style="background-color:white;"> 
                      <div class="x-col" xid="col17"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-6" xid="col15" style="margin:auto;height:30px;"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit11"> 
                              <label class="x-label" xid="label12" style="width:80px;"><![CDATA[竞品：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output22" bind-ref="ref(&quot;col1&quot;)"/>
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col16" style="text-align:right;height:30px;"> 
                            </div>  
                          <div class="col col-xs-6" xid="col1"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit13"> 
                              <label class="x-label" xid="label14" style="width:80px;"><![CDATA[品类：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output24" bind-ref='ref("col2")'/>
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col14"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit6"> 
                              <label class="x-label" xid="label8" style="width:80px;"><![CDATA[是否促销：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output18" bind-ref='ref("col3")'/>
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col2"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit10"> 
                              <label class="x-label" xid="label6" style="width:80px;"><![CDATA[规格：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output19" bind-ref='ref("col4")'/>
                            </div> 
                          </div>  
                          <div class="col col-xs-6" xid="col3">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
    <label class="x-label" xid="label1" style="width:80px;"><![CDATA[零售价：]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("col5")'></div></div> </div><div class="col col-xs-12" xid="col18"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit9"> 
                              <label class="x-label" xid="label7" style="width:80px;"><![CDATA[描述：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output20" bind-ref="ref(&quot;col6&quot;)"/>
                            </div> 
                          </div> 
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
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
