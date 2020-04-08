<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="categoryData" idColumn="cate_id" onCustomRefresh="categoryDataCustomRefresh"> 
      <column name="cate_id" type="String" xid="xid37"/>  
      <column name="cate_name" type="String" xid="xid38"/>  
      <column name="parent_id" type="String" xid="xid41"/>  
      <column name="children" type="String" xid="xid42"/>  
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
                    bind-css="{'current':rootClassRow.val('cate_id')==$model.categoryData.val('cate_id')}"> 
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
                xid="list1" data="data1" dataItemAlias="djhjhja" filter=" $row.val(&quot;parent_id&quot;) ==0"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row3"> 
                      <div class="x-col" xid="col6" style="text-align:center;"> 
                        <div xid="div1" style="text-align:center;height:100%;width:100%;background-color:white;"> 
                          <a bind-attr-name="val(&quot;cate_id&quot;)" component="$UI/system/components/justep/button/button"
                            class="btn btn-link btn-xs" label="button" xid="button1"
                            bind-text="&quot;—&quot; +val(&quot;cate_name&quot;) +&quot;—&quot; " style="font-size:16px;color:#292929;"> 
                            <i xid="i1"/>  
                            <span xid="span1"/> 
                          </a> 
                        </div> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list clearfix" xid="threeClassList" data="$model.data2"
                      dataItemAlias="threeClassRow" filter="$row.val(&quot;parent_id&quot;) == djhjhja.val(&quot;cate_id&quot;)"> 
                      <ul class="x-list-template" xid="listTemplateUl4"> 
                        <li xid="li4" class="col col-xs-4 text-center tb-listBox text-black"> 
                          <div xid="div5" bind-click="div5Click"> 
                            <img alt="" class="img-responsive" xid="image1"
                              bind-attr-src=" val(&quot;cate_img&quot;)"/>  
                            <p bind-text=" val(&quot;cate_name&quot;)" xid="p1" style="color: #333;font-size:13px;font-family:“Microsoft YaHei” ! important;"/> 
                          </div> 
                        </li> 
                      </ul> 
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
