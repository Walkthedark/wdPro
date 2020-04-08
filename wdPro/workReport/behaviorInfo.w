<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="rlinkManList" idColumn="client_id" confirmDelete="false"> 
      <column name="client_id" type="String" xid="xid1"/>  
      <column name="client_name" type="String" xid="xid2"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="ListData" idColumn="staff_id" confirmDelete="false"> 
      <column name="client" type="String" xid="column3"/>  
      <column name="duty" type="String" xid="column4"/>  
      <column name="head_img" type="String" xid="xid3"/>  
      <column name="staff_id" type="String" xid="xid4"/>  
      <column name="staff_name" type="String" xid="xid5"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="client" idColumn="staff_id"> 
      <column name="staff_id" type="String" xid="column1"/>  
      <column name="staff_name" type="String" xid="column2"/>  
      <column name="choose" type="Integer" xid="column5"/>  
      <column name="department_name" type="String" xid="column6"/>  
      <column name="head_img" type="String" xid="column7"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imageData" idColumn="id"> 
      <column name="id" type="String" xid="xid6"></column>
  <column name="url" type="String" xid="xid7"></column>
  <column name="name" type="String" xid="xid11"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="AccessoryData" idColumn="id">
      <column name="id" type="String" xid="xid8"/>  
      <column name="name" type="String" xid="xid9"/>  
      <column name="url" type="String" xid="xid10"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content2"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1"> 
        <div class="x-contents-content" xid="content1" style="background-color:#F3F4F3;"> 
          <div xid="div1" class="list-group-item"> 
            <div xid="div2"> 
              <label xid="label1" class="x-label" style="font-weight:bold;"><![CDATA[汇报内容]]></label> 
            </div>  
            <div xid="div3"> 
              <textarea component="$UI/system/components/justep/textarea/textarea"
                class="form-control" xid="textarea1" style="border-style:none none none none;height:60px;"/> 
            </div>  
            <div xid="div30">
              <div xid="div31"> 
                <a href="javascript:;" class="file2" xid="a1">添加图片
                  <i xid="i8" class="dataControl dataControl-plus"/>  
                  <input type="file" accept="image/*"
                    name="upDataImage" id="upDataImageAndFile" onchange="justep.Bind.contextFor(this).$model.delData2(event)"
                    xid="file1"/>
                </a> 
              </div>
            <div component="$UI/system/components/justep/list/list" class="x-list clearfix" xid="list3" data="imageData" dataItemAlias="threeClassRow">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4" class="col col-xs-3 text-center tb-listBox text-black">
     <div xid="div32">
      <img alt="" class="img-responsive" xid="image3" style=";margin-top:5px;width:61px;height:61px;" bind-attr-src="val('url')"></img>
      </div> </li> </ul> </div></div>
          </div>  
          <div xid="div9" style="height:10px;"/>
          <div xid="div27"> 
            <div xid="div7" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;border-top-style:none;"> 
              <div xid="div23"> 
                <a href="javascript:;" class="file" xid="a2">添加关联附件
                  <i xid="i1" class="dataControl dataControl-plus"/>  
                  <input type="file" accept="image/*,text/plain,application/*"
                    name="upDataImage" id="upDataImageAndFile" onchange="justep.Bind.contextFor(this).$model.delData(event)"
                    xid="file2"/> 
                </a> 
              </div> 
            </div>  
            <div xid="div25" style="width:100%;background-color:white;"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list4" data="AccessoryData"> 
                <ul class="x-list-template" xid="listTemplateUl5"> 
                  <li xid="li5"> 
                    <div xid="div26" style="padding:5px 5px 5px 5px;"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn x-gray" label="button" xid="button1" bind-text=" val(&quot;name&quot;)"
                        style="color:#4B76AE;border-radius:30px;text-decoration:underline;width:100%;text-align:left;"> 
                        <i xid="i5"/>  
                        <span xid="span1"/>
                      </a>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <div xid="div28"> 
            <div xid="div8" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm file"
                label="添加关联客户" xid="button2" icon="dataControl dataControl-plus" onClick="button2Click"
                style="color:#1E88C7; background: #D0EEFF;     border: 1px solid #99D3F5;"> 
                <span xid="span2">添加关联客户</span>  
                <i xid="i2" class="dataControl dataControl-plus"/>
              </a> 
            </div>  
            <div xid="div20" style="background-color:white;"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="rlinkManList"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1"> 
                    <div xid="div21" style="padding:5px 5px 5px 5px;" class="list-group-item"> 
                      <div class="media" xid="media1"> 
                        <div class="media-left" xid="mediaLeft1"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link btn-only-icon" label="button" xid="button4"
                            icon="linear linear-trash" style="color:#181919;" onClick="button4Click"> 
                            <i xid="i7" class="linear linear-trash"/>  
                            <span xid="span7"/> 
                          </a> 
                        </div>  
                        <div class="media-body" xid="mediaBody1"> 
                          <h4 xid="h41" bind-text=" val(&quot;client_name&quot;)" style="color:#181919;"/> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <div xid="div29"> 
            <div xid="div10" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;border-bottom-style:none;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm file"
                label="添加已联系人" xid="button3" icon="dataControl dataControl-plus" onClick="button3Click"> 
                <span xid="span3">添加已联系人</span>
                <i xid="i3" class="dataControl dataControl-plus"/> 
              </a> 
            </div>  
            <div xid="div18" style="background-color:white;"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list2" data="ListData"> 
                <ul class="x-list-template" xid="listTemplateUl2"> 
                  <li xid="li2"> 
                    <div xid="div17" style="padding:5px 5px 5px 5px;" class="list-group-item"> 
                      <div class="media" xid="media2"> 
                        <div class="media-left" xid="mediaLeft2"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link btn-only-icon" label="button" xid="button5"
                            icon="linear linear-trash" style="color:#181919;" onClick="button5Click"> 
                            <i xid="i4" class="linear linear-trash"/>  
                            <span xid="span4"/> 
                          </a> 
                        </div>  
                        <div class="media-body" xid="mediaBody2"> 
                          <h4 xid="h42" bind-text=" val(&quot;staff_name&quot;)" style="color:#181919;"/> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <div xid="div11" style="height:10px;"/>  
          <div xid="div12" class="list-group-item"> 
            <div xid="div16"> 
              <label xid="label2" class="x-label" style="font-weight:bold;"><![CDATA[抄送]]></label> 
            </div>  
            <div component="$UI/system/components/justep/list/list" class="x-list clearfix"
              xid="threeClassList" data="client" dataItemAlias="threeClassRow"> 
              <ul class="x-list-template" xid="listTemplateUl3"> 
                <li xid="li3" class="col col-xs-3 text-center tb-listBox text-black"> 
                  <div xid="div19"> 
                    <img src="$UI/wdPro/common/img/head4.jpeg" alt="" class="img-responsive"
                      xid="image2" style=";margin-top:5px;width:61px;height:61px;"/>  
                    <h5 xid="h51" bind-text=" val(&quot;staff_name&quot;)" style="text-align:left;">h5</h5> 
                  </div> 
                </li> 
              </ul> 
            </div>  
            <div xid="div22" class="col col-xs-3 text-center tb-listBox text-black"
              align="left" style="text-align:left;"> 
              <img src="$UI/wdPro/common/img/add.png" alt="" xid="image1" style="border-style:dotted dotted dotted dotted;border-width:thin thin thin thin;border-color:#D0D0D0 #D0D0D0 #D0D0D0 #D0D0D0;margin-top:5px;width:61px;height:61px;"
                bind-click="image1Click"/> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row1"> 
              <div class="x-col" xid="col1"/>  
              <div class="x-col" xid="col2"/>  
              <div class="x-col" xid="col3"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="保存" xid="button6" onClick="button6Click" style="color:white;background-color:#4B76AE;"> 
          <i xid="i6"/>  
          <span xid="span6">保存</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="alreadyWinDialog"
    src="$UI/wdPro/workReport/dialog/dialog/client_Choose.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="linkWinDialog"
    src="$UI/wdPro/workReport/dialog/dialog/staffList.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="addTongWinDialog"
    src="$UI/wdPro/workReport/dialog/dialog/addTongshi.w" forceRefreshOnOpen="true"/> 
</div>
