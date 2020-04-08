<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onModelConstructDone="modelModelConstructDone"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="progress"> 
      <column name="progress" type="String" xid="xid1"/>  
      <column name="state" type="String" xid="xid2"/>  
      <data xid="default2">[{"progress":"80","state":"success"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderInfo.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderNew.w"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
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
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link active"
              label="本月" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">本月</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="本季" xid="button3" target="content5" onClick="button3Click"> 
              <i xid="i3"/>  
              <span xid="span2">本季</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="本年" xid="button14" target="content7" onClick="button14Click"> 
              <i xid="i16"/>  
              <span xid="span24">本年</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3" style="background-color:#f0f0f0;"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4"> 
              <div xid="div1" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr1"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row1" style="margin-top:10px;"> 
                  <div class="x-col" xid="col1"> 
                    <label xid="label1" class="font-five"><![CDATA[销售进度--订单]]></label> 
                  </div>  
                  <div class="x-col" xid="col2"/>  
                  <div class="x-col" xid="col3" style="text-align:right;"> 
                    <label xid="label2" class="font-One"><![CDATA[单位：万元]]></label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row2"> 
                  <div class="x-col" xid="col4"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row3"> 
                      <div class="col col-xs-12" xid="col7"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row4"> 
                          <div class="x-col" xid="col10"> 
                            <span xid="span3"><![CDATA[目标：未设置]]></span> 
                          </div>  
                          <div class="x-col" xid="col11"/>  
                          <div class="x-col" xid="col12"> 
                            <span xid="span5"><![CDATA[今日订单：0万元]]></span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col8"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress1" valuenow="80"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar1"> 
                            <span xid="span10" bind-text="$model.data1.val(&quot;progress&quot;)+&quot;%&quot;">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col9"> 
                        <span xid="span11"><![CDATA[累计1.25万元]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row5" style="text-align:center;"> 
                  <div class="x-col" xid="col13"> 
                    <div id="main" style="width:100%;height:200px;"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row6"> 
                      <div class="x-col" xid="col16"> 
                        <span xid="span12"><![CDATA[零售：0.77万元]]></span> 
                      </div>  
                      <div class="x-col" xid="col17"> 
                        <span xid="span13"><![CDATA[电商：0.48万元]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row8" style="text-align:center;"> 
                  <div class="x-col" xid="col14"> 
                    <div id="main2" style="width:100%;height:200px;" xid="div2"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row7"> 
                      <div class="x-col" xid="col6"> 
                        <span xid="span7"><![CDATA[福利口：1.25万元]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div7" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr4"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row21" style="margin-top:10px;"> 
                  <div class="x-col" xid="col51"> 
                    <label xid="label8" class="font-five"><![CDATA[销售进度--发运]]></label> 
                  </div>  
                  <div class="x-col" xid="col48"/>  
                  <div class="x-col" xid="col49" style="text-align:right;"> 
                    <label xid="label7" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row22"> 
                  <div class="x-col" xid="col47"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row24"> 
                      <div class="col col-xs-12" xid="col46"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row23"> 
                          <div class="x-col" xid="col52"> 
                            <span xid="span27">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col54"/>  
                          <div class="x-col" xid="col50"> 
                            <span xid="span30"><![CDATA[今日发运：0万元]]></span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col44"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress4" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar4"> 
                            <span xid="span26">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col45"> 
                        <span xid="span28">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col53"> 
                        <span xid="span29" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div4" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr2"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row9" style="margin-top:10px;"> 
                  <div class="x-col" xid="col30"> 
                    <label xid="label3" class="font-five"><![CDATA[销售进度--回款]]></label> 
                  </div>  
                  <div class="x-col" xid="col28"/>  
                  <div class="x-col" xid="col29" style="text-align:right;"> 
                    <label xid="label4" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row14"> 
                  <div class="x-col" xid="col27"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row13"> 
                      <div class="col col-xs-12" xid="col26"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row16"> 
                          <div class="x-col" xid="col31"> 
                            <span xid="span8">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col22"/>  
                          <div class="x-col" xid="col21"> 
                            <span xid="span9"><![CDATA[今日回款：0万元]]></span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col23"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress2" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar2"> 
                            <span xid="span16">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col24"> 
                        <span xid="span18"><![CDATA[累计0万元]]></span> 
                      </div>  
                      <div class="col col-xs-6" xid="col32"> 
                        <span xid="span19" style="color:#FF0000;"><![CDATA[缺口0万元]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div6" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr3"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row20" style="margin-top:10px;"> 
                  <div class="x-col" xid="col43"> 
                    <label xid="label6" class="font-five"><![CDATA[销售进度--零售]]></label> 
                  </div>  
                  <div class="x-col" xid="col35"/>  
                  <div class="x-col" xid="col34" style="text-align:right;"> 
                    <label xid="label5" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row19"> 
                  <div class="x-col" xid="col36"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row18"> 
                      <div class="col col-xs-12" xid="col37"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row17"> 
                          <div class="x-col" xid="col42"> 
                            <span xid="span21">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col40"/>  
                          <div class="x-col" xid="col33"> 
                            <span xid="span22"><![CDATA[今日零售：0万元]]></span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col39"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress3" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar3"> 
                            <span xid="span25">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col38"> 
                        <span xid="span20">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col41"> 
                        <span xid="span23" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div9" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr5"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row25" style="margin-top:10px;"> 
                  <div class="x-col" xid="col68"> 
                    <label xid="label9" class="font-five"><![CDATA[销售进度--导购]]></label> 
                  </div>  
                  <div class="x-col" xid="col66"/>  
                  <div class="x-col" xid="col67" style="text-align:right;"> 
                    <label xid="label10" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row30"> 
                  <div class="x-col" xid="col65"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row29"> 
                      <div class="col col-xs-12" xid="col64"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row32"> 
                          <div class="x-col" xid="col69"> 
                            <span xid="span31">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col60"/>  
                          <div class="x-col" xid="col59"> 
                            <span xid="span32"><![CDATA[今日汇报：0万元]]></span> 
                          </div> 
                        </div>  
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row33"> 
                          <div class="x-col" xid="col72"> 
                            <span xid="span39"><![CDATA[本周自报：0.81万元]]></span> 
                          </div>  
                          <div class="x-col" xid="col71"/>  
                          <div class="x-col" xid="col70"> 
                            <span xid="span38"><![CDATA[累计：1.52万元]]></span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col61"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress5" valuenow="80"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar5"> 
                            <span xid="span35" bind-text="$model.data1.val(&quot;progress&quot;)+&quot;%&quot;">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col62"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row34"> 
                          <div class="x-col" xid="col73"> 
                            <label xid="label11"><![CDATA[导购销量占零售目标的百分比]]></label> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col76"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress6" valuenow="20"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar6"> 
                            <span xid="span40"><![CDATA[20%]]></span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col78"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row36"> 
                          <div class="x-col" xid="col80"> 
                            <span xid="span44"><![CDATA[导购人数：1人]]></span> 
                          </div>  
                          <div class="x-col" xid="col79"/>  
                          <div class="x-col" xid="col77"> 
                            <span xid="span43"><![CDATA[累计人均：1.52万元]]></span> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row31" style="text-align:center;"> 
                  <div class="x-col" xid="col58"> 
                    <div id="main3" style="width:100%;height:200px;" xid="div10"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row27"> 
                      <div class="x-col" xid="col56"> 
                        <span xid="span36"><![CDATA[现代渠道：1.52万元]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row28" style="text-align:center;"> 
                  <div class="x-col" xid="col57"> 
                    <div id="main4" style="width:100%;height:200px;" xid="div8"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row26"> 
                      <div class="x-col" xid="col63"> 
                        <span xid="span33"><![CDATA[广州酒家:0.52万元；蓝精灵：0.02万元；西部人：0.62万元；梦工厂0.02万元；舒爽：0.24万元；大嘴猴：0.11万元；]]></span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div11" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr6"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row37" style="margin-top:10px;"> 
                  <div class="x-col" xid="col91"> 
                    <label xid="label13" class="font-five"><![CDATA[费用进度]]></label> 
                  </div>  
                  <div class="x-col" xid="col88"/>  
                  <div class="x-col" xid="col89" style="text-align:right;"> 
                    <label xid="label12" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row38"> 
                  <div class="x-col" xid="col87"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row40"> 
                      <div class="col col-xs-12" xid="col86"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row39"> 
                          <div class="x-col" xid="col92"> 
                            <span xid="span46" class="font-One"><![CDATA[TI费用]]></span> 
                          </div>  
                          <div class="x-col" xid="col94"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row43"> 
                              <div class="col col-xs-12" xid="col102"> 
                                <span xid="span54"><![CDATA[个人]]></span> 
                              </div>  
                              <div class="col col-xs-12" xid="col101"> 
                                <span xid="span55"><![CDATA[辖区]]></span> 
                              </div> 
                            </div> 
                          </div>  
                          <div class="x-col" xid="col90"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row42"> 
                              <div class="col col-xs-12" xid="col98"> 
                                <span xid="span52"><![CDATA[0元]]></span> 
                              </div>  
                              <div class="col col-xs-12" xid="col99"> 
                                <span xid="span53">0元</span> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col84"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row41"> 
                          <div class="x-col" xid="col97"> 
                            <span xid="span50" class="font-One"><![CDATA[日常费用]]></span> 
                          </div>  
                          <div class="x-col" xid="col96"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row45"> 
                              <div class="col col-xs-12" xid="col105"> 
                                <span xid="span58">个人</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col106"> 
                                <span xid="span59">辖区</span> 
                              </div> 
                            </div> 
                          </div>  
                          <div class="x-col" xid="col95"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row44"> 
                              <div class="col col-xs-12" xid="col104"> 
                                <span xid="span56">0元</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col103"> 
                                <span xid="span57">0元</span> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <hr xid="hr7"/> 
            </div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"> 
              <div xid="div20" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr8"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row51" style="margin-top:10px;"> 
                  <div class="x-col" xid="col143"> 
                    <label xid="label24" class="font-five">销售进度--订单</label> 
                  </div>  
                  <div class="x-col" xid="col141"/>  
                  <div class="x-col" xid="col142" style="text-align:right;"> 
                    <label xid="label25" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row60"> 
                  <div class="x-col" xid="col140"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row58"> 
                      <div class="col col-xs-12" xid="col139"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row63"> 
                          <div class="x-col" xid="col114"> 
                            <span xid="span67">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col112"/>  
                          <div class="x-col" xid="col111"> 
                            <span xid="span68">今日订单：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col136"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress11" valuenow="80"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar13"> 
                            <span xid="span64" bind-text="$model.data1.val(&quot;progress&quot;)+&quot;%&quot;">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col137"> 
                        <span xid="span66">累计1.25万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row62" style="text-align:center;"> 
                  <div class="x-col" xid="col110"> 
                    <div id="main5" style="width:400px;height:200px;" xid="div21"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row55"> 
                      <div class="x-col" xid="col108"> 
                        <span xid="span65">零售：0.77万元</span> 
                      </div>  
                      <div class="x-col" xid="col107"> 
                        <span xid="span62">电商：0.48万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row57" style="text-align:center;"> 
                  <div class="x-col" xid="col109"> 
                    <div id="main6" style="width:400px;height:200px;" xid="div19"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row54"> 
                      <div class="x-col" xid="col138"> 
                        <span xid="span69">福利口：1.25万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div16" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr12"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row78" style="margin-top:10px;"> 
                  <div class="x-col" xid="col180"> 
                    <label xid="label18" class="font-five">销售进度--发运</label> 
                  </div>  
                  <div class="x-col" xid="col172"/>  
                  <div class="x-col" xid="col171" style="text-align:right;"> 
                    <label xid="label17" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row75"> 
                  <div class="x-col" xid="col173"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row81"> 
                      <div class="col col-xs-12" xid="col174"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row76"> 
                          <div class="x-col" xid="col179"> 
                            <span xid="span75">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col177"/>  
                          <div class="x-col" xid="col181"> 
                            <span xid="span82">今日发运：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col176"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress8" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar12"> 
                            <span xid="span76">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col175"> 
                        <span xid="span73">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col178"> 
                        <span xid="span72" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div18" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr10"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row56" style="margin-top:10px;"> 
                  <div class="x-col" xid="col135"> 
                    <label xid="label26" class="font-five">销售进度--回款</label> 
                  </div>  
                  <div class="x-col" xid="col127"/>  
                  <div class="x-col" xid="col126" style="text-align:right;"> 
                    <label xid="label14" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row48"> 
                  <div class="x-col" xid="col128"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row47"> 
                      <div class="col col-xs-12" xid="col129"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row46"> 
                          <div class="x-col" xid="col134"> 
                            <span xid="span70">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col132"/>  
                          <div class="x-col" xid="col113"> 
                            <span xid="span71">今日回款：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col131"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress10" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar10"> 
                            <span xid="span63">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col130"> 
                        <span xid="span60">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col133"> 
                        <span xid="span61" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div17" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr9"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row77" style="margin-top:10px;"> 
                  <div class="x-col" xid="col122"> 
                    <label xid="label16" class="font-five">销售进度--零售</label> 
                  </div>  
                  <div class="x-col" xid="col119"/>  
                  <div class="x-col" xid="col120" style="text-align:right;"> 
                    <label xid="label15" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row83"> 
                  <div class="x-col" xid="col118"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row85"> 
                      <div class="col col-xs-12" xid="col117"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row84"> 
                          <div class="x-col" xid="col123"> 
                            <span xid="span77">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col125"/>  
                          <div class="x-col" xid="col121"> 
                            <span xid="span80">今日零售：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col115"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress9" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar9"> 
                            <span xid="span74">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col116"> 
                        <span xid="span78">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col124"> 
                        <span xid="span79" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div14" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr11"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row82" style="margin-top:10px;"> 
                  <div class="x-col" xid="col190"> 
                    <label xid="label19" class="font-five">销售进度--导购</label> 
                  </div>  
                  <div class="x-col" xid="col192"/>  
                  <div class="x-col" xid="col191" style="text-align:right;"> 
                    <label xid="label20" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row72"> 
                  <div class="x-col" xid="col165"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row74"> 
                      <div class="col col-xs-12" xid="col166"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row68"> 
                          <div class="x-col" xid="col189"> 
                            <span xid="span87">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col170"/>  
                          <div class="x-col" xid="col161"> 
                            <span xid="span86">今日汇报：0万元</span> 
                          </div> 
                        </div>  
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row65"> 
                          <div class="x-col" xid="col195"> 
                            <span xid="span81">本周自报：0.81万元</span> 
                          </div>  
                          <div class="x-col" xid="col196"/>  
                          <div class="x-col" xid="col197"> 
                            <span xid="span85">累计：1.52万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col169"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress13" valuenow="80"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar11"> 
                            <span xid="span84" bind-text="$model.data1.val(&quot;progress&quot;)+&quot;%&quot;">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col168"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row66"> 
                          <div class="x-col" xid="col194"> 
                            <label xid="label23">导购销量占零售目标的百分比</label> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col193"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress12" valuenow="20"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar8"> 
                            <span xid="span89">20%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col183"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row71"> 
                          <div class="x-col" xid="col188"> 
                            <span xid="span92">导购人数：1人</span> 
                          </div>  
                          <div class="x-col" xid="col182"/>  
                          <div class="x-col" xid="col184"> 
                            <span xid="span91">累计人均：1.52万元</span> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row67" style="text-align:center;"> 
                  <div class="x-col" xid="col162"> 
                    <div id="main7" style="width:400px;height:200px;" xid="div12"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row80"> 
                      <div class="x-col" xid="col164"> 
                        <span xid="span83">现代渠道：1.52万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row73" style="text-align:center;"> 
                  <div class="x-col" xid="col163"> 
                    <div id="main8" style="width:400px;height:200px;" xid="div15"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row79"> 
                      <div class="x-col" xid="col167"> 
                        <span xid="span88">广州酒家:0.52万元；蓝精灵：0.02万元；西部人：0.62万元；梦工厂0.02万元；舒爽：0.24万元；大嘴猴：0.11万元；</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div13" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr14"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row69" style="margin-top:10px;"> 
                  <div class="x-col" xid="col154"> 
                    <label xid="label21" class="font-five">费用进度</label> 
                  </div>  
                  <div class="x-col" xid="col146"/>  
                  <div class="x-col" xid="col145" style="text-align:right;"> 
                    <label xid="label22" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row70"> 
                  <div class="x-col" xid="col185"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row59"> 
                      <div class="col col-xs-12" xid="col186"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row64"> 
                          <div class="x-col" xid="col153"> 
                            <span xid="span90" class="font-One">TI费用</span> 
                          </div>  
                          <div class="x-col" xid="col152"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row53"> 
                              <div class="col col-xs-12" xid="col159"> 
                                <span xid="span98">个人</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col160"> 
                                <span xid="span101">辖区</span> 
                              </div> 
                            </div> 
                          </div>  
                          <div class="x-col" xid="col147"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row52"> 
                              <div class="col col-xs-12" xid="col148"> 
                                <span xid="span94">0元</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col144"> 
                                <span xid="span99">0元</span> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col187"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row61"> 
                          <div class="x-col" xid="col149"> 
                            <span xid="span93" class="font-One">日常费用</span> 
                          </div>  
                          <div class="x-col" xid="col150"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row50"> 
                              <div class="col col-xs-12" xid="col158"> 
                                <span xid="span95">个人</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col157"> 
                                <span xid="span97">辖区</span> 
                              </div> 
                            </div> 
                          </div>  
                          <div class="x-col" xid="col151"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row49"> 
                              <div class="col col-xs-12" xid="col155"> 
                                <span xid="span100">0元</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col156"> 
                                <span xid="span96">0元</span> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <hr xid="hr13"/> 
            </div>  
            <div class="x-contents-content" xid="content7"> 
              <div xid="div30" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr15"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row91" style="margin-top:10px;"> 
                  <div class="x-col" xid="col234"> 
                    <label xid="label37" class="font-five">销售进度--订单</label> 
                  </div>  
                  <div class="x-col" xid="col232"/>  
                  <div class="x-col" xid="col233" style="text-align:right;"> 
                    <label xid="label38" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row100"> 
                  <div class="x-col" xid="col231"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row98"> 
                      <div class="col col-xs-12" xid="col230"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row103"> 
                          <div class="x-col" xid="col205"> 
                            <span xid="span109">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col203"/>  
                          <div class="x-col" xid="col202"> 
                            <span xid="span110">今日订单：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col227"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress17" valuenow="80"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar19"> 
                            <span xid="span106" bind-text="$model.data1.val(&quot;progress&quot;)+&quot;%&quot;">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col228"> 
                        <span xid="span108">累计1.25万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row102" style="text-align:center;"> 
                  <div class="x-col" xid="col201"> 
                    <div id="main9" style="width:400px;height:200px;" xid="div31"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row95"> 
                      <div class="x-col" xid="col199"> 
                        <span xid="span107">零售：0.77万元</span> 
                      </div>  
                      <div class="x-col" xid="col198"> 
                        <span xid="span104">电商：0.48万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row97" style="text-align:center;"> 
                  <div class="x-col" xid="col200"> 
                    <div id="main10" style="width:400px;height:200px;" xid="div29"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row94"> 
                      <div class="x-col" xid="col229"> 
                        <span xid="span111">福利口：1.25万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div26" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr19"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row118" style="margin-top:10px;"> 
                  <div class="x-col" xid="col271"> 
                    <label xid="label31" class="font-five">销售进度--发运</label> 
                  </div>  
                  <div class="x-col" xid="col263"/>  
                  <div class="x-col" xid="col262" style="text-align:right;"> 
                    <label xid="label30" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row115"> 
                  <div class="x-col" xid="col264"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row121"> 
                      <div class="col col-xs-12" xid="col265"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row116"> 
                          <div class="x-col" xid="col270"> 
                            <span xid="span117">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col268"/>  
                          <div class="x-col" xid="col272"> 
                            <span xid="span124">今日发运：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col267"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress14" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar18"> 
                            <span xid="span118">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col266"> 
                        <span xid="span115">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col269"> 
                        <span xid="span114" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div28" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr17"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row96" style="margin-top:10px;"> 
                  <div class="x-col" xid="col226"> 
                    <label xid="label39" class="font-five">销售进度--回款</label> 
                  </div>  
                  <div class="x-col" xid="col218"/>  
                  <div class="x-col" xid="col217" style="text-align:right;"> 
                    <label xid="label27" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row88"> 
                  <div class="x-col" xid="col219"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row87"> 
                      <div class="col col-xs-12" xid="col220"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row86"> 
                          <div class="x-col" xid="col225"> 
                            <span xid="span112">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col223"/>  
                          <div class="x-col" xid="col204"> 
                            <span xid="span113">今日回款：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col222"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress16" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar16"> 
                            <span xid="span105">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col221"> 
                        <span xid="span102">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col224"> 
                        <span xid="span103" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div27" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr16"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row117" style="margin-top:10px;"> 
                  <div class="x-col" xid="col213"> 
                    <label xid="label29" class="font-five">销售进度--零售</label> 
                  </div>  
                  <div class="x-col" xid="col210"/>  
                  <div class="x-col" xid="col211" style="text-align:right;"> 
                    <label xid="label28" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row123"> 
                  <div class="x-col" xid="col209"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row125"> 
                      <div class="col col-xs-12" xid="col208"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row124"> 
                          <div class="x-col" xid="col214"> 
                            <span xid="span119">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col216"/>  
                          <div class="x-col" xid="col212"> 
                            <span xid="span122">今日零售：0万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col206"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress15" valuenow="0"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar15"> 
                            <span xid="span116">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-6" xid="col207"> 
                        <span xid="span120">累计0万元</span> 
                      </div>  
                      <div class="col col-xs-6" xid="col215"> 
                        <span xid="span121" style="color:#FF0000;">缺口0万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div24" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr18"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row122" style="margin-top:10px;"> 
                  <div class="x-col" xid="col281"> 
                    <label xid="label32" class="font-five">销售进度--导购</label> 
                  </div>  
                  <div class="x-col" xid="col283"/>  
                  <div class="x-col" xid="col282" style="text-align:right;"> 
                    <label xid="label33" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row112"> 
                  <div class="x-col" xid="col256"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row114"> 
                      <div class="col col-xs-12" xid="col257"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row108"> 
                          <div class="x-col" xid="col280"> 
                            <span xid="span129">目标：未设置</span> 
                          </div>  
                          <div class="x-col" xid="col261"/>  
                          <div class="x-col" xid="col252"> 
                            <span xid="span128">今日汇报：0万元</span> 
                          </div> 
                        </div>  
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row105"> 
                          <div class="x-col" xid="col286"> 
                            <span xid="span123">本周自报：0.81万元</span> 
                          </div>  
                          <div class="x-col" xid="col287"/>  
                          <div class="x-col" xid="col288"> 
                            <span xid="span127">累计：1.52万元</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col260"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress19" valuenow="80"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar17"> 
                            <span xid="span126" bind-text="$model.data1.val(&quot;progress&quot;)+&quot;%&quot;">0%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col259"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row106"> 
                          <div class="x-col" xid="col285"> 
                            <label xid="label36">导购销量占零售目标的百分比</label> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col284"> 
                        <div class="progress" component="$UI/system/components/bootstrap/progress/progress"
                          xid="progress18" valuenow="20"> 
                          <div class="progress-bar progress-bar-success" role="progressbar"
                            xid="progressBar14"> 
                            <span xid="span131">20%</span> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col274"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row111"> 
                          <div class="x-col" xid="col279"> 
                            <span xid="span134">导购人数：1人</span> 
                          </div>  
                          <div class="x-col" xid="col273"/>  
                          <div class="x-col" xid="col275"> 
                            <span xid="span133">累计人均：1.52万元</span> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row107" style="text-align:center;"> 
                  <div class="x-col" xid="col253"> 
                    <div id="main11" style="width:400px;height:200px;" xid="div22"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row120"> 
                      <div class="x-col" xid="col255"> 
                        <span xid="span125">现代渠道：1.52万元</span> 
                      </div> 
                    </div> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row113" style="text-align:center;"> 
                  <div class="x-col" xid="col254"> 
                    <div id="main12" style="width:400px;height:200px;" xid="div25"/>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row119"> 
                      <div class="x-col" xid="col258"> 
                        <span xid="span130">广州酒家:0.52万元；蓝精灵：0.02万元；西部人：0.62万元；梦工厂0.02万元；舒爽：0.24万元；大嘴猴：0.11万元；</span> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div xid="div23" class="mar2 border-div" style="background-color:white;"> 
                <hr xid="hr21"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                  xid="row109" style="margin-top:10px;"> 
                  <div class="x-col" xid="col245"> 
                    <label xid="label34" class="font-five">费用进度</label> 
                  </div>  
                  <div class="x-col" xid="col237"/>  
                  <div class="x-col" xid="col236" style="text-align:right;"> 
                    <label xid="label35" class="font-One">单位：万元</label> 
                  </div> 
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row110"> 
                  <div class="x-col" xid="col276"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row99"> 
                      <div class="col col-xs-12" xid="col277"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row104"> 
                          <div class="x-col" xid="col244"> 
                            <span xid="span132" class="font-One">TI费用</span> 
                          </div>  
                          <div class="x-col" xid="col243"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row93"> 
                              <div class="col col-xs-12" xid="col250"> 
                                <span xid="span140">个人</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col251"> 
                                <span xid="span143">辖区</span> 
                              </div> 
                            </div> 
                          </div>  
                          <div class="x-col" xid="col238"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row92"> 
                              <div class="col col-xs-12" xid="col239"> 
                                <span xid="span136">0元</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col235"> 
                                <span xid="span141">0元</span> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div>  
                      <div class="col col-xs-12" xid="col278"> 
                        <div component="$UI/system/components/justep/row/row"
                          class="x-row" xid="row101"> 
                          <div class="x-col" xid="col240"> 
                            <span xid="span135" class="font-One">日常费用</span> 
                          </div>  
                          <div class="x-col" xid="col241"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row90"> 
                              <div class="col col-xs-12" xid="col249"> 
                                <span xid="span137">个人</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col248"> 
                                <span xid="span139">辖区</span> 
                              </div> 
                            </div> 
                          </div>  
                          <div class="x-col" xid="col242"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row89"> 
                              <div class="col col-xs-12" xid="col246"> 
                                <span xid="span142">0元</span> 
                              </div>  
                              <div class="col col-xs-12" xid="col247"> 
                                <span xid="span138">0元</span> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <hr xid="hr20"/> 
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
