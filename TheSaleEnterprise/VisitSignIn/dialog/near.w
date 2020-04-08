<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="text" type="String" xid="xid2"/>  
      <data xid="default1">[{"id":"0","text":"否"},{"id":"1","text":"是"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="customerDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/nearCustomer.w"/>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="activityCheckDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/nearActivity.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="附近"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">附近</div>  
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
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/006.png" alt=""
                xid="image1" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col3" style="height:40;"> 
              <label xid="label1" style="margin-top:10px;" class="font-One"><![CDATA[附近的客户]]></label> 
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
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/006.png" alt=""
                xid="image3" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col7" style="height:40;"> 
              <label xid="label2" style="margin-top:10px;" class="font-One"><![CDATA[附近的市场活动]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col5" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image4" style="width:30px;margin-top:10px;"/> 
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
