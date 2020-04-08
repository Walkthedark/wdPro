<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <data xid="default2">[{"id":"1","col1":"万家天河公园分店","col2":"广州市汇佳贸易有限公司","col3":"张三","col4":"13888888888","col5":"S363（吉利大道）","col6":"经销商"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="type" type="String" xid="column2"/>  
      <data xid="default1">[{"id":"1","type":"男"},{"id":"2","type":"女"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="id"> 
      <column name="id" type="String" xid="column3"/>  
      <column name="type" type="String" xid="column4"/>  
      <data xid="default3">[{"id":"1","type":"长期促销员"},{"id":"2","type":"临时促销员"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data2" idColumn="id"> 
      <column name="id" type="String" xid="column6"/>  
      <column name="type" type="String" xid="column5"/>  
      <data xid="default4">[{"id":"1","type":"是"},{"id":"2","type":"否"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="填写资料"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">填写资料</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row3" style="background-color:white;"> 
        <div class="x-col" xid="col8"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-12" xid="col18"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:110px;"><![CDATA[个人近照：]]></label>  
                <div class="x-edit" xid="div1" style="text-align:right;"> 
                  <img src="$UI/TheSaleEnterprise/Commonly/img/006.png" alt=""
                    xid="image2" style="width:110px;"/> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:110px;"><![CDATA[姓名：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input1"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:110px;"><![CDATA[性别：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="CData" bind-itemsetValue="ref(&quot;id&quot;)"
                  bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:110px;"><![CDATA[促销员类型：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup2" bind-itemset="data1" bind-itemsetValue="ref(&quot;id&quot;)"
                  bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label6" style="width:110px;"><![CDATA[身份证号码：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row4" style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col2"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2"> 
            <div class="col col-xs-12" xid="col1"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label5" style="width:110px;"><![CDATA[角色：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select2" bind-optionsCaption="请选择..."/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label7" style="width:110px;"><![CDATA[所属网点：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input3" style="width:30px;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label9" style="width:110px;"><![CDATA[岗位类型：]]></label>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control x-edit" xid="select1" bind-optionsCaption="请选择..."/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label10" style="width:110px;"><![CDATA[入职时间：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input5" style="width:30px;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit12"> 
                <label class="x-label" xid="label12" style="width:110px;"><![CDATA[是否签订合同：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup3" bind-itemset="data2" bind-itemsetValue="ref(&quot;id&quot;)"
                  bind-itemsetLabel="ref(&quot;type&quot;)" style="color: #FA7922;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit14"> 
                <label class="x-label" xid="label13" style="width:110px;"><![CDATA[手机号：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input8" style="width:30px;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit13"> 
                <label class="x-label" xid="label14" style="width:110px;"><![CDATA[邮箱：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input7" style="width:30px;"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit16"> 
                <label class="x-label" xid="label15" style="width:110px;"><![CDATA[微信号：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input10" style="width:30px;"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row border-One"
        xid="row6" style="background-color:white; margin-top:10px;"> 
        <div class="x-col" xid="col4"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row5"> 
            <div class="col col-xs-12" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit20"> 
                <label class="x-label" xid="label20" style="width:110px;"><![CDATA[工牌照片：]]></label>  
                <div class="x-edit" xid="div2" style="text-align:right;"> 
                  <img src="$UI/TheSaleEnterprise/ClockIn/img/001.jpeg" alt=""
                    xid="image3" style="width:110px;"/> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit22"> 
                <label class="x-label" xid="label22" style="width:110px;"><![CDATA[身份证照片：]]></label>  
                <div class="x-edit" xid="div3" style="text-align:right;"> 
                  <img src="$UI/TheSaleEnterprise/ClockIn/img/001.jpeg" alt=""
                    xid="image4" style="width:110px;"/>
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit23"> 
                <label class="x-label" xid="label23" style="width:110px;"><![CDATA[银行卡照片：]]></label>  
                <div class="x-edit" xid="div4" style="text-align:right;"> 
                  <img src="$UI/TheSaleEnterprise/ClockIn/img/001.jpeg" alt=""
                    xid="image5" style="width:110px;"/>
                </div> 
              </div>
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="padding:20px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="保 存" xid="button2" style="width:100%;" onClick="button2Click"> 
          <i xid="i2"/>  
          <span xid="span1">保 存</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newOrderInfo.w"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
