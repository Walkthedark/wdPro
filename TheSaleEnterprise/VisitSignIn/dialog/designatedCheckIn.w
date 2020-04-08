<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:-8px;left:84px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="myData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="qdrq" type="String" xid="xid2"/>  
      <column name="qdr" type="String" xid="xid3"/>  
      <column name="qdr_name" type="String" xid="xid4"/>  
      <column name="qdbm" type="String" xid="xid5"/>  
      <column name="qdlx" type="String" xid="xid6"/>  
      <column name="qdms" type="String" xid="xid7"/>  
      <column name="qdsj" type="String" xid="xid8"/>  
      <column name="dwsj" type="String" xid="xid9"/>  
      <column name="qddz" type="String" xid="xid10"/>  
      <column name="qdzp" type="String" xid="xid11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="underData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="qdrq" type="String" xid="xid2"/>  
      <column name="qdr" type="String" xid="xid3"/>  
      <column name="qdr_name" type="String" xid="xid4"/>  
      <column name="qdbm" type="String" xid="xid5"/>  
      <column name="qdlx" type="String" xid="xid6"/>  
      <column name="qdms" type="String" xid="xid7"/>  
      <column name="qdsj" type="String" xid="xid8"/>  
      <column name="dwsj" type="String" xid="xid9"/>  
      <column name="qddz" type="String" xid="xid10"/>  
      <column name="qdzp" type="String" xid="xid11"/>  
      <data xid="default2">[{"id":"1","col1":"什么办事处","col2":"2018-12-14 16:43","col3":"2018-12-14 16:43","col4":"广西柳州市12路"},{"id":"1","col1":"其他签到地点：与梁总会谈","col2":"2018-12-14 16:43","col3":"2018-12-14 16:43","col4":"上海渭南路1111"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="签到汇报"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">签到汇报</div>  
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
              label="我的签到汇报" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">我的签到汇报</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="下属签到汇报" xid="button3" target="content5" onClick="button3Click"> 
              <i xid="i3"/>  
              <span xid="span2">下属签到汇报</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-top" xid="top2" height="60"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row3" style="background-color:white;"> 
                    <div class="x-col x-col-20" xid="col11"/>  
                    <div class="x-col" xid="col12"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn border-r" label="填 写" xid="button4" style="width:100%;"
                        target="content4" onClick="button4Click"> 
                        <i xid="i5"/>  
                        <span xid="span6">填 写</span> 
                      </a> 
                    </div>  
                    <div class="x-col x-col-20" xid="col13"/> 
                  </div> 
                </div>  
                <div class="x-panel-content" xid="content1" _xid="C7DF23A047C000015332AA703E904750"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i12"/>  
                      <span class="x-pull-down-label" xid="span8">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" style="background-color:white;"
                        data="myData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li2Click"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row row-padding" xid="row1"> 
                              <div class="col col-xs-12" xid="col2"> 
                                <label xid="label3" bind-text='val("qdms")' class="font-One">label</label> 
                              </div>  
                              <div class="col col-xs-12" xid="col7"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit1"> 
                                  <label class="x-label" xid="label4"><![CDATA[签到时间：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output8" bind-ref='ref("qdsj")'/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col6"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit3"> 
                                  <label class="x-label" xid="label6"><![CDATA[定位时间：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output11" bind-ref='ref("dwsj")'/> 
                                </div> 
                              </div>  
                              <div class="col col-xs-12" xid="col5"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                  class="x-label-edit" xid="labelEdit4"> 
                                  <label class="x-label" xid="label7"><![CDATA[签到地址：]]></label>  
                                  <div component="$UI/system/components/justep/output/output"
                                    class="x-output x-edit" xid="output13" bind-ref='ref("qddz")'/> 
                                </div> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div> 
                    </div>  
                    <div class="x-content-center x-pull-up" xid="div4"> 
                      <span class="x-pull-up-label" xid="span17">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-content x-scroll-view" xid="content2" _xid="C7DF1CBB13E00001685AFC9516009210"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView1"> 
                    <div class="x-content-center x-pull-down container" xid="div1"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i4"/>  
                      <span class="x-pull-down-label" xid="span5">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div2"> 
                      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" style="background-color:white;" data="underData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="border-Two" bind-click="li2Click">
     <div component="$UI/system/components/bootstrap/row/row" class="row row-padding" xid="row2">
      <div class="col col-xs-12" xid="col8">
       <label xid="label1" bind-text='val("qdms")' class="font-One">label</label></div> 
      <div class="col col-xs-12" xid="col3">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2">
        <label class="x-label" xid="label2">签到时间：</label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("qdsj")'></div></div> </div> 
      <div class="col col-xs-12" xid="col1">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit5">
        <label class="x-label" xid="label5">定位时间：</label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("dwsj")'></div></div> </div> 
      <div class="col col-xs-12" xid="col4">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit6">
        <label class="x-label" xid="label8">签到地址：</label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='ref("qddz")'></div></div> </div> </div> </li> </ul> </div></div>  
                    <div class="x-content-center x-pull-up" xid="div3"> 
                      <span class="x-pull-up-label" xid="span3">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/designatedCheckInNew.w" forceRefreshOnOpen="true" onClose="newDialogClose"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="indoDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/designatedCheckInInfo.w" forceRefreshOnOpen="true"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
