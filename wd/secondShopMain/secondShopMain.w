<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
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
      <column label="商品ID" name="goods_id" type="String" xid="xid18"/>  
      <column name="goods_name" type="String" xid="xid19"/>  
      <column name="goods_img" type="String" xid="xid20"/>  
      <column name="goods_inventory" type="String" xid="xid21"/>  
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
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data3" idColumn="cate_id"> 
      <column name="cate_id" type="String" xid="column12"/>  
      <column name="cate_name" type="String" xid="column9"/>  
      <column name="parent_id" type="String" xid="column11"/>  
      <column name="children" type="String" xid="column10"/>  
      <column name="cate_img" type="String" xid="column13"/>
    </div>
  </div>  
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
                  xid="key" placeHolder="搜索产品信息" style="background-color:#f5f5f5;"/> 
              </div> 
            </div>  
            <div class="x-col" xid="col3"/> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content2" style="border-top-style:solid;border-width:thin thin thin thin;border-color:#E7E7E7 #E7E7E7 #E7E7E7 #E7E7E7;"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row tb-box"
            xid="row2"> 
            <div class="col col-xs-4" xid="col10" style="padding-right:0px;"> 
              <div component="$UI/system/components/justep/list/list" class="x-list tb-root"
                xid="rootClassList" data="categoryData" dataItemAlias="rootClassRow"
                filter=" $row.val(&quot;parent_id&quot;) ==0"> 
                <ul class="x-list-template list-group" xid="listTemplateUl1"> 
                  <li xid="li1" class=" text-center tb-nopadding  list-group-item"
                    style="padding:0px 0px 0px 0px;border-style:none none none none;"
                    bind-css="{'current':rootClassRow.val('cate_id')==$model.categoryData.val('cate_id')}"
                    bind-click="li1Click"> 
                    <a bind-attr-href="&quot;#&quot;+val(&quot;cate_id&quot;)" class="btn btn-link btn-xs  list-group-item"
                      xid="button3" style="font-size:14px;height:100%;width:100%;border-style:none none none none;background-color:transparent;"> 
                      <i xid="i3"/>  
                      <h5 xid="h52" bind-text=" val(&quot;cate_name&quot;)" class="text-black"
                        style="font-family: “Microsoft YaHei” ! important;"><![CDATA[]]></h5> 
                    </a> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="col col-xs-8" xid="col11"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="data1"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2">
                    <div class="panel-heading" xid="div26" bind-click="div7Click"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-xs btn-icon-right pull-right" xid="button21"
                        icon="icon-ios7-arrow-right"> 
                        <i class="icon-ios7-arrow-right text-muted" xid="i21"/>  
                        <span xid="span25" style="color:#8B8B8B;"/>
                      </a>  
                      <span xid="span25" bind-text=" val(&quot;cate_name&quot;)"><![CDATA[分类名称]]></span> 
                    </div>  
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="list2" data="$model.data2" filter=" val(&quot;cate_id&quot;) == $row.val(&quot;parent_id&quot;)"> 
                      <ul class="x-list-template" xid="listTemplateUl3"> 
                        <li xid="li3" class="col col-xs-4 text-center tb-listBox text-black">
                          <div xid="div5" bind-click="div5Click"> 
                            <img alt="" class="img-responsive" xid="image1"
                              src="$UI/wd/main/image/w1.jpg"/>  
                            <p bind-text=" val(&quot;cate_name&quot;)" xid="p1" style="color: #333;font-size:14px;font-family:“Microsoft YaHei” ! important;"/>
                          </div>
                        </li>
                      </ul> 
                    </div>
                  </li>
                </ul> 
              </div>  
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list3" data="goodsDataM" limit="20"> 
                <ul class="x-list-template" xid="listTemplateUl4"> 
                  <li xid="li4" bind-click="li2Click"> 
                    <div xid="div1"> 
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row12" style="padding:0px 0px 0px 0px;"> 
                        <div class="x-col x-col-80" xid="col25"> 
                          <div class="media" xid="media8"> 
                            <div class="media-left" xid="mediaLeft6"> 
                              <a href="#" xid="a6"> 
                                <img class="media-object goods-img" src="$UI/dealersOrderSys/PlaceTheOrder/class/img/pic1.png"
                                  alt="" xid="image6" style="width:80px;" height="80px"
                                  bind-attr-src=" val(&quot;goods_img&quot;)"/>
                              </a> 
                            </div>  
                            <div class="media-body" xid="mediaBody8"> 
                              <h4 xid="h47" class="media-heading" style="font-size:15px;color:#292929;"
                                bind-text=" val(&quot;goods_name&quot;)">澳大利亚牛肉</h4>  
                              <h5 xid="h521"> 
                                <h5 xid="h523" style="margin-top:20px;"> 
                                  <span xid="span42" style="color:#cf0202;font-size:14px;">¥</span>  
                                  <span xid="span41" style="color:#cf0202;font-size:14px;"
                                    bind-text="val(&quot;price&quot;)">90.00</span>
                                </h5> 
                              </h5> 
                            </div> 
                          </div> 
                        </div>  
                        <div class="x-col" xid="col24"> 
                          <div xid="div27" style="text-align:center;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#cf0202 #cf0202 #cf0202 #cf0202;height:30px;width:30px;bottom:0px;margin-top:40px;"
                            class="center-block cart"> 
                            <i xid="i16" class="linear linear-cart cart"
                              style="font-size:20px;color:#cf0202;line-height:25px"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div>  
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list4" data="data3"> 
                <ul class="x-list-template" xid="listTemplateUl5"> 
                  <li xid="li5" class="col col-xs-4 text-center tb-listBox text-black"> 
                    <div xid="div2" bind-click="div5Click"> 
                      <img alt="" class="img-responsive" xid="image2" src="$UI/wd/main/image/w1.jpg"/>  
                      <p bind-text=" val(&quot;cate_name&quot;)" xid="p2" style="color: #333;font-size:14px;font-family:“Microsoft YaHei” ! important;"/>
                    </div> 
                  </li> 
                </ul> 
              </div>
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
