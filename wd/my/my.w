<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:259px;left:306px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" onCustomRefresh="data2CustomRefresh" idColumn="user_name"><column name="user_name" type="String" xid="xid1"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
   <div class="x-panel-content" xid="content6"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px;">
   <div class="x-col" xid="col1" style="padding:0px;"><div component="$UI/system/components/justep/bar/bar" class="x-bar" xid="bar1" style="background:#47D1D1;height:140px;;z-index:-1;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
    <div class="x-col x-col-50" xid="col5">
     <img src="$UI/wd/images/noavatar_middle.gif" alt="" xid="image2" style="width:50px;height:50px;border-radius:50%;vertical-align:middle;display:inline-block;"></img>
     <span xid="span1" bind-text='$model.data2.val("user_name")' style="display:inline-block;"></span></div> 
    <div class="x-col" xid="col4"></div></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:-40px;z-index:92;background:#fff;">
   <div class="x-col x-col-center" xid="col7" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="公司信息" xid="companyBtn" icon="icon-android-note" style="color:#444343;" onClick="companyBtnClick">
   <i xid="i1" class="icon-android-note" style="background:#f66;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
   <span xid="span2">公司信息</span></a></div>
   <div class="x-col" xid="col11" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="收货地址" xid="deliveryBtn" icon="icon-android-location" style="color:#444343;" onClick="deliveryBtnClick">
   <i xid="i2" class="icon-android-location" style="background:#15C1C5;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
   <span xid="span3">收货地址</span></a>
  </div>
  <div class="x-col" xid="col12" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="分享设置" xid="button3" icon="icon-android-share" style="color:#444343;">
   <i xid="i3" class="icon-android-share" style="background:#4A99F3;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
   <span xid="span4">分享设置</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col16" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="退货订单" xid="returnGoodsBtn" icon="icon-ios7-undo" style="color:#444343;" onClick="returnGoodsBtnClick">
   <i xid="i4" class="icon-ios7-undo" style="background:#EC52CE;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
   <span xid="span5">退货订单</span></a></div>
   <div class="x-col" xid="col17" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="申请退货" xid="button5" icon="icon-arrow-return-left" style="color:#444343;" onClick="button5Click">
   <i xid="i5" class="icon-arrow-return-left" style="background:#A66CEA;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
   <span xid="span6">申请退货</span></a></div>
   <div class="x-col" xid="col18" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="优惠券" xid="button6" icon="icon-social-designernews" style="color:#444343;">
   <i xid="i6" class="icon-social-designernews" style="background:#F3A740;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
   <span xid="span7">优惠券</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col8" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="切换页面" xid="button2" icon="icon-social-buffer-outline" style="color:#444343;" onClick="button2Click">
     <i xid="i9" class="icon-social-buffer-outline" style="background:#F3A740;color:#fff;display:block;width:30px;height:30px;line-height:30px;border-radius:20%;"></i>
     <span xid="span10">切换页面</span></a></div> 
   <div class="x-col" xid="col6" style="text-align:center;">
    </div> 
   <div class="x-col" xid="col3" style="text-align:center;">
     </div> </div></div>
   </div></div>
   </div>
  </div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"></span></div>