<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" style="top:391px;left:624px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="id" autoNew="true"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data> 
    <column name="id" type="String" xid="xid1"></column>
  <column name="sn" type="String" xid="xid2"></column>
  <column name="net" type="String" xid="xid3"></column>
  <column name="jxs" type="String" xid="xid4"></column>
  <column name="sys" type="String" xid="xid5"></column>
  <column name="mysn" type="String" xid="xid6"></column>
  <column name="cat" type="String" xid="xid7"></column>
  <column name="grade" type="String" xid="xid8"></column>
  <column name="iskey" type="String" xid="xid9"></column>
  <column name="guide" type="String" xid="xid10"></column>
  <column name="area" type="String" xid="xid11"></column>
  <column name="cashiers" type="String" xid="xid12"></column>
  <column name="shelf_num" type="String" xid="xid13"></column>
  <column name="addr" type="String" xid="xid14"></column>
  <column name="breif" type="String" xid="xid15"></column>
  <column name="starttime" type="String" xid="xid16"></column>
  <column name="lianxiren" type="String" xid="xid17"></column>
  <column name="jinchang" type="String" xid="xid18"></column>
  <column name="competitor" type="String" xid="xid19"></column>
  <column name="dg" type="String" xid="xid20"></column></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="person" idColumn="name"><column name="name" type="String" xid="xid21"></column>
  <column name="job" type="String" xid="xid22"></column>
  <column name="phone" type="String" xid="xid23"></column>
  <column name="mobile" type="String" xid="xid24"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="updateDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myBranchesUpdate.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="barInfoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/myBranchesBarList.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="competingGoodsDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/competingGoods.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="branchesCollectDialog" src="$UI/TheSaleEnterprise/CustomerManagement/dialog/branchesCollect.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="网点详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">网点详情</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" _xid="C7E1BB556C000001138D1E5D797C1106"
      style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="background-color:white;"> 
        <div class="x-col" xid="col1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row2"> 
            <div class="col col-xs-12 border-Two" xid="col5"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit1"> 
                <label class="x-label font-One" xid="label1"><![CDATA[网点名称：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output2" bind-ref='$model.CData.ref("net")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit3"> 
                <label class="x-label font-One" xid="label2"><![CDATA[所属经销商：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output4" bind-ref='$model.CData.ref("jxs")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit4"> 
                <label class="x-label font-One" xid="label3"><![CDATA[所属系统：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output6" bind-ref='$model.CData.ref("sys")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit5"> 
                <label class="x-label font-One" xid="label4"><![CDATA[系统自编店号：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output5" bind-ref='$model.CData.ref("mysn")'/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col27"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row6"> 
            <div class="col col-xs-12 border-Two" xid="col24"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit17"> 
                <label class="x-label font-One" xid="label16"><![CDATA[网点类型：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output20" bind-ref='$model.CData.ref("cat")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col25"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit18"> 
                <label class="x-label font-One" xid="label17"><![CDATA[网点等级：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output18" bind-ref='$model.CData.ref("grade")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col26"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit21"> 
                <label class="x-label font-One" xid="label18"><![CDATA[重点网点：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output24" bind-ref='$model.CData.ref("iskey")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col22"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit20"> 
                <label class="x-label font-One" xid="label13"><![CDATA[导购网点：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output23" bind-ref='$model.CData.ref("guide")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col4"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit10"> 
                <label class="x-label font-One" xid="label9"><![CDATA[店面面积（平方米）：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output10" bind-ref='$model.CData.ref("area")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col6"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit11"> 
                <label class="x-label font-One" xid="label10"><![CDATA[收银台数：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output11" bind-ref='$model.CData.ref("cashiers")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit12"> 
                <label class="x-label font-One" xid="label11"><![CDATA[同品类货架节数（各产品）：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output12" bind-ref='$model.CData.ref("shelf_num")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col9"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit13"> 
                <label class="x-label font-One" xid="label12"><![CDATA[开店日期：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output13" bind-ref='$model.CData.ref("starttime")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col10"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit15"> 
                <label class="x-label font-One" xid="label14"><![CDATA[详细地址：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output15" bind-ref='$model.CData.ref("addr")'/>
                <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png"
                  alt="" xid="image2" style="width:20px;"/>
              </div>
            </div>
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="person">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col28"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row7"> 
            <div class="col col-xs-6 border-Two" xid="col31"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit22"> 
                <label class="x-label font-One" xid="label21"><![CDATA[联系人：]]></label>  
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output27" bind-ref='ref("name")' /> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col30"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit23"> 
                <label class="x-label font-One" xid="label20"><![CDATA[职务：]]></label>  
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output25" bind-ref='ref("job")' /> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col29"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit25"> 
                <label class="x-label font-One" xid="label19"><![CDATA[联系电话：]]></label>  
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output29" bind-ref='ref("phone")' /> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col33"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit24"> 
                <label class="x-label font-One" xid="label22"><![CDATA[手机：]]></label>  
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output28" bind-ref='ref("mobile")' /> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div></li></ul> </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12"
        style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col41"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row11"> 
            <div class="col col-xs-12 border-Two" xid="col42"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="修 改 网 点" xid="button5" style="width:100%;" onClick="button5Click"> 
                <i xid="i5"/>  
                <span xid="span5">修 改 网 点</span>
              </a>
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14"
        style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col46"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row13"> 
            <div class="col col-xs-12 border-Two" xid="col48"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit38"> 
                <label class="x-label font-One" xid="label35" style="width:110px;"><![CDATA[已进场条码：]]></label>  
                <div class="x-edit" xid="div1"> 
                  <span xid="span9" class="font-four" bind-text='$model.CData.val("jinchang")+"条记录"'><![CDATA[]]></span>
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="查看详情" xid="button2" onClick="button2Click"
                    style="margin-left:10px;"> 
                    <i xid="i2"/>  
                    <span xid="span1" style="margin-top:-4px;display:block;">查看详情</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="采集" xid="button6" onClick="button3Click"
                    style="margin-left:10px;display:none"> 
                    <i xid="i6"/>  
                    <span xid="span6" style="margin-top:-4px;display:block;">采集</span>
                  </a> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col45"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit39"> 
                <label class="x-label font-One" xid="label36" style="width:110px;"><![CDATA[竞品：]]></label>  
                <div class="x-edit" xid="div2"> 
                  <span xid="span10" class="font-four" bind-text='$model.CData.val("competitor")+"条记录"'><![CDATA[]]></span>
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="查看详情" xid="button8" style="margin-left:10px;" onClick="button8Click"> 
                    <i xid="i8"/>  
                    <span xid="span8" style="margin-top:-4px;display:block;">查看详情</span>
                  </a>
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="采集" xid="button3" onClick="button3Click"
                    style="margin-left:10px;display:none"> 
                    <i xid="i3"/>  
                    <span xid="span2" style="margin-top:-4px;display:block;">采集</span> 
                  </a> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col44"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit40"> 
                <label class="x-label font-One" xid="label37" style="width:110px;"><![CDATA[数据采集：]]></label>  
                <div class="x-edit" xid="div3"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="采集" xid="button4" onClick="button4Click"> 
                    <i xid="i4"/>  
                    <span xid="span3" style="margin-top:-4px;display:block;">采集</span> 
                  </a> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col11"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit16"> 
                <label class="x-label font-One" xid="label15" style="width:110px;"><![CDATA[门头照：]]></label>  
                <div class="x-edit" xid="div4"> 
                  <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png"
                    alt="" xid="image3" style="width:80px;"/>
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col12"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit19"> 
                <label class="x-label font-One" xid="label23" style="width:110px;"><![CDATA[备注：]]></label>  
                <div class="x-edit" xid="div5"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output17" bind-ref='$model.CData.ref("breif")'/>
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col13"> 
              <div id="main" xid="div7" style="margin-top:10px;height:300px;width:100%;"/>
            </div>
          <div class="col col-xs-12 border-Two" xid="col14">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit27">
    <label class="x-label font-One" xid="label25" style="width:110px;"><![CDATA[导购员：]]></label>
    <div class="x-edit" xid="div8">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output21" bind-ref='$model.CData.ref("dg")'></div></div> </div> </div></div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span>
  </div>
