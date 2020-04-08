<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="AskForLeaveDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/AskForLeave.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="businessTripDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/businessTrip.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="overtimeDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/overtime.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="salesOrderDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrder.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="branchesDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/branches.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="universalDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/universal.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="dailyCostDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dailyCost.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="salesReturnDialog" src="$UI/TheSaleEnterprise/Commonly/dialog/salesReturn.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="常用申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">常用申请</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row1" style="background-color:white;" bind-click="row1Click"> 
        <div class="x-col border-Two" xid="col1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2"> 
            <div class="col col-xs-2" xid="col2" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/004.png" alt=""
                xid="image1" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col3" style="height:40;"> 
              <label xid="label1" style="margin-top:10px;" class="font-One"><![CDATA[请假申请]]></label> 
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
            xid="row4"> 
            <div class="col col-xs-2" xid="col6" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/001.png" alt=""
                xid="image3" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col7" style="height:40;"> 
              <label xid="label2" style="margin-top:10px;" class="font-One"><![CDATA[出差申请]]></label> 
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
        <div class="x-col" xid="col12"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row6"> 
            <div class="col col-xs-2" xid="col10" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/003.png" alt=""
                xid="image5" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col11" style="height:40;"> 
              <label xid="label3" style="margin-top:10px;" class="font-One"><![CDATA[加班申请]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col9" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image6" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row "
        xid="row7" style="background-color:white;margin-top:10px;" bind-click="row7Click"> 
        <div class="x-col border-Two" xid="col23"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row10"> 
            <div class="col col-xs-2" xid="col21" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt=""
                xid="image11" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col22" style="height:40;"> 
              <label xid="label4" style="margin-top:10px;" class="font-One"><![CDATA[销售订单]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col19" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image12" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9"
        style="background-color:white;" bind-click="row9Click"> 
        <div class="x-col border-Two" xid="col15"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row12"> 
            <div class="col col-xs-2" xid="col17" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/002.png" alt=""
                xid="image9" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col18" style="height:40;"> 
              <label xid="label5" style="margin-top:10px;" class="font-One"><![CDATA[网点订单]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col20" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image10" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11"
        style="background-color:white;" bind-click="row11Click"> 
        <div class="x-col" xid="col13"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-2" xid="col24" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/Commonly/img/005.png" alt=""
                xid="image7" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col14" style="height:40;"> 
              <label xid="label6" style="margin-top:10px;" class="font-One"><![CDATA[万用申请单]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col16" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image8" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row " xid="row16" style="background-color:white;margin-top:10px;" bind-click="row16Click">
   <div class="x-col border-Two" xid="col35">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row15">
     <div class="col col-xs-2" xid="col32" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Commonly/img/007.png" alt="" xid="image14" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col36" style="height:40;">
      <label xid="label7" style="margin-top:10px;" class="font-One"><![CDATA[日常费用报销]]></label></div> 
     <div class="col col-xs-3" xid="col31" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image13" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="background-color:white;" bind-click="row17Click">
   <div class="x-col border-Two" xid="col28">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row14">
     <div class="col col-xs-2" xid="col26" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Commonly/img/008.png" alt="" xid="image16" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col25" style="height:40;">
      <label xid="label8" style="margin-top:10px;" class="font-One"><![CDATA[退货管理]]></label></div> 
     <div class="col col-xs-3" xid="col33" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image15" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
