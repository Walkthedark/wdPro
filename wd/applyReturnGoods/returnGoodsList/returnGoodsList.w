<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="returnGoods" idColumn="id" onCustomRefresh="returnGoodsCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column label="商品名称" name="rName" type="String" xid="xid2"></column>
  <column name="rCoding" type="String" xid="xid3"></column>
  <column name="rPrice" type="String" xid="xid4"></column>
  <column name="rQuantity" type="Float" xid="xid5"></column>
  <column name="rImgUrl" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="退货清单"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">退货清单</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label" label="清空" xid="clearBtn">
   <i xid="i1"></i>
   <span xid="span1">清空</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background:#e6e7e8;"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="returnGoods">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1" style="margin:10px 0;background-color:#fff;"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <img class="media-object" alt="" xid="image1" style="width:100px;height:100px;" bind-attr-src=' $model.getImageUrl( val("rImgUrl"))'></img></div> 
   <div class="media-body" xid="mediaBody1" style="padding:10px 0;">
    <h4 class="media-heading" xid="h41" style="color:#666;font-size:14px;" bind-text=' ref("rName")'><![CDATA[]]></h4>
  <div xid="div2" style="padding-top:15px;"><div xid="div3"><span xid="span2" style="font-size:12px;" bind-text=' ref("rCoding")'><![CDATA[]]></span></div>
  <div xid="div4">
   <span xid="span3" style="font-size:12px;"><![CDATA[大小:200g]]></span></div>
  <div xid="div5">
   <span xid="span4" style="left:font-size:14px;"><![CDATA[¥]]></span>
  <span xid="span5"><![CDATA[0.01]]></span></div></div></div> </div>
  <div xid="div6" style="padding:0px 0px 10px;overflow:hidden;"><div xid="div7" class="pull-left" style="padding-left:15px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" xid="del" icon="linear linear-trash" style="color:#f66;">
   <i xid="i2" class="linear linear-trash"></i>
   <span xid="span6"></span></a></div>
  <div xid="div8" class="pull-right" style="width:70%;padding-right:10px;">
  
  <div xid="div9" style="display:inline-block;width:92%;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-sm" tabbed="true" xid="buttonGroup1" style="display:flex;border:1px solid #e6e7e8;width:92%;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button2" icon="icon-android-add" style="color:#666;">
    <i xid="i3" class="icon-android-add"></i>
    <span xid="span7"></span></a> 
   <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="height:30px;border-top:0;border-bottom:0;text-align:center;" bind-ref='ref("rQuantity")'></input><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button3" icon="icon-android-remove" style="color:#666;">
    <i xid="i4" class="icon-android-remove"></i>
    <span xid="span8"></span></a> 
  </div></div><span xid="span9" style="flex:1;width:8%;"><![CDATA[件]]></span></div></div></div></li></ul> </div></div>
   </div></div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0;">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0;height:100%;">
   <div class="x-col" xid="col5" style="font-size:14px;color:#666;"><span xid="span11"><![CDATA[共]]></span>
  <span xid="span12" bind-text=" "><![CDATA[1]]></span>
  <span xid="span13"><![CDATA[款]]></span></div>
   <div class="x-col" xid="col6" style="text-align:right;"><span xid="span14"><![CDATA[金额：]]></span>
  <span xid="span15" style="color:#f66;"><![CDATA[¥]]></span>
  <span xid="span16" style="color:#f66;" bind-text=' $model.returnGoods.val("rPrice") *  $model.returnGoods.val("rQuantity")'></span></div></div></div>
   <div class="x-col x-col-20" xid="col3" style="text-align:center;background-color:#f66;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="下单" xid="handleOrder" style="background-color:#f66;color:#fff;" onClick="handleOrderClick">
   <i xid="i5"></i>
   <span xid="span10">下单</span></a></div></div></div></div> 
</div>