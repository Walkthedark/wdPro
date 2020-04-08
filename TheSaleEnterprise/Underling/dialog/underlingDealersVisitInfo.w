<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="jxs_title" type="String" xid="xid2"/>  
      <column name="qdsj" type="String" xid="xid3"/>  
      <column name="qtsj" type="String" xid="xid4"/>  
      <column name="ys" type="String" xid="xid5"/>  
      <column name="qdjl" type="String" xid="xid6"/>  
      <column name="jlpc" type="String" xid="xid7"/>  
      <column name="qdzp" type="String" xid="xid8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="text" autoNew="true"> 
      <data xid="default1">[{"id":"0","text":"只看直接下属"},{"id":"1","text":"查看所有下属"}]</data> 
    <column name="text" type="String" xid="column2"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Underling/dialog/underlingClockInInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top border-Two" xid="top3" height="96"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="下属经销商拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">下属经销商拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="text-align:center;"> 
        <div class="x-col" xid="col1"> 
          <div component="$UI/system/components/justep/output/output" class="x-output font-One"
            xid="output1" bind-ref='$model.CData.ref("text")'/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel6"> 
        <div class="x-panel-content x-scroll-view" xid="content8" _xid="C7DF23A047C000015332AA703E904750"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView2"> 
            <div class="x-content-center x-pull-down container" xid="div6"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
              <span class="x-pull-down-label" xid="span10">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div5"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" style="background-color:white;" data="pData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2" class="border-Two"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row6"> 
                      <div class="x-col" xid="col21"> 
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit1"> 
                          <label class="x-label" xid="label1" style="width:80px;"><![CDATA[经销商：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output2" bind-ref='ref("jxs_title")'/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit2"> 
                          <label class="x-label" xid="label2" style="width:80px;"><![CDATA[签到时间：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output3" bind-ref="ref(&quot;qdsj&quot;)"/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit3"> 
                          <label class="x-label" xid="label3" style="width:80px;"><![CDATA[签退时间：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output5" bind-ref="ref(&quot;qtsj&quot;)"/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit4"> 
                          <label class="x-label" xid="label4" style="width:80px;"><![CDATA[用时：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output4" bind-ref="ref(&quot;ys&quot;)"/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit5"> 
                          <label class="x-label" xid="label5" style="width:80px;"><![CDATA[签到地址：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output7" bind-ref="ref(&quot;qdjl&quot;)"/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit6"> 
                          <label class="x-label" xid="label6" style="width:80px;"><![CDATA[距离偏差：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output6" bind-ref="ref(&quot;jlpc&quot;)"/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit7"> 
                          <label class="x-label" xid="label7" style="width:80px;"><![CDATA[签到照片：]]></label>  
                          <div component="$UI/system/components/justep/output/output"
                            class="x-output x-edit" xid="output9" bind-ref="ref(&quot;qdzp&quot;)"/> 
                        </div>  
                        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                          class="x-label-edit x-label30" xid="labelEdit9"> 
                          <label class="x-label" xid="label9"/>  
                          <div class="x-edit" xid="div1" style="text-align:right;"> 
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-link btn-only-icon" label="button" xid="PLBtn"
                              onClick="button9Click" icon="img:$UI/TheSaleEnterprise/WorkReport/img/001.png|"> 
                              <i xid="i9"/>  
                              <img src="$UI/TheSaleEnterprise/WorkReport/img/001.png"
                                xid="image4" style="width:20px;"/>  
                              <span xid="span1"/> 
                            </a> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div4"> 
              <span class="x-pull-up-label" xid="span8">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="right-top" xid="popOver3" anchor="PLBtn"> 
    <div class="x-popOver-overlay" xid="div11"/>  
    <div class="x-popOver-content" xid="div12"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-right"
          label="赞" xid="button5" icon="e-commerce e-commerce-aixin" onClick="button5Click"> 
          <i xid="i4" class="e-commerce e-commerce-aixin"/>  
          <span xid="span3">赞</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="评论" xid="button6" bind-click="button6Click"> 
          <i xid="i6"/>  
          <span xid="span5">评论</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver2"> 
    <div class="x-popOver-overlay" xid="div8"/>  
    <div class="x-popOver-content" xid="div9" style="width:90%;"> 
      <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
        xid="inputGroup1"> 
        <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
          xid="input1" placeHolder="请输入..."/>  
        <div class="input-group-btn" xid="layoutWizard1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="发送" xid="button7" onClick="button8Click"> 
            <i xid="i2"/>  
            <span xid="span7">发送</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
