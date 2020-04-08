<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="returnGoods" idColumn="id" onCustomRefresh="returnGoodsCustomRefresh">
   <column name="id" type="String" xid="xid1"></column>
  <column label="商品名称" name="rName" type="String" xid="xid2"></column>
  <column name="rCoding" type="String" xid="xid3"></column>
  <column name="rPrice" type="String" xid="xid4"></column>
  <column name="rQuantity" type="Float" xid="xid5"></column>
  <column name="rImgUrl" type="String" xid="xid6"></column>
  <column name="rBreif" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="商品清单"
          class="x-titlebar" style="background-color:#47D1D1;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">商品清单</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#e6e7e8;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="returnGoods">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color:#fff;margin-bottom:10px;"><div xid="div1"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <img class="media-object" alt="" xid="image1" style="width:100px;height:100px;" bind-attr-src=' $model.getImageUrl( val("rImgUrl"))'></img></div> 
   <div class="media-body" xid="mediaBody1" style="padding:10px 0;">
    <h4 class="media-heading" xid="h41" style="color:#666;font-size:14px;" bind-text=' ref("rName")'></h4>
    <div xid="div2" style="padding-top:15px;">
     <div xid="div3">
      <span xid="span2" style="font-size:12px;" bind-text=' ref("rCoding")'></span></div> 
     <div xid="div4">
      <span xid="span3" style="font-size:12px;">大小:200g</span></div> 
     <div xid="div5" style="display:flex;">
      
      
  <div xid="div7" style="flex:1;"><span xid="span4" style="color:#f66;font-size:14px;">¥</span><span xid="span5" bind-text=' ref("rPrice")' style="color:#f66;"></span></div>
  <div xid="div8" style="padding-right:15px;box-sizing:border-box;flex:1;text-align:right;"><span xid="span7"><![CDATA[2件]]></span></div></div> </div> </div> </div>
  <div xid="div6" style="color:#999;font-size:12px;border-top:1px solid #e6e7e8;padding:8px 5px;"><span xid="span1"><![CDATA[备注：]]></span>
  <span xid="span6" bind-text=' $model.getBrief( val("rBreif"))'></span></div></div></li></ul> </div></div>
  </div> 
</div>