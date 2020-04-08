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
      <data xid="default1">[{"id":"1","col1":"李四","col2":"东南大区","col3":"2018-02-17 14:00","col4":"2018021700001","col5":"2018-02-17 14:00至2018-02-17 15:00","col6":"共（0天1小时）","col7":"测试","col8":"../TheSaleEnterprise/Commonly/img/006.png"}]</data>
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
        xid="titleBar2" title="导购申请详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">导购申请详情</div>  
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
        <div class="col col-xs-12 col-padding border-Two" xid="col14"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit5"> 
            <label class="x-label" xid="label6" style="width: 110px;"><![CDATA[网点名称：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output2" bind-ref='"网点第三方士大夫"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col15"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit6"> 
            <label class="x-label" xid="label7" style="width: 110px;"><![CDATA[促销员类型：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output3" bind-ref='"长期促销员"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col16"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit7"> 
            <label class="x-label" xid="label8" style="width: 110px;"><![CDATA[身份证号码：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output4" bind-ref='"123456"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col17"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit8"> 
            <label class="x-label" xid="label9" style="width: 110px;"><![CDATA[角色：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output12" bind-ref='"导购员"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col18"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit9"> 
            <label class="x-label" xid="label10" style="width: 110px;"><![CDATA[岗位类型：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output13"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col19"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit10"> 
            <label class="x-label" xid="label11" style="width: 110px;"><![CDATA[入职时间：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output14" bind-ref='"2018-01-01"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col20"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit11"> 
            <label class="x-label" xid="label12" style="width: 110px;"><![CDATA[是否签订合同：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output15" bind-ref='"否"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col21"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit12"> 
            <label class="x-label" xid="label13" style="width: 110px;"><![CDATA[手机号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output16"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col22"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit13"> 
            <label class="x-label" xid="label14" style="width: 110px;"><![CDATA[邮箱：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output17"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col23"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit14"> 
            <label class="x-label" xid="label15" style="width: 110px;"><![CDATA[微信号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output18"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col27"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit19"> 
            <label class="x-label" xid="label16" style="width: 110px;"><![CDATA[工号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output19"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col26"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit18"> 
            <label class="x-label" xid="label17" style="width: 110px;"><![CDATA[转正时间：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output20"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col25"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit21"> 
            <label class="x-label" xid="label18" style="width: 110px;"><![CDATA[导购等级：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output29"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col24"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit20"> 
            <label class="x-label" xid="label20" style="width: 110px;"><![CDATA[出生日期：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output30"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col28"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit17"> 
            <label class="x-label" xid="label24" style="width: 110px;"><![CDATA[民族：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output27" bind-ref='"汉族"'/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col30"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit15"> 
            <label class="x-label" xid="label23" style="width: 110px;"><![CDATA[户口性质：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output28"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col29"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit16"> 
            <label class="x-label" xid="label22" style="width: 110px;"><![CDATA[户籍地址：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output25"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col32"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit22"> 
            <label class="x-label" xid="label21" style="width: 110px;"><![CDATA[现居住地址：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output26"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col31"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit23"> 
            <label class="x-label" xid="label19" style="width: 110px;"><![CDATA[开户行：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output24"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col36"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit28"> 
            <label class="x-label" xid="label25" style="width: 110px;"><![CDATA[银行账号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output31"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col35"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit27"> 
            <label class="x-label" xid="label26" style="width: 110px;"><![CDATA[所属从网点：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output32"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col34"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit30"> 
            <label class="x-label" xid="label27" style="width: 110px;"><![CDATA[所属品牌：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output38"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col33"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit29"> 
            <label class="x-label" xid="label29" style="width: 110px;"><![CDATA[所属品类：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output39"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col37"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit26"> 
            <label class="x-label" xid="label33" style="width: 110px;"><![CDATA[招聘渠道：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output36"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col39"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit24"> 
            <label class="x-label" xid="label32" style="width: 110px;"><![CDATA[招聘推荐人：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output37"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col38"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit25"> 
            <label class="x-label" xid="label31" style="width: 110px;"><![CDATA[联系人姓名：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output34"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col41"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit31"> 
            <label class="x-label" xid="label30" style="width: 110px;"><![CDATA[联系人手机：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output35"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col40"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit32"> 
            <label class="x-label" xid="label28" style="width: 110px;"><![CDATA[与本人关系：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output33"/>
          </div> 
        </div>  
        <div class="col col-xs-12 col-padding" xid="col42"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit33"> 
            <label class="x-label" xid="label34" style="width: 110px;"><![CDATA[备注：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output40"/>
          </div> 
        </div>
      <div class="col col-xs-12 col-padding" xid="col43">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit35">
   <label class="x-label" xid="label36" style="width:110px;"><![CDATA[工牌照片：]]></label>
   <div class="x-edit" xid="div1" style="text-align:right;"><img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt="" xid="image2" style="width:80px;"></img></div></div></div>
  <div class="col col-xs-12 col-padding" xid="col44">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit36">
    <label class="x-label" xid="label37" style="width:110px;"><![CDATA[身份证照片：]]></label>
    <div class="x-edit" xid="div2" style="text-align:right;">
     <img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt="" xid="image3" style="width:80px;"></img></div> </div> </div>
  <div class="col col-xs-12 col-padding" xid="col45">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit37">
    <label class="x-label" xid="label38" style="width:110px;"><![CDATA[银行卡照片：]]></label>
    <div class="x-edit" xid="div3" style="text-align:right;">
     <img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt="" xid="image4" style="width:80px;"></img></div> </div> </div></div>  
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
</div>
