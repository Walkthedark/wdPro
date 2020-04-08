<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:472px;left:510px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="cDate" idColumn="startTime" autoNew="true"> 
      <column name="startTime" type="Date" xid="xid3"/>  
      <column name="endTime" type="Date" xid="xid4"/>  
      <column name="type" type="String" xid="xid5"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="pData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="jxs_title" type="String" xid="column2"/>  
      <column name="qdsj" type="String" xid="column3"/>  
      <column name="qtsj" type="String" xid="column4"/>  
      <column name="ys" type="String" xid="column5"/>  
      <column name="qdjl" type="String" xid="xid6"/>  
      <column name="jlpc" type="String" xid="xid7"/>  
      <column name="qdzp" type="String" xid="xid8"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="280"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="所属区域拜访"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">所属区域拜访</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
        xid="row3" style="background-color:white;"> 
        <div class="x-col" xid="col12"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="筛选" xid="button2" icon="glyphicon glyphicon-filter" style="color: #8FC41C;"> 
            <i xid="i2" class="glyphicon glyphicon-filter"/>  
            <span xid="span1">筛选</span> 
          </a>  
          <span xid="span2" class="font-Three"><![CDATA[（可按分区，省份，城市，报告日期筛选查看）]]></span>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit1"> 
            <label class="x-label" xid="label1"><![CDATA[时间：]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input1" dataType="Date" bind-ref="$model.cDate.ref(&quot;startTime&quot;)"
              format="yyyy-MM-dd"/>  
            <label class="x-label" xid="label2"><![CDATA[ 至]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input2" dataType="Date" bind-ref="$model.cDate.ref(&quot;endTime&quot;)"
              format="yyyy-MM-dd"/> 
          </div>  
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit2"> 
            <label class="x-label" xid="label3"><![CDATA[区域类型：]]></label>  
            <select component="$UI/system/components/justep/select/select" class="form-control x-edit"
              xid="select1"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row "
        xid="row1" style="text-align:center;"> 
        <div class="x-col" xid="col1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="确定" xid="button4" onClick="button4Click"> 
            <i xid="i4"/>  
            <span xid="span6">确定</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default3"
            label="清除" xid="button5" onClick="button5Click"> 
            <i xid="i5"/>  
            <span xid="span7">清除</span> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content6" _xid="C8216975B180000191D5C69F1144A280"> 
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
                      class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label4" style="width:80px;">经销商：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output2" bind-ref="ref(&quot;jxs_title&quot;)"/> 
                    </div>  
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit4"> 
                      <label class="x-label" xid="label5" style="width:80px;">签到时间：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output3" bind-ref="ref(&quot;qdsj&quot;)"/> 
                    </div>  
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label6" style="width:80px;">签退时间：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output5" bind-ref="ref(&quot;qtsj&quot;)"/> 
                    </div>  
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit4"> 
                      <label class="x-label" xid="label4" style="width:80px;">用时：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output4" bind-ref="ref(&quot;ys&quot;)"/> 
                    </div>  
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit5"> 
                      <label class="x-label" xid="label5" style="width:80px;">签到地址：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output7" bind-ref="ref(&quot;qdjl&quot;)"/> 
                    </div>  
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit6"> 
                      <label class="x-label" xid="label6" style="width:80px;">距离偏差：</label>  
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output x-edit" xid="output6" bind-ref="ref(&quot;jlpc&quot;)"/> 
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
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
