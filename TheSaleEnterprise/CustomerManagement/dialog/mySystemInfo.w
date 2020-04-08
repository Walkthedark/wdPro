<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="CData" idColumn="jxs" autoNew="true"> 
      <data xid="default1">[{"id":"1","col1":"安徽副食品经销部","col2":"CU10001","col3":"安徽副食品经销部"},{"id":"2","col1":"上海副食品经销部","col2":"CU10002","col3":"上海副食品经销部"}]</data> 
    <column name="jxs" type="String" xid="xid2"></column>
  <column name="title" type="String" xid="xid3"></column>
  <column name="zoning" type="String" xid="xid4"></column>
  <column name="zoning_fzr" type="String" xid="xid5"></column>
  <column name="provice" type="String" xid="xid6"></column>
  <column name="provice_fzr" type="String" xid="xid7"></column>
  <column name="city" type="String" xid="xid8"></column>
  <column name="city_fzr" type="String" xid="xid9"></column>
  <column name="cusman" type="String" xid="xid10"></column>
  <column name="erjiqudao" type="String" xid="xid11"></column>
  <column name="addr" type="String" xid="xid12"></column>
  <column name="breif" type="String" xid="xid13"></column>
  <column name="stuff" type="String" xid="xid14"></column>
  <column name="cusType" type="String" xid="xid15"></column></div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/CustomerManagement/dialog/productPrice.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="collectDialog" src="$UI/TheSaleEnterprise/CustomerManagement/dialog/mySystemCollect.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="statementsDialog" src="$UI/TheSaleEnterprise/CustomerManagement/dialog/statementsListCost.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="系统详情"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">系统详情</div>  
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
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit8">
   <label class="x-label font-One" xid="label7"><![CDATA[所属经销商：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output1" bind-ref='$model.CData.ref("jxs")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit9">
   <label class="x-label font-One" xid="label8"><![CDATA[系统名称：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output9" bind-ref='$model.CData.ref("title")'></div></div></div>  
            <div class="col col-xs-6 border-Two" xid="col5"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit1"> 
                <label class="x-label font-One" xid="label1"><![CDATA[分区：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output2" bind-ref='$model.CData.ref("zoning")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col2"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit3"> 
                <label class="x-label font-One" xid="label2"><![CDATA[负责人：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output4" bind-ref='$model.CData.ref("zoning_fzr")'/> 
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col3"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit4"> 
                <label class="x-label font-One" xid="label3"><![CDATA[省份：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output6" bind-ref='$model.CData.ref("provice")'/>
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col7"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit5"> 
                <label class="x-label font-One" xid="label4">负责人：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output5" bind-ref='$model.CData.ref("provice_fzr")'/>
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col8"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit6"> 
                <label class="x-label font-One" xid="label5"><![CDATA[城市：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output8" bind-ref='$model.CData.ref("city")'/>
              </div> 
            </div>  
            <div class="col col-xs-6 border-Two" xid="col9"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit7"> 
                <label class="x-label font-One" xid="label6">负责人：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output7" bind-ref='$model.CData.ref("city_fzr")'/>
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
                <label class="x-label font-One" xid="label21"><![CDATA[二级渠道：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output27" bind-ref='$model.CData.ref("erjiqudao")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col30"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit23"> 
                <label class="x-label font-One" xid="label20"><![CDATA[客户类型：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output25" bind-ref='$model.CData.ref("cusType")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col29"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit25"> 
                <label class="x-label font-One" xid="label19"><![CDATA[客户主管：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit font-six" xid="output29" bind-ref='$model.CData.ref("cusman")'/>
              </div> 
            </div>  
            <div class="col col-xs-12 border-Two" xid="col33"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit10">
   <label class="x-label font-One" xid="label9"><![CDATA[业务代表：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit font-six" xid="output10" bind-ref='$model.CData.ref("stuff")'></div></div></div> 
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
                  class="x-output x-edit" xid="output3" bind-ref='$model.CData.ref("addr")'/>
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
                <label class="x-label font-One" xid="label37"><![CDATA[备注：]]></label>  
                <div class="x-edit" xid="div3"> 
                  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-ref='$model.CData.ref("breif")'></div></div> 
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
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
