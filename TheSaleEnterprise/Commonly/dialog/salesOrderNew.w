<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="id" autoNew="true"> 
      <data xid="default1">[{"id":"1","col1":"李四","col2":"东南大区","col3":"2018-02-17 14:00","col4":"2018021700001","col5":"2018-02-17 14:00至2018-02-17 15:00","col6":"共（0天1小时）","col7":"测试","col8":"../TheSaleEnterprise/Commonly/img/006.png"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="销售订单"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">销售订单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row1" style="width:100%;"> 
        <div class="x-col" xid="col1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2" style="margin-left:5%;"> 
            <div class="col col-xs-12" xid="col4" style="text-align:center;"> 
              <label xid="label1" class="font-One"><![CDATA[请选择下订单的经销商]]></label> 
            </div>  
            <div class="col col-xs-12" xid="col5"> 
              <span class="second"> 
                <input type="text" name="makeupCo" id="makeupCo" onfocus="setfocus(this)"
                  oninput="setinput(this);" placeholder="请选择或输入" bind-value="$model.CData.ref(&quot;title&quot;)"/>  
                <select name="makeupCoSe" id="typenum" onchange="changeF(this)"
                  size="10" style="display:none;"/> 
              </span>  
              <!-- <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label2" style="text-align:right;"><![CDATA[经销商：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1"/> 
              </div>  --> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row3"> 
        <div class="col col-xs-12" xid="col6"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="提交" xid="button2" style="width:100%;" onClick="button2Click"> 
            <i xid="i2"/>  
            <span xid="span1">提交</span> 
          </a> 
        </div>
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1"></span></div>
