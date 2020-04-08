<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="infoData" idColumn="id" autoNew="true"> 
      <data xid="default2">[{"id":"1","col1":"李四","col2":"13888888888","col3":"上海市渭南路111号111"}]</data>  
      <column name="id" type="String" xid="column9"/>  
      <column name="customerName" type="String" xid="column10"/>  
      <column name="customerID" type="String" xid="column1"/>  
      <column name="shr" type="String" xid="column2"/>  
      <column name="shdh" type="String" xid="column3"/>  
      <column name="shdz" type="String" xid="column4"/>  
      <column name="ddtpj" type="String" xid="column5"/>  
      <column name="jhrq" type="Date" xid="column6"/>  
      <column name="bz" type="String" xid="column7"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" limit="-1" confirmRefresh="false" confirmDelete="false"
      onAfterRefresh="goodsDataAfterRefresh" onDataChange="goodsDataDataChange"> 
      <column name="id" type="String" xid="column31"/>  
      <column name="img" type="String" xid="xid1"/>  
      <column name="pro_name" type="String" xid="xid2"/>  
      <column name="pro_id" type="String" xid="xid3"/>  
      <column name="spec" type="String" xid="xid4"/>  
      <column name="price" type="String" xid="xid5"/>  
      <column name="qty" type="String" xid="xid6"/>  
      <column name="unit" type="String" xid="xid7"/>  
      <column name="unitm" type="String" xid="xid8"/>  
      <column name="remark" type="String" xid="xid9"/>  
      <data xid="default1">[{"id":"1","img":"1","pro_name":"1","pro_id":"1","spec":"1111","price":"1","qty":"2","unit":"1","unitm":"个","remark":"备注1"},{"id":"2","img":"2","pro_name":"2","pro_id":"2","spec":"2222","price":"2","qty":"3","unit":"2","unitm":"套","remark":"备注2"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cData" idColumn="id" limit="-1" confirmRefresh="false" confirmDelete="false"> 
      <data xid="default3">[{"id":"1","img":"1","pro_name":"1","pro_id":"1","spec":"1111","price":"1","qty":"2","unit":"1","unitm":"个","remark":"备注1"},{"id":"2","img":"2","pro_name":"2","pro_id":"2","spec":"2222","price":"2","qty":"3","unit":"2","unitm":"套","remark":"备注2"}]</data>  
      <column name="id" type="String" xid="column11"/>  
      <column name="img" type="String" xid="column12"/>  
      <column name="pro_name" type="String" xid="column13"/>  
      <column name="pro_id" type="String" xid="column14"/>  
      <column name="spec" type="String" xid="column15"/>  
      <column name="price" type="String" xid="column16"/>  
      <column name="qty" type="String" xid="column17"/>  
      <column name="unit" type="String" xid="column18"/>  
      <column name="unitm" type="String" xid="column19"/>  
      <column name="remark" type="String" xid="column20"/>  
      <column name="rate" type="String" xid="xid10"/>  
      <column name="story" type="String" xid="xid11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="uuid" confirmDelete="false" confirmRefresh="false"> 
      <rule xid="rule1">
   <col name="fsum" xid="ruleCol1" expr='$model.goodsDataM.sum("fsum")'>
    <calculate xid="calculate1">
     <expr xid="default4">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> 
   <col name="fsumMoney" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default7">$row.val(&quot;goods_num&quot;) * $row.val(&quot;price&quot;)</expr></calculate> </col> </rule>
  <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
  <column name="goods_name" type="String" xid="xid19"></column>
  <column name="goods_img" type="String" xid="xid20"></column>
  <column name="goods_inventory" type="String" xid="xid21"></column>
  <column name="goods_sn" type="String" xid="xid22"></column>
  <column name="show_name" type="String" xid="xid26"></column>
  <column name="specification_id" type="String" xid="xid33"></column>
  <column name="goods_num" type="Integer" xid="xid34"></column>
  <column name="specification" type="String" xid="xid35"></column>
  <column name="fsum" type="Float" xid="xid30"></column>
  <column name="fsumMoney" type="Float" xid="xid36"></column>
  <column name="price" type="Float" xid="xid37"></column>
  <column name="remark" type="String" xid="xid39"></column>
  <column name="unit_id" type="String" xid="xid40"></column>
  <column name="uuid" type="String" xid="xid41"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="clientData" idColumn="client_id"><column name="client_id" type="String" xid="xid12"></column>
  <column name="client_name" type="String" xid="xid13"></column>
  <column name="level_id" type="String" xid="xid14"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="addressData" idColumn="client_address_id"><column name="client_address_id" type="String" xid="xid15"></column>
  <column name="client_id" type="String" xid="xid16"></column>
  <column name="client_name" type="String" xid="xid17"></column>
  <column name="consignee" type="String" xid="xid23"></column>
  <column name="is_default" type="String" xid="xid24"></column>
  <column name="mobile" type="String" xid="xid25"></column>
  <column name="phone" type="String" xid="xid27"></column>
  <column name="address" type="String" xid="xid28"></column>
  <column name="area" type="String" xid="xid29"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sumdata" idColumn="id"><column name="id" type="String" xid="xid31"></column>
  <column name="Value" type="Integer" xid="xid32"></column>
  <column name="moeny" type="Float" xid="xid38"></column>
  <data xid="default6">[{&quot;id&quot;:&quot;1&quot;,&quot;Value&quot;:0,&quot;moeny&quot;:0}]</data>
  <rule xid="rule2">
   <col name="Value" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default5">$model.goodsDataM.sum(&quot;fsum&quot;)</expr></calculate> </col> 
   <col name="moeny" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default8">$model.goodsDataM.sum(&quot;fsumMoney&quot;)</expr></calculate> </col> </rule></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="添加销售订单" style="background-color:#56AEF7;"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">添加销售订单</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row9" style="background-color:white;" bind-click="row9Click"> 
        <div class="x-col " xid="col12"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row8"> 
            <div class="col col-xs-12" xid="col5"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label xid="label4" style="width:6em;"><![CDATA[客户信息：]]></label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output5" bind-ref='$model.clientData.ref("client_name")'/> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="col15" style="margin:auto"> 
          <a component="$UI/system/components/justep/button/button" class="btn-only-icon"
            xid="button7" icon="linear linear-chevronright" style="color:black"> 
            <i xid="i7" class="linear linear-chevronright"/>  
            <span xid="span8"/> 
          </a> 
        </div> 
      </div>  
        
      <div xid="div13" class="list-group-item div_radius" style="padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row mar2" xid="row6" style="background-color:white;" bind-click="row6Click"> 
        <div class="x-col" xid="col7"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row10"> 
            <div class="col col-xs-12" xid="col13"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7"> 
                <label xid="label7" style="width:6em;"><![CDATA[收货信息]]></label>  
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" /> 
              </div> 
            </div> 
          </div>  
          
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" limit="1" data="addressData" filter=' $row.val("is_default") ==1'>
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div12" style="padding:5px 5px 5px 5px;border-style:none none none none;"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft3">
    <img class="media-object" src="$UI/TheSaleEnterprise/img/address.png" alt="" xid="image2" height="30px" style="width:30px;height:30px;margin-top:12px;"></img></div> 
   <div class="media-body" xid="mediaBody3">
    <h5 xid="h51" class="media-heading"><![CDATA[]]>
  <span xid="span26" style="font-size:16px;color:#272727;" bind-text='val("consignee")'><![CDATA[胡云卓玛]]></span>
  <span xid="span27" bind-text='val("mobile")' style="color:#787878;"><![CDATA[18921619426]]></span>
  <span xid="span30" style="color:#FF6760;margin-left:10px;background-color:#FFEDF3;width:88px;" bind-visible=' val("is_default")==1'><![CDATA[默认]]></span></h5>
  <h5 xid="h52" class="media-heading" style="color:#838383;" bind-text=' val("address")'><![CDATA[上海市，浦东新区宁国路，二岗明珠楼]]></h5>
  <h5 xid="h53" class="media-heading" style="color:#D67D51;"><![CDATA[收获不便时请联系管理员]]></h5></div> 
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button14" style="margin-top:12px;color:#212121;" icon="linear linear-chevronright">
   <i xid="i14" class="linear linear-chevronright"></i>
   <span xid="span28"></span></a></div></div></div></li></ul> </div></div>  
        </div></div><div xid="div10" class="div_radius list-group-item" style="padding:5px;width:100%;">
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row1" style="background-color:white;margin-top:5px;"> 
          <div class="x-col" xid="col17"> 
            <div xid="div7">
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row11"> 
                <div class="x-col" xid="col1">
                  <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30" xid="labelEdit9"> 
                    <label xid="label10" style="width:6em;"><![CDATA[商品清单]]></label>  
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output x-edit" xid="output8"/> 
                  </div>
                </div>  
                <div class="x-col x-col-50" xid="col3" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn" label="选择商品" xid="button8" onClick="button2Click" icon="icon-android-add" style="color:black">
   <i xid="i8" class="icon-android-add"></i>
   <span xid="span9">选择商品</span></a></div>  
                <div class="x-col" xid="col10" style="text-align:left;">
                  <a component="$UI/system/components/justep/button/button" class="btn" xid="button4" onClick="button4Click" icon="icon-arrow-down-b" style="color:black">
   <i xid="i4" class="icon-arrow-down-b"></i>
   <span xid="span5"></span></a></div>
              </div>
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" data="goodsDataM"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li3"> 
                    <div xid="div6" style="padding:5px;border-right-style:none;border-left-style:none;" class="list-group-item"> 
                      <div class="media-left" xid="mediaLeft2"> 
                        <img src="" alt="" xid="image4" bind-attr-src=" val(&quot;goods_img&quot;)"
                          class="tb-img-good div_radius"/> 
                      </div>  
                      <div class="media-body" xid="mediaBody2"> 
                        <div xid="div9" style="padding:3px 3px 3px 3px;">
                          
                        <span bind-text="val(&quot;goods_name&quot;)" class="text-black h5" xid="span33"/></div>
                        <div class="text-muted" xid="div1"> 
                          
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button13" style="background-color:#F9F8F9;color:#797979;margin-left:5px;" bind-text='val("specification")'>
   <i xid="i13"></i>
   <span xid="span17"></span></a></div>  
                        <div class="text-muted" xid="div2"> 
                          <div component="$UI/system/components/justep/row/row"
                            class="x-row" xid="row4" style="padding:0px 0px 0px 0px;"> 
                            <div class="x-col x-col-33" xid="col18">
                              <span xid="span32" class="text-danger pull-left  " style="font-size:16px;">￥</span>
                              <span xid="span21" class=" text-danger pull-left" style="font-size:16px;" bind-text='val("price")'><![CDATA[0.00]]></span>
                            </div>  
                            <div class="x-col" xid="col19">
                              <div class="tb-numberOperation" xid="div8" style="text-align:right;"> 
                                  
                                <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button11" icon="icon-android-add" onClick="addBtnClick"> 
                                  <i xid="i12" class="icon-android-add" />  
                                  <span xid="span29" />
                                </a><span bind-text="val(&quot;goods_num&quot;)" xid="span16" class="pull-right" style="line-height:0.8;height:22px;"/>  
                                 
                              <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button12" icon="icon-android-remove" onClick="reductionBtnClick"> 
                                  <i xid="i11" class="icon-android-remove" />  
                                  <span xid="span10" />
                                </a></div>
                            </div>
                          </div>
                        </div> 
                      </div> 
                    </div> 
                  <div xid="div16" class="list-group-item" style="padding:0px 0px 0px 5px;border-right-style:none;border-left-style:none;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[商品备注]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='ref("remark")' placeHolder="请输入"></input></div></div></li> 
                </ul> 
              </div> 
            </div>
          </div> 
        </div>
      </div>
      <div xid="div15" class="div_radius list-group-item" style="padding:5px;width:100%;">
   
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row23">
   <div class="x-col" xid="col28"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[发票信息]]></label>
   <div class="x-edit" xid="div22" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-right" label="不开发票" xid="button17" icon="linear linear-chevronright" style="color:#212121;" bind-click="button17Click">
   <i xid="i17" class="linear linear-chevronright"></i>
   <span xid="span47">不开发票</span></a>
  </div></div></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row16" style="background-color:white;margin-top:5px;"> 
        <div class="x-col" xid="col31"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14"> 
                <label class="x-label" xid="label15" style="width:7em;"><![CDATA[订单特批价]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="请输入" dataType="Float"/>  
                <label class="x-label" xid="label16" style="width:1em;">元</label> 
              </div>
  </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row19" style="background-color:white;margin-top:5px;"> 
        <div class="x-col" xid="col40"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row20"> 
            <div class="col col-xs-12" xid="col39"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit18"> 
                <label class="x-label" xid="label21" style="width:6em;"><![CDATA[交货日期]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="input5" dataType="Date" placeHolder="请选择"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row mar2"
        xid="row22" style="background-color:white;margin-top:5px;"> 
        <div class="x-col" xid="col42"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row21"> 
            <div class="col col-xs-12" xid="col41"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit20"> 
                <label class="x-label" xid="label23" style="width:6em;"><![CDATA[订单备注]]></label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control x-edit" xid="textarea4" placeHolder="请输入"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="margin-top:5px;background-color:white;"/>  
      </div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row2">
   <div class="x-col x-col-20 x-col-center" xid="col4">
    </div> 
   <div class="x-col" xid="col4">
    <div class="text-right" xid="div14">
     <span xid="span35" class="text-muted">合计：</span>
     <span xid="span31" class="text-danger">￥</span>
     <span xid="sum" class="h4 text-danger" bind-text=' $model.goodsDataM.sum("fsumMoney")'><![CDATA[0.00]]></span></div> 
    <div class="text-right" xid="div11">
     <span xid="span34">共</span>
     <span xid="span1" bind-text="$model.goodsDataM.getCount()"><![CDATA[]]></span>
     <span xid="span7">种</span>
     <span xid="span37" bind-text='$model.sumdata.val("Value")'></span>
     <span xid="span7">件商品</span></div> </div> 
   <div class="x-col x-col-33 text-center tb-settlement" xid="col9" bind-click="settlementClick">
    <span xid="span36">下单</span></div> </div></div></div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/salesOrderSelectGoods.w" forceRefreshOnOpen="true"
    onReceive="infoDialogReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver1" position="bottom" dismissible="false" style="width:100%;background-color:white;"> 
    <div class="x-popOver-overlay" xid="div3"/>  
    <div class="x-popOver-content" xid="div4"> 
      <div xid="div5" style="padding:4px;background-color:white;"> 
        <div class="media-left" xid="mediaLeft1" style="padding:10px 4px;"> 
          <img src="" alt="" xid="image1" bind-attr-src="$model.getImageUrl( $model.cData.val(&quot;img&quot;))"
            class="tb-img-good" style="width:6em;"/> 
        </div>  
        <div class="media-body" xid="mediaBody1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row13"> 
            <div class="x-col" xid="col2"> 
              <span xid="span2" bind-text="$model.cData.val(&quot;pro_name&quot;)" class="h4"
                style="color:#000"/> 
            </div>  
            <div xid="col8"> 
              <a component="$UI/system/components/justep/button/button" class="btn pull-right"
                xid="button5" icon="linear linear-cross" onClick="button5Click"> 
                <i xid="i2" class="linear linear-cross"/>  
                <span xid="span43"/> 
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row14"> 
            <div class="x-col" xid="col16"> 
              <span xid="span3" bind-text="$model.cData.val(&quot;spec&quot;)" class="h5"
                style="color:#000"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15"
        style="background-color:white;"> 
        <div class="x-col" xid="col22"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row"
            xid="row17"> 
            <div class="col col-xs-12" xid="col26"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label1" style="width:6em;">单位：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output10" bind-ref="$model.cData.ref(&quot;unitm&quot;)"
                  style="text-align:right"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col27"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit1"> 
                <label class="x-label" xid="label6" style="width:6em;">单价：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output11" bind-ref="$model.cData.ref(&quot;price&quot;)"
                  style="text-align:right"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col29"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label8" style="width:6em;">税率：</label>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output x-edit" xid="output12" bind-ref="$model.cData.ref(&quot;rate&quot;)"
                  style="text-align:right"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col30"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label9" style="width:6em;">备注：</label>  
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control" xid="textarea1" bind-ref="$model.cData.ref(&quot;remark&quot;)"
                  style="border:0px;text-align:right" placeHolder="请输入"/> 
              </div> 
            </div>  
            <div class="col col-xs-12" xid="col33"> 
              <a component="$UI/system/components/justep/button/button" class="btn x-blue btn-sm btn-only-icon pull-right addbtn"
                label="button" xid="button3" icon="icon-android-add" onClick="addSpecBtnClick"> 
                <i xid="i5" class="icon-android-add"/>  
                <span xid="span6"/> 
              </a>  
              <input component="$UI/system/components/justep/input/input" class="pull-right btn-sm sumbtn"
                xid="input2" bind-ref="$model.cData.ref(&quot;qty&quot;)"/>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-sm btn-only-icon pull-right subbtn"
                label="button" xid="button2" icon="icon-android-remove" onClick="subSpecBtnClick"> 
                <i xid="i3" class="icon-android-remove"/>  
                <span xid="span18"/> 
              </a>  
              <label xid="label11" class="x-label" style="padding: 5px 0px;">数量</label> 
            </div>  
            <div class="col col-xs-12" xid="col34"> 
              <span xid="span12" bind-text="$model.cData.val(&quot;unitm&quot;)" class="pull-right h6"
                style="color:#c3c3c3;margin:0px;">2222</span>  
              <span bind-text="$model.cData.val(&quot;story&quot;)" xid="span13" class="pull-right h6"
                style="color:#c3c3c3;margin:0px;">111</span>  
              <span xid="span11" class="pull-right h6" style="color:#c3c3c3;margin:0px;">库存:</span> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row27"
        style="text-align:center;background-color:white;"> 
        <div class="x-col" xid="col35"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger"
            label="移除" xid="button9" style="width:100%;" onClick="button9Click"> 
            <i xid="i9"/>  
            <span xid="span14">移除</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col36"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-primary"
            label="确定" xid="button10" style="width:100%;" onClick="button10Click"> 
            <i xid="i10"/>  
            <span xid="span15">确定</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="customerDialog"
    src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/customers.w" forceRefreshOnOpen="true"
    onReceive="customerDialogReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="orderWinDialog"
    src="$UI/TheSaleEnterprise/Commonly/orderDialog/orderDialog.w"/>
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="invoiceWinDiaLog" src="$UI/TheSaleEnterprise/Commonly/dialog/dialog/invoice.w"></span></div>
