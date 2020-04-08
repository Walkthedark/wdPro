<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:341px;left:178px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="year" autoNew="true" onValueChanged="cDateValueChanged"> 
      <column name="year" type="String" xid="xid1"/>  
      <column name="khq" type="String" xid="xid6"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data2" idColumn="sdAgency"> 
      <column name="cs" type="String" xid="xid3"></column>
  <column name="sdAgency" type="String" xid="xid4"></column>
  <column name="money" type="String" xid="xid9"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="year" idColumn="year"> 
      <column name="year" type="String" xid="xid5"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="khq" idColumn="id"> 
      <column name="id" type="String" xid="xid7"/>  
      <column name="title" type="String" xid="xid8"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="客户发货龙虎榜"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">客户发货龙虎榜</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2"> 
          <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
            xid="row1"> 
            <div class="x-col" xid="col2"> 
              <select component="$UI/system/components/justep/select/select" xid="select2"
                bind-ref="$model.cDate.ref(&quot;year&quot;)" bind-options="year" bind-optionsValue="year"
                bind-optionsLabel="year" style="height:30px;width:100px;"/> 
            </div>  
            <div xid="col1" style="text-align:right;padding-top:5px;"> 
              <div component="$UI/system/components/justep/button/buttonGroup"
                class="btn-group x-card1" tabbed="true" xid="buttonGroup2"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default5 active" label="考核期" xid="button4" style="height:30px;"
                  target="content1"> 
                  <i xid="i4"/>  
                  <span xid="span1" style="margin-top:-4px;display:block;">考核期</span> 
                </a> 
              </div> 
            </div>  
            <div xid="col3" style="width:6em;padding-top:5px;height:30px;"> 
              <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..."
                xid="select1" bind-ref='$model.cDate.ref("khq")' bind-options="khq"
                bind-optionsValue="id" bind-optionsLabel="title" style="height:30px;"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content1" _xid="C7E19C427B100001751B11E01ED01A5C"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1"> 
                <div class="x-content-center x-pull-down container" xid="div1"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4" />  
                  <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div2"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data2"> 
                    <ul class="x-list-template" xid="listTemplateUl1"> 
                      <li xid="li1" class="border-Two"> 
                        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
                          <div class="x-col" xid="col1"> 
                            <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="padding:0px;margin:0px;"> 
                              <div class="col col-xs-6" xid="col4"> 
                                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit1"> 
                                  <label class="x-label" xid="label1" bind-text="ref(&quot;id&quot;)" />  
                                  <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("sdAgency")' /> 
                                </div> 
                              </div>  
                              <div class="col col-xs-6" xid="col5"> 
                                <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref="ref(&quot;money&quot;)" style="text-align:right;" /> 
                              </div>  
                              <div class="col col-xs-12" xid="col6" style="text-align:right;"> 
                                <img src="$UI/TheSaleEnterprise/RankingList/img/005.png" alt="" xid="image1" style="width:30px;" /> 
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
              </div></div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
