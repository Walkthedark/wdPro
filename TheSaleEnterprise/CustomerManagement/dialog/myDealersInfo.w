<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="id"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data>  
      <column name="id" type="String" xid="xid1"/>  
      <column name="title" type="String" xid="xid2"/>  
      <column name="cuser" type="String" xid="xid3"/>  
      <column name="ctime" type="String" xid="xid4"/>  
      <column name="puser" type="String" xid="xid5"/>  
      <column name="ptime" type="String" xid="xid6"/>  
      <column name="brief" type="String" xid="xid7"/>  
      <column name="zoning" type="String" xid="xid8"/>  
      <column name="zoning_fzr" type="String" xid="xid37"/>  
      <column name="provice" type="String" xid="xid9"/>  
      <column name="provice_fzr" type="String" xid="xid38"/>  
      <column name="city" type="String" xid="xid10"/>  
      <column name="city_fzr" type="String" xid="xid39"/>  
      <column name="cooptime" type="String" xid="xid15"/>  
      <column name="channeltype" type="String" xid="xid12"/>  
      <column name="direct" type="String" xid="xid13"/>  
      <column name="types" type="String" xid="xid14"/>  
      <column name="xsmb" type="String" xid="xid40"/>  
      <column name="sjdc" type="String" xid="xid41"/>  
      <column name="fymb" type="String" xid="xid42"/>  
      <column name="sjhf" type="String" xid="xid43"/>  
      <column name="stuff" type="String" xid="xid18"/>  
      <column name="addr" type="String" xid="xid19"/>  
      <column name="sn" type="String" xid="xid11"/>  
      <column name="costrate" type="String" xid="xid16"/>  
      <column name="invoicetype" type="String" xid="xid17"/>  
      <column name="contact1" type="String" xid="xid20"/>  
      <column name="mobile1" type="String" xid="xid21"/>  
      <column name="phone1" type="String" xid="xid22"/>  
      <column name="contact2" type="String" xid="xid23"/>  
      <column name="mobile2" type="String" xid="xid24"/>  
      <column name="phone2" type="String" xid="xid25"/>  
      <column name="mailaddr" type="String" xid="xid26"/>  
      <column name="zipcode" type="String" xid="xid27"/>  
      <column name="cw_legalrepre" type="String" xid="xid28"/>  
      <column name="cw_lrphone" type="String" xid="xid29"/>  
      <column name="cw_lrmobile" type="String" xid="xid30"/>  
      <column name="cw_qualification" type="String" xid="xid31"/>  
      <column name="cw_lremail" type="String" xid="xid32"/>  
      <column name="cw_taxsn" type="String" xid="xid33"/>  
      <column name="cw_bank" type="String" xid="xid34"/>  
      <column name="cw_banksn" type="String" xid="xid35"/>  
      <column name="cw_creditperiod" type="String" xid="xid36"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/productPrice.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="collectDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/collect.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="statementsDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/statementsListCost.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="经销商详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">经销商详情</div>  
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
            <div class="col col-xs-12 border-Two" xid="col4"> 
              <div component="$UI/system/components/justep/output/output" class="x-output font-One"
                xid="output1" bind-ref="$model.orderData.ref(&quot;title&quot;)" style="text-align:center;margin-top:-5px;"/> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col5"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit1"> 
                <label class="x-label font-One" xid="label1"><![CDATA[分区：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output2" bind-ref="$model.orderData.ref(&quot;zoning&quot;)"/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit3"> 
                <label class="x-label font-One" xid="label2"><![CDATA[负责人：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output4" bind-ref='$model.orderData.ref("zoning_fzr")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit4"> 
                <label class="x-label font-One" xid="label3"><![CDATA[省份：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output6" bind-ref='$model.orderData.ref("provice")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit5"> 
                <label class="x-label font-One" xid="label4">负责人：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output5" bind-ref='$model.orderData.ref("provice_fzr")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit6"> 
                <label class="x-label font-One" xid="label5"><![CDATA[城市：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output8" bind-ref='$model.orderData.ref("city")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col9"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit7"> 
                <label class="x-label font-One" xid="label6">负责人：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output7" bind-ref='$model.orderData.ref("city_fzr")'/> 
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
            <div class="col col-xs-6 border-Two" xid="col24"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit17"> 
                <label class="x-label font-One" xid="label16"><![CDATA[合作时间：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output20" bind-ref='$model.orderData.ref("cooptime")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col25"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit18"> 
                <label class="x-label font-One" xid="label17"><![CDATA[渠道类型：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output18" bind-ref='$model.orderData.ref("channeltype")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col26"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit21"> 
                <label class="x-label font-One" xid="label18"><![CDATA[是否直营：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output24" bind-ref='$model.orderData.ref("direct")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col22"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit20"> 
                <label class="x-label font-One" xid="label13"><![CDATA[等级：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output23" bind-ref='$model.orderData.ref("types")'/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8"
        style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col28"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row7"> 
            <div class="col col-xs-12 border-Two" xid="col31"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit22"> 
                <label class="x-label font-One" xid="label21"><![CDATA[销售目标：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output27" bind-ref='$model.orderData.ref("xsmb")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col30"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit23"> 
                <label class="x-label font-One" xid="label20"><![CDATA[实际达成：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output25" bind-ref='$model.orderData.ref("sjdc")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col29"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit25"> 
                <label class="x-label font-One" xid="label19"><![CDATA[费用目标：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output29" bind-ref='$model.orderData.ref("fymb")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col33"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit24"> 
                <label class="x-label font-One" xid="label22"><![CDATA[实际花费：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output28" bind-ref='$model.orderData.ref("sjhf")'/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12"
        style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col41"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row11"> 
            <div class="col col-xs-12 border-Two" xid="col42"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit32"> 
                <label class="x-label font-One" xid="label27"><![CDATA[业务人员：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output35" bind-ref='$model.orderData.ref("stuff")'/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14"
        style="background-color:white;margin-top:10px;"> 
        <div class="x-col" xid="col46"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row13"> 
            <div class="col col-xs-12 border-Two" xid="col47"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <img src="$UI/TheSaleEnterprise/CustomerManagement/dialog/img/dingwei_light.png"
                  alt="" xid="image1" style="width:20px;"/>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output3" bind-ref='$model.orderData.ref("addr")'/> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col48"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit38"> 
                <label class="x-label font-One" xid="label35"><![CDATA[产品价格：]]></label>  
                <div class="x-edit" xid="div1"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="查看详情" xid="button2" onClick="button2Click"> 
                    <i xid="i2"/>  
                    <span xid="span1" style="margin-top:-4px;display:block;">查看详情</span> 
                  </a> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col45"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit39"> 
                <label class="x-label font-One" xid="label36"><![CDATA[数据采集：]]></label>  
                <div class="x-edit" xid="div2"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="采集" xid="button3" onClick="button3Click"> 
                    <i xid="i3"/>  
                    <span xid="span2" style="margin-top:-4px;display:block;">采集</span> 
                  </a> 
                </div> 
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col44"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit40"> 
                <label class="x-label font-One" xid="label37"><![CDATA[对账单：]]></label>  
                <div class="x-edit" xid="div3"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default6" label="查看经销商对账单" xid="button4" onClick="button4Click"> 
                    <i xid="i4"/>  
                    <span xid="span3" style="margin-top:-4px;display:block;">查看经销商对账单</span> 
                  </a> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver1" onReceive="windowReceiver1Receive"/> 
</div>
