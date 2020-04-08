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
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersInDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersIn.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersMoveDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersMove.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersDepartureDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersDeparture.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersSalesDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersSales.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersReportFormsDialog"
    src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersReportForms.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersReportFormsADialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersReportFormsA.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="allDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersReportFormsAll.w"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersInfol.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersSchedulingDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersScheduling.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="shoppersClockingInDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersClockingIn.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/shoppersReportFormsM.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="AskForLeaveDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/AskForLeave.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="overtimeDialog" src="$UI/TheSaleEnterprise/Shoppers/dialog/overtime.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="导购管理"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购管理</div>  
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
              <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt=""
                xid="image1" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col3" style="height:40;"> 
              <label xid="label1" style="margin-top:10px;" class="font-One"><![CDATA[导购入职申请]]></label> 
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
              <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt=""
                xid="image3" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col7" style="height:40;"> 
              <label xid="label2" style="margin-top:10px;" class="font-One"><![CDATA[导购异动申请]]></label> 
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
              <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt=""
                xid="image5" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col11" style="height:40;"> 
              <label xid="label3" style="margin-top:10px;" class="font-One"><![CDATA[导购离职申请]]></label> 
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
              <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt=""
                xid="image11" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col22" style="height:40;"> 
              <label xid="label4" style="margin-top:10px;" class="font-One"><![CDATA[所属导购销量确认]]></label> 
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
              <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt=""
                xid="image9" style="width:40px;"/> 
            </div>  
            <div class="col col-xs-7" xid="col18" style="height:40;"> 
              <label xid="label5" style="margin-top:10px;" class="font-One"><![CDATA[所属导购日报表]]></label> 
            </div>  
            <div class="col col-xs-3" xid="col20" style="text-align:right;height:40;"> 
              <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt=""
                xid="image10" style="width:30px;margin-top:10px;"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="background-color:white;" bind-click="row11Click">
   <div class="x-col border-Two" xid="col16">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row8">
     <div class="col col-xs-2" xid="col14" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image8" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col13" style="height:40;">
      <label xid="label6" style="margin-top:10px;" class="font-One"><![CDATA[所属导购日报表（韩后）]]></label></div> 
     <div class="col col-xs-3" xid="col24" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image7" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row " xid="row16" style="background-color:white;margin-top:10px;" bind-click="row16Click">
   <div class="x-col border-Two" xid="col35">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row15">
     <div class="col col-xs-2" xid="col32" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image14" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col36" style="height:40;">
      <label xid="label7" style="margin-top:10px;" class="font-One"><![CDATA[所有导购日报表]]></label></div> 
     <div class="col col-xs-3" xid="col31" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image13" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="background-color:white;" bind-click="row17Click">
   <div class="x-col border-Two" xid="col28">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row14">
     <div class="col col-xs-2" xid="col26" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image16" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col25" style="height:40;">
      <label xid="label8" style="margin-top:10px;" class="font-One"><![CDATA[所属导购档案查询]]></label></div> 
     <div class="col col-xs-3" xid="col33" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image15" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="background-color:white;" bind-click="row13Click">
   <div class="x-col border-Two" xid="col27">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row18">
     <div class="col col-xs-2" xid="col29" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image18" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col30" style="height:40;">
      <label xid="label9" style="margin-top:10px;" class="font-One"><![CDATA[所属导购排班查询]]></label></div> 
     <div class="col col-xs-3" xid="col34" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image17" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row " xid="row20" style="background-color:white;margin-top:10px;" bind-click="row20Click">
   <div class="x-col border-Two" xid="col38">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row19">
     <div class="col col-xs-2" xid="col46" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image21" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col37" style="height:40;">
      <label xid="label10" style="margin-top:10px;" class="font-One"><![CDATA[所属导购月报表]]></label></div> 
     <div class="col col-xs-3" xid="col47" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image19" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row23" style="background-color:white;" bind-click="row23Click">
   <div class="x-col border-Two" xid="col42">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row22">
     <div class="col col-xs-2" xid="col44" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image23" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col45" style="height:40;">
      <label xid="label11" style="margin-top:10px;" class="font-One"><![CDATA[所属导购考勤记录查询]]></label></div> 
     <div class="col col-xs-3" xid="col40" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image20" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row21" style="background-color:white;" bind-click="row21Click">
   <div class="x-col border-Two" xid="col43">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row24">
     <div class="col col-xs-2" xid="col41" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image24" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col48" style="height:40;">
      <label xid="label12" style="margin-top:10px;" class="font-One"><![CDATA[所属导购请假查询]]></label></div> 
     <div class="col col-xs-3" xid="col39" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image22" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row " xid="row27" style="background-color:white;margin-top:10px;" bind-click="row27Click">
   <div class="x-col border-Two" xid="col50">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row30">
     <div class="col col-xs-2" xid="col58" style="height:40;">
      <img src="$UI/TheSaleEnterprise/Underling/img/menu_emp_wdbf.png" alt="" xid="image29" style="width:40px;"></img></div> 
     <div class="col col-xs-7" xid="col51" style="height:40;">
      <label xid="label13" style="margin-top:10px;" class="font-One"><![CDATA[所属导购加班查询]]></label></div> 
     <div class="col col-xs-3" xid="col57" style="text-align:right;height:40;">
      <img src="$UI/TheSaleEnterprise/VisitSignIn/img/007.png" alt="" xid="image30" style="width:30px;margin-top:10px;"></img></div> </div> </div> </div>
  </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
