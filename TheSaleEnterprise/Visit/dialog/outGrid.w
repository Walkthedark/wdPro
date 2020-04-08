<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="signBackDialog" src="$UI/TheSaleEnterprise/Visit/dialog/outSignBack.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="signInDialog" src="$UI/TheSaleEnterprise/Visit/dialog/outSignIn.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shopDialog" src="$UI/TheSaleEnterprise/Visit/dialog/shoppers.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shelvesDialog" src="$UI/TheSaleEnterprise/Visit/dialog/shelvesCheck.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="salesDialog" src="$UI/TheSaleEnterprise/Visit/dialog/salesReport.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="goodsDialog" src="$UI/TheSaleEnterprise/Visit/dialog/goodsCheck.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="inventoryDialog" src="$UI/TheSaleEnterprise/Visit/dialog/inventoryCheck.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="materialDialog" src="$UI/TheSaleEnterprise/Visit/dialog/materialInspection.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="orderDialog" src="$UI/TheSaleEnterprise/Visit/dialog/orderList.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="competingGoodsDialog" src="$UI/TheSaleEnterprise/Visit/dialog/competingGoods.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="visitSummaryDialog" src="$UI/TheSaleEnterprise/Visit/dialog/visitSummary.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="synergyVisitDialog" src="$UI/TheSaleEnterprise/Visit/dialog/synergyVisit.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3"> 
        <div class="x-panel-top" xid="top3"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
            xid="titleBar2" title="网点拜访详情"> 
            <div class="x-titlebar-left" xid="left2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="返回" xid="button1" onClick='{"operation":"window.close"}'>
   <i xid="i1"></i>
   <span xid="span4">返回</span></a></div>  
            <div class="x-titlebar-title" xid="title2">网点拜访详情</div>  
            <div class="x-titlebar-right reverse" xid="right2"/> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content6"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2" style="text-align:center;"> 
            <div class="col col-xs-12 row-padding" xid="col4"> 
              <span xid="span5" class="center-block font-One"><![CDATA[万家天河公园]]></span>
            </div>  
            <div class="col col-xs-12 row-padding" xid="col5" bind-click="col5Click"
              style="text-align:left;"> 
              <span xid="span1" class="font-One" style="margin-left:20px;"><![CDATA[拜访目标：无]]></span>
            </div>  
            <div class="col col-xs-4 border-One" xid="col15" bind-click="col15Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:15px;">
   <div class="x-col" xid="col14"></div>
   <div class="x-col" xid="col13"></div>
   <div class="x-col" xid="col16"></div></div><img src="$UI/TheSaleEnterprise/Visit/img/001.png" alt="" xid="image3"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span6" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[1.拜访签到]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col18" bind-click="col18Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row6" style="height:15px;"> 
                <div class="x-col" xid="col19"/>  
                <div class="x-col" xid="col20"/>  
                <div class="x-col" xid="col17"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/002.png" alt="" xid="image4"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span7" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[2.导购在岗检查]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col22" bind-click="col22Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row7" style="height:15px;"> 
                <div class="x-col" xid="col23"/>  
                <div class="x-col" xid="col24"/>  
                <div class="x-col" xid="col21"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/003_1.png" alt="" xid="image5"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span8" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[3.市场活动检查]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col28" bind-click="col28Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row10" style="height:15px;"> 
                <div class="x-col" xid="col29"/>  
                <div class="x-col" xid="col30"/>  
                <div class="x-col" xid="col27"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/004.png" alt="" xid="image7"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span9" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[4.物料检查]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col25" bind-click="col25Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row9" style="height:15px;"> 
                <div class="x-col" xid="col34"/>  
                <div class="x-col" xid="col36"/>  
                <div class="x-col" xid="col26"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/005.png" alt="" xid="image8"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span10" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[5.货架陈列]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col33" bind-click="col33Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row8" style="height:15px;"> 
                <div class="x-col" xid="col32"/>  
                <div class="x-col" xid="col31"/>  
                <div class="x-col" xid="col35"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/006.png" alt="" xid="image6"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span11" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[6.产品检查]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col40" bind-click="col40Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row13" style="height:15px;"> 
                <div class="x-col" xid="col41"/>  
                <div class="x-col" xid="col42"/>  
                <div class="x-col" xid="col39"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/007.png" alt="" xid="image10"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span12" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[7.库存检查]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col37" bind-click="col37Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row12" style="height:15px;"> 
                <div class="x-col" xid="col46"/>  
                <div class="x-col" xid="col48"/>  
                <div class="x-col" xid="col38"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/008.png" alt="" xid="image11"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span13" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[8.销量汇报]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col45" bind-click="col45Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row11" style="height:15px;"> 
                <div class="x-col" xid="col44"/>  
                <div class="x-col" xid="col43"/>  
                <div class="x-col" xid="col47"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/009.png" alt="" xid="image9"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span14" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[9.订单汇报]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col52" bind-click="col52Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row16" style="height:15px;"> 
                <div class="x-col" xid="col53"/>  
                <div class="x-col" xid="col54"/>  
                <div class="x-col" xid="col51"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/011.png" alt="" xid="image13"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span15" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[10.竞品汇报]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col49" bind-click="col49Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row15" style="height:15px;"> 
                <div class="x-col" xid="col58"/>  
                <div class="x-col" xid="col60"/>  
                <div class="x-col" xid="col50"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/011.png" alt="" xid="image14"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span16" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[11.拜访小结]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col57" bind-click="col57Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row14" style="height:15px;"> 
                <div class="x-col" xid="col56"/>  
                <div class="x-col" xid="col55"/>  
                <div class="x-col" xid="col59"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/012.png" alt="" xid="image12"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span17" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[12.协同拜访]]></span> 
            </div>  
            <div class="col col-xs-4 border-One" xid="col64" bind-click="col64Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row19" style="height:15px;"> 
                <div class="x-col" xid="col65"/>  
                <div class="x-col" xid="col66"/>  
                <div class="x-col" xid="col63"/> 
              </div>  
              <img src="$UI/TheSaleEnterprise/Visit/img/013.png" alt="" xid="image16"
                style="width:40px;height:40px;" height="80%"/>  
              <span xid="span18" style="font-size:14px;text-align:center;" class="center-block"><![CDATA[13.离店签退]]></span> 
            </div> 
          </div> 
        </div> 
      </div>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
