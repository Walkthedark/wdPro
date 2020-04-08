<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:127px;left:238px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="BData" idColumn="qtsj" autoNew="false"> 
      <column name="qtsj" type="String" xid="xid1"/>  
      <column name="qtdz" type="String" xid="xid2"/>  
      <column name="bcbfxjzp" type="String" xid="xid3"/>  
      <column name="qtpz" type="String" xid="xid4"/>  
      <column name="bcbfxj" type="String" xid="xid5"/>  
      <column name="xcbfrq" type="String" xid="xid6"/>  
      <column name="xcbfmb" type="String" xid="xid7"/>  
      <column name="bfjhtp" type="String" xid="xid8"/>  
      <column name="jxs_title" type="String" xid="xid9"/>  
      <column name="bfrq" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="qtdz">
      <column name="qtdz" type="String" xid="xid1"/>
      
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/VisitSignIn/dialog/dealersInfoList.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="拜访详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">拜访详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
        xid="row1"> 
        <div class="x-col" xid="col1"> 
          <div component="$UI/system/components/justep/output/output" class="x-output font-One"
            xid="output1" bind-text='"本次("+ $model.BData.val("jxs_title") +")拜访"+ $model.BData.val("bfrq")'/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
        xid="row2"> 
        <div class="x-col" xid="col4"> 
          <div component="$UI/system/components/justep/output/output" class="x-output font-Two"
            xid="output2" bind-text=" $model.isVisit(event)"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
        xid="row3"> 
        <div class="x-col" xid="col5"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4" style="margin:0px;"> 
            <div class="col col-xs-12" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:6em;"><![CDATA[拜访签退：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output6" bind-ref="$model.BData.ref(&quot;qtsj&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:6em;"><![CDATA[签退地址：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output5" bind-ref="$model.BData.ref(&quot;qtdz&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:6em;"><![CDATA[签退拍照：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output7"/> 
              </div> 
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref='$model.BData.ref("qtpz")' onRender="output10Render"></div></div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
        xid="row5"> 
        <div class="x-col" xid="col12"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row6"> 
            <div class="col col-xs-12" xid="col11"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:6em;"><![CDATA[拜访小结：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output9" bind-ref="$model.BData.ref(&quot;bcbfxj&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col9"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label5" style="width:6em;"><![CDATA[小结图片：]]></label>  
                 
              <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8"/></div> 
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='$model.BData.ref("bcbfxjzp")' onRender="output8Render"></div></div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
        xid="row7"> 
        <div class="x-col" xid="col16"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-12" xid="col14"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label10" style="width:8em;"><![CDATA[下次拜访时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output13" bind-ref="$model.BData.ref(&quot;xcbfrq&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col15"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:8em;"><![CDATA[下次拜访目标：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output12" bind-ref="$model.BData.ref(&quot;xcbfmb&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col13"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label8" style="width:8em;"><![CDATA[拜访计划图片：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output11"/> 
              </div> 
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='$model.BData.ref("bfjhtp")' onRender="output11Render"></div></div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="showImg" src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/imgShow.w" forceRefreshOnOpen="true"></span></div>
