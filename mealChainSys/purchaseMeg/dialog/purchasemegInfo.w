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
        <div class="x-titlebar-title" xid="title2"><![CDATA[九台路-全部]]></div>  
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
              label="类型(全部)" xid="button6" icon="icon-arrow-down-b" style="color:#8E8E8E;border-right-style:solid;border-right-width:thin;border-right-color:#CDCDCD;"
              onClick="{&quot;operation&quot;:&quot;popOver3.show&quot;}"> 
              <i xid="i6" class="icon-arrow-down-b"/>  
              <span xid="span5">类型(全部)</span>
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
                    class="btn btn-link btn-only-label" label="厨房-食材申购" xid="button1"
                    icon="icon-beer"> 
                    <i xid="i1" class="icon-beer" style="color:#63C8E7;font-size:18px;"/>  
                    <span xid="span1" style="color:#191919;font-size:16px;">厨房-食材申购</span>
                  </a> 
                </h4> 
              </div>  
              <div class="media-right" xid="mediaRight4"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-right" label="已下单" xid="button3" icon="dataControl dataControl-arrowrightl"
                  style="color:#9D9D9D;"> 
                  <i xid="i3" class="dataControl dataControl-arrowrightl"/>  
                  <span xid="span3">已下单</span>
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
                    class="btn btn-link btn-only-label" label="厨房-食材申购" xid="button9"
                    icon="icon-beer"> 
                    <i xid="i5" class="icon-beer" style="color:#63C8E7;font-size:18px;"/>  
                    <span xid="span9" style="color:#191919;font-size:16px;">厨房-食材申购</span>
                  </a> 
                </h4> 
              </div>  
              <div class="media-right" xid="mediaRight5"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-right" label="待审核" xid="button8" icon="dataControl dataControl-arrowrightl"
                  style="color:#9D9D9D;"> 
                  <i xid="i9" class="dataControl dataControl-arrowrightl"/>  
                  <span xid="span8">待审核</span>
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
    direction="auto" xid="popOver3" opacity="0.5"> 
    <div class="x-popOver-overlay" xid="div18"/>  
    <div class="x-popOver-content div-radius" xid="div17"> 
      <div xid="div5" style="height:400px;width:400px;background-color:white;"> 
        <div xid="div3" class="list-group-item"> 
          <span xid="span16"><![CDATA[收购类型]]></span>
        </div>  
        <div xid="div4" class="list-group-item"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3"> 
            <div class="x-col" xid="col17"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm "
                label="类型(全部)" xid="button14" style="background-color:#407422;color:#FFFFFF;width:60px;"> 
                <i xid="i11"/>  
                <span xid="span13">类型(全部)</span>
              </a> 
            </div>  
            <div class="x-col" xid="col10"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="食材申购" xid="button15" style="width:60px;"> 
                <i xid="i10"/>  
                <span xid="span12">食材申购</span>
              </a> 
            </div>  
            <div class="x-col" xid="col9"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="耗品申购" xid="button11" style="width:60px;"> 
                <i xid="i12"/>  
                <span xid="span15">耗品申购</span>
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
                label="已创建" xid="button17" style="width:60px;color:#737373;"> 
                <i xid="i17"/>  
                <span xid="span27">已创建</span>
              </a> 
            </div>  
            <div class="x-col" xid="col19"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="待审核" xid="button24" style="width:60px;color:#737373;"> 
                <i xid="i24"/>  
                <span xid="span26">待审核</span>
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row7"> 
            <div class="x-col" xid="col21"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已审核" xid="button26" style="width:60px;color:#737373;"> 
                <i xid="i26"/>  
                <span xid="span30">已审核</span>
              </a> 
            </div>  
            <div class="x-col" xid="col23"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已作废" xid="button27" style="width:60px;color:#737373;"> 
                <i xid="i25"/>  
                <span xid="span28">已作废</span>
              </a> 
            </div>  
            <div class="x-col" xid="col22"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已打回" xid="button25" style="width:60px;color:#737373;"> 
                <i xid="i27"/>  
                <span xid="span29">已打回</span>
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row8"> 
            <div class="x-col" xid="col24"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已下单" xid="button29" style="width:60px;color:#737373;"> 
                <i xid="i29"/>  
                <span xid="span33">已下单</span>
              </a> 
            </div>  
            <div class="x-col" xid="col26"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-befo-color"
                label="已过期" xid="button30" style="width:60px;color:#737373;"> 
                <i xid="i28"/>  
                <span xid="span31">已过期</span>
              </a> 
            </div>  
            <div class="x-col" xid="col25"></div> 
          </div>
        </div> 
      </div>
    </div> 
  </div>
</div>
