<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:336px;left:835px;height:auto;"
    onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="BillData" idColumn="id"> 
      <column name="id" type="String" xid="xid23"></column>
  <column name="sheetNo" type="String" xid="xid24"></column>
  <column name="hitch_image" type="String" xid="xid25"></column>
  <column name="scene_image" type="String" xid="xid26"></column>
  <column name="remark" type="String" xid="xid27"></column>
  <column name="signInTime" type="String" xid="xid28"></column>
  <column name="opSign" type="String" xid="xid29"></column>
  <column name="signOutTime" type="String" xid="xid30"></column>
  <column name="faultDes" type="String" xid="xid31"></column>
  <column name="faultType" type="String" xid="xid32"></column>
  <column name="faultReason" type="String" xid="xid33"></column>
  <column name="solution" type="String" xid="xid34"></column>
  <column name="result" type="String" xid="xid35"></column>
  <column name="receipt_time" type="String" xid="xid36"></column>
  <column name="receipt_addr" type="String" xid="xid37"></column>
  <column name="depart_time" type="String" xid="xid38"></column>
  <column name="depart_addr" type="String" xid="xid39"></column>
  <column name="signInAddr" type="String" xid="xid40"></column>
  <column name="signOutAddr" type="String" xid="xid41"></column>
  <column name="address" type="String" xid="xid42"></column>
  <column name="teamName" type="String" xid="xid43"></column>
  <column name="contract_expire" type="String" xid="xid44"></column>
  <column name="total_arrange" type="String" xid="xid45"></column>
  <column name="total_hitch" type="String" xid="xid46"></column>
  <column name="season_hitch" type="String" xid="xid47"></column>
  <column name="month_hitch" type="String" xid="xid48"></column>
  <column name="repairman" type="String" xid="xid53"></column>
  <column name="depart_user" type="String" xid="xid54"></column>
  <column name="signInUser" type="String" xid="xid55"></column>
  <column name="signOutUser" type="String" xid="xid56"></column>
  <column name="fpEvaluate1" type="String" xid="xid5"></column>
  <column name="fpEvaluate2" type="String" xid="xid6"></column>
  <column name="state" type="String" xid="xid7"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imageList" idColumn="newUrl"> 
      <column name="newUrl" type="String" xid="xid1"/>  
      <column name="position" type="String" xid="xid2"/>  
      <column name="uploadUser" type="String" xid="xid3"/>  
      <column name="uploadDate" type="String" xid="xid4"/> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="historyParData" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
   <column name="date" type="String" xid="xid57"></column>
   <column name="material" type="String" xid="xid58"></column>
   <column name="num" type="String" xid="xid59"></column>
   <column name="plan_id" type="String" xid="xid60"></column>
   <column name="plan_type" type="String" xid="xid61"></column>
   <column name="plan_type_trans" type="String" xid="xid62"></column>
   <column name="project" type="String" xid="xid63"></column>
   <column name="remark" type="String" xid="xid64"></column>
   <column name="user" type="String" xid="xid65"></column>
   <column name="user_id" type="String" xid="xid66"></column>
   <column name="usingUnit" type="String" xid="xid67"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="historySonMaterialData" idColumn="history_id">
   <column name="history_id" type="String" xid="xid68"></column>
   <column name="material" type="String" xid="xid69"></column>
   <column name="num" type="String" xid="xid70"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="background-color: #F8F8F8;"> 
    <div class="x-panel-content" xid="content1"> 
      <div xid="div1" class="top_back"> 
        <div xid="div2" style="padding:2px 5px 2px 2px;text-align:left;background-color:transparent;"> 
          <div class="media" xid="media9"> 
            <div class="media-left" xid="mediaLeft1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm"
                label="工单信息" xid="button12" icon="dataControl dataControl-project24"
                style="color:#FDFCFF;font-size:16px;"> 
                <i xid="i14" class="dataControl dataControl-project24" style="font-size:18px;"/>  
                <span xid="span14">工单信息</span> 
              </a> 
            </div>  
            <div class="media-body" xid="mediaBody9"/>  
            <div class="media-right" xid="mediaRight1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label btn-radius1"
                label="评价" style="color:#FFFFFF;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;width:100%;margin-right:5px;display:none"
                xid="evaluationBtn" onClick="planEvaluationBtnClick" bind-visible='$model.BillData.val("state") == 5? ($model.BillData.val("fpEvaluate1") == ""?true:false) : false'> 
                <i xid="i24"/>  
                <span xid="span27">评价</span> 
              </a> 
            </div> 
          </div> 
        </div>  
        <div xid="div3"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit " xid="labelEdit1"> 
            <label class="x-label" xid="label1"><![CDATA[工单单号：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output1" style="color:#FDFCFF;" bind-ref="$model.BillData.ref(&quot;sheetNo&quot;)"/> 
          </div> 
        </div>  
        <div xid="div4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit " xid="labelEdit2"> 
            <label class="x-label" xid="label2">电梯位置：</label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output2" style="color:#FDFCFF;" bind-text=" " bind-ref="$model.BillData.ref(&quot;address&quot;)"/> 
          </div> 
        </div>  
        <div xid="div5"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit " xid="labelEdit3"> 
            <label class="x-label" xid="label3"><![CDATA[合同到期：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output3" style="color:#FDFCFF;" bind-ref="$model.BillData.ref(&quot;contract_expire&quot;)"/> 
          </div> 
        </div>  
        <div xid="div6"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit " xid="labelEdit4"> 
            <label class="x-label" xid="label4"><![CDATA[维保小组：]]></label>  
            <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
              xid="output4" style="color:#FDFCFF;" bind-ref="$model.BillData.ref(&quot;teamName&quot;)"/> 
          </div> 
        </div> 
      <div xid="div7">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit " xid="labelEdit5">
    <label class="x-label" xid="label5">接单人：</label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" style="color:#FDFCFF;" bind-ref='$model.BillData.ref("repairman")'></div></div> </div></div>  
      <div xid="div17" class="label-rizhi"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="维修日志" xid="button11" icon="dataControl dataControl-save24"> 
          <i xid="i12" class="dataControl dataControl-save24"/>  
          <span xid="span12">维修日志</span> 
        </a> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="background-color:white;"> 
        <div xid="col1" style="width:1em;"/>  
        <div class="x-col" xid="col2"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group  btn-group-justified" tabbed="true" xid="buttonGroup2"
            style="height:100%;"> 
            <a component="$UI/system/components/justep/button/button" class="btn active btn-link btn-color btn-radius"
              xid="sortingBtn" label="维修人员" target="content6"> 
              <i xid="i6"/>  
              <span xid="span3">维修人员</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-color btn-radius"
              label="时间节点" xid="button6" target="content7"> 
              <i xid="i7"/>  
              <span xid="span6">时间节点</span> 
            </a> 
          </div> 
        </div>  
        <div xid="col3" style="width:1em;"/> 
      </div>  
      <div component="$UI/system/components/justep/contents/contents" class="x-contents "
        active="0" xid="contents3" routable="false"> 
        <div class="x-contents-content" xid="content6"> 
          <div xid="div10" style="height:100%;" class="list-group-item"> 
            <div xid="div9" style="padding:5px 5px 5px 0px;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm"
                xid="button19" style="color:#252425;font-size:14px;font-weight:bold;"> 
                <i xid="i20"/>  
                <span xid="span19"/> 
              </a> 
            </div>  
            <div xid="div8" style="background-color:#F4F4F4;padding:8px 3px 3px 5px;"> 
              <ul xid="ul2"> 
                <li xid="li1" class="li_class2"> 
                  <div xid="div8"> 
                    <div class="media" xid="media3" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody1"> 
                        <h5 xid="h58" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;receipt_time&quot;)"/>  
                        <h5 xid="h520" class="media-heading" bind-text=" $model.BillData.val(&quot;receipt_addr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn x-purple btn-xs span-index" label="接单" xid="button9"> 
                    <i xid="i10"/>  
                    <span xid="span10">接单</span> 
                  </a> 
                </li>  
                <li xid="li4" class="li_class2"> 
                  <div xid="div9"> 
                    <div class="media" xid="media1" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody3"> 
                        <h5 xid="h510" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;depart_time&quot;)"/>  
                        <h5 xid="h522" class="media-heading" bind-text=" $model.BillData.val(&quot;depart_addr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn x-purple btn-xs span-index" label="出发" xid="button2"> 
                    <i xid="i2"/>  
                    <span xid="span2">出发</span> 
                  </a> 
                </li>  
                <li xid="li3" class="li_class2"> 
                  <div xid="div12"> 
                    <div class="media" xid="media4" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody4"> 
                        <h5 xid="h54" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;signInTime&quot;)"/>  
                        <h5 xid="h521" class="media-heading" bind-text=" $model.BillData.val(&quot;signInAddr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-xs span-index" label="开始维修" xid="button4"> 
                    <i xid="i4"/>  
                    <span xid="span11">开始维修</span> 
                  </a> 
                </li>  
                <li xid="li2" class="li_class2"> 
                  <div xid="div11"> 
                    <div class="media" xid="media2" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody2"> 
                        <h5 xid="h51" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;signOutTime&quot;)"/>  
                        <h5 xid="h523" class="media-heading" bind-text=" $model.BillData.val(&quot;signOutAddr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-primary btn-xs span-index" label="结束维修" xid="button3"> 
                    <i xid="i3"/>  
                    <span xid="span4">结束维修</span> 
                  </a> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content" xid="content7"> 
          <div xid="div30" style="height:100%;" class="list-group-item"> 
            <div xid="div35" style="padding:5px 5px 5px 0px;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm"
                xid="button1" style="color:#252425;font-size:14px;font-weight:bold;"
                bind-text=" $model.BillData.val(&quot;result&quot;)"> 
                <i xid="i32"/>  
                <span xid="span33"/> 
              </a> 
            </div>  
            <div xid="div33" style="background-color:#F4F4F4;padding:8px 3px 3px 5px;"> 
              <ul xid="ul1"> 
                <li xid="li6" class="li_class2"> 
                  <div xid="div33"> 
                    <div class="media" xid="media7" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody8"> 
                        <h5 xid="h52" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;receipt_time&quot;)"/>  
                        <h5 xid="h57" class="media-heading" bind-text=" $model.BillData.val(&quot;repairman&quot;)"/>  
                        <h5 xid="h53" class="media-heading" bind-text=" $model.BillData.val(&quot;receipt_addr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn x-purple btn-xs span-index" label="接单" xid="button24"> 
                    <i xid="i28"/>  
                    <span xid="span34">接单</span> 
                  </a> 
                </li>  
                <li xid="li7" class="li_class2"> 
                  <div xid="div35"> 
                    <div class="media" xid="media8" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody6"> 
                        <h5 xid="h513" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;depart_time&quot;)"/>  
                        <h5 xid="h55" class="media-heading" bind-text=" $model.BillData.val(&quot;depart_user&quot;)"/>  
                        <h5 xid="h511" class="media-heading" bind-text=" $model.BillData.val(&quot;depart_addr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn x-purple btn-xs span-index" label="出发" xid="button5"> 
                    <i xid="i35"/>  
                    <span xid="span36">出发</span> 
                  </a> 
                </li>  
                <li xid="li8" class="li_class2"> 
                  <div xid="div38"> 
                    <div class="media" xid="media5" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody7"> 
                        <h5 xid="h512" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;signInTime&quot;)"/>  
                        <h5 xid="h540" class="media-heading" bind-text=" $model.BillData.val(&quot;signInUser&quot;)"/>  
                        <h5 xid="h59" class="media-heading" bind-text="$model.BillData.val(&quot;signInAddr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-xs span-index" label="开始维修" xid="button28"> 
                    <i xid="i1"/>  
                    <span xid="span35">开始维修</span> 
                  </a> 
                </li>  
                <li xid="li5" class="li_class2"> 
                  <div xid="div34"> 
                    <div class="media" xid="media6" style="margin-left:2px;"> 
                      <div class="media-body" xid="mediaBody5"> 
                        <h5 xid="h59" class="media-heading" style="font-size:14px;color:#8C8C8C;"
                          bind-text=" $model.BillData.val(&quot;signOutTime&quot;)"/>  
                        <h5 xid="h541" class="media-heading" bind-text=" $model.BillData.val(&quot;signOutUser&quot;)"/>  
                        <h5 xid="h512" class="media-heading" bind-text=" $model.BillData.val(&quot;signOutAddr&quot;)"/> 
                      </div> 
                    </div> 
                  </div>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-primary btn-xs span-index" label="结束维修" xid="button27"> 
                    <i xid="i36"/>  
                    <span xid="span31">结束维修</span> 
                  </a> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div xid="div22" class="list-group-item" style="padding:0px 0px 0px 0px;">
   <div xid="div16">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="配件更换" xid="button21" icon="dataControl dataControl-bringtotop">
     <i xid="i21" class="dataControl dataControl-bringtotop"></i>
     <span xid="span1" style="color:#252425;font-size:14px;">配件更换</span></a> </div> 
   <div xid="div14" style="background-color:white;">
    <div xid="div13">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" limit="20" data="historyParData" dataItemAlias="hostParRow">
      <ul class="x-list-template" xid="listTemplateUl5">
       <li xid="li12">
        <div class="media" xid="media11" style="padding:0px 0px 0px 0px;background-color:white;">
         <div class="media-left" xid="mediaLeft5">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button22" bind-text='"维保员: "+ val("user")' style="color:#B0B0B0;">
           <i xid="i30"></i>
           <span xid="span13"></span></a> </div> 
         <div class="media-body" xid="mediaBody11" style="text-align:right;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button18" style="color:#7BC0BD" bind-text='"更换时间:"+ val("date")'>
           <i xid="i31"></i>
           <span xid="span15"></span></a> </div> </div> 
        <div component="$UI/system/components/justep/list/list" class="x-list" xid="list9" data="$model.historySonMaterialData" filter="$row.val('history_id')==hostParRow.val('id')">
         <ul class="x-list-template" xid="listTemplateUl6">
          <li xid="li11">
           <div xid="div15" class="list-group-item" style="padding:5px 5px 5px 5px;">
            <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
             <div class="x-col x-col-10" xid="col18">
              <span xid="span9" bind-text="$index()+1+'、'"></span></div> 
             <div class="x-col" xid="col19">
              <span xid="span5" bind-text='val("material")'></span></div> 
             <div class="x-col x-col-33" xid="col7">
              <span xid="span37" bind-text='"更换数量:" + val("num")'></span></div> </div> </div> </li> </ul> </div> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:7px;background-color:#F4F4F4;">
         <div class="x-col" xid="col5"></div>
         <div class="x-col" xid="col22"></div>
         <div class="x-col" xid="col23"></div></div> </li> </ul> </div> </div> </div> </div><div xid="div44" style="background-color:white;"> 
        <div xid="div53"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="照片" xid="button36" icon="e-commerce e-commerce-tupian"> 
            <i xid="i42" class="e-commerce e-commerce-tupian"/>  
            <span xid="span42">照片</span> 
          </a>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row9" style="padding:0px 0px 0px 10px;"> 
            <div class="x-col" xid="col20"> 
              <div xid="div63" style="background-color:white;padding:0px 0px 0px 0px;"
                class="list-group-item"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-label" xid="button43" icon="e-commerce e-commerce-tupian"
                  label="工单照片" style="color:#9A9A9A;"> 
                  <i xid="i45" class="e-commerce e-commerce-tupian"/>  
                  <span xid="span57">工单照片</span> 
                </a>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link" xid="button38" icon="e-commerce e-commerce-xinxijinggao"
                  style="color:#FF3F2A;float:right;" label="未上传工单照片" id="troubleDetailText1"> 
                  <i xid="i51" class="e-commerce e-commerce-xinxijinggao"/>  
                  <span xid="span55">未上传工单照片</span> 
                </a> 
              </div>  
              <div class="imgline" xid="div74" id="troublePhoneBillDetailImg"/>  
              <div xid="div64" style="background-color:white;padding:0px 0px 0px 0px;"
                class="list-group-item"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-only-label" xid="button48" icon="e-commerce e-commerce-tupian"
                  label="现场照片" style="color:#9A9A9A;"> 
                  <i xid="i55" class="e-commerce e-commerce-tupian"/>  
                  <span xid="span59">现场照片</span> 
                </a>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link" xid="button47" icon="e-commerce e-commerce-xinxijinggao"
                  style="color:#FF3F2A;float:right;" label="未上传现场照片" id="troubleDetailText2"> 
                  <i xid="i56" class="e-commerce e-commerce-xinxijinggao"/>  
                  <span xid="span58">未上传现场照片</span> 
                </a> 
              </div>  
              <div class="imgline" xid="div26" id="troublePhoneNowDetailImg"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div xid="div43" style="background-color:white;"> 
        <div xid="div42"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="无纸化工单" xid="button34" icon="dataControl dataControl-docpdf"> 
            <i xid="i41" class="dataControl dataControl-docpdf"/>  
            <span xid="span46">无纸化工单</span> 
          </a>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row9"> 
            <div class="x-col" xid="col21"> 
              <div class="imgline" xid="div65" id="troublePhoneNoneDetailImg"/> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div xid="div28" style="background-color:white;"> 
        <div xid="div27"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="备注" xid="button23" icon="icon-edit"> 
            <i xid="i23" class="icon-edit"/>  
            <span xid="span22">备注</span> 
          </a> 
        </div>  
        <div xid="div25"> 
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='$model.BillData.ref("remark")'></div></div> 
      </div> 
    </div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col4" style="text-align:center"><a component="$UI/system/components/justep/button/button" class="btn x-gray" label="关闭" xid="button13" style="width:8em;" onClick="button13Click">
   <i xid="i11"></i>
   <span xid="span8">关闭</span></a></div>
   <div class="x-col" xid="col6" style="text-align:center"><a component="$UI/system/components/justep/button/button" class="btn btn-primary" label="签字" xid="button10" style="width:8em;" onClick="button10Click">
   <i xid="i9"></i>
   <span xid="span7">签字</span></a></div></div></div></div>  
  <resource xid="resource2">
    <require xid="require1" url="css!$UI/maintenanceOrderMessa/common/style"/>
  </resource>
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="signatureWinDialog" src="$UI/maintenanceOrderMessa/signature-pad/signature.w" onClose="signatureWinDialogClose" routable="true" forceRefreshOnOpen="false"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" src="$UI/maintenanceOrderMessa/evaluation/evaluation.w"></span>
  </div>
