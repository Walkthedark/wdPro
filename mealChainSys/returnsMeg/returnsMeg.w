<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar2" style="background-color:#272F2C;"> 
        <div class="x-titlebar-left" xid="left2"/>  
        <div class="x-titlebar-title" xid="title2"><![CDATA[九台路-档口]]></div>  
        <div class="x-titlebar-right reverse" xid="right2"></div>
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3"> 
        <div class="x-panel-top" xid="top3" height="48"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"
            style="background-color:transparent;border-bottom-style:solid;border-bottom-width:thin;border-bottom-color:#CDCDCD;height:100%;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
              label="近三天" xid="button4" icon="icon-arrow-down-b" style="color:#8E8E8E;border-right-style:solid;border-right-width:thin;border-right-color:#CDCDCD;"
              onClick="button4Click"> 
              <i xid="i4" class="icon-arrow-down-b"/>  
              <span xid="span4">近三天</span>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="供应商(全部)" xid="button6" icon="icon-arrow-down-b" style="color:#8E8E8E;border-right-style:solid;border-right-width:thin;border-right-color:#CDCDCD;"
              onClick="{&quot;operation&quot;:&quot;popOver3.show&quot;}"> 
              <i xid="i6" class="icon-arrow-down-b"/>  
              <span xid="span5">供应商(全部)</span>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="状态(全部)" xid="button7" icon="icon-arrow-down-b" style="color:#8E8E8E;"
              onClick="{&quot;operation&quot;:&quot;popOver4.show&quot;}"> 
              <i xid="i7" class="icon-arrow-down-b"/>  
              <span xid="span6">状态(全部)</span>
            </a>
          </div> 
        </div>  
        <div class="x-panel-content" xid="content5">
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1" style="height:10px;background-color:#EEEEEE;"> 
            <div class="x-col" xid="col1"/>  
            <div class="x-col" xid="col3"/>  
            <div class="x-col" xid="col5"/>
          </div>
          <div xid="div2" class="list-group-item" style="padding:5px 5px 5px 5px;"
            bind-click="div16Click"> 
            <div class="media" xid="media4"> 
              <div class="media-left" xid="mediaLeft1"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-right btn-only-label" label="09/13 09:44"
                  xid="button2" icon="dataControl dataControl-arrowrightl" style="color:#9D9D9D;"> 
                  <i xid="i2" class="dataControl dataControl-arrowrightl"/>  
                  <span xid="span2">09/13 09:44</span>
                </a>
              </div>
              <div class="media-body" xid="mediaBody4"> 
                <h4 class="media-heading" xid="h42" style="text-align:center;"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-label" label="上海熟食加工厂" xid="button1"
                    icon="icon-beer"> 
                    <i xid="i1" class="icon-beer" style="color:#63C8E7;font-size:18px;"/>  
                    <span xid="span1" style="color:#191919;font-size:16px;">上海熟食加工厂</span>
                  </a> 
                </h4> 
              </div>  
              <div class="media-right" xid="mediaRight4"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-right" label="已提交" xid="button3" icon="dataControl dataControl-arrowrightl"
                  style="color:#9D9D9D;"> 
                  <i xid="i3" class="dataControl dataControl-arrowrightl"/>  
                  <span xid="span3">已提交</span>
                </a> 
              </div> 
            </div> 
          </div>  
          <div xid="div1" class="list-group-item" style="padding:5px 5px 5px 5px;"
            bind-click="div16Click"> 
            <div class="media" xid="media5"> 
              <div class="media-left" xid="mediaLeft2"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-right btn-only-label" label="09/13 09:44"
                  xid="button5" icon="dataControl dataControl-arrowrightl" style="color:#9D9D9D;"> 
                  <i xid="i8" class="dataControl dataControl-arrowrightl"/>  
                  <span xid="span7">09/13 09:44</span>
                </a> 
              </div>  
              <div class="media-body" xid="mediaBody5"> 
                <h4 class="media-heading" xid="h41" style="text-align:center;"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-label" label="食为天食品加工厂" xid="button9"
                    icon="icon-beer"> 
                    <i xid="i5" class="icon-beer" style="color:#63C8E7;font-size:18px;"/>  
                    <span xid="span9" style="color:#191919;font-size:16px;">食为天食品加工厂</span>
                  </a> 
                </h4> 
              </div>  
              <div class="media-right" xid="mediaRight5"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-right" label="已退货" xid="button8" icon="dataControl dataControl-arrowrightl"
                  style="color:#9D9D9D;"> 
                  <i xid="i9" class="dataControl dataControl-arrowrightl"/>  
                  <span xid="span8">已退货</span>
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" opacity="0.5"> 
    <div class="x-popOver-overlay" xid="div6"/>  
    <div class="x-popOver-content div-radius" xid="div7">
      <div xid="div11" style="height:400px;width:400px;background-color:white;">
        <div xid="div12" class="list-group-item">
          <span xid="span19"><![CDATA[操作时间]]></span> 
        </div>  
        <div xid="div13" class="list-group-item">
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row5"> 
            <div class="x-col" xid="col11">
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm "
                label="今天" xid="button18" style="background-color:#407422;color:#FFFFFF;width:60px;"> 
                <i xid="i18"/>  
                <span xid="span20">今天</span>
              </a>
            </div>  
            <div class="x-col" xid="col12">
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="昨天" xid="button19" style="width:60px;"> 
                <i xid="i19"/>  
                <span xid="span21">昨天</span>
              </a>
            </div>  
            <div class="x-col" xid="col13">
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="进3天" xid="button20" style="width:60px;"> 
                <i xid="i20"/>  
                <span xid="span22">进3天</span>
              </a>
            </div>
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row6"> 
            <div class="x-col" xid="col16"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm "
                label="近7天" xid="button22" style="background-color:#407422;color:#FFFFFF;left:width:60px;;"> 
                <i xid="i22"/>  
                <span xid="span24">近7天</span>
              </a> 
            </div>  
            <div class="x-col" xid="col15"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="近30天" xid="button23" style="width:60px;"> 
                <i xid="i21"/>  
                <span xid="span23">近30天</span>
              </a> 
            </div>  
            <div class="x-col" xid="col14"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="自定义" xid="button21" style="width:60px;"> 
                <i xid="i23"/>  
                <span xid="span25">自定义</span>
              </a> 
            </div> 
          </div>
        </div>
      </div> 
    </div>
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver4" opacity="0.5"> 
    <div class="x-popOver-overlay" xid="div26"/>  
    <div class="x-popOver-content div-radius" xid="div25"> 
      <div xid="div8" style="height:400px;width:400px;background-color:white;"> 
        <div xid="div10" class="list-group-item"> 
          <span xid="span18"><![CDATA[申购状态]]></span>
        </div>  
        <div xid="div9" class="list-group-item"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row4"> 
            <div class="x-col" xid="col18"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm "
                label="全部" xid="button16" style="background-color:#407422;color:#FFFFFF;width:60px;"> 
                <i xid="i16"/>  
                <span xid="span17">全部</span>
              </a> 
            </div>  
            <div class="x-col" xid="col20"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已提交" xid="button17" style="width:60px;color:#737373;"> 
                <i xid="i17"/>  
                <span xid="span27">已提交</span>
              </a> 
            </div>  
            <div class="x-col" xid="col19"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="供应商确认" xid="button24" style="color:#737373;"> 
                <i xid="i24"/>  
                <span xid="span26">供应商确认</span>
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row7"> 
            <div class="x-col" xid="col21"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已退货" xid="button26" style="width:60px;color:#737373;"> 
                <i xid="i26"/>  
                <span xid="span30">已退货</span>
              </a> 
            </div>  
            <div class="x-col" xid="col23"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="待对账" xid="button27" style="width:60px;color:#737373;"> 
                <i xid="i25"/>  
                <span xid="span28">待对账</span>
              </a> 
            </div>  
            <div class="x-col" xid="col22"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已对账" xid="button25" style="width:60px;color:#737373;"> 
                <i xid="i27"/>  
                <span xid="span29">已对账</span>
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row8"> 
            <div class="x-col" xid="col24"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已取消" xid="button29" style="width:60px;color:#737373;"> 
                <i xid="i29"/>  
                <span xid="span33">已取消</span>
              </a> 
            </div>  
            <div class="x-col" xid="col26"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已核账" xid="button30" style="width:60px;color:#737373;"> 
                <i xid="i28"/>  
                <span xid="span31">已核账</span>
              </a> 
            </div>  
            <div class="x-col" xid="col25"></div> 
          </div>
        </div> 
      </div>
    </div> 
  </div>
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver3" opacity="0.5">
   <div class="x-popOver-overlay" xid="div18"></div>
   <div class="x-popOver-content div-radius" xid="div17">
    <div xid="div16" style="height:400px;background-color:white;width:350px;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
      <div class="x-panel-top" xid="top2" height="53">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-bottom-width:thin;border-bottom-color:#A1A3A5;height:52;">
        <div xid="col2" style="width:0.5em;"></div>
        <div class="x-col x-col-90" xid="col2">
         <div class="content_bg input_radius form-group has-feedback text-muted" xid="formGroup1" style="height:40;">
          <input component="$UI/system/components/justep/input/input" class="input_radius form-control x-inputText" xid="key" placeHolder="请输入物料名称" style="background-color:#EEEEEE;"></input>
          <i class="icon-ios7-search-strong form-control-feedback" xid="col4"></i></div> </div> 
        <div xid="col4" style="width:0.5em;"></div></div> </div> 
      <div class="x-panel-content" xid="content2">
       <div xid="div19" class="list-group-item" style="padding:0px 0px 0px 0px;">
        <div class="media" xid="media1">
         <div class="media-body" xid="mediaBody1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="供应商(全部)" xid="button10" style="color:#636363;">
           <i xid="i30"></i>
           <span xid="span10">供应商(全部)</span></a> </div> 
         <div class="media-right" xid="mediaRight1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button31" icon="icon-checkmark-circled" style="color:#407422;">
           <i xid="i31" class="icon-checkmark-circled"></i>
           <span xid="span34"></span></a> </div> </div> </div> 
       <div xid="div20" class="list-group-item" style="padding:0px 0px 0px 0px;">
        <div class="media" xid="media2">
         <div class="media-body" xid="mediaBody2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="上海熟食加工厂" xid="button33" style="color:#636363;">
           <i xid="i33"></i>
           <span xid="span36">上海熟食加工厂</span></a> </div> 
         <div class="media-right" xid="mediaRight2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button32" icon="icon-checkmark-circled" style="color:#407422;">
           <i xid="i32" class="icon-checkmark-circled"></i>
           <span xid="span35"></span></a> </div> </div> </div> 
       <div xid="div21" class="list-group-item" style="padding:0px 0px 0px 0px;">
        <div class="media" xid="media3">
         <div class="media-body" xid="mediaBody3">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="食为天熟食加工厂" xid="button35" style="color:#636363;">
           <i xid="i35"></i>
           <span xid="span38">食为天熟食加工厂</span></a> </div> 
         <div class="media-right" xid="mediaRight3">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button34" icon="icon-checkmark-circled" style="color:#407422;">
           <i xid="i34" class="icon-checkmark-circled"></i>
           <span xid="span37"></span></a> </div> </div> </div> </div> </div> </div> </div> </div></div>
