<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;手机号&quot;,&quot;col2&quot;:&quot;13888888888&quot;,&quot;col3&quot;:&quot;13800000000&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;薪资级别&quot;,&quot;col2&quot;:&quot;B1&quot;,&quot;col3&quot;:&quot;A1&quot;}]</data></div>  
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
        xid="titleBar2" title="导购异动详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购异动详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row row-padding border-Two"
        xid="row1"> 
        <div class="col col-xs-12 col-padding" xid="col1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2"> 
            <div class="x-col x-col-25" xid="col7" style="margin:auto;text-align:center;">
              <img src=" " alt="" xid="image1" class="wh" bind-attr-src=" $model.CData.val(&quot;col8&quot;)"/>
            </div>  
            <div class="x-col" xid="col8">
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row3"> 
                <div class="col col-xs-12" xid="col10">
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-One" xid="output1" bind-ref="&quot;李冰冰&quot;"/>
                </div>  
                <div class="col col-xs-12" xid="col11">
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output5" bind-ref="&quot;女&quot;"/>
                </div>  
                <div class="col col-xs-12" xid="col12">
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output font-Three" xid="output7" bind-ref="&quot;13888888888&quot;"/>
                </div>
              </div>
            </div>  
            <div class="x-col" xid="col9"/>
          </div>
        </div>  
        <div class="col col-xs-12 col-padding border-Two" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label2" style="width: 110px;"><![CDATA[编号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output8" bind-ref="&quot;2018021352285&quot;"/>
          </div>
        </div>  
        <div class="col col-xs-12 col-padding" xid="col3"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2"> 
            <label class="x-label" xid="label3" style="width: 110px;"><![CDATA[所属区域：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output9" bind-ref='"东南大区"'/>
          </div>
        </div>  
        <div class="col col-xs-12 col-padding" xid="col4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit3"> 
            <label class="x-label" xid="label4" style="width: 110px;"><![CDATA[经销商：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output10" bind-ref='"上海经销部"'/>
          </div>
        </div>  
        <div class="col col-xs-12 col-padding" xid="col13"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4"> 
            <label class="x-label" xid="label5" style="width: 110px;"><![CDATA[系统名称：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output11" bind-ref='"系统名称啊啊啊"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col14"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit5"> 
            <label class="x-label" xid="label6" style="width: 110px;"><![CDATA[入职时间：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output2" bind-ref='"2018-02-03"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col15">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
    <label class="x-label" xid="label7" style="width: 110px;"><![CDATA[异动时间：]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='"2018-02-02"'></div></div> </div>
  <div class="col col-xs-12 col-padding border-Two" xid="col16">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
    <label class="x-label" xid="label8" style="width: 110px;"><![CDATA[异动原因：]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='"好"'></div></div> 
  </div></div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="text-align:center;background-color:#CDE9FB;">
   <div class="x-col border-table" xid="col17"><span xid="span1"><![CDATA[异动项]]></span></div>
   <div class="x-col border-table" xid="col18"><span xid="span2"><![CDATA[异动前]]></span></div>
   <div class="x-col border-table" xid="col19"><span xid="span3"><![CDATA[异动后]]></span></div></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="CData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="text-align:center;">
   <div class="x-col border-table" xid="col21">
    <span xid="span7" bind-text='ref("col1")'>异动项</span></div> 
   <div class="x-col border-table" xid="col20">
    <span xid="span5" bind-text='ref("col2")'>异动前</span></div> 
   <div class="x-col border-table" xid="col22">
    <span xid="span6" bind-text='ref("col3")'>异动后</span></div> </div></li></ul> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row26"
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
</div>
