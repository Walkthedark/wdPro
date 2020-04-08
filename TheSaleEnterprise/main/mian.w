<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onModelConstructDone="modelModelConstructDone"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="processData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <data xid="default1">[{"id":"32"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="visitData" idColumn="id"> 
      <column name="id" type="String" xid="xid2"/>  
      <data xid="default2">[{"id":"0"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="MyData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <data xid="default3">[{"id":"李四"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1" swipe="false"> 
        <div class="x-contents-content" xid="content2"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel3"> 
            <div class="x-panel-top" xid="top3"> 
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar title-one index-title" xid="titleBar2" title="企业营销门户 EMP"> 
                <div class="x-titlebar-left" xid="left2"/>  
                <div class="x-titlebar-title" xid="title2">企业营销门户 EMP</div>  
                <div class="x-titlebar-right reverse" xid="right2"/> 
              </div> 
            </div>  
            <div class="x-panel-content" xid="content6"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row2" style="text-align:center;margin:0px;"> 
                <div class="col col-xs-4 title-two col-one" xid="col4"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row4" style="height:15px;"> 
                    <div class="x-col" xid="col12"/>  
                    <div class="x-col" xid="col11"/>  
                    <div class="x-col" xid="col10"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/head.png" alt=""
                    xid="image2" style="width:40px;height:40px;border-radius:25px;"
                    height="80%"/>  
                  <span xid="span5" style="font-size:14px;text-align:center;color:#ffffff;"
                    class="center-block" bind-text="MyData.val(&quot;id&quot;)+&quot;，您好！&quot;"><![CDATA[]]></span> 
                </div>  
                <div class="col col-xs-4 title-three col-one" xid="col5" bind-click="col5Click"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output1" bind-ref="$model.processData.ref(&quot;id&quot;)"
                    style="font-size:33px;font-weight:bold;color:#FFFFFF;"/>  
                  <span xid="span25" style="font-size:14px;text-align:center;color:#ffffff;"
                    class="center-block">待办流程</span> 
                </div>  
                <div class="col col-xs-4 title-four col-one" xid="col6" bind-click="col6Click"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output2" bind-ref="$model.visitData.ref(&quot;id&quot;)"
                    style="font-size:33px;font-weight:bold;color:#FFFFFF;"/>  
                  <span xid="span4" style="font-size:14px;text-align:center;color:#ffffff;"
                    class="center-block">拜访任务</span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col15" bind-click="col15Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row5" style="height:15px;"> 
                    <div class="x-col" xid="col14"/>  
                    <div class="x-col" xid="col13"/>  
                    <div class="x-col" xid="col16"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/001.png" alt=""
                    xid="image3" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span6" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[上班打卡]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col18" bind-click="col18Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row6" style="height:15px;"> 
                    <div class="x-col" xid="col19"/>  
                    <div class="x-col" xid="col20"/>  
                    <div class="x-col" xid="col17"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/002.png" alt=""
                    xid="image4" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span7" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[下班打卡]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col22" bind-click="col22Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row7" style="height:15px;"> 
                    <div class="x-col" xid="col23"/>  
                    <div class="x-col" xid="col24"/>  
                    <div class="x-col" xid="col21"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/003.png" alt=""
                    xid="image5" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span8" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[工作日报]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col28" bind-click="col28Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row10" style="height:15px;"> 
                    <div class="x-col" xid="col29"/>  
                    <div class="x-col" xid="col30"/>  
                    <div class="x-col" xid="col27"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/004.png" alt=""
                    xid="image7" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span9" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[待办流程]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col25" bind-click="col25Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row9" style="height:15px;"> 
                    <div class="x-col" xid="col34"/>  
                    <div class="x-col" xid="col36"/>  
                    <div class="x-col" xid="col26"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/005.png" alt=""
                    xid="image8" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span10" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[拜访签到]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col33" bind-click="col33Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row8" style="height:15px;"> 
                    <div class="x-col" xid="col32"/>  
                    <div class="x-col" xid="col31"/>  
                    <div class="x-col" xid="col35"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/006.png" alt=""
                    xid="image6" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span11" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[常用申请]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col40" bind-click="col40Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row13" style="height:15px;"> 
                    <div class="x-col" xid="col41"/>  
                    <div class="x-col" xid="col42"/>  
                    <div class="x-col" xid="col39"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/007.png" alt=""
                    xid="image10" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span12" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[渠道费用]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col37" bind-click="col37Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row12" style="height:15px;"> 
                    <div class="x-col" xid="col46"/>  
                    <div class="x-col" xid="col48"/>  
                    <div class="x-col" xid="col38"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/008.png" alt=""
                    xid="image11" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span13" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[销售进度]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col45" bind-click="col45Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row11" style="height:15px;"> 
                    <div class="x-col" xid="col44"/>  
                    <div class="x-col" xid="col43"/>  
                    <div class="x-col" xid="col47"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/009.png" alt=""
                    xid="image9" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span14" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[龙虎榜]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col52" bind-click="col52Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row16" style="height:15px;"> 
                    <div class="x-col" xid="col53"/>  
                    <div class="x-col" xid="col54"/>  
                    <div class="x-col" xid="col51"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/010.png" alt=""
                    xid="image13" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span15" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[客户管理]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col49" bind-click="col49Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row15" style="height:15px;"> 
                    <div class="x-col" xid="col58"/>  
                    <div class="x-col" xid="col60"/>  
                    <div class="x-col" xid="col50"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/011.png" alt=""
                    xid="image14" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span16" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[下属管理]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col57" bind-click="col57Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row14" style="height:15px;"> 
                    <div class="x-col" xid="col56"/>  
                    <div class="x-col" xid="col55"/>  
                    <div class="x-col" xid="col59"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/012.png" alt=""
                    xid="image12" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span17" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[导购管理]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col64" bind-click="col64Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row19" style="height:15px;"> 
                    <div class="x-col" xid="col65"/>  
                    <div class="x-col" xid="col66"/>  
                    <div class="x-col" xid="col63"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/013.png" alt=""
                    xid="image16" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span18" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[项目管理]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col61" bind-click="col61Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row18" style="height:15px;"> 
                    <div class="x-col" xid="col70"/>  
                    <div class="x-col" xid="col72"/>  
                    <div class="x-col" xid="col62"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/014.png" alt=""
                    xid="image17" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span19" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[日程管理]]></span> 
                </div>  
                <div class="col col-xs-4 border-One" xid="col69" bind-click="col69Click"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row17" style="height:15px;"> 
                    <div class="x-col" xid="col68"/>  
                    <div class="x-col" xid="col67"/>  
                    <div class="x-col" xid="col71"/> 
                  </div>  
                  <img src="$UI/TheSaleEnterprise/main/Img/015.png" alt=""
                    xid="image15" style="width:40px;height:40px;" height="80%"/>  
                  <span xid="span20" style="font-size:14px;text-align:center;"
                    class="center-block"><![CDATA[综合查询]]></span> 
                </div> 
              <div class="col col-xs-4 border-One" xid="col1" bind-click="col1Click">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:15px;">
    <div class="x-col" xid="col2"></div>
    <div class="x-col" xid="col3"></div>
    <div class="x-col" xid="col7"></div></div> 
   <img src="$UI/TheSaleEnterprise/main/Img/015.png" alt="" xid="image1" style="width:40px;height:40px;" height="80%"></img>
   <span xid="span21" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[代下单]]></span></div></div> 
            </div>  
            </div> 
        </div>  
        <div class="x-contents-content" xid="content4"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="MsgContainer" src="$UI/TheSaleEnterprise/main/other/Message.w"
            autoLoad="false"/> 
        </div>  
        <div class="x-contents-content" xid="content5"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="moreContainer" src="$UI/TheSaleEnterprise/main/other/more.w"
            autoLoad="false"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active"
          label="工作" xid="button1" icon="glyphicon glyphicon-home" target="content2"> 
          <i xid="i1" class="glyphicon glyphicon-home"/>  
          <span xid="span1">工作</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="消息" xid="button2" icon="glyphicon glyphicon-envelope" target="content4"
          onClick="button2Click"> 
          <i xid="i2" class="glyphicon glyphicon-envelope"/>  
          <span xid="span2">消息</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="更多" xid="button3" icon="glyphicon glyphicon-option-horizontal" target="content5"
          onClick="button3Click"> 
          <i xid="i3" class="glyphicon glyphicon-option-horizontal"/>  
          <span xid="span3">更多</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
