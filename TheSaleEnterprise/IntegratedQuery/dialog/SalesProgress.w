<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pDate" idColumn="zid"> 
      <data xid="default2">[{"progress":"80","state":"success"}]</data>  
      <column name="zid" type="String" xid="xid1"/>  
      <column name="ztitle" type="String" xid="xid2"/>  
      <column name="target" type="String" xid="xid6"/>  
      <column name="yizhi" type="String" xid="xid7"/>  
      <column name="dacheng" type="String" xid="xid8"/>  
      <column name="yusuan" type="String" xid="xid9"/>  
      <column name="sjfyl" type="String" xid="xid10"/>  
      <column name="yjfyl" type="String" xid="xid11"/>  
      <column name="xsdcl" type="String" xid="xid12"/>  
      <column name="fysyl" type="String" xid="xid13"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="areaList" idColumn="id">
      <column name="id" type="String" xid="xid3"/>  
      <column name="title" type="String" xid="xid4"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="area" autoNew="true" onValueChanged="cDateValueChanged">
      <column name="area" type="String" xid="xid5"/>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="100" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="销售进度"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">销售进度</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit border-div"
        xid="labelEdit1"> 
        <label class="x-label" xid="label2"><![CDATA[选择区域：]]></label>  
        <select component="$UI/system/components/justep/select/select" class="form-control x-edit"
          xid="select1" bind-ref="$model.cDate.ref(&quot;area&quot;)" bind-options="areaList"
          bind-optionsValue="id" bind-optionsLabel="title"/>
      </div>
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-content" xid="content3" style="background-color:#f0f0f0;"> 
          <div xid="div1" class="mar2 border-div" style="background-color:white;"> 
            <hr xid="hr1"/>  
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row1" style="margin-top:10px;"> 
              <div class="x-col" xid="col1"> 
                <label xid="label1" class="font-five">销售进度及费用使用进度（单位：万元）</label>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row2"> 
              <div class="x-col" xid="col4"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row3"> 
                  <div class="col col-xs-12" xid="col7"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row4"> 
                      <div class="x-col" xid="col10"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit2"> 
                          <label class="x-label" xid="label3"><![CDATA[销售目标：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output1" bind-ref="$model.pDate.ref(&quot;target&quot;)"/>
                        </div>
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col2"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row10"> 
                      <div class="x-col" xid="col3"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit3"> 
                          <label class="x-label" xid="label4"><![CDATA[销售达成：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output2" bind-ref="$model.pDate.ref(&quot;target&quot;)"/>
                        </div>
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col8"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row11"> 
                      <div class="x-col x-col-25" xid="col5" style="padding-top:12px;"> 
                        <span xid="span15">费用预算：</span>
                      </div>  
                      <div class="x-col" xid="col11"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress1" valuenow="80" style="display:none"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar1"> 
                            <span xid="span10"/>
                          </div> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit4"> 
                          <label class="x-label" xid="label5" bind-text="$model.pDate.val(&quot;yusuan&quot;)"/>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref="$model.pDate.ref(&quot;yjfyl&quot;)"
                            onRender="output3Render"/>
                        </div>
                      </div> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col9"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row12"> 
                      <div class="x-col x-col-25" xid="col18" style="padding-top:12px;"> 
                        <span xid="span37">已支费用：</span>
                      </div>  
                      <div class="x-col" xid="col15"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit" xid="labelEdit5"> 
                          <label class="x-label" xid="label6" bind-text="$model.pDate.val(&quot;yizhi&quot;)"/>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output4" bind-ref="$model.pDate.ref(&quot;sjfyl&quot;)"
                            onRender="output4Render"/>
                        </div>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div xid="div3" class="mar2 border-div" style="background-color:white;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row5" style="text-align:center;"> 
              <div class="x-col" xid="col13"> 
                <div id="gauge1" style="width:100%;height:300px;" xid="div5"/>
              </div> 
            </div> 
          </div>  
          <div xid="div33" class="mar2 border-div" style="background-color:white;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
              xid="row35" style="text-align:center;"> 
              <div class="x-col" xid="col25"> 
                <div id="gauge2" style="width:100%;height:300px;" xid="div32"/>
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
</div>
