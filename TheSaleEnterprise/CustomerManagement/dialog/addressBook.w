<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="col1" autoNew="true"> 
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="xm" type="String" xid="column2"/>  
      <column name="lxdh" type="String" xid="column3"/>  
      <column name="sskh" type="String" xid="column4"/>  
      <column name="khlx" type="String" xid="xid5"/>  
      <column name="sj" type="String" xid="xid6"/>  
      <column name="yx" type="String" xid="xid7"/>  
      <column name="cz" type="String" xid="xid8"/>  
      <column name="zw" type="String" xid="xid9"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/addressBookInfo.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="48"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="客户通讯录"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">客户通讯录</div>  
        <div class="x-titlebar-right reverse" xid="right2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="查询" xid="button2" onClick="button2Click"> 
            <i xid="i3"/>  
            <span xid="span1">查询</span> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content6" _xid="C7E1BB556C000001138D1E5D797C1106"
      style="bottom: 0px; background-size: cover; background-image: url(http://localhost:44755/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-content" xid="content1"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span2">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" style="background-color:white;" data="orderData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" class="border-Two mar2" bind-click="li2Click"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row row-padding" xid="row1"> 
                      <div class="col col-xs-6" xid="col2"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output x-edit font-One" xid="output13" bind-ref="ref(&quot;xm&quot;)"/> 
                      </div>  
                      <div class="col col-xs-6" xid="col1"> 
                        <div component="$UI/system/components/justep/output/output"
                          class="x-output x-edit font-One" xid="output1" bind-ref="&quot;&lt;a href='tel:&quot;+val(&quot;sj&quot;)+&quot;'&gt;&quot;+val(&quot;sj&quot;)+&quot;&lt;/a&gt;&quot;"
                          style="text-align:right;"/> 
                      </div>  
                      <div class="col col-xs-12" xid="col7"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit3"> 
                          <label class="x-label" xid="label7"><![CDATA[所属客户：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output15" bind-ref="ref(&quot;sskh&quot;)"/> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span3">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1"> 
    <div class="x-popOver-overlay" xid="div4"/>  
    <div class="x-popOver-content" xid="div5"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="background-color:white;"> 
        <div class="x-col" xid="col6"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4"> 
            <div class="col col-xs-12" xid="col10"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label font-One" xid="label1">姓名：</label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1" bind-ref="$model.CData.ref(&quot;col1&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col11"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label font-One" xid="label2">所属客户：</label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input2" bind-ref="$model.CData.ref(&quot;col2&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col12" style="text-align:center;"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row5"> 
                <div class="x-col" xid="col13"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default3" label="清除" xid="button3" onClick="button3Click"> 
                    <i xid="i4"/>  
                    <span xid="span5">清除</span> 
                  </a> 
                </div>  
                <div class="x-col" xid="col14"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default2" label="查询" xid="button4" onClick="button4Click"> 
                    <i xid="i5"/>  
                    <span xid="span6">查询</span> 
                  </a> 
                </div> 
              </div> 
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
