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
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="myDealersDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myDealers.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mySystemDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/mySystem.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="myBranchesDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myBranches.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="activityFeedbackDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/activityFeedback.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="cancelAfterVerificationDialog"
    src="$UI/TheSaleEnterprise/ChannelCost/dialog/cancelAfterVerification.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="客户管理"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">客户管理</div>  
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
              <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/menu_emp_khgl_jxsgl.png" alt=""
                xid="image1" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col3" style="height:40;"> 
              <label xid="label1" style="margin-top:10px;" class="font-One"><![CDATA[经销商资料管理]]></label> 
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
              <img src="$UI/TheSaleEnterprise/CustomerManagement/img/002.png" alt=""
                xid="image3" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col7" style="height:40;"> 
              <label xid="label2" style="margin-top:10px;" class="font-One"><![CDATA[系统资料管理]]></label> 
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
              <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/menu_emp_khgl_wdgl.png" alt=""
                xid="image5" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col11" style="height:40;"> 
              <label xid="label3" style="margin-top:10px;" class="font-One"><![CDATA[网点资料管理]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col9" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image6" style="width:30px;margin-top:10px;"/> 
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
