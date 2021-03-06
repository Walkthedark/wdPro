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
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="statementsDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/statements.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="TIDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/TI.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="渠道费用"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">渠道费用</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row "
        xid="row7" style="background-color:white;margin-top:10px;" bind-click="row7Click"> 
        <div class="x-col border-Two" xid="col23"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row10"> 
            <div class="col col-xs-2" xid="col21" style="height:40;"> 
              <img src="$UI/TheSaleEnterprise/ChannelCost/dialog/img/001.png" alt=""
                xid="image11" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col22" style="height:40;"> 
              <label xid="label4" style="margin-top:10px;" class="font-One"><![CDATA[经销商市场费用对账单]]></label> 
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
              <img src="$UI/TheSaleEnterprise/ChannelCost/dialog/img/001.png" alt=""
                xid="image9" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col18" style="height:40;"> 
              <label xid="label5" style="margin-top:10px;" class="font-One"><![CDATA[TI费用核销查询]]></label> 
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
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
