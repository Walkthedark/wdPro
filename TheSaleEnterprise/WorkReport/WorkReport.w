<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="workData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="rq" type="String" xid="xid2"/>  
      <column name="lx" type="String" xid="xid3"/>  
      <column name="nr" type="String" xid="xid4"/>  
      <column name="zp" type="String" xid="xid5"/>  
      <column name="dzs" type="String" xid="xid6"/>  
      <column name="em_id" type="String" xid="xid7"/>  
      <column name="em_bm" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <column name="col9" type="String" xid="xid10"/>  
      <column name="col10" type="String" xid="xid11"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/WorkReport/dialog/workReportNew.w" onClose="newDialogClose"/>  
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
            label="发送" xid="button7" onClick="button7Click"> 
            <i xid="i7"/>  
            <span xid="span7">发送</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
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
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3" height="110"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="工作日报"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">工作日报</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="background-color:white;"> 
        <div class="x-col x-col-20" xid="col11"/>  
        <div class="x-col" xid="col12"> 
          <a component="$UI/system/components/justep/button/button" class="btn border-r"
            label="填 写" xid="button4" style="width:100%;" onClick="button4Click"> 
            <i xid="i5"/>  
            <span xid="span6">填 写</span> 
          </a> 
        </div>  
        <div class="x-col x-col-20" xid="col13"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView2"> 
        <div class="x-content-center x-pull-down container" xid="div6"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i12"/>  
          <span class="x-pull-down-label" xid="span8">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div5"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list2" style="background-color:white;" data="workData"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2" class="border-Two"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                  xid="row1"> 
                  <div class="col col-xs-12" xid="col2"> 
                    <label xid="label3" bind-text="ref(&quot;col1&quot;)" class="font-One"
                      style="float:left;">label</label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output font-XX" xid="output2" bind-ref="ref(&quot;rq&quot;)"
                      style="float:left;margin-top:-10px;"/> 
                  </div>  
                  <div class="col col-xs-12" xid="col3"> 
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output" xid="output1" bind-ref="ref(&quot;nr&quot;)"/> 
                  </div>  
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output" xid="output3" bind-ref="ref(&quot;zp&quot;)" onRender="output3Render"/> 
                  </div>  
                  <div class="col col-xs-12" xid="col4" style="text-align:right;"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-link btn-only-icon" label="button" xid="PLBtn"
                      onClick="button9Click" icon="img:$UI/TheSaleEnterprise/WorkReport/img/001.png|"> 
                      <i xid="i9"/>  
                      <img src="$UI/TheSaleEnterprise/WorkReport/img/001.png"
                        xid="image4" style="width:20px;"/>  
                      <span xid="span10"/> 
                    </a> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div>  
        <div class="x-content-center x-pull-up" xid="div4"> 
          <span class="x-pull-up-label" xid="span17">加载更多...</span> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="showImg" src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/imgShow.w" forceRefreshOnOpen="true"></span></div>
