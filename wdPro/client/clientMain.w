<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="ListData" onCustomRefresh="ListDataCustomRefresh" idColumn="client_id" confirmRefresh="false" confirmDelete="false"> 
      <column name="client_id" type="String" xid="xid1"/>  
      <column name="category" type="String" xid="xid2"/>  
      <column name="client_name" type="String" xid="xid3"/>  
      <column name="create_staff" type="String" xid="xid4"/>  
      <column name="documentary_id" type="String" xid="xid5"/>  
      <column name="last_contract_staff" type="String" xid="xid6"/>  
      <column name="last_contract_time" type="String" xid="xid7"/>  
      <column name="contract" type="String" xid="xid8"/>  
      <column name="no_change_days" type="String" xid="xid9"/>  
      <column name="stage" type="String" xid="xid10"/>  
      <column name="title" type="String" xid="xid11"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="linkMan" idColumn="staff_id"> 
      <column name="attention_type" type="String" xid="xid12"/>  
      <column name="create_staff" type="String" xid="xid13"/>  
      <column name="head_img" type="String" xid="xid14"/>  
      <column name="is_orderer" type="String" xid="xid15"/>  
      <column name="last_login" type="String" xid="xid16"/>  
      <column name="phone" type="String" xid="xid17"/>  
      <column name="qq" type="String" xid="xid18"/>  
      <column name="staff_id" type="String" xid="xid19"/>  
      <column name="staff_name" type="String" xid="xid20"/>  
      <column name="tag" type="String" xid="xid21"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="categoryData" idColumn="id" onCustomRefresh="dataJasonCustomRefresh"> 
      <column name="id" type="String" xid="xid22"/>  
      <column name="name" type="String" xid="xid23"/>  
      <column name="choose" type="String" xid="xid24"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="region_idData" idColumn="id"> 
      <column name="id" type="String" xid="column2"/>  
      <column name="name" type="String" xid="column1"/>  
      <column name="choose" type="String" xid="xid25"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="moreData" idColumn="id"> 
      <column name="id" type="String" xid="xid26"/>  
      <column name="name" type="String" xid="xid27"/>  
      <column name="choose" type="String" xid="xid28"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;0&quot;,&quot;name&quot;:&quot;无跟单&quot;,&quot;choose&quot;:&quot;&quot;},{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;无订货人&quot;,&quot;choose&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;无联系人&quot;,&quot;choose&quot;:&quot;&quot;}]</data></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dataJson" idColumn="id" confirmRefresh="false"><column name="id" type="String" xid="xid29"></column>
  <column name="source" type="String" xid="xid30"></column>
  <column name="establish_time" type="String" xid="xid31" label="成立时间"></column>
  <column name="service_rate" type="String" xid="xid32"></column>
  <column name="deal_impression" type="String" xid="xid33"></column>
  <column name="enterprise_nature" type="String" xid="xid34"></column>
  <column name="year_turnover" type="String" xid="xid35"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;10001&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="descData" idColumn="id"><column name="id" type="String" xid="xid36"></column>
  <column name="name" type="String" xid="xid37"></column>
  <column name="choose" type="String" xid="xid38"></column>
  <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;未联系天数由高到低&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;未联系天数由低到高&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;name&quot;:&quot;创建时间由近到远&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;name&quot;:&quot;创建时间由远到近&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" height="80"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="padding:0px 0px 0px 0px;background-color:#EBEAF0;"> 
        <div xid="col3" style="width:0.5em;"/>  
        <div class="x-col x-col-80" xid="col4"> 
          <input component="$UI/system/components/justep/input/input" class="form-control"
            xid="input1" style="background-color:white;height:30px;" placeHolder="客户名称"/> 
        </div>  
        <div xid="col5" style="width:0.5em;" class="x-col "> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm"
            label="确定" xid="button12" onClick="button12Click"> 
            <i xid="i12"/>  
            <span xid="span1" style="font-size: 1.4rem">确定</span> 
          </a> 
        </div> 
      </div>  
      <div xid="div1" class="list-group-item" style="padding:0px 0px 0px 0px;"> 
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified"
          tabbed="true" xid="buttonGroup2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="分类" xid="button4" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button4Click"> 
            <i xid="i4" class="icon-arrow-down-b"/>  
            <span xid="span4">分类</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="销售区域" xid="button5" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button5Click"> 
            <i xid="i5" class="icon-arrow-down-b"/>  
            <span xid="span5">销售区域</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="更多" xid="button6" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button6Click"> 
            <i xid="i6" class="icon-arrow-down-b"/>  
            <span xid="span6">更多</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="排序" xid="button7" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button7Click"> 
            <i xid="i7" class="icon-arrow-down-b"/>  
            <span xid="span7">排序</span> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C8847A6993C000019A6948301A201708"> 
      <div xid="div3" class="list-group-item" style="background-color:#EBEAF0;"> 
        <span xid="span9" style="color:#908F94;font-size:13px;"><![CDATA[无联系频率]]></span> 
      </div>  
       
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div29"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="ListData" limit="15"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1"> 
            <div xid="div8" class="list-group-item" bind-click="div8Click"> 
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0px 0px 0px 0px;"> 
                <div class="x-col" xid="col9"> 
                  <div class="media" xid="media3"> 
                    <div class="media-body" xid="mediaBody3"> 
                      <h4 class="media-heading" xid="h43" style="color:#181919;" bind-text=" val(&quot;client_name&quot;)"><![CDATA[哇哈哈集团]]></h4>  
                      <h5 xid="h59" class="media-heading"> 
                        <span xid="span23" style="color:#838484;" bind-text="val(&quot;stage&quot;)"><![CDATA[初次交谈]]></span>  
                        <span xid="span21" class=" pull-right" style="color:#838484;" bind-text="val(&quot;no_change_days&quot;)">930天</span> 
                      </h5>  
                      <h5 xid="h57" class="media-heading"> 
                        <span xid="span22" style="color:#838484;">应收¥0.00|上次交易¥0.00</span>  
                        <span xid="span19" class=" pull-right" style="color:#838484;">未联系</span> 
                      </h5>  
                      <h5 xid="h58" class="media-heading"> 
                        <span xid="span20" style="color:#838484;" bind-text="val(&quot;category&quot;)">潜在金蝶客户</span> 
                      </h5> 
                    </div>  
                    <div class="media-right" xid="mediaRight3" /> 
                  </div> 
                </div>  
                <div class="x-col x-col-10" xid="col10" style="text-align:center;"> 
                  <div xid="div9" class="btn-radius list_btn" bind-click="div9Click">...</div> 
                </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div></div>
   <div class="x-content-center x-pull-up" xid="div30">
    <span class="x-pull-up-label" xid="span29">加载更多...</span></div> </div></div>  
    <div class="x-panel-bottom" xid="bottom1" style="text-align:center;" bind-click="button3Click"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="新增客户" xid="button3" icon="icon-plus-round" onClick="button3Click" style="color:#474747;background-color:white;border-style:none none none none;margin-top:5px;font-size:14px;"> 
          <i xid="i3" class="icon-plus-round" />  
          <span xid="span3" style="font-size:16px;">新增客户</span> 
        </a></div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="left-bottom" xid="popOver3" anchor="button4"> 
    <div class="x-popOver-overlay tClass" xid="div41"/>  
    <div class="x-popOver-content" xid="div44" style="width:100%;height:100%;"> 
      <div xid="div40" style="width:100%;height:60%;"> 
        <div xid="div36" style="height:100%;width:100%;"> 
          <div component="$UI/system/components/justep/panel/panel" class=" x-full"
            xid="panel4" style="height:100%;width:100%;"> 
            <div class="x-panel-content" xid="content4" style="background-color:#EEEFEE;width:100%;height:60%;"> 
              <div xid="div37" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media19"> 
                  <div class="media-body" xid="mediaBody19"> 
                    <h5 xid="h527" style="color:#181919;"><![CDATA[超期未联系客户]]></h5> 
                  </div>  
                  <div class="media-right" xid="mediaRight17"> 
                    <span component="$UI/system/components/justep/button/radio"
                      class="x-radio x-radio-success x-radio-sm" xid="radio11" style="margin-top:9px;"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="div43" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media17"> 
                  <div class="media-body" xid="mediaBody20"> 
                    <h5 xid="h528" style="color:#181919;"><![CDATA[无联系客户]]></h5> 
                  </div>  
                  <div class="media-right" xid="mediaRight16"> 
                    <span component="$UI/system/components/justep/button/radio"
                      class="x-radio x-radio-success x-radio-sm" xid="radio15" style="margin-top:9px;"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="div38" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media16"> 
                  <div class="media-body" xid="mediaBody16"> 
                    <h5 xid="h529" style="color:#181919;"><![CDATA[无跟单客户]]></h5> 
                  </div>  
                  <div class="media-right" xid="mediaRight18"> 
                    <span component="$UI/system/components/justep/button/radio"
                      class="x-radio x-radio-success x-radio-sm" xid="radio12" style="margin-top:9px;"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="div45" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media20"> 
                  <div class="media-body" xid="mediaBody17"> 
                    <h5 xid="h530" style="color:#181919;"><![CDATA[无订货客户]]></h5> 
                  </div>  
                  <div class="media-right" xid="mediaRight20"> 
                    <span component="$UI/system/components/justep/button/radio"
                      class="x-radio x-radio-success x-radio-sm" xid="radio13" style="margin-top:9px;"/> 
                  </div> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/row/row" class="x-row"
                xid="row7" style="height:5px;"> 
                <div class="x-col" xid="col16"/> 
              </div>  
              <div xid="div77" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media46"> 
                  <div class="media-body" xid="mediaBody46"> 
                    <h5 xid="h556" style="color:#181919;">无订货客户</h5> 
                  </div>  
                  <div class="media-right" xid="mediaRight46"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-link btn-xs btn-only-icon" label="button" xid="button20"
                      icon="icon-chevron-right" style="margin-top:9px;color:#838484;"> 
                      <i xid="i20" class="icon-chevron-right"/>  
                      <span xid="span51"/> 
                    </a> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div class="x-panel-bottom" xid="bottom4"> 
              <div component="$UI/system/components/justep/button/buttonGroup"
                class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup5"
                style="height:100%;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="取消" xid="button10" style="background-color:#fff;"> 
                  <i xid="i10"/>  
                  <span xid="span37">取消</span> 
                </a>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="确认" xid="button11" style="background-color:#4DA7F4;color:#FEFFFE;"> 
                  <i xid="i11"/>  
                  <span xid="span36">确认</span> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div xid="div42" style="width:100%;height:40%;" class="div_opacity"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="left-bottom" xid="popOver5" anchor="button4"> 
    <div class="x-popOver-overlay tClass" xid="div79"/>  
    <div class="x-popOver-content " xid="div80" style="width:100%;height:100%;"> 
      <div xid="div82" style="width:100%;height:60%;"> 
        <div xid="div86" style="height:100%;width:100%;"> 
          <div component="$UI/system/components/justep/panel/panel" class=" x-full"
            xid="panel7" style="height:100%;width:100%;"> 
            <div class="x-panel-content" xid="content7" style="background-color:#EEEFEE;width:100%;height:60%;"> 
              <div xid="div81" class="list-group-item" style="padding:5px 5px 5px 5px;text-align:center;"> 
                <span xid="span54" style="color:#A8A9A8;"><![CDATA[列表默认按分类展示客户]]></span> 
              </div>  
                
              <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="descData">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4"><div xid="div88" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media51"> 
                  <div class="media-body" xid="mediaBody47"> 
                    <h5 xid="h557" style="color:#181919;" bind-text=' val("name")'><![CDATA[]]></h5> 
                  </div>  
                  <div class="media-right" xid="mediaRight47"> 
                    <span component="$UI/system/components/justep/button/radio" class="x-radio x-radio-success x-radio-sm" xid="radio45" style="margin-top:9px;" name="paixu" onChange="radio45Change" /> 
                  </div> 
                </div> 
              </div></li></ul> </div></div>  
            <div class="x-panel-bottom" xid="bottom9"> 
              <div component="$UI/system/components/justep/button/buttonGroup"
                class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup10"
                style="height:100%;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="取消" xid="button21" style="background-color:#fff;"> 
                  <i xid="i21"/>  
                  <span xid="span53">取消</span> 
                </a>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="确认" xid="button22" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button22Click"> 
                  <i xid="i22"/>  
                  <span xid="span52">确认</span> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div xid="div78" style="width:100%;height:40%;" class="div_opacity"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver6" anchor="bottom1"> 
    <div class="x-popOver-overlay" xid="div52"/>  
    <div class="x-popOver-content ddd" xid="div53" style="width:100%;height:60%;"> 
      <div xid="div54" style="height:100%;width:100%;background-color:white;"> 
        <div component="$UI/system/components/justep/panel/panel" class=" x-full"
          xid="panel6"> 
          <div class="x-panel-content" xid="content6"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row9" style="padding:0px 0px 0px 0px;"> 
              <div class="x-col" xid="col18" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="打电话" xid="button15" icon="linear linear-phonehandset"
                  style="color:#181919;" onClick="button15Click"> 
                  <i xid="i15" class="linear linear-phonehandset" style="color:#BACE83;font-size:20px"/>  
                  <span xid="span44">打电话</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col19" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="新增汇报" xid="button16" icon="dataControl dataControl-save24"
                  style="color:#181919;" onClick="button16Click"> 
                  <i xid="i16" class="dataControl dataControl-save24" style="color:#DEAA64;font-size:20px"/>  
                  <span xid="span45">新增汇报</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col20" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="新增审批" xid="button17" icon="dataControl dataControl-saveas"
                  style="color:#181919;"> 
                  <i xid="i17" class="dataControl dataControl-saveas" style="color:#99473F;font-size:20px"/>  
                  <span xid="span46">新增审批</span> 
                </a> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row10" style="padding:0px 0px 0px 0px;"> 
              <div class="x-col" xid="col21" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="关联审批" xid="button19" icon="dataControl dataControl-saveas"
                  style="color:#181919;"> 
                  <i xid="i18" class="dataControl dataControl-saveas" style="font-size:20px"/>  
                  <span xid="span49">关联审批</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col22" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="新增跟单" xid="button18" icon="dataControl dataControl-save"
                  style="color:#181919;" onClick="button18Click"> 
                  <i xid="i23" class="dataControl dataControl-save" style="color:#658BC0;font-size:20px"/>  
                  <span xid="span48">新增跟单</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col23" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="附近客户" xid="button23" icon="dataControl dataControl-permission"
                  style="color:#181919;"> 
                  <i xid="i19" class="dataControl dataControl-permission"
                    style="color:#62B193;font-size:20px"/>  
                  <span xid="span47">附近客户</span> 
                </a> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row11" style="padding:0px 0px 0px 0px;"> 
              <div class="x-col" xid="col24" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="客户查重" xid="button25" icon="dataControl dataControl-user"
                  style="color:#181919;"> 
                  <i xid="i24" class="dataControl dataControl-user" style="color:#9F96BC;font-size:20px"/>  
                  <span xid="span56">客户查重</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col25" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="新增巡店" xid="button24" icon="e-commerce e-commerce-shangpu"
                  style="color:#181919;"> 
                  <i xid="i26" class="e-commerce e-commerce-shangpu" style="color:#96C1D3;font-size:20px"/>  
                  <span xid="span55">新增巡店</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col26" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="修改" xid="button1" icon="dataControl dataControl-pencils" style="color:#181919;" onClick="button1Click">
   <i xid="i1" class="dataControl dataControl-pencils" style="color:#469408;font-size:20px"></i>
   <span xid="span28">修改</span></a></div> 
            </div> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;">
   <div class="x-col" xid="col6" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="删除" xid="button3444" icon="linear linear-trash" style="color:#181919;" onClick="button3444Click">
     <i xid="i34" class="linear linear-trash" style="color:#c71c22;font-size:20px"></i>
     <span xid="span34">删除</span></a> </div> 
   <div class="x-col" xid="col2" style="text-align:center;">
    </div> 
   <div class="x-col" xid="col1" style="text-align:center;">
    </div> </div></div>  
          <div class="x-panel-bottom" xid="bottom6"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row12" style="padding:0px 0px 0px 0px;"> 
              <div class="x-col" xid="col29" style="text-align:center;"/>  
              <div class="x-col" xid="col28" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top btn-only-label" label="取消" xid="button28"
                  icon="linear linear-phonehandset" style="color:#181919;" onClick='{"operation":"popOver6.hide"}'> 
                  <i xid="i28" class="linear linear-phonehandset"/>  
                  <span xid="span59">取消</span> 
                </a> 
              </div>  
              <div class="x-col" xid="col27" style="text-align:center;"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver4" anchor="bottom1"> 
    <div class="x-popOver-overlay" xid="div5"/>  
    <div class="x-popOver-content ddd" xid="div6" style="width:100%;height:45%;"> 
      <div xid="div4" style="height:100%;width:100%;background-color:white;"> 
        <div component="$UI/system/components/justep/panel/panel" class=" x-full"
          xid="panel5"> 
          <div class="x-panel-content" xid="content5"> 
            <div xid="div7" class="list-group-item" style="background-color:#EBEAF0;"> 
              <span xid="span18" style="color:#908F94;font-size:13px;">无联系频率</span> 
            </div>  
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list2" data="linkMan"> 
              <ul class="x-list-template" xid="listTemplateUl2"> 
                <li xid="li2"> 
                  <div xid="div10" class="list-group-item"> 
                    <div class="media" xid="media1"> 
                      <div class="media-body" xid="mediaBody1"> 
                        <h4 class="media-heading" xid="h41" style="color:#181919;"><![CDATA[]]>  
                          <span xid="span24" bind-text="val(&quot;staff_name&quot;)"/>  
                          <span xid="span25" bind-text="val(&quot;tag&quot;)"/> 
                        </h4>  
                        <h5 xid="h51" class="media-heading" bind-text=" val(&quot;phone&quot;)"
                          style="color:#838484;"><![CDATA[]]></h5> 
                      </div>  
                      <div class="media-right" xid="mediaRight1"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-link btn-only-icon" xid="button33" icon="linear linear-phonehandset"
                          style="color:#181919;" onClick="button33Click"> 
                          <i xid="i33" class="linear linear-phonehandset"
                            style="color:#BACE83;font-size:20px"/>  
                          <span xid="span26"/> 
                        </a> 
                      </div> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="left-bottom" xid="popOver7" anchor="top1"> 
    <div class="x-popOver-overlay tClass" xid="div12"/>  
    <div class="x-popOver-content" xid="div13" style="width:100%;height:60%;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel9"> 
        <div class="x-panel-content" xid="content9" style="background-color:white;"> 
          <div xid="div11"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list5" data="region_idData"> 
              <ul class="x-list-template" xid="listTemplateUl5"> 
                <li xid="li5"> 
                  <div xid="div16" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
                    <div class="media" xid="media4"> 
                      <div class="media-body" xid="mediaBody4"> 
                        <h5 xid="h53" style="color:#181919;" bind-text=" val(&quot;name&quot;)">未分类</h5> 
                      </div>  
                      <div class="media-right" xid="mediaRight4"> 
                        <span component="$UI/system/components/justep/button/checkbox"
                          class="x-checkbox" xid="checkbox3" bind-ref="ref(&quot;choose&quot;)"
                          checkedValue="1" uncheckedValue="0"/> 
                      </div> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom7"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup7"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="取消" xid="button26" style="background-color:#fff;" onClick='{"operation":"popOver7.hide"}'> 
              <i xid="i25"/>  
              <span xid="span11">取消</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="确认" xid="button27" style="background-color:#4DA7F4;color:#FEFFFE;"
              onClick="button27Click"> 
              <i xid="i27"/>  
              <span xid="span12">确认</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver8" anchor="top1"> 
    <div class="x-popOver-overlay tClass" xid="div17"/>  
    <div class="x-popOver-content" xid="div18" style="width:100%;height:60%;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel10"> 
        <div class="x-panel-content" xid="content10" style="background-color:white;"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list6" data="moreData"> 
            <ul class="x-list-template" xid="listTemplateUl6"> 
              <li xid="li6"> 
                <div xid="div21" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
                  <div class="media" xid="media5"> 
                    <div class="media-body" xid="mediaBody5"> 
                      <h5 xid="h54" style="color:#181919;" bind-text=" val(&quot;name&quot;)">未分类</h5> 
                    </div>  
                    <div class="media-right" xid="mediaRight5"> 
                      <span component="$UI/system/components/justep/button/checkbox"
                        class="x-checkbox" xid="checkbox4" bind-ref="ref(&quot;choose&quot;)"
                        checkedValue="1" uncheckedValue="0"/> 
                    </div> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div>  
          <div xid="div22" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
            <div class="media" xid="media2"> 
              <div class="media-body" xid="mediaBody2"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" xid="label7"><![CDATA[客户来源]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" style="background-color:white;border-style:none none none none;" disabled="true"></input></div></div>  
              <div class="media-right" xid="mediaRight2"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" xid="button8" icon="icon-arrow-right-b"
                  style="color:#909090;" onClick="button8Click"> 
                  <i xid="i8" class="icon-arrow-right-b"/>  
                  <span xid="span2"/> 
                </a> 
              </div> 
            </div> 
          </div>  
          <div xid="div23" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
            <div class="media" xid="media7"> 
              <div class="media-body" xid="mediaBody7"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="label8"><![CDATA[成立时间]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" style="background-color:white;border-style:none none none none;" disabled="true"></input></div></div>  
              <div class="media-right" xid="mediaRight7"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" xid="button9" icon="icon-arrow-right-b"
                  style="color:#909090;" onClick="button9Click"> 
                  <i xid="i9" class="icon-arrow-right-b"/>  
                  <span xid="span10"/> 
                </a> 
              </div> 
            </div> 
          </div>  
          <div xid="div25" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
            <div class="media" xid="media9"> 
              <div class="media-body" xid="mediaBody8"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label9"><![CDATA[服务满意度]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" style="background-color:white;border-style:none none none none;" disabled="true"></input></div></div>  
              <div class="media-right" xid="mediaRight8"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" xid="button13" icon="icon-arrow-right-b"
                  style="color:#909090;" onClick="button13Click"> 
                  <i xid="i13" class="icon-arrow-right-b"/>  
                  <span xid="span15"/> 
                </a> 
              </div> 
            </div> 
          </div>  
          <div xid="div24" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
            <div class="media" xid="media8"> 
              <div class="media-body" xid="mediaBody9"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
   <label class="x-label" xid="label10"><![CDATA[交易印象]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" style="background-color:white;border-style:none none none none;" disabled="true"></input></div></div>  
              <div class="media-right" xid="mediaRight9"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" xid="button14" icon="icon-arrow-right-b"
                  style="color:#909090;" onClick="button14Click"> 
                  <i xid="i14" class="icon-arrow-right-b"/>  
                  <span xid="span16"/> 
                </a> 
              </div> 
            </div> 
          </div>  
          <div xid="div27" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
            <div class="media" xid="media11"> 
              <div class="media-body" xid="mediaBody10"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11"><![CDATA[企业性质]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7" style="background-color:white;border-style:none none none none;" disabled="true"></input></div></div>  
              <div class="media-right" xid="mediaRight10"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" xid="button31" icon="icon-arrow-right-b"
                  style="color:#909090;" onClick="button31Click"> 
                  <i xid="i31" class="icon-arrow-right-b"/>  
                  <span xid="span17"/> 
                </a> 
              </div> 
            </div> 
          </div>  
          <div xid="div26" class="list-group-item" style="padding:5px 5px 5px 5px;border-radius:0px"> 
            <div class="media" xid="media10"> 
              <div class="media-body" xid="mediaBody11"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
   <label class="x-label" xid="label12"><![CDATA[年营业额]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input8" style="background-color:white;border-style:none none none none;" disabled="true"></input></div></div>  
              <div class="media-right" xid="mediaRight11"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-icon" xid="button32" icon="icon-arrow-right-b"
                  style="color:#909090;" onClick="button32Click"> 
                  <i xid="i32" class="icon-arrow-right-b"/>  
                  <span xid="span27"/> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom8"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup8"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="取消" xid="button30" style="background-color:#fff;" onClick='{"operation":"popOver8.hide"}'> 
              <i xid="i29"/>  
              <span xid="span14">取消</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="确认" xid="button29" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button29Click"> 
              <i xid="i30"/>  
              <span xid="span13">确认</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="chooseWinDialog"
    src="$UI/wdPro/client/dialog/dialog/common_chebox.w" forceRefreshOnOpen="true"/>
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver2" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div28"></div>
   <div class="x-popOver-content" xid="div31" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel8">
   <div class="x-panel-content" xid="content8" style="background-color:white;">
    <div xid="div34" class="list-group-item" style="padding:5px 5px 5px 5px;text-align:center;">
     <span xid="span31" style="color:#A8A9A8;">设置客户分类联系频率，超期未联系将提醒到首页</span></div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="categoryData">
     <ul class="x-list-template" xid="listTemplateUl8">
      <li xid="li8">
       <div xid="div35" class="list-group-item" style="padding:5px 5px 5px 5px;">
        <div class="media" xid="media13">
         <div class="media-body" xid="mediaBody13">
          <h5 xid="h55" style="color:#181919;" bind-text=' val("name")'>未分类</h5></div> 
         <div class="media-right" xid="mediaRight13">
          <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox5" bind-ref='ref("choose")' checkedValue="1" uncheckedValue="0"></span></div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-panel-bottom" xid="bottom5">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup6" style="height:100%;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button37" style="background-color:#fff;" onClick='{"operation":"popOver2.hide"}'>
      <i xid="i36"></i>
      <span xid="span33">取消</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button36" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button2Click">
      <i xid="i37"></i>
      <span xid="span32">确认</span></a> </div> </div> </div></div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver9" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div39"></div>
   <div class="x-popOver-content" xid="div46" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel12">
   <div class="x-panel-content" xid="content12" style="background-color:white;">
    <div xid="div50" class="list-group-item" style="padding:5px 5px 5px 5px;text-align:center;">
     <span xid="span39" style="color:#A8A9A8;">列表默认按分类展示客户</span></div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list10" data="descData">
     <ul class="x-list-template" xid="listTemplateUl10">
      <li xid="li10">
       <div xid="div49" class="list-group-item" style="padding:5px 5px 5px 5px;">
        <div class="media" xid="media15">
         <div class="media-body" xid="mediaBody15">
          <h5 xid="h510" style="color:#181919;" bind-text=' val("name")'></h5></div> 
         <div class="media-right" xid="mediaRight15">
          <span component="$UI/system/components/justep/button/radio" class="x-radio x-radio-success x-radio-sm" xid="radio1" style="margin-top:9px;" name="paixu" onChange="radio45Change"></span></div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-panel-bottom" xid="bottom11">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup11" style="height:100%;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button40" style="background-color:#fff;" onClick='{"operation":"popOver9.hide"}'>
      <i xid="i41"></i>
      <span xid="span40">取消</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button41" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button22Click">
      <i xid="i40"></i>
      <span xid="span38">确认</span></a> </div> </div> </div></div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" title="温馨提示" message="您将删除此条客户信息？" type="OKCancel" onOK="messageDialog1OK"></span></div>
