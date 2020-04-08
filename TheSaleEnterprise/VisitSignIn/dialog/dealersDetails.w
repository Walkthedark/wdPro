<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" style="top:26px;left:7px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="xid1"></column>
  <column name="title" type="String" xid="xid2"></column>
  <column name="bcpfmb" type="String" xid="xid3"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="经销商拜访详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">经销商拜访详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8"
        style="background-color:white;"> 
        <div class="x-col" xid="col13">
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row11" style="margin:0px;"> 
            <div class="col col-xs-12" xid="col24" style="text-align:center;">
              <div component="$UI/system/components/justep/output/output" class="x-output font-One"
                xid="output1" bind-ref='$model.CData.ref("title")'/>
            </div>  
            <div class="col col-xs-12" xid="col25" style="display:none">
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output2" bind-text="'拜访目标：' +  $model.CData.val(&quot;bcpfmb&quot;)"/>
            </div> 
          </div>
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row1" style="background-color:white;" bind-click="row1Click"> 
        <div class="x-col border-Two" xid="col1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2" style="margin:0px;"> 
            <div class="col col-xs-2" xid="col2" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/dialog/img/002.png"
                alt="" xid="image1" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col3" style="height:40;"> 
              <label xid="label1" style="margin-top:10px;" class="font-One"><![CDATA[拜访签到]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col4" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image2" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="background-color:white;" bind-click="row3Click"> 
        <div class="x-col border-Two" xid="col8"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4" style="margin:0px;"> 
            <div class="col col-xs-2" xid="col6" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/dialog/img/004.png"
                alt="" xid="image3" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col7" style="height:40;"> 
              <label xid="label2" style="margin-top:10px;" class="font-One"><![CDATA[拜访小结]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col5" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image4" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="background-color:white;" bind-click="row5Click"> 
        <div class="x-col border-Two" xid="col12"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row6" style="margin:0px;"> 
            <div class="col col-xs-2" xid="col10" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/dialog/img/005.png"
                alt="" xid="image5" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col11" style="height:40;"> 
              <label xid="label3" style="margin-top:10px;" class="font-One"><![CDATA[下次拜访计划]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col9" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image6" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row "
        xid="row7" style="background-color:white;" bind-click="row7Click"> 
        <div class="x-col border-Two" xid="col23"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row10" style="margin:0px;"> 
            <div class="col col-xs-2" xid="col21" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/003.png" alt=""
                xid="image11" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col22" style="height:40;"> 
              <label xid="label4" style="margin-top:10px;" class="font-One"><![CDATA[协同拜访]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col19" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image12" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9"
        style="background-color:white;"> 
        <div class="x-col border-Two" xid="col15" bind-click="col15Click"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row12" style="margin:0px;"> 
            <div class="col col-xs-2" xid="col17" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/dialog/img/003.png"
                alt="" xid="image9" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col18" style="height:40;"> 
              <label xid="label5" style="margin-top:10px;" class="font-One"><![CDATA[拜访签退]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col20" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image10" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="SignInDialog" src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersDetailsSignIn.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="TargetDialog" src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersDetailsTarget.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="SummaryDialog" src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersDetailsSummary.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="SignBackDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersDetailsSignBack.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="synergyVisitDialog" src="$UI/TheSaleEnterprise/Visit/dialog/synergyVisit.w" forceRefreshOnOpen="true"></span><resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
