<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <data xid="default2">[]</data>  
      <column name="id" type="String" xid="column9"/>  
      <column name="taveltype" type="String" xid="column10"/>  
      <column name="title" type="String" xid="column1"/>  
      <column name="feiyong" type="String" xid="column2"/>  
      <column name="target" type="String" xid="column3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeList" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="title" type="String" xid="column12"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="persons" idColumn="id"> 
      <column name="id" type="String" xid="column13"/>  
      <column name="em_name" type="String" xid="column14"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="detailData" idColumn="id" autoNew="true"> 
      <column name="id" type="String" xid="column16"></column>
  <column name="start" type="Date" xid="column5"></column>
  <column name="end" type="Date" xid="column4"></column>
  <column name="chufa" type="String" xid="column8"></column>
  <column name="mudi" type="String" xid="column6"></column>
  <column name="gl" type="String" xid="column7"></column>
  <column name="qishi" type="String" xid="column15"></column>
  <column name="fangshi" type="String" xid="xid3"></column>
  <column name="shijian" type="String" xid="xid4"></column>
  <column name="peitongid" type="String" xid="xid5"></column>
  <column name="peitongren" type="String" xid="xid6"></column>
  <column name="jtgj" type="String" xid="xid7"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加出差申请"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">添加出差申请</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col17"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row4"> 
            <div class="col col-xs-12" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label7" style="width:115px;"><![CDATA[主题：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input4" bind-ref="$model.infoData.ref(&quot;title&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:115px;"><![CDATA[出差类型：]]></label>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radios x-edit" xid="radioGroup1" bind-itemset="typeList"
                  bind-itemsetValue="ref(&quot;id&quot;)" bind-itemsetLabel="ref(&quot;title&quot;)" style="color: #FA7922;"
                  bind-ref="$model.infoData.ref(&quot;taveltype&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"
        style="margin-top:10px;background-color:white;"> 
        <div class="x-col" xid="col7"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="detailData"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row7"> 
                  <div class="col col-xs-12" xid="col15"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit2" style="padding:0px;"> 
                      <label class="x-label" xid="label2" style="width:115px;">开始时间：</label>  
                      <output component="$UI/system/components/justep/output/output"
                        xid="output8" bind-ref="ref(&quot;start&quot;)" class="x-edit" style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col16"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit3" style="padding:0px;"> 
                      <label class="x-label" xid="label3" style="width:115px;">结束时间：</label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output9" bind-ref="ref(&quot;end&quot;)" style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit6" style="padding:0px;"> 
                      <label class="x-label" xid="label6" style="width:115px;"><![CDATA[出发地：]]></label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output1" bind-ref="ref(&quot;chufa&quot;)" style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col2"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit8" style="padding:0px;"> 
                      <label class="x-label" xid="label8" style="width:115px;">目的地：</label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output2" bind-ref="ref(&quot;mudi&quot;)" style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col14"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit9" style="padding:0px;"> 
                      <label class="x-label" xid="label9" style="width:115px;"><![CDATA[点对点公里数：]]></label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output3" bind-ref="ref(&quot;gl&quot;)" style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col18"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit10" style="padding:0px;"> 
                      <label class="x-label" xid="label10" style="width:115px;"><![CDATA[发车/起飞时间：]]></label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output10" bind-ref="ref(&quot;qishi&quot;)" style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col19"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit11" style="padding:0px;"> 
                      <label class="x-label" xid="label11" style="width:115px;"><![CDATA[交通工具：]]></label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output4" bind-ref='ref("jtgj")' style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col20"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit12" style="padding:0px;"> 
                      <label class="x-label" xid="label12" style="width:115px;"><![CDATA[乘车所需时间：]]></label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output5" bind-ref="ref(&quot;shijian&quot;)" style="padding-top: 0px;"/>  
                      <span xid="span7"><![CDATA[（小时）]]></span> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col21"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit13" style="padding:0px;"> 
                      <label class="x-label" xid="label13" style="width:115px;"><![CDATA[陪同人员：]]></label>  
                      <output component="$UI/system/components/justep/output/output"
                        class="x-edit" xid="output6" bind-ref='ref("peitongren")' style="padding-top: 0px;"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col13"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-default btn-only-label" label="删除明细" xid="button2"
                      style="width:100%;" onClick="button2Click"> 
                      <i xid="i2"/>  
                      <span xid="span6">删除明细</span> 
                    </a> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="添加明细" xid="button3" style="width:100%;" onClick="button3Click"> 
          <i xid="i3"/>  
          <span xid="span8">添加明细</span> 
        </a> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10"
        style="background-color:white;"> 
        <div class="x-col" xid="col22"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row11"> 
            <div class="col col-xs-12" xid="col23"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit14"> 
                <label class="x-label" xid="label15" style="width:115px;"><![CDATA[预估差旅费用：]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input7" bind-ref="$model.infoData.ref(&quot;feiyong&quot;)"/> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit16"> 
                <label class="x-label" xid="label16" style="width:115px;"><![CDATA[行程目的：]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea1" bind-ref="$model.infoData.ref(&quot;target&quot;)"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="margin-top:5px;background-color:white;"> 
        <div class="x-col" xid="col4"> 
          <span xid="span1">上传照片（最多录入6张。）</span>  
          <div class="imgline" xid="div74" id="newBusinessTripImg"> 
            <div class="lfloat simg plusbtn" xid="div57" id="newBusinessTripImg1">+
              <input id="uploadnewBusinessTrip" type="file" class="upfile" accept="image/*,video/*;"
                capture="camera" xid="file1"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="padding:20px;background-color:white;"> 
        <div class="x-col" xid="col3"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
            label="保 存" xid="button4" style="width:100%;" onClick="button4Click"> 
            <i xid="i4"/>  
            <span xid="span5">保 存</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col5"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
            label="提 交" xid="button5" style="width:100%;" onClick="button5Click"> 
            <i xid="i5"/>  
            <span xid="span2">提 交</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    forceRefreshOnOpen="true" src="$UI/TheSaleEnterprise/Commonly/dialog/businessTripDetail.w"
    onClose="windowDialog1Close"/> 
</div>
