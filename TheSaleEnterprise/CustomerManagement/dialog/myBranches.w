<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;安徽副食品经销部&quot;,&quot;col2&quot;:&quot;CU10001&quot;,&quot;col3&quot;:&quot;安徽副食品经销部&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;上海副食品经销部&quot;,&quot;col2&quot;:&quot;CU10002&quot;,&quot;col3&quot;:&quot;上海副食品经销部&quot;,&quot;col4&quot;:&quot;导购&quot;,&quot;col5&quot;:&quot;重点&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;柳州副食品经销部&quot;,&quot;col2&quot;:&quot;CU10003&quot;,&quot;col3&quot;:&quot;柳州副食品经销部&quot;,&quot;col4&quot;:&quot;导购&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;col1&quot;:&quot;广州副食品经销部&quot;,&quot;col2&quot;:&quot;CU10004&quot;,&quot;col3&quot;:&quot;柳州副食品经销部&quot;,&quot;col5&quot;:&quot;重点&quot;}]</data>
  <column name="id" type="String" xid="column11"></column>
  <column name="sn" type="String" xid="column12"></column>
  <column name="title" type="String" xid="column13"></column>
  <column name="guide" type="String" xid="column14"></column>
  <column name="iskey" type="String" xid="column15"></column>
  <column name="addr" type="String" xid="xid1"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myBranchesInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/mySystemNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="我的网点"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">我的网点</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="96"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="我的网点" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">我的网点</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="待审批" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">待审批</span> 
            </a> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row4" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col16"/>  
            <div class="x-col" xid="col15"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="填 写" xid="button5" style="width:100%;" target="content4" onClick="button5Click"> 
                <i xid="i6"/>  
                <span xid="span7">填 写</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col14"/> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF23A047C000015332AA703E904750"
                  style="bottom: 0px; background-size: cover; background-image: url(http://localhost:40672/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
                  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                    xid="scrollView2"> 
                    <div class="x-content-center x-pull-down container" xid="div6"> 
                      <i class="x-pull-down-img glyphicon x-icon-pull-down"
                        xid="i7"/>  
                      <span class="x-pull-down-label" xid="span8">下拉刷新...</span> 
                    </div>  
                    <div class="x-scroll-content" xid="div5"> 
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list" xid="list2" data="CData"> 
                        <ul class="x-list-template" xid="listTemplateUl2"> 
                          <li xid="li2" class="border-Two" bind-click="li1Click"> 
                            <div component="$UI/system/components/justep/row/row"
                              class="x-row" xid="row1"> 
                              <div class="x-col" xid="col1"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row2"> 
                                  <div class="col col-xs-12" xid="col4"> 
                                    <div component="$UI/system/components/justep/output/output"
                                      class="x-output font-One" xid="output8" bind-ref='ref("title")'/> 
                                  </div>  
                                  <div class="col col-xs-6" xid="col5"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit" xid="labelEdit1" style="margin-top:8px;"> 
                                      <label class="x-label font-Three" xid="label3">编号：</label>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit font-Three" xid="output9"
                                        bind-ref='ref("sn")'/> 
                                    </div> 
                                  </div>  
                                  <div class="col col-xs-3" xid="col10"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="导购" xid="button4" icon="img:$UI/TheSaleEnterprise/CustomerManagement/dialog/img/menu_emp_bfqd_wdbf.png|" bind-visible='val("guide") ==1'>
   <i xid="i4"></i>
   <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/menu_emp_bfqd_wdbf.png" xid="image2" style="width:20px;margin-top:-2px;"></img><span xid="span3" style="color:#FA7922;">导购</span></a></div><div class="col col-xs-3" xid="col8"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="重点" xid="button7" icon="img:$UI/TheSaleEnterprise/CustomerManagement/dialog/img/menu_emp_bfqd_wdbf.png|" bind-visible='val("iskey") ==1'>
   <i xid="i8"></i>
   <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/menu_emp_bfqd_wdbf.png" xid="image3" style="width:20px;margin-top:-2px;"></img>
   <span xid="span10" style="color:#FA7922;">重点</span></a></div><div class="col col-xs-12" xid="col6"> 
                                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                                      class="x-label-edit x-label30" xid="labelEdit2"> 
                                      <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png"
                                        alt="" xid="image1" style="width:20px;"/>  
                                      <div component="$UI/system/components/justep/output/output"
                                        class="x-output x-edit" xid="output7" bind-ref='ref("addr")'/> 
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
                      <span class="x-pull-up-label" xid="span5">加载更多...</span> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel4"> 
                <div class="x-panel-content" xid="content2" _xid="C7DF1CBB13E00001685AFC9516009210"
                  style="bottom: 0px; background-size: cover; top: 96px; background-image: url(http://localhost:40672/x5/UI2/v_/TheSaleEnterprise/CustomerManagement/dialog/none);"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row5"> 
                    <div class="x-col" xid="col2"/>  
                    <div class="x-col" xid="col3" style="text-align:center;"> 
                      <span xid="span9"><![CDATA[您未提交过系统申请]]></span> 
                    </div>  
                    <div class="x-col" xid="col7"/> 
                  </div> 
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
