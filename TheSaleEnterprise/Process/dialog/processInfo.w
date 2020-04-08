<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="code" type="String" xid="xid3"/>  
      <column name="name" type="String" xid="xid4"/>  
      <column name="sala" type="String" xid="xid5"/>  
      <column name="c" type="String" xid="xid6"/>  
      <column name="time" type="String" xid="xid7"/>  
      <column name="wang" type="String" xid="xid8"/>  
      <column name="wnum" type="String" xid="xid9"/>  
      <column name="goods" type="String" xid="xid10"/>  
      <column name="gnum" type="String" xid="xid11"/>  
      <column name="fy" type="String" xid="xid12"/>  
      <column name="fynum" type="String" xid="xid13"/>  
      <column name="red" type="String" xid="xid14"/>  
      <column name="roi" type="String" xid="xid15"/>  
      <column name="fytr" type="String" xid="xid16"/>  
      <column name="yjxl" type="String" xid="xid17"/>  
      <column name="fyl" type="String" xid="xid18"/>  
      <data xid="default1">[{"id":"1","title":"杭州乐购中华广场3月堆头费用","code":"201703230020","name":"张三（东南客户主管）","sala":"常规","c":"杭州市清江贸易有限公司","time":"2017-03-01至2017-03-30","wang":"杭州乐购中华广场店","wnum":"（等公1家网点）","goods":"160g大嘴猴病死猪","gnum":"（等公1家网点）","fy":"堆头费","fynum":"（等公1家费用）","red":"红灯","roi":"18,102.02%","fytr":"0元","yjxl":"0元","fyl":"0%"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="spData" idColumn="id"> 
      <column name="id" type="String" xid="xid19"/>  
      <column name="name" type="String" xid="xid20"/>  
      <column name="time" type="String" xid="xid21"/>  
      <column name="type" type="String" xid="xid22"/>  
      <column name="content" type="String" xid="xid23"/>  
      <data xid="default2">[{"id":"1","name":"张三","time":"2018-01-08","type":"0","content":"什么都没有"},{"id":"2","name":"李四","time":"2018-01-08","type":"1","content":"请填写正确网点"},{"id":"3","name":"张三","time":"2018-01-08","type":"2","content":"提交"},{"id":"4","name":"张三","time":"2018-01-08","type":"3","content":"执行活动"},{"id":"5","name":"老张","time":"2018-01-08","type":"4","content":"抄送"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="常规申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">常规申请</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row row-padding border-Two"
        xid="row1"> 
        <div class="col col-xs-12 col-padding" xid="col1"> 
          <div component="$UI/system/components/justep/output/output" class="x-output font-One"
            xid="output1" bind-ref="$model.CData.ref(&quot;title&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col2"> 
          <span xid="span1" class="float-output"><![CDATA[编 号：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output2" bind-ref="$model.CData.ref(&quot;code&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col3"> 
          <span xid="span2" class="float-output"><![CDATA[申请人：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output3" bind-ref="$model.CData.ref(&quot;name&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col4"> 
          <span xid="span3" class="float-output"><![CDATA[销售费用：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output4" bind-ref="$model.CData.ref(&quot;sala&quot;)"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/bootstrap/row/row" class="row mar2 row-padding"
        xid="row2"> 
        <div class="col col-xs-12 col-padding" xid="col8"> 
          <img src="$UI/TheSaleEnterprise/Process/img/002.png" alt="" xid="image1"
            class="float-output" style="width:20px;"/>  
          <span xid="span6" class="float-output"><![CDATA[客户 / 经销商：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output7" bind-ref="$model.CData.ref(&quot;c&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col9"> 
          <img src="$UI/TheSaleEnterprise/Process/img/003.png" alt="" xid="image2"
            class="float-output" style="width:20px;"/>  
          <span xid="span5" class="float-output"><![CDATA[活动时间：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output5" bind-ref="$model.CData.ref(&quot;time&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col11"> 
          <img src="$UI/TheSaleEnterprise/Process/img/004.png" alt="" xid="image3"
            class="float-output" style="width:20px;"/>  
          <span xid="span8" class="float-output"><![CDATA[活动网点：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output8" bind-ref="$model.CData.ref(&quot;wang&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col12"> 
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output9" bind-ref="$model.CData.ref(&quot;wnum&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col15"> 
          <img src="$UI/TheSaleEnterprise/Process/img/005.png" alt="" xid="image4"
            class="float-output" style="width:20px;"/>  
          <span xid="span10" class="float-output"><![CDATA[活动产品：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output10" bind-ref="$model.CData.ref(&quot;goods&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col16"> 
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output12" bind-ref="$model.CData.ref(&quot;gnum&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col14"> 
          <img src="$UI/TheSaleEnterprise/Process/img/006.png" alt="" xid="image5"
            class="float-output" style="width:20px;"/>  
          <span xid="span12" class="float-output"><![CDATA[费用类型：]]></span>  
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output11" bind-ref="$model.CData.ref(&quot;fy&quot;)"/> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col13"> 
          <div component="$UI/system/components/justep/output/output" class="float-output"
            xid="output13" bind-ref="$model.CData.ref(&quot;fynum&quot;)"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row3" style="text-align:center;"> 
        <div class="col col-xs-6 col-padding" xid="col17"> 
          <span xid="span20" class="font-One"><![CDATA[红绿灯]]></span>  
          <div xid="div3" class="roi"> 
            <span xid="span13" bind-text="$model.CData.ref(&quot;red&quot;)" style="line-height:100px;"/> 
          </div> 
        </div>  
        <div class="col col-xs-6 col-padding" xid="col18"> 
          <span xid="span17" class="font-One"><![CDATA[ROI]]></span>  
          <div xid="div2" class="roi2"> 
            <span xid="span14" bind-text="$model.CData.ref(&quot;roi&quot;)" style="line-height:100px;"/> 
          </div> 
        </div> 
      </div>  
      <div xid="div8" class="back_image"> 
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row9" style="text-align:center;"> 
          <div class="x-col" xid="col37"> 
            <div component="$UI/system/components/justep/row/row" class="x-row mar2"
              xid="row10"> 
              <div class="x-col" xid="col40"> 
                <span xid="span7"><![CDATA[费用投入]]></span> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row11"> 
              <div class="x-col" xid="col45"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output14" bind-ref="$model.CData.ref(&quot;fytr&quot;)"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row12"> 
              <div class="x-col" xid="col46"> 
                <div xid="div1" class="hr-one"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row13"> 
              <div class="x-col" xid="col47"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output15" bind-ref="$model.CData.ref(&quot;yjxl&quot;)"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row14"> 
              <div class="x-col" xid="col48"> 
                <span xid="span9"><![CDATA[预计销量]]></span> 
              </div> 
            </div> 
          </div>  
          <div class="x-col" xid="col43"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row25" style="margin-top:70px;"> 
              <div class="x-col" xid="col59"> 
                <span xid="span24" style="font-size:16px;color:#80AEDF;">=</span> 
              </div> 
            </div> 
          </div>  
          <div class="x-col" xid="col44"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row20" style="margin-top:55px;"> 
              <div class="x-col" xid="col57"> 
                <span xid="span19"><![CDATA[费用率]]></span> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row21"> 
              <div class="x-col" xid="col56"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output20" bind-ref="$model.CData.ref(&quot;fyl&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row26"
        style="text-align:center;border-bottom:3px solid #cccccc;margin-left:2%;width:96%;"> 
        <div class="x-col" xid="col62"> 
          <label xid="label1"><![CDATA[审批意见]]></label> 
        </div>  
        <div class="x-col" xid="col63"/>  
        <div class="x-col" xid="col64"/> 
      </div>  
      <div xid="div7"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list1" data="spData"> 
          <ul class="x-list-template" xid="listTemplateUl1"> 
            <li xid="li1"> 
              <div component="$UI/system/components/bootstrap/row/row" class="row row-padding"
                xid="row4"> 
                <div class="col col-xs-2" xid="col5"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output6" bind-ref="ref(&quot;name&quot;)"/> 
                </div>  
                <div class="col col-xs-1" xid="col68"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-lg btn-only-icon" label="button" xid="sp2"
                    icon="e-commerce e-commerce-quancha" style="margin-left:-15px;margin-top:-6px;color:#81C160;"> 
                    <i xid="i2" class="e-commerce e-commerce-quangou e-commerce-quancha"
                      bind-style="{color: val(&quot;type&quot;) == 1 ? '#FF8000' : '#81C160'}"
                      bind-css="{ 'e-commerce e-commerce-quancha':  val('type') == '1', 'e-commerce e-commerce-quangou':  val('type') != '1'}"/>  
                    <span xid="span40"/> 
                  </a> 
                </div>  
                <div class="col col-xs-8" xid="col6"> 
                  <div component="$UI/system/components/bootstrap/row/row"
                    class="row" xid="row27"> 
                    <div class="col col-xs-12" xid="col65"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output21" bind-ref="ref(&quot;type&quot;)" onRender="output21Render"
                        style="float:left;"/> 
                    </div>  
                    <div class="col col-xs-12" xid="col66"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output22" bind-ref="ref(&quot;time&quot;)"/> 
                    </div>  
                    <div class="col col-xs-12" xid="col67"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output23" bind-ref="ref(&quot;content&quot;)"/> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </li> 
          </ul> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
