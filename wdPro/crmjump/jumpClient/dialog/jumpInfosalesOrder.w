<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:-5px;left:18px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="goods_id" confirmDelete="false">
   <column name="cate_name" type="String" xid="xid1"></column>
   <column name="goods_id" type="String" xid="xid2"></column>
   <column name="goods_name" type="String" xid="xid4"></column>
   <column name="specification" type="String" xid="xid6"></column>
   </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="contentData" idColumn="id" confirmRefresh="false">
   <column name="id" type="String" xid="xid3"></column>
   <column label="城市" name="WedBanquetCity" type="String" xid="xid5"></column>
   <column label="酒店" name="WedBanquetHotel" type="String" xid="xid7"></column>
   <column label="日期" name="WedBanquetDate" type="Date" xid="xid8"></column>
   <column name="WedBanquetMeal" type="String" xid="xid9"></column>
   <column label="形式" name="WedBanquetFrom" type="String" xid="xid10"></column>
   <column label="禁忌" name="WedBanquetTaboo" type="String" xid="xid11"></column>
   <column label="来宾人数" name="guestsNumber" type="String" xid="xid12"></column>
   <column label="来宾成分" name="guestsComposition" type="String" xid="xid13"></column>
   <column label="来宾占比" name="guestsAccounted" type="String" xid="xid14"></column>
   <column label="预算" name="decorateBudget" type="String" xid="xid15"></column>
   <column name="decorateTheme" type="String" xid="xid16"></column>
   <column label="色调" name="decorateTonal" type="String" xid="xid17"></column>
   <column label="风格" name="decorateStyle" type="String" xid="xid18"></column>
   <column label="领证日期" name="licenseDate" type="Date" xid="xid19"></column>
   <column name="theCourtship" type="String" xid="xid20"></column>
   <column label="恋爱时间" name="loveTime" type="String" xid="xid21"></column>
   <column label="求婚" name="isToMarry" type="String" xid="xid22"></column>
   <column label="婚房布置" name="MarriageRoomDecorate" type="String" xid="xid23"></column>
   <column label="迎亲习俗" name="WeddingCustom" type="String" xid="xid24"></column>
   <column label="摄影" name="photography" type="String" xid="xid25"></column>
   <column label="摄像" name="camera" type="String" xid="xid26"></column>
   <column name="broadcast" type="String" xid="xid27"></column>
   <column label="化妆师" name="makeupArtist" type="String" xid="xid28"></column>
   <column name="MC" type="String" xid="xid29"></column>
   <column label="甜品" name="dessert" type="String" xid="xid30"></column>
   <column label="演艺" name="acting" type="String" xid="xid31"></column>
   <column label="婚礼管家" name="WeddingHousekeeper" type="String" xid="xid32"></column>
   <column label="婚车" name="TheCar" type="String" xid="xid33"></column>
   <column label="婚纱" name="WeddingDress" type="String" xid="xid34"></column>
   <column name="ASuit" type="String" xid="xid35"></column>
   <column label="礼服" name="dress" type="String" xid="xid36"></column>
   <column label="婚纱照" name="WeddingPhotos" type="String" xid="xid37"></column>
   <column label="喜糖" name="joyful" type="String" xid="xid38"></column>
   <column name="WithTheHand" type="String" xid="xid39"></column>
   <column label="请柬" name="largeNumber" type="String" xid="xid40"></column>
   <column label="电子请柬" name="emaillargeNumber" type="String" xid="xid41"></column>
   <column label="证婚人" name="registrar" type="String" xid="xid42"></column>
   <column label="伴郎" name="bestMan" type="String" xid="xid43"></column>
   <column label="流程素材" name="processOfMaterial" type="String" xid="xid44"></column>
   <column label="流程道具" name="ProcessTheProps" type="String" xid="xid45"></column>
   <column name="DrawLink" type="String" xid="xid46"></column>
   <column label="拍摄" name="MorningShooting" type="String" xid="xid47"></column>
   <column label="外景拍摄" name="LocationFilming" type="String" xid="xid48"></column>
   <column name="TakenBeforeMarriage" type="String" xid="xid49"></column>
   <column name="VideoingRequirement" type="String" xid="xid50"></column>
   <column label="迎亲地址" name="SetTheAddress" type="String" xid="xid51"></column>
   <column label="婚礼秘书" name="SecretaryThewedding" type="String" xid="xid52"></column></div></div>  
    
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="choosePopWinDialog"
    src="$UI/wdPro/salesOrder/dialog/choosePopRodia.w" forceRefreshOnOpen="true"/>
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="TagWinDialog" src="$UI/wdPro/salesOrder/dialog/tagChoose.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="goodsWinDialog" src="$UI/wdPro/salesOrder/dialog/goodsChoose.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="linkWinDialog" src="$UI/wdPro/salesOrder/dialog/linkM.w" forceRefreshOnOpen="true"></span>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="基本信息" xid="button5" target="content1">
    <i xid="i5"></i>
    <span xid="span10">基本信息</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="跟单内容" xid="button6" target="content3">
    <i xid="i7"></i>
    <span xid="span12">跟单内容</span></a> </div></div>
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" wrap="false" swipe="false" slidable="false" routable="false"> 
    <div class="x-contents-content" xid="content1" style="background-color:#EBEAF0;">
      <div xid="div1" class="list-group-item" style="background-color:#EBEAF0;">
        <span xid="span1"><![CDATA[基本信息]]></span>
      </div>  
      <div xid="div2" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;">
        <div xid="div3" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label1" style="width:80px;"><![CDATA[跟单标题]]>
              <span xid="span5" style="color:#FD3240;"><![CDATA[*]]></span>
            </label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" style="background-color:white;border-style:none none none none;"/>
          </div> 
        </div>  
        <div xid="div7" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4"> 
            <label class="x-label" style="width:80px;" xid="label4"><![CDATA[关联客户]]>
              <span xid="span7" style="color:#FD3240;">*</span>
            </label>  
            <div class="x-edit" xid="div8"> 
              <div class="input-group" xid="div6"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4" placeHolder="请选择" style="background-color:white;border-style:none none none none;" disabled="true" />  
                <span class="input-group-btn" xid="span2"> 
                  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="button1" style="color:#838484;display:none" onClick="button1Click"> 
                    <i class="icon-chevron-right" xid="i1" />
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>
        <div xid="div28" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit21"> 
            <label class="x-label" style="width:80px;" xid="label21"><![CDATA[跟单阶段]]>
              <span xid="span6" style="color:#FD3240;">*</span>
            </label>  
            <div class="x-edit" xid="div26"> 
              <div class="input-group" xid="div27"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" xid="input21" placeHolder="请选择" style="background-color:white;border-style:none none none none;" disabled="true" />  
                <span class="input-group-btn" xid="span4"> 
                  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="button3" style="color:#838484;display:none" onClick="button3Click"> 
                    <i class="icon-chevron-right" xid="i3" />
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>
        <div xid="div4" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2"> 
            <label class="x-label" xid="label2" style="width:80px;"><![CDATA[跟单金额]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" />
          </div> 
        </div>
          
        <div xid="div10" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit5"> 
            <label class="x-label" style="width:80px;" xid="label5"><![CDATA[跟单产品]]></label>  
            <div class="x-edit" xid="div11"> 
              <div class="input-group" xid="div9"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" xid="input5" placeHolder="请选择" style="background-color:white;border-style:none none none none;" disabled="true" />  
                <span class="input-group-btn" xid="span3"> 
                  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="goodsChooseBtn" style="color:#838484;display:none" onClick="goodsChooseBtnClick"> 
                    <i class="icon-chevron-right" xid="i2" />
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div> 
      <div xid="div12"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div21" style="padding:5px 5px 5px 5px;" class="list-group-item">
   <div class="media" xid="media1">
    <div class="media-left" xid="mediaLeft1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="linear linear-trash" style="color:#181919;" onClick="button4Click">
      <i xid="i6" class="linear linear-trash"></i>
      <span xid="span8"></span></a> </div> 
    <div class="media-body" xid="mediaBody1">
     <h4 xid="h41" bind-text=' val("specification") == null? val("goods_name"): val("goods_name") + val("specification")' style="color:#181919;"></h4>
  </div> </div> </div></li></ul> </div></div>
  <div xid="div13" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit6">
    <label class="x-label" style="width:80px;" xid="label6"><![CDATA[联系人]]></label>
    <div class="x-edit" xid="div14">
     <div class="input-group" xid="div15">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input6" placeHolder="请选择" style="background-color:white;border-style:none none none none;" disabled="true"></input>
      <span class="input-group-btn" xid="span11">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="button2" style="color:#838484;display:none" onClick="button2Click">
        <i class="icon-chevron-right" xid="i4"></i></a> </span> </div> </div> </div> </div>
  <div xid="div5" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3"> 
            <label class="x-label" xid="label3" style="width:80px;"><![CDATA[跟单说明]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="请输入" />
          </div> 
        </div></div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:50px;"> 
        <div class="x-col" xid="col1" />
      </div>  
      
    </div>
  <div class="x-contents-content" xid="content3"><div xid="div68" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;">
   <div xid="div17" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
     <label class="x-label" xid="label7" style="width:90px;font-size:16px">婚宴城市</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameInp" required="required" bind-ref='$model.contentData.ref("WedBanquetCity")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div16" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
     <label class="x-label" xid="label8" style="width:90px;font-size:16px">婚宴酒店</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7" required="required" bind-ref='$model.contentData.ref("WedBanquetHotel")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div19" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
     <label class="x-label" xid="WedBanquetDate1" style="width:90px;font-size:16px">婚宴日期</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input8" required="required" bind-ref='$model.contentData.ref("WedBanquetDate")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div18" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
     <label class="x-label" xid="label10" style="width:90px;font-size:16px">婚宴餐标</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input9" required="required" bind-ref='$model.contentData.ref("WedBanquetMeal")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div22" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
     <label class="x-label" xid="label12" style="width:90px;font-size:16px">婚宴形式</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input12" required="required" bind-ref='$model.contentData.ref("WedBanquetFrom")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div20" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit13">
     <label class="x-label" xid="label13" style="width:90px;font-size:16px">婚宴禁忌</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input13" required="required" bind-ref='$model.contentData.ref("WedBanquetTaboo")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div24" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
     <label class="x-label" xid="label14" style="width:90px;font-size:16px">来宾人数</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input11" required="required" bind-ref='$model.contentData.ref("guestsNumber")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div23" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14">
     <label class="x-label" xid="label11" style="width:90px;font-size:16px">来宾成分</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input10" required="required" bind-ref='$model.contentData.ref("guestsComposition")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div29" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit18">
     <label class="x-label" xid="label15" style="width:90px;font-size:16px">来宾占比</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input16" required="required" bind-ref='$model.contentData.ref("guestsAccounted")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div25" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit20">
     <label class="x-label" xid="label16" style="width:90px;font-size:16px">布置预算</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input17" required="required" bind-ref='$model.contentData.ref("decorateBudget")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div31" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit19">
     <label class="x-label" xid="label17" style="width:90px;font-size:16px">布置主题</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input15" required="required" bind-ref='$model.contentData.ref("decorateTheme")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div30" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit17">
     <label class="x-label" xid="label18" style="width:90px;font-size:16px">布置色调</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input14" required="required" bind-ref='$model.contentData.ref("decorateTonal")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div34" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
     <label class="x-label" xid="label22" style="width:90px;font-size:16px">布置风格</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input22" required="required" bind-ref='$model.contentData.ref("decorateStyle")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div35" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit22">
     <label class="x-label" xid="label20" style="width:90px;font-size:16px">领证日期</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input18" required="required" bind-ref='$model.contentData.ref("licenseDate")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div33" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit16">
     <label class="x-label" xid="label19" style="width:90px;font-size:16px">恋爱过程</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input20" required="required" bind-ref='$model.contentData.ref("theCourtship")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div32" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit23">
     <label class="x-label" xid="label23" style="width:90px;font-size:16px">恋爱时间</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input19" required="required" bind-ref='$model.contentData.ref("loveTime")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div49" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit37">
     <label class="x-label" xid="label27" style="width:90px;font-size:16px">是否求婚</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input27" required="required" bind-ref='$model.contentData.ref("isToMarry")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div48" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit39">
     <label class="x-label" xid="label28" style="width:90px;font-size:16px">婚房布置</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input28" required="required" bind-ref='$model.contentData.ref("MarriageRoomDecorate")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div51" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit38">
     <label class="x-label" xid="label29" style="width:90px;font-size:16px">迎亲习俗</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input26" required="required" bind-ref='$model.contentData.ref("WeddingCustom")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div50" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit36">
     <label class="x-label" xid="label35" style="width:90px;font-size:16px">摄影</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input25" required="required" bind-ref='$model.contentData.ref("photography")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div44" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit34">
     <label class="x-label" xid="label38" style="width:90px;font-size:16px">摄像</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input35" required="required" bind-ref='$model.contentData.ref("camera")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div47" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit26">
     <label class="x-label" xid="label37" style="width:90px;font-size:16px">转播</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input29" required="required" bind-ref='$model.contentData.ref("broadcast")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div43" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit35">
     <label class="x-label" xid="label36" style="width:90px;font-size:16px">化妆师</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input34" required="required" bind-ref='$model.contentData.ref("makeupArtist")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div42" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit27">
     <label class="x-label" xid="label39" style="width:90px;font-size:16px">司仪</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input33" required="required" bind-ref='$model.contentData.ref("MC")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div46" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit30">
     <label class="x-label" xid="label33" style="width:90px;font-size:16px">甜品</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input32" required="required" bind-ref='$model.contentData.ref("dessert")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div45" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit33">
     <label class="x-label" xid="label32" style="width:90px;font-size:16px">演艺</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input36" required="required" bind-ref='$model.contentData.ref("acting")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div41" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit28">
     <label class="x-label" xid="label31" style="width:90px;font-size:16px">婚礼管家</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input31" required="required" bind-ref='$model.contentData.ref("WeddingHousekeeper")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div40" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit29">
     <label class="x-label" xid="label30" style="width:90px;font-size:16px">婚礼秘书</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input30" required="required" bind-ref='$model.contentData.ref("SecretaryThewedding")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div36" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit24">
     <label class="x-label" xid="label26" style="width:90px;font-size:16px">婚车</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input24" required="required" bind-ref='$model.contentData.ref("TheCar")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div37" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit31">
     <label class="x-label" xid="label24" style="width:90px;font-size:16px">婚纱</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input37" required="required" bind-ref='$model.contentData.ref("WeddingDress")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div39" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit25">
     <label class="x-label" xid="label34" style="width:90px;font-size:16px">西服</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input23" required="required" bind-ref='$model.contentData.ref("ASuit")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div38" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit32">
     <label class="x-label" xid="label25" style="width:90px;font-size:16px">中式礼服</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input38" required="required" bind-ref='$model.contentData.ref("dress")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div65" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit53">
     <label class="x-label" xid="label43" style="width:90px;font-size:16px">婚纱照</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input43" required="required" bind-ref='$model.contentData.ref("WeddingPhotos")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div64" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit55">
     <label class="x-label" xid="label44" style="width:90px;font-size:16px">喜糖</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input44" required="required" bind-ref='$model.contentData.ref("joyful")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div67" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit54">
     <label class="x-label" xid="label45" style="width:90px;font-size:16px">伴手礼</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input42" required="required" bind-ref='$model.contentData.ref("WithTheHand")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div66" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit52">
     <label class="x-label" xid="label51" style="width:90px;font-size:16px">请柬</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input41" required="required" bind-ref='$model.contentData.ref("largeNumber")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div60" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit50">
     <label class="x-label" xid="label54" style="width:90px;font-size:16px">电子请柬</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input51" required="required" bind-ref='$model.contentData.ref("emaillargeNumber")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div63" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit42">
     <label class="x-label" xid="label53" style="width:90px;font-size:16px">证婚人</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input45" required="required" bind-ref='$model.contentData.ref("registrar")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div59" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit51">
     <label class="x-label" xid="label52" style="width:90px;font-size:16px">伴郎伴娘</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input50" required="required" bind-ref='$model.contentData.ref("bestMan")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div58" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit43">
     <label class="x-label" xid="label55" style="width:90px;font-size:16px">流程素材</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input49" required="required" bind-ref='$model.contentData.ref("processOfMaterial")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div62" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit46">
     <label class="x-label" xid="label49" style="width:90px;font-size:16px">流程道具</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input48" required="required" bind-ref='$model.contentData.ref("ProcessTheProps")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div61" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit49">
     <label class="x-label" xid="label48" style="width:90px;font-size:16px">抽奖环节</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input52" required="required" bind-ref='$model.contentData.ref("DrawLink")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div57" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit44">
     <label class="x-label" xid="label47" style="width:90px;font-size:16px">晨袍拍摄</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input47" required="required" bind-ref='$model.contentData.ref("MorningShooting")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div56" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit45">
     <label class="x-label" xid="label46" style="width:90px;font-size:16px">外景拍摄</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input46" required="required" bind-ref='$model.contentData.ref("LocationFilming")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div52" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit40">
     <label class="x-label" xid="label42" style="width:90px;font-size:16px">婚前拍摄</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input40" required="required" bind-ref='$model.contentData.ref("TakenBeforeMarriage")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div53" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit47">
     <label class="x-label" xid="label40" style="width:90px;font-size:16px">拍摄要求</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input53" required="required" bind-ref='$model.contentData.ref("VideoingRequirement")' style="background-color:white;border-style:none none none none;"></input></div> </div> 
   <div xid="div55" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit41">
     <label class="x-label" xid="label50" style="width:90px;font-size:16px">迎亲地址</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input39" required="required" bind-ref='$model.contentData.ref("SetTheAddress")' style="background-color:white;border-style:none none none none;"></input></div> </div> </div></div></div></div>
   </div></div>
