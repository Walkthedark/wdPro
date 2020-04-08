<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="categoryData" idColumn="cate_id" onCustomRefresh="categoryDataCustomRefresh"> 
      <column name="cate_id" type="String" xid="xid37"/>  
      <column name="cate_name" type="String" xid="xid38"/>  
      <column name="parent_id" type="String" xid="xid41"/>  
      <column name="child" type="String" xid="xid42"/>  
      <column name="cate_img" type="String" xid="xid1"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="cate_id"> 
      <column name="cate_id" type="String" xid="column2"/>  
      <column name="cate_name" type="String" xid="column1"/>  
      <column name="parent_id" type="String" xid="column3"/>  
      <column name="children" type="String" xid="column4"/>  
      <column name="cate_img" type="String" xid="xid3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data2" idColumn="cate_id"> 
      <column name="cate_id" type="String" xid="column8"/>  
      <column name="cate_name" type="String" xid="column5"/>  
      <column name="parent_id" type="String" xid="column7"/>  
      <column name="children" type="String" xid="column6"/>  
      <column name="cate_img" type="String" xid="xid4"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="uuid"> 
      <rule xid="rule2"> 
        <col name="uuid" xid="ruleCol2"> 
          <defaultValue xid="default9"> 
            <expr xid="default10"/> 
          </defaultValue>  
          <calculate xid="calculate2"> 
            <expr xid="default11">justep.UUID.createUUID()</expr> 
          </calculate> 
        </col> 
      </rule>  
      <column label="商品ID" name="goods_id" type="String" xid="xid18"/>  
      <column name="goods_name" type="String" xid="xid19"/>  
      <column name="goods_img" type="String" xid="xid20"/>  
      <column name="goods_num" type="String" xid="xid21"/>  
      <column name="goods_sn" type="String" xid="xid22"/>  
      <column name="order_num" type="String" xid="xid23"/>  
      <column name="price" type="String" xid="xid24"/>  
      <column name="quantity" type="String" xid="xid25"/>  
      <column name="show_name" type="String" xid="xid26"/>  
      <column name="specification1_name" type="String" xid="xid27"/>  
      <column name="specification1_value" type="String" xid="xid28"/>  
      <column name="specification2_name" type="String" xid="xid29"/>  
      <column name="specification2_value" type="String" xid="xid30"/>  
      <column name="specification3_name" type="String" xid="xid31"/>  
      <column name="specification3_value" type="String" xid="xid32"/>  
      <column name="specification_id" type="String" xid="xid33"/>  
      <column name="unit_id" type="String" xid="xid34"/>  
      <column name="unit_name" type="String" xid="xid35"/>  
      <column name="unit" type="String" xid="xid36"/>  
      <column name="uuid" type="String" xid="xid95"/>  
      <column name="set_specs" type="String" xid="xid2"/>  
      <column name="specification" type="String" xid="xid5"/>  
      <column name="col22" type="String" xid="xid6"/>  
      <column name="col23" type="String" xid="xid7"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data3" idColumn="cate_id"> 
      <column name="cate_id" type="String" xid="column12"/>  
      <column name="cate_name" type="String" xid="column9"/>  
      <column name="parent_id" type="String" xid="column11"/>  
      <column name="children" type="String" xid="column10"/>  
      <column name="cate_img" type="String" xid="column13"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classNameData" idColumn="id"> 
      <column name="id" type="String" xid="column22"/>  
      <column name="name" type="String" xid="column21"/>  
      <column name="cid" type="String" xid="column14"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classValueData" idColumn="id"> 
      <column name="id" type="String" xid="column19"/>  
      <column name="name" type="String" xid="column17"/>  
      <column name="pid" type="String" xid="column20"/>  
      <column name="flag" type="String" xid="column17"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classValue2Data" idColumn="id" confirmRefresh="false"> 
      <column name="id" type="String" xid="column15"/>  
      <column name="name" type="String" xid="column16"/>  
      <column name="pid" type="String" xid="column18"/>  
      <column name="flag" type="String" xid="column16"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classValue3Data" idColumn="id"> 
      <column name="id" type="String" xid="column15"/>  
      <column name="name" type="String" xid="column14"/>  
      <column name="pid" type="String" xid="column16"/>  
      <column name="flag" type="String" xid="column19"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="className2Data" idColumn="id"> 
      <column name="id" type="String" xid="column18"/>  
      <column name="name" type="String" xid="column19"/>  
      <column name="cid" type="String" xid="column17"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="className3Data" idColumn="id"> 
      <column name="id" type="String" xid="column21"/>  
      <column name="name" type="String" xid="column22"/>  
      <column name="cid" type="String" xid="column20"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="unitData" idColumn="id"> 
      <column name="origin_price" type="String" xid="column23"/>  
      <column name="id" type="String" xid="column24"/>  
      <column name="name" type="String" xid="column25"/>  
      <column name="price" type="String" xid="column26"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="specificationData" idColumn="id"> 
      <column name="id" type="String" xid="column29"/>  
      <column name="specificationName" type="String" xid="column30"/>  
      <column name="specificationThis" type="String" xid="column27"/>  
      <column name="specificationValue" type="String" xid="column28"/>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data5" idColumn="uuid" confirmDelete="false" confirmRefresh="false">
   <rule xid="rule1">
    <col name="fsum" xid="ruleCol1" expr='$model.goodsDataM.sum("fsum")'>
     <calculate xid="calculate1">
      <expr xid="default4">$row.val(&quot;goods_num&quot;)</expr></calculate> </col> 
    <col name="fsumMoney" xid="ruleCol3">
     <calculate xid="calculate3">
      <expr xid="default7">$row.val(&quot;total_price&quot;)</expr></calculate> </col> </rule> 
   <column label="商品ID" name="goods_id" type="String" xid="column61"></column>
   <column name="goods_name" type="String" xid="column62"></column>
   <column name="goods_img" type="String" xid="column57"></column>
   <column name="goods_inventory" type="String" xid="column59"></column>
   <column name="goods_sn" type="String" xid="column60"></column>
   <column name="show_name" type="String" xid="column55"></column>
   <column name="specification_id" type="String" xid="column68"></column>
   <column name="goods_num" type="Integer" xid="column63"></column>
   <column name="specification" type="String" xid="column64"></column>
   <column name="fsum" type="Float" xid="column67"></column>
   <column name="fsumMoney" type="Float" xid="column65"></column>
   <column name="price" type="Float" xid="column66"></column>
   <column name="remark" type="String" xid="xid39"></column>
   <column name="unit_id" type="String" xid="xid40"></column>
   <column name="uuid" type="String" xid="column56"></column>
   <column name="specification1" type="String" xid="column58"></column>
   <column name="specification2" type="String" xid="xid43"></column>
   <column name="specification3" type="String" xid="xid44"></column>
   <column name="dis_tag" type="String" xid="xid45"></column>
   <column label="促销的价格" name="sales_price" type="Float" xid="xid46"></column>
   <column label="是否是促销商品" name="sales_flag" type="String" xid="xid47"></column>
   <column label="总价" name="total_price" type="Float" xid="xid48"></column>
   <column name="sales_flag_num" type="String" xid="xid52"></column>
   <column name="promotion" type="String" xid="xid54"></column>
   <column name="promotion_id" type="String" xid="xid55"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sumdata" idColumn="id">
   <column name="id" type="String" xid="column70"></column>
   <column name="Value" type="Integer" xid="column71"></column>
   <column name="moeny" type="Float" xid="column69"></column>
   <data xid="default6">[{&quot;id&quot;:&quot;1&quot;,&quot;Value&quot;:0,&quot;moeny&quot;:0}]</data>
   <rule xid="rule3">
    <col name="Value" xid="ruleCol4">
     <calculate xid="calculate4">
      <expr xid="default5"><![CDATA[$model.data5.sum("fsum")]]></expr></calculate> </col> 
    <col name="moeny" xid="ruleCol4">
     <calculate xid="calculate4">
      <expr xid="default8"><![CDATA[$model.data5.sum("fsumMoney")]]></expr></calculate> </col> </rule> </div></div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1"> 
    <div class="x-contents-content" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="52"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1"> 
            <div class="x-col" xid="col1"/>  
            <div class="x-col x-col-90" xid="col2"> 
              <div class=" input-bor form-group has-feedback text-muted" xid="formGroup1"> 
                <i class="icon-ios7-search-strong form-control-feedback"
                  xid="col4"/>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-inputText  input-bor"
                  xid="key" placeHolder="搜索产品信息" style="background-color:#f5f5f5;"
                  onFocus="keyFocus"/> 
              </div> 
            </div>  
            <div class="x-col" xid="col3"/> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content2" style="border-top-style:solid;border-width:thin thin thin thin;border-color:#E7E7E7 #E7E7E7 #E7E7E7 #E7E7E7;"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row tb-box"
            xid="row2"> 
            <div class="col col-xs-3" xid="col10" style="padding-right:0px;"> 
              <div component="$UI/system/components/justep/list/list" class="x-list tb-root"
                xid="rootClassList" data="categoryData" dataItemAlias="rootClassRow"
                filter=" $row.val(&quot;parent_id&quot;) ==0"> 
                <ul class="x-list-template list-group" xid="listTemplateUl1"> 
                  <li xid="li1" class=" text-center tb-nopadding  list-group-item"
                    style="padding:0px 0px 0px 0px;border-style:none none none none;"
                    bind-css="{'current':rootClassRow.val('cate_id')==$model.categoryData.val('cate_id')}"
                    bind-click="li1Click"> 
                    <a class="btn btn-link btn-xs  list-group-item"
                      xid="button3" style="font-size:14px;height:100%;width:100%;border-style:none none none none;background-color:transparent;"> 
                      <i xid="i3"/>  
                      <span xid="span1" bind-text=' val("cate_name")' style="font-family: “Microsoft YaHei” ! important;" class="H5_span"></span></a> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="col col-xs-9" xid="col11"> 
                
                
                
              <div xid="div12" style="text-align:center;padding:5px 5px 5px 5px;display:none" bind-visible=" $model.goodsDataM.getCount() &gt;0"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" label="全部分类" xid="button6" icon="linear linear-chevronright " style="border-radius: 5px;color:#cf0202;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;width:90%;" onClick="button6Click">
   <i xid="i4" class="linear linear-chevronright"></i>
   <span xid="span2">全部分类</span></a></div><div xid="div3">
   <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="threeClassList" data="data3" dataItemAlias="threeClassRow">
    <ul class="x-list-template" xid="listTemplateUl4">
     <li xid="li4" class="col col-xs-4 text-center tb-listBox text-black" style="padding-left: 4px">
      <div xid="div1" bind-click="groupList">
       <img alt="" class="img-responsive" xid="image3" style=" min-width: 100%; height: 60px" bind-attr-src=' val("cate_img")'></img>
       <p bind-text=' val("cate_name")' xid="p3"></p></div> </li> </ul> </div> </div><div xid="div4">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="data1" disableInfiniteLoad="false" disablePullToRefresh="false">
    <ul class="x-list-template" xid="listTemplateUl6">
     <li xid="li4">
      <div class="panel-heading" xid="div1" bind-click="div7Click">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-right pull-right" xid="button1" icon="icon-ios7-arrow-right">
        <i class="icon-ios7-arrow-right text-muted" xid="i1"></i>
        <span xid="span3" style="color:#8B8B8B;"></span></a> 
       <span xid="span3" bind-text=' val("cate_name")'>分类名称</span></div> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="data2" filter=' val("cate_id") == $row.val("parent_id")' disableInfiniteLoad="true" disablePullToRefresh="true">
       <ul class="x-list-template" xid="listTemplateUl4">
        <li xid="li10" class="col col-xs-4 text-center tb-listBox text-black" style="padding-left: 4px">
         <div xid="div3" bind-click="groupList" style="height:100%;width:100%;">
          <img alt="" class="img-responsive" xid="image3" bind-attr-src=' val("cate_img")' style=" min-width: 100%; height: 60px"></img>
          <p bind-text=' val("cate_name")' xid="p3" style="color: #333;font-size:14px;font-family:“Microsoft YaHei” ! important;"></p></div> </li> </ul> </div> </li> </ul> </div> </div></div> 
          </div> 
        
  </div> 
      </div> 
    </div>  
    <div class="x-contents-content" xid="content3">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2" height="52"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row4"> 
            <div class="x-col" xid="col9"/>  
            <div class="x-col x-col-90" xid="col7"> 
              <div class=" input-bor form-group has-feedback text-muted" xid="formGroup2"> 
                <i class="icon-ios7-search-strong form-control-feedback"
                  xid="col6"/>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-inputText  input-bor"
                  xid="input1" placeHolder="搜索产品信息" style="background-color:#f5f5f5;"/>
              </div> 
            </div>  
            <div class="x-col" xid="col8"/>
          </div> 
        </div>  
        <div class="x-panel-content" xid="content4" style="border-top-style:solid;border-width:thin thin thin thin;border-color:#E7E7E7 #E7E7E7 #E7E7E7 #E7E7E7;"> 
          <div xid="div9" style="padding:5px 5px 5px 5px;">
            <span xid="span5"><![CDATA[历史搜索记录]]></span>
          </div>  
          <div xid="div10" style="padding:5px 5px 5px 5px;"> 
            <a component="$UI/system/components/justep/button/button" class="btn x-gray"
              label="奶粉" xid="button2"> 
              <i xid="i5"/>  
              <span xid="span4">奶粉</span>
            </a>
          </div>
        </div> 
      </div>
    </div>
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver1" position="bottom"> 
    <div class="x-popOver-overlay" xid="div16"/>  
    <div class="x-popOver-content" xid="div41" style="width:100%;height:70%;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3"> 
        <div class="x-panel-content" xid="content5"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black"
            icon="icon-ios7-close-outline" onClick="{operation:'popOver1.hide'}" xid="button15"> 
            <i xid="i25" class="icon-ios7-close-outline"/>  
            <span xid="span46"/>
          </a>  
          <img alt="" class="img-thumbnail tb-colorImg" bind-attr-src=" $model.goodsDataM.val(&quot;goods_img&quot;)"
            xid="image4"/>  
          <div class="tb-title" xid="div37"> 
            <span class="text-danger h4" xid="span21">￥</span>  
            <span class="text-danger h4" xid="span48" bind-text="$model.goodsDataM.val(&quot;price&quot;)"/>  
            <div xid="div40"/>  
            <span xid="span50" bind-text="$model.goodsDataM.val(&quot;goods_name&quot;)"/>  
            <h5 xid="h56" class="text-black">请选择规格</h5>
          </div>  
          <div xid="div27" style="height:30px;width:100%;"/>  
          <div class="panel-body" xid="div36" style="padding-top: 3px"> 
            <div xid="div42" bind-visible=" $model.classNameData.getCount() !=0"> 
              <h4 class="text-black" xid="h43" bind-text=" $model.classNameData.val(&quot;name&quot;) +&quot;分类&quot;"/>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list5" data="classValueData" dataItemAlias="colorRow"> 
                <ul class="x-list-template" xid="listTemplateUl9" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li7" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2" bind-click="li7Click"> 
                    <div class="text-center" bind-css=" val(&quot;flag&quot;)==0?{'current2':colorRow.val('id')==$model.classValueData.val('id')}:{'current':colorRow.val('id')==$model.classValueData.val('id')}"
                      xid="div38" bind-disable=" val(&quot;flag&quot;) !=1" bind-enable=" val(&quot;flag&quot;) ==1"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span52"/>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div44"/>  
            <div xid="div43" bind-visible=" $model.className2Data.getCount() !=0"> 
              <h4 class="text-black" xid="h44" bind-text=" $model.className2Data.val(&quot;name&quot;) +&quot;分类&quot;"/>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list7" data="classValue2Data" dataItemAlias="color2Row"> 
                <ul class="x-list-template" xid="listTemplateUl9" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li6" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2" bind-click="li6Click"> 
                    <div class="text-center " bind-css=" val(&quot;flag&quot;)==0?{'current2':color2Row.val('id')==$model.classValue2Data.val('id')}:{'current':color2Row.val('id')==$model.classValue2Data.val('id')}"
                      xid="div39" bind-style="{ &quot;color&quot;: val(&quot;flag&quot;)==0?'#8E8E8E':'#4D4D4D', }"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span44"/>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div28"/>  
            <div xid="div16" bind-visible=" $model.className3Data.getCount() !=0"> 
              <h4 class="text-black" xid="h41" bind-text=" $model.className3Data.val(&quot;name&quot;) +&quot;分类&quot;"/>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list6" data="classValue3Data" dataItemAlias="color3Row"> 
                <ul class="x-list-template" xid="listTemplateUl8" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li8" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2" bind-click="li8Click"> 
                    <div class="text-center" bind-css="{'current':color3Row.val('id')==$model.classValue3Data.val('id')}"
                      xid="div29"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span30"/>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div32"/>  
            <div xid="div30" bind-visible=" $model.unitData.getCount()&gt;1"> 
              <h4 class="text-black" xid="h46">单位分类</h4>  
              <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
                xid="list5" data="unitData" dataItemAlias="color4Row"> 
                <ul class="x-list-template" xid="listTemplateUl7" componentname="ul(html)"
                  id="undefined_ul2"> 
                  <li xid="li9" class="col col-xs-4" componentname="li(html)"
                    id="undefined_li2"> 
                    <div class="text-center" bind-css="{'current':color4Row.val('id')==$model.unitData.val('id')}"
                      xid="div31"> 
                      <span bind-text="val(&quot;name&quot;)" xid="span45"/>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="clearfix" xid="div27"/>  
            <div xid="div28"> 
              <h4 class="text-black" xid="h41">购买数量</h4>  
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row3" style="padding:0px 0px 0px 0px;"> 
                <div class="x-col x-col-33" xid="col18"/>  
                <div class="x-col" xid="col19"> 
                  <div class="tb-numberOperation" xid="div30" style="text-align:right;"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn x-gray btn-xs btn-only-icon pull-right" label="button"
                      xid="button19" icon="icon-android-add" onClick="button19Click"> 
                      <i xid="i24" class="icon-android-add"/>  
                      <span xid="span21"/>
                    </a>  
                    <span xid="span30" class="pull-right" style="line-height:0.8;height:22px;">1</span>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn x-gray btn-xs btn-only-icon pull-right" label="button"
                      xid="button17" icon="icon-android-remove" onClick="button17Click"> 
                      <i xid="i24" class="icon-android-remove"/>  
                      <span xid="span49"/>
                    </a> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup4"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="加入购物清单" onClick="button16Click" xid="button16"> 
              <i xid="i26"/>  
              <span xid="span47">加入购物清单</span>
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>
</div>
