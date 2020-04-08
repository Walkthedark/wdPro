<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:270px;left:539px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="khq1" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData1" idColumn="sqrmc"> 
      <column name="cs" type="String" xid="xid3"/>  
      <column name="sqrmc" type="String" xid="xid4"/>  
      <column name="money" type="String" xid="xid10"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="khq1" autoNew="true" onValueChanged="cDateValueChanged"> 
      <column name="khq1" type="String" xid="xid5"/>  
      <column name="khq2" type="String" xid="xid6"/>  
      <column name="khq3" type="String" xid="xid7"/>  
      <column name="khq4" type="String" xid="xid8"/>  
      <column name="year" type="String" xid="xid9"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="khq2" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="title" type="String" xid="column2"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="khq3" idColumn="id"> 
      <column name="id" type="String" xid="column3"/>  
      <column name="title" type="String" xid="column4"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="khq4" idColumn="id"> 
      <column name="id" type="String" xid="column5"/>  
      <column name="title" type="String" xid="column6"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData2" idColumn="bfr"> 
      <column name="cs" type="String" xid="column7"/>  
      <column name="bfr" type="String" xid="column8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData3" idColumn="sdAgency"> 
      <column name="cs" type="String" xid="column9"/>  
      <column name="sdAgency" type="String" xid="column10"/>  
      <column name="money" type="String" xid="xid11"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData4" idColumn="jxs"> 
      <column name="cs" type="String" xid="column11"/>  
      <column name="jxs" type="String" xid="column12"/>  
      <column name="money" type="String" xid="xid12"/>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="customerCostDialog"
    src="$UI/TheSaleEnterprise/RankingList/dialog/customerCost.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="customerDialog"
    src="$UI/TheSaleEnterprise/RankingList/dialog/customerVisit.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="processDialog" src="$UI/TheSaleEnterprise/RankingList/dialog/customerSale.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="sendDialog" src="$UI/TheSaleEnterprise/RankingList/dialog/customerSend.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="分区龙虎榜"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">分区龙虎榜</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-content" xid="content3" style="background-color:#f0f0f0;"> 
          <div xid="div1" class="mar2 border-div" style="background-color:white;"> 
            <hr xid="hr1"/>  
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row1" style="margin-top:10px;"> 
              <div class="x-col" xid="col1"> 
                <img src="$UI/TheSaleEnterprise/RankingList/img/002.png" alt=""
                  xid="image1" style="width:30px;"/>  
                <label xid="label1" class="font-five"><![CDATA[销售进度龙虎榜]]></label> 
              </div>  
              <div xid="col2" style="text-align:right;padding-top:7px;"> 
                <div component="$UI/system/components/justep/button/buttonGroup"
                  class="btn-group x-card1" tabbed="true" xid="buttonGroup3"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default5 active" xid="button6" bind-text=" $model.cDate.val(&quot;year&quot;)"
                    style="line-height: 12px;"> 
                    <i xid="i6"/>  
                    <span xid="span1" style="margin-top:-4px;display:block;"/> 
                  </a> 
                </div> 
              </div>  
              <div xid="col19" style="width:6em;padding-top:7px;height:30px;"> 
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." xid="select1" bind-ref="$model.cDate.ref(&quot;khq1&quot;)"
                  bind-options="khq1" bind-optionsValue="id" bind-optionsLabel="title"
                  style="height:30px;"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row2"> 
              <div class="x-col" xid="col4"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row3" style="display:none" id="fqListRow1"> 
                  <div class="col col-xs-12" xid="col7"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row4"> 
                      <div class="x-col" xid="col11" style="text-align:center;"> 
                        <span xid="span3" class="font-four"><![CDATA[没有销售进度信息]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row14" id="fqListRow2"> 
                  <div class="col col-xs-12" xid="col20"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row13"> 
                      <div class="x-col" xid="col24"> 
                        <span xid="span15" id="fqName1">李四：</span> 
                      </div>  
                      <div class="x-col" xid="col22"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 border-Two" xid="col21"> 
                    <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                      xid="progress2" valuenow="20" valuemax="20"> 
                      <div class="progress-bar progress-bar-success" role="progressbar"
                        xid="progressBar2"> 
                        <span xid="span16" id="fqNum1"><![CDATA[次]]></span> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 mar2" xid="col23" style="text-align:center;" bind-click="col23Click"> 
                    <span xid="span14" class="font-six">点击查看更多</span> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div xid="div7" class="mar2 border-div" style="background-color:white;"> 
            <hr xid="hr4"/>  
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row21" style="margin-top:10px;"> 
              <div class="x-col" xid="col51"> 
                <img src="$UI/TheSaleEnterprise/RankingList/img/001.png" alt=""
                  xid="image2" style="width:30px;"/>  
                <label xid="label8" class="font-five"><![CDATA[拜访客户龙虎榜]]></label> 
              </div>  
              <div xid="col35" style="text-align:right;padding-top:7px;"> 
                <div component="$UI/system/components/justep/button/buttonGroup"
                  class="btn-group x-card1" tabbed="true" xid="buttonGroup4"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default5 active" xid="button8" bind-text=" $model.cDate.val(&quot;year&quot;)"
                    style="line-height: 12px;"> 
                    <i xid="i8"/>  
                    <span xid="span22" style="margin-top:-4px;display:block;"/> 
                  </a> 
                </div> 
              </div>  
              <div xid="col36" style="width:6em;padding-top:7px;height:30px;"> 
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." xid="select2" bind-ref="$model.cDate.ref(&quot;khq2&quot;)"
                  bind-options="khq2" bind-optionsValue="id" bind-optionsLabel="title"
                  style="height:30px;"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row22"> 
              <div class="x-col" xid="col47"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row24" id="fqListRow3"> 
                  <div class="col col-xs-12" xid="col46"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row23"> 
                      <div class="x-col" xid="col52"> 
                        <span xid="span27" id="fqName2"><![CDATA[李四：]]></span> 
                      </div>  
                      <div class="x-col" xid="col54"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 border-Two" xid="col44"> 
                    <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                      xid="progress4" valuenow="20" valuemax="20"> 
                      <div class="progress-bar progress-bar-success" role="progressbar"
                        xid="progressBar4"> 
                        <span xid="span26" bind-text="&quot;2次&quot;" id="fqNum2"><![CDATA[2次]]></span> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 mar2" xid="col53" style="text-align:center;" bind-click="col53Click"> 
                    <span xid="span2" class="font-six"><![CDATA[点击查看更多]]></span> 
                  </div> 
                </div>  
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row17" style="display:none" id="fqListRow4"> 
                  <div class="col col-xs-12" xid="col26"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row16"> 
                      <div class="x-col" xid="col27" style="text-align:center;"> 
                        <span xid="span17" class="font-four"><![CDATA[没有拜访客户信息]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div xid="div3" class="mar2 border-div" style="background-color:white;"> 
            <hr xid="hr3"/>  
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row9" style="margin-top:10px;"> 
              <div class="x-col" xid="col18"> 
                <img src="$UI/TheSaleEnterprise/RankingList/img/002.png" alt=""
                  xid="image4" style="width:30px;"/>  
                <label xid="label3" class="font-five"><![CDATA[客户发货龙虎榜]]></label> 
              </div>  
              <div xid="col37" style="text-align:right;padding-top:7px;"> 
                <div component="$UI/system/components/justep/button/buttonGroup"
                  class="btn-group x-card1" tabbed="true" xid="buttonGroup5"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default5 active" xid="button9" bind-text=" $model.cDate.val(&quot;year&quot;)"
                    style="line-height: 12px;"> 
                    <i xid="i9"/>  
                    <span xid="span23" style="margin-top:-4px;display:block;"/> 
                  </a> 
                </div> 
              </div>  
              <div xid="col38" style="width:6em;padding-top:7px;height:30px;"> 
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." xid="select3" bind-ref="$model.cDate.ref(&quot;khq3&quot;)"
                  bind-options="khq3" bind-optionsValue="id" bind-optionsLabel="title"
                  style="height:30px;"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row11"> 
              <div class="x-col" xid="col16"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row19" id="fqListRow5"> 
                  <div class="col col-xs-12" xid="col28"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row18"> 
                      <div class="x-col" xid="col32"> 
                        <span xid="span19" id="fqName3">李四：</span> 
                      </div>  
                      <div class="x-col" xid="col30"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 border-Two" xid="col29"> 
                    <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                      xid="progress3" valuenow="20" valuemax="20"> 
                      <div class="progress-bar progress-bar-success" role="progressbar"
                        xid="progressBar3"> 
                        <span xid="span20" bind-text="&quot;2次&quot;" id="fqNum3">2次</span> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 mar2" xid="col31" style="text-align:center;" bind-click="col31Click"> 
                    <span xid="span18" class="font-six">点击查看更多</span> 
                  </div> 
                </div>  
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row10" style="display:none" id="fqListRow6"> 
                  <div class="col col-xs-12" xid="col15"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row12"> 
                      <div class="x-col" xid="col14" style="text-align:center;"> 
                        <span xid="span12" class="font-four"><![CDATA[没有客户发货信息]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div xid="div2" class="mar2 border-div" style="background-color:white;"> 
            <hr xid="hr2"/>  
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row7" style="margin-top:10px;"> 
              <div class="x-col" xid="col13"> 
                <img src="$UI/TheSaleEnterprise/RankingList/img/004.png" alt=""
                  xid="image3" style="width:30px;"/>  
                <label xid="label2" class="font-five"><![CDATA[客户费用龙虎榜]]></label> 
              </div>  
              <div xid="col39" style="text-align:right;padding-top:7px;"> 
                <div component="$UI/system/components/justep/button/buttonGroup"
                  class="btn-group x-card1" tabbed="true" xid="buttonGroup6"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default5 active" xid="button10" bind-text=" $model.cDate.val(&quot;year&quot;)"
                    style="line-height: 12px;"> 
                    <i xid="i10"/>  
                    <span xid="span24" style="margin-top:-4px;display:block;"/> 
                  </a> 
                </div> 
              </div>  
              <div xid="col40" style="width:6em;padding-top:7px;height:30px;"> 
                <select component="$UI/system/components/justep/select/select"
                  bind-optionsCaption="请选择..." xid="select4" bind-ref="$model.cDate.ref(&quot;khq4&quot;)"
                  bind-options="khq4" bind-optionsValue="id" bind-optionsLabel="title"
                  style="height:30px;"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row5"> 
              <div class="x-col" xid="col5"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row8" id="fqListRow7"> 
                  <div class="col col-xs-12" xid="col6"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row6"> 
                      <div class="x-col" xid="col12"> 
                        <span xid="span7" id="fqName4"><![CDATA[陕西银泽贸易有限公司：]]></span> 
                      </div>  
                      <div class="x-col" xid="col9"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 border-Two" xid="col8"> 
                    <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                      xid="progress1" valuenow="60" valuemax="20"> 
                      <div class="progress-bar progress-bar-success" role="progressbar"
                        xid="progressBar1"> 
                        <span xid="span8" bind-text="&quot;2.12万元&quot;" id="fqNum4"><![CDATA[2.12万元]]></span> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12 mar2" xid="col10" style="text-align:center;" bind-click="col10Click"> 
                    <span xid="span9" class="font-six">点击查看更多</span> 
                  </div> 
                </div>  
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row25" style="display:none" id="fqListRow8"> 
                  <div class="col col-xs-12" xid="col34"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row20"> 
                      <div class="x-col" xid="col33" style="text-align:center;"> 
                        <span xid="span21" class="font-four"><![CDATA[没有客户费用信息]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <hr xid="hr7"/> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 

  </div>
