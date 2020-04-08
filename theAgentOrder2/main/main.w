<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <title class="color_css">互动订货</title>  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:287px;left:329px;height:auto;"
    onunLoad="modelUnLoad" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="order_id"> 
      <column name="bill_message" type="String" xid="xid1"/>  
      <column name="order_id" type="String" xid="xid2"/>  
      <column name="cancel_reason" type="String" xid="xid3"/>  
      <column name="client_id" type="String" xid="xid4"/>  
      <column name="deliver_goods" type="String" xid="xid5"/>  
      <column name="delivery_time" type="String" xid="xid6"/>  
      <column name="discount_price" type="String" xid="xid7"/>  
      <column name="gathering_type" type="String" xid="xid8"/>  
      <column name="is_discount" type="String" xid="xid9"/>  
      <column name="is_instead" type="String" xid="xid10"/>  
      <column name="logistics_cn" type="String" xid="xid11"/>  
      <column name="make" type="String" xid="xid12"/>  
      <column name="name" type="String" xid="xid13"/>  
      <column name="num" type="String" xid="xid14"/>  
      <column name="order_des" type="String" xid="xid15"/>  
      <column name="print_type" type="String" xid="xid16"/>  
      <column name="order_sn" type="String" xid="xid17"/>  
      <column name="order_time" type="String" xid="xid18"/>  
      <column name="out_warehouse" type="String" xid="xid19"/>  
      <column name="price" type="String" xid="xid20"/>  
      <column name="search_goods" type="String" xid="xid21"/>  
      <column name="type" type="String" xid="xid22"/>  
      <column name="type_trans" type="String" xid="xid23"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="id">
      <column name="id" type="String" xid="xid24"/>  
      <column name="name" type="String" xid="xid25"/>  
      <column name="col2" type="String" xid="xid26"/>  
      <data xid="default3">[{&quot;id&quot;:&quot;day&quot;,&quot;name&quot;:&quot;今日&quot;},{&quot;id&quot;:&quot;week&quot;,&quot;name&quot;:&quot;本周&quot;},{&quot;id&quot;:&quot;month&quot;,&quot;name&quot;:&quot;本月&quot;},{&quot;id&quot;:&quot;year&quot;,&quot;name&quot;:&quot;本年&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data2" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="name" type="String" xid="column2"/>  
      <column name="col2" type="String" xid="column3"/>  
      <data xid="default4">[]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderCensusData" onCustomRefresh="orderCensusDataCustomRefresh" idColumn="id"><column name="id" type="String" xid="xid27"></column>
  <column name="count" type="String" xid="xid28"></column>
  <column name="price" type="String" xid="xid29"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content2" style="background-color:#F2F1F2;"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2"> 
        <div class="x-contents-content" xid="content3" onActive="content3Active"> 
          <div component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" class="x-scroll" onPullUp="scrollView1PullUp"> 
            <div class="x-scroll-content" xid="div6"> 
              <div xid="div2" style="padding:5px 5px 5px 5px;"> 
                <div xid="div15">
                  <div class="media" xid="media1"> 
                    <div class="media-body" xid="mediaBody1"> 
                      <h4 class="media-heading" xid="h41"><![CDATA[]]>
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-link btn-sm" label="订货统计" xid="button9" style="color:#818181;font-size:14px"> 
                          <i xid="i11"/>  
                          <span xid="span10">订货统计</span>
                        </a>
                      </h4> 
                    </div>  
                    <div class="media-right" xid="mediaRight1"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-sm btn-icon-right" label="本月" xid="button4"
                        icon="icon-arrow-down-b" style="color:#818181;font-size:14px"
                        onClick='{"operation":"popOver4.show"}'> 
                        <i xid="i10" class="icon-arrow-down-b"/>  
                        <span xid="span9">本月</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div xid="div1" style="background-color:white;"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row1"> 
                    <div class="x-col" xid="col2" style="border-right-style:solid;border-right-width:thin;border-right-color:#D7D7D7;text-align:center;"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-xs" label="订货金额" xid="button7" style="color:#242424;font-size:16px"> 
                        <i xid="i7"/>  
                        <span xid="span25">订货金额</span> 
                      </a>  
                      <div xid="div11"> 
                        <span xid="span32" style="color:#00BFFF;font-size:18px" bind-text='$model.orderCensusData.val("price")==null?"¥0.00":"¥"+$model.orderCensusData.val("price")'>¥0.00</span> 
                      </div>  
                      <div xid="div9"> 
                        <span xid="span33" style="color:#818181;font-size:14px" bind-text=' $model.orderCensusData.val("count")==null?"0单": $model.orderCensusData.val("count")+"单"'>0单</span> 
                      </div> 
                    </div>  
                    <div class="x-col" xid="col3" style="text-align:center;"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-xs" label="收货金额" xid="button8" style="color:#242424;font-size:16px"> 
                        <i xid="i8"/>  
                        <span xid="span26">收货金额</span> 
                      </a>  
                      <div xid="div12"> 
                        <span xid="span34" style="color:#00BFFF;font-size:18px">¥0.00</span> 
                      </div>  
                      <div xid="div13"> 
                        <span xid="span35" style="color:#818181;font-size:14px">0单</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>
              <div xid="div21" style="padding:5px 5px 5px 5px;"> 
                <div xid="div19"> 
                  <div class="media" xid="media2"> 
                    <div class="media-body" xid="mediaBody2"> 
                      <h4 class="media-heading" xid="h42"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-link btn-sm" label="订单状态" xid="button12"
                          style="color:#818181;font-size:14px"> 
                          <i xid="i12"/>  
                          <span xid="span15">订单状态</span>
                        </a> 
                      </h4> 
                    </div>  
                    <div class="media-right" xid="mediaRight2"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-sm btn-icon-right" label="全部" xid="button10"
                        icon="icon-arrow-down-b" style="color:#818181;font-size:14px"
                        onClick="button10Click"> 
                        <i xid="i14" class="icon-arrow-down-b"/>  
                        <span xid="span13">全部</span>
                      </a> 
                    </div> 
                  </div> 
                </div> 
              </div>
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="orderData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" bind-click="li1Click"> 
                    <div xid="div3" style="padding:5px 5px 5px 5px;"> 
                      <div xid="div4" class="box " style="background-color:white;padding-right:8px;padding-left:8px;"> 
                        <em class="first" xid="default1"/>  
                        <em class="last" xid="default2"/>  
                        <div class="media" xid="media4" style="margin-top:5px;"> 
                          <div class="media-body" xid="mediaBody4"> 
                            <h4 class="media-heading" xid="h44"> 
                              <a component="$UI/system/components/justep/button/button"
                                class="btn btn-default btn-xs" label="订" xid="button5"
                                style="background-color:white;color:#00BFFF;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#00BFFF #00BFFF #00BFFF #00BFFF;"> 
                                <i xid="i5"/>  
                                <span xid="span22">订</span> 
                              </a>  
                              <span xid="span17" style="font-size:16px;color:#242424;margin-left:3px;"
                                bind-text="val(&quot;name&quot;)">瑞龙商务公司</span> 
                            </h4> 
                          </div>  
                          <div class="media-right" xid="mediaRight3"> 
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-default btn-xs" label="待出库" xid="button6"
                              style="font-size:16px;background-color:white;color:#00BFFF;border-style:none none none none;"
                              bind-text=" val(&quot;type_trans&quot;)"> 
                              <i xid="i6"/>  
                              <span xid="span18">待出库</span> 
                            </a> 
                          </div> 
                        </div>  
                        <div class="media" xid="media3" style="margin-top:5px;"> 
                          <div class="media-body" xid="mediaBody3"> 
                            <h4 class="media-heading" xid="h46" style="font-size:14px;color:#818181;"> 
                              <span xid="span19">应收：¥</span>  
                              <span xid="span20" bind-text="val(&quot;price&quot;)+&quot;元&quot;">80元</span>  
                              <span xid="span21">(待收</span>  
                              <span xid="span27" style="color:#00BFFF" bind-text=" val(&quot;is_discount&quot;)==0?&quot;¥&quot;+val(&quot;price&quot;):val(&quot;discount_price&quot;)">¥80.00</span>  
                              <span xid="span29">)</span> 
                            </h4>  
                            <h4 class="media-heading" xid="h45" style="font-size:14px;color:#818181;"> 
                              <span xid="span28" bind-text=" val(&quot;make&quot;) +&quot;&quot;">张三 2019/09/26 15:43</span>  
                              <span xid="span1" bind-text="val(&quot;order_time&quot;)"/> 
                            </h4> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </li>
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div7"> 
              <span class="x-pull-up-label" xid="span6">加载更多...</span> 
            </div> 
          </div>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn_radius"
            label="订货单" xid="button13" icon="icon-plus-round" style="position:fixed;bottom:60px;right:5px;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#00BFFF #00BFFF #00BFFF #00BFFF;z-index:1;background-color:#00BFFF;"
            onClick="button13Click"> 
            <i xid="i13" class="icon-plus-round"/>  
            <span xid="span61">订货单</span> 
          </a>
        </div>  
        <div class="x-contents-content" xid="content1"><div xid="div16" class="list-group-item" style="padding:5px 5px 5px 5px;"><span xid="span5"><![CDATA[订货]]></span></div>
  <div xid="div17" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;">
   <div class="x-col" xid="col1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="订货单" xid="button11" icon="e-commerce e-commerce-shangpin1" style="color:#686768;" onClick="button11Click">
   <i xid="i4" class="e-commerce e-commerce-shangpin1" style="color:#FF5E29;font-size:18px"></i>
   <span xid="span7">订货单</span></a></div>
   <div class="x-col" xid="col4" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="切换列表" xid="button14" icon="e-commerce e-commerce-xunhuan" style="color:#686768;" onClick="button14Click">
   <i xid="i9" class="e-commerce e-commerce-xunhuan" style="color:#FFF585;font-size:18px;"></i>
   <span xid="span8">切换列表</span></a></div>
   <div class="x-col" xid="col5"></div>
  <div class="x-col" xid="col6"></div></div></div></div>  
        <div class="x-contents-content" xid="content4"/> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="首页" xid="button15" icon="glyphicon glyphicon-home" target="content3">
   <i xid="i15" class="glyphicon glyphicon-home"></i>
   <span xid="span11">首页</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="功能" xid="button2" icon="glyphicon glyphicon-th" target="content1"> 
          <i xid="i2" class="glyphicon glyphicon-th"/>  
          <span xid="span3">功能</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="图表" xid="button3" icon="glyphicon glyphicon-signal" target="content4"> 
          <i xid="i3" class="glyphicon glyphicon-signal"/>  
          <span xid="span4">图表</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" anchor="bottom1"> 
    <div class="x-popOver-overlay" xid="div8"/>  
    <div class="x-popOver-content" xid="div10" style="height:40%;width:100%;background-color:#F2F1F2;">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-content" xid="content5">
          <div xid="div20" class="list-group-item" style="padding:10px 10px 10px 10px;"> 
            <div class="media" xid="media8"> 
              <div class="media-left" xid="mediaLeft2"/>  
              <div class="media-body" xid="mediaBody7"/>  
              <div class="media-right" xid="mediaRight4"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon pull-right" icon="icon-ios7-close-outline"
                  onClick="{operation:'popOver1.hide'}" xid="button16" style="font-size:18px;color:#676767;"> 
                  <i xid="i16" class="icon-ios7-close-outline"/>  
                  <span xid="span14"/>
                </a> 
              </div> 
            </div> 
          </div>
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list2" data="data1"> 
            <ul class="x-list-template" xid="listTemplateUl2"> 
              <li xid="li2">
                <div xid="div14" class="list-group-item">
                  <div class="media" xid="media5"> 
                    <div class="media-body" xid="mediaBody5"> 
                      <h4 class="media-heading" xid="h47" bind-text=" val(&quot;name&quot;)"
                        style="text-align:center;font-size:18px;color:#484848;">Media heading</h4>
                    </div> 
                  </div>
                </div>
              </li>
            </ul> 
          </div> 
        </div> 
      </div>
    </div>
  </div><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver3">
   <div class="x-popOver-overlay" xid="div23"></div>
   <div class="x-popOver-content div_radius" xid="div24" style="height:60%;width:75%;">
    <div xid="div5" style="height:100%;width:100%;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
      <div class="x-panel-top" xid="top1">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#E1D6BD;">
        <div class="x-titlebar-left" xid="left1"></div>
        <div class="x-titlebar-title" xid="title1"><![CDATA[订单状态]]></div>
        <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
      <div class="x-panel-content" xid="content7" style="background-color:white;">
       <div xid="div25" style="padding:8px 3px 3px 5px;background-color:#EEEEEE;">
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="data2">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li6" bind-click="li3Click">
     <div xid="div26" class="list-group-item">
      <div class="media" xid="media9">
       <div class="media-body" xid="mediaBody9">
        <h4 class="media-heading" xid="h43" bind-text=' val("name")' style="text-align:center;font-size:18px;color:#484848;">Media heading</h4></div> </div> </div> </li> </ul> </div></div> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver4">
   <div class="x-popOver-overlay" xid="div27"></div>
   <div class="x-popOver-content div_radius" xid="div28" style="height:60%;width:75%;">
    <div xid="div31" style="height:100%;width:100%;">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
      <div class="x-panel-top" xid="top2">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#E1D6BD;">
        <div class="x-titlebar-left" xid="left2"></div>
        <div class="x-titlebar-title" xid="title2"><![CDATA[订货统计]]></div>
        <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
      <div class="x-panel-content" xid="content8" style="background-color:#EEEEEE;">
       <div xid="div29" style="padding:8px 3px 3px 5px;">
        
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list7" data="data1">
   <ul class="x-list-template" xid="listTemplateUl7">
    <li xid="li8" bind-click="li8Click">
     <div xid="div32" class="list-group-item">
      <div class="media" xid="media11">
       <div class="media-body" xid="mediaBody11">
        <h4 class="media-heading" xid="h49" bind-text=' val("name")' style="text-align:center;font-size:18px;color:#484848;">Media heading</h4></div> </div> </div> </li> </ul> </div></div> </div> </div> </div> </div> </div></div>
