<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="id" autoNew="true"> 
      <data xid="default1">[{"id":"1","col1":"2018-02-02","col2":"15:29:30","col4":"迟到，没有下班签到记录"},{"id":"2","col1":"2018-02-03","col2":"15:29:30","col3":"16:29:30","col4":"上班签到正常，早退"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="sbdd" type="String" xid="xid2"/>  
      <column name="xbsj" type="String" xid="xid3"/>  
      <column name="cdfz" type="String" xid="xid4"/>  
      <column name="ztfz" type="String" xid="xid5"/>  
      <column name="kgt" type="String" xid="xid6"/>  
      <column name="cqxs" type="String" xid="xid7"/>  
      <column name="bz" type="String" xid="xid8"/>  
      <column name="sbzp" type="String" xid="xid9"/>  
      <column name="xbzp" type="String" xid="xid10"/>  
      <column name="date" type="String" xid="xid11"/>  
      <column name="sbsj" type="String" xid="xid12"/>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="考勤查询"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">考勤查询</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" _xid="C7E2C3ADF42000016182A4937EC0DAF0"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin:0px;"> 
        <div class="x-col" xid="col1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2" style="margin:0px;padding:0px;"> 
            <div class="col col-xs-12 border-Two" xid="col4"> 
              <div component="$UI/system/components/justep/output/output" class="x-output font-One"
                xid="output1" bind-ref="$model.CData.ref(&quot;date&quot;)" style="text-align:center;"/> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col5"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:80px;"><![CDATA[上班时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output2" bind-ref="$model.CData.ref(&quot;sbsj&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" label="button" xid="button2"
                  icon="img:$UI/TheSaleEnterprise/ClockIn/img/002.png|"> 
                  <i xid="i2"/>  
                  <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image1"
                    style="width:20px;"/>  
                  <span xid="span2"/> 
                </a>  
                <div class="x-edit" xid="div1"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output4" bind-ref="$model.CData.ref(&quot;sbdd&quot;)"/> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:80px;"><![CDATA[下班时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output3" bind-ref="$model.CData.ref(&quot;xbsj&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-6" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:80px;"><![CDATA[迟到时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output5" bind-ref="$model.CData.ref(&quot;cdfz&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-6" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:80px;"><![CDATA[早退时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output6" bind-ref="$model.CData.ref(&quot;ztfz&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-6" xid="col9"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:80px;"><![CDATA[旷工时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output7" bind-ref="$model.CData.ref(&quot;kgt&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-6" xid="col10"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label7" style="width:80px;"><![CDATA[实际出勤：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output8" bind-ref="$model.CData.ref(&quot;cqxs&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col11"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:80px;"><![CDATA[备注：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output9" bind-ref="$model.CData.ref(&quot;bz&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-6" xid="col12"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit11"> 
                <label class="x-label" xid="label11" style="width:80px;"><![CDATA[上班照片：]]></label>  
                <div class="x-edit" xid="div2"> 
                  <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image2"
                    style="width:80px;"/> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-6" xid="col13"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit12"> 
                <label class="x-label" xid="label12" style="width:80px;"><![CDATA[下班照片：]]></label>  
                <div class="x-edit" xid="div3"> 
                  <img src="$UI/TheSaleEnterprise/ClockIn/img/002.png" xid="image3"
                    style="width:80px;"/> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>
</div>
