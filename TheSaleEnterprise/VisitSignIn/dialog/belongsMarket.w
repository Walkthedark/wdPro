<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="yData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="feetype" type="String" xid="xid2"/>  
      <column name="start" type="String" xid="xid3"/>  
      <column name="end" type="String" xid="xid4"/>  
      <column name="pro_type" type="String" xid="xid5"/>  
      <column name="pro" type="String" xid="xid6"/>  
      <column name="net" type="String" xid="xid7"/>  
      <column name="net_sn" type="String" xid="xid8"/>  
      <column name="addr" type="String" xid="xid9"/>  
      <column name="hd_sn" type="String" xid="xid10"/>  
      <column name="yewuyuan" type="String" xid="xid11"/>  
      <column name="daogou" type="String" xid="xid12"/>  
      <column name="hbrq" type="String" xid="xid13"/>  
      <column name="hbr" type="String" xid="xid14"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="wData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="feetype" type="String" xid="column2"/>  
      <column name="start" type="String" xid="column3"/>  
      <column name="end" type="String" xid="column5"/>  
      <column name="pro_type" type="String" xid="column7"/>  
      <column name="pro" type="String" xid="column9"/>  
      <column name="net" type="String" xid="column10"/>  
      <column name="net_sn" type="String" xid="column11"/>  
      <column name="addr" type="String" xid="column12"/>  
      <column name="hd_sn" type="String" xid="column13"/>  
      <column name="yewuyuan" type="String" xid="column14"/>  
      <column name="daogou" type="String" xid="column4"/>  
      <column name="hbrq" type="String" xid="column6"/>  
      <column name="hbr" type="String" xid="column8"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属市场活动拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属市场活动拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="未汇报" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">未汇报</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="已汇报" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">已汇报</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content  x-scroll-view" xid="content4"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView2"> 
                <div class="x-content-center x-pull-down container" xid="div6"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"/>  
                  <span class="x-pull-down-label" xid="span6">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div5"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list2" data="wData"> 
                    <ul class="x-list-template" xid="listTemplateUl2"> 
                      <li xid="li2" class="border-Two" bind-click="li1Click"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row3"> 
                          <div class="x-col" xid="col21"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row4"> 
                              <div class="col col-xs-12 font-One" xid="col19"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit16"> 
                                  <label class="x-label" xid="label18" style="width:80px;">网点：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output14" bind-ref="ref(&quot;net&quot;)"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output  x-edit" xid="output21" bind-ref="&quot;(&quot;+val(&quot;net_sn&quot;)+&quot;)&quot;"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col20"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit18"> 
                                  <label class="x-label" xid="label19" style="width:80px;">地址：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output15" bind-ref="ref(&quot;addr&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col17"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit17"> 
                                  <label class="x-label" xid="label20" style="width:80px;">活动编号：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output10" bind-ref="ref(&quot;hd_sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col15"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit19"> 
                                  <label class="x-label" xid="label11" style="width:80px;">日期：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output18" bind-ref="ref(&quot;start&quot;)"
                                    onRender="output5Render"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col18"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit20"> 
                                  <label class="x-label" xid="label12" style="width:80px;">产品：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output13" bind-ref="ref(&quot;pro&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col22"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit12"> 
                                  <label class="x-label" xid="label13" style="width:80px;">费用类型：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output16" bind-ref="ref(&quot;feetype&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col16"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit13"> 
                                  <label class="x-label" xid="label14" style="width:80px;">业务员：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output19" bind-ref="ref(&quot;yewuyuan&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col3"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit14"> 
                                  <label class="x-label" xid="label15" style="width:80px;">导购员：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output20" bind-ref="ref(&quot;daogou&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col13"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit15"> 
                                  <label class="x-label" xid="label16" style="width:80px;">汇报人：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output17" bind-ref="ref(&quot;hbr&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col2"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit10"> 
                                  <label class="x-label" xid="label17" style="width:80px;">汇报日期：</label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output22" bind-ref="ref(&quot;hbrq&quot;)"/> 
                                </div> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </li> 
                    </ul> 
                  </div> 
                </div>  
                <div class="x-content-center x-pull-up" xid="div4"> 
                  <span class="x-pull-up-label" xid="span7">加载更多...</span> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-scroll-view" xid="content5"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView1"> 
                <div class="x-content-center x-pull-down container" xid="div1"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"/>  
                  <span class="x-pull-down-label" xid="span3">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div2"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list1" data="yData"> 
                    <ul class="x-list-template" xid="listTemplateUl1"> 
                      <li xid="li1" class="border-Two" bind-click="li1Click"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row1"> 
                          <div class="x-col" xid="col1"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row2"> 
                              <div class="col col-xs-12 font-One" xid="col4"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit1"> 
                                  <label class="x-label" xid="label1" style="width:80px;"><![CDATA[网点：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output1" bind-ref="ref(&quot;net&quot;)"/>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output12" bind-ref="&quot;(&quot;+val(&quot;net_sn&quot;)+&quot;)&quot;"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col5"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit2"> 
                                  <label class="x-label" xid="label2" style="width:80px;"><![CDATA[地址：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output2" bind-ref="ref(&quot;addr&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col6"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit3"> 
                                  <label class="x-label" xid="label3" style="width:80px;"><![CDATA[活动编号：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output3" bind-ref="ref(&quot;hd_sn&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col8"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit5"> 
                                  <label class="x-label" xid="label4" style="width:80px;"><![CDATA[日期：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output5" bind-ref="ref(&quot;start&quot;)"
                                    onRender="output5Render"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col7"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit4"> 
                                  <label class="x-label" xid="label5" style="width:80px;"><![CDATA[产品：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output4" bind-ref="ref(&quot;pro&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col10"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit7"> 
                                  <label class="x-label" xid="label6" style="width:80px;"><![CDATA[费用类型：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output7" bind-ref="ref(&quot;feetype&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col9"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit6"> 
                                  <label class="x-label" xid="label7" style="width:80px;"><![CDATA[业务员：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output6" bind-ref="ref(&quot;yewuyuan&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col12"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit9"> 
                                  <label class="x-label" xid="label8" style="width:80px;"><![CDATA[导购员：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output9" bind-ref="ref(&quot;daogou&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col11"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit8"> 
                                  <label class="x-label" xid="label9" style="width:80px;"><![CDATA[汇报人：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output8" bind-ref="ref(&quot;hbr&quot;)"/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col14"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit x-label30" xid="labelEdit11"> 
                                  <label class="x-label" xid="label10" style="width:80px;"><![CDATA[汇报日期：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output11" bind-ref="ref(&quot;hbrq&quot;)"/> 
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
                  <span class="x-pull-up-label" xid="span5">加载更多...</span> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="goodsDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/belongsMarketGoods.w" forceRefreshOnOpen="true"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
