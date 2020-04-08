<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <title>首页</title>
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:190px;left:62px;height:auto;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="productInfo" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="pro_image_url" type="String" xid="xid2"></column>
  <column name="pro_name" type="String" xid="xid5"></column>
  <column name="pro_price" type="String" xid="xid6"></column>
  <column name="pro_unit" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="salesType" idColumn="id"><column name="id" type="String" xid="xid3"></column>
  <column name="sales_type" type="String" xid="xid4"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="add_goods_time"><column name="add_goods_time" type="String" xid="xid8"></column>
  <column name="brand_id" type="String" xid="xid9"></column>
  <column name="cate_id" type="String" xid="xid10"></column>
  <column name="cost_price" type="String" xid="xid11"></column>
  <column name="goods_code1" type="String" xid="xid12"></column>
  <column name="goods_code2" type="String" xid="xid13"></column>
  <column name="goods_code3" type="String" xid="xid14"></column>
  <column name="goods_fid" type="String" xid="xid15"></column>
  <column name="goods_id" type="String" xid="xid16"></column>
  <column name="goods_img" type="String" xid="xid17"></column>
  <column name="goods_inventory" type="String" xid="xid18"></column>
  <column name="goods_name" type="String" xid="xid19"></column>
  <column name="goods_sn" type="String" xid="xid20"></column>
  <column name="goods_state" type="String" xid="xid21"></column>
  <column name="is_client_price" type="String" xid="xid22"></column>
  <column name="is_combo" type="String" xid="xid23"></column>
  <column name="is_material" type="String" xid="xid24"></column>
  <column name="is_material2" type="String" xid="xid25"></column>
  <column name="keywords" type="String" xid="xid26"></column>
  <column name="preposition_day" type="String" xid="xid27"></column>
  <column name="specification1_name" type="String" xid="xid28"></column>
  <column name="specification1_value" type="String" xid="xid29"></column>
  <column name="specification2_name" type="String" xid="xid30"></column>
  <column name="specification2_value" type="String" xid="xid31"></column>
  <column name="specification3_name" type="String" xid="xid32"></column>
  <column name="specification3_value" type="String" xid="xid33"></column>
  <column name="specification_id" type="String" xid="xid34"></column>
  <column name="update_goods_time" type="String" xid="xid35"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents3"> 
        <div class="x-contents-content" xid="page1">
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel2"> 
            <div class="x-panel-top" xid="top1">
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar" xid="titleBar1" style="background-color:#47D1D1;"> 
                <div class="x-titlebar-left" xid="left1"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-xs btn-icon-top" label="供应商" xid="classBtn"
                    icon="linear linear-list" style="font-size:small;" onClick="classBtnClick"> 
                    <i xid="i2" class="linear linear-list"/>  
                    <span xid="span4">供应商</span>
                  </a>
                </div>  
                <div class="x-titlebar-title" xid="title1"><![CDATA[]]>  
                  <input component="$UI/system/components/justep/input/input"
                    class="form-control" xid="input1" style="margin-top:-5px;height:33px;"
                    placeHolder="请输入商品"/>
                </div>  
                <div class="x-titlebar-right reverse" xid="right1" style="position:relative;top:0px;right:0px;">
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" xid="cart" icon="linear linear-cart" onClick="cartClick"> 
                    <i xid="i1" class="linear linear-cart"/>  
                    <span xid="span3"/>
                  </a>  
                  <span class="badge" xid="badge1" style="display:none;position:absolute;top:5px;right:5px;background-color:#F8A799;">20</span>
                </div>
              </div>
            </div>  
            <div class="x-panel-content  x-scroll-view" xid="content2" style="width:100%;"
              _xid="C85BAE2616F00001DE2FAF377F4F1F80">
              
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span9">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div xid="div7" class="swiper-container">
   <div xid="div8" class="swiper-wrapper">
    <div xid="div9" class="swiper-slide">
     <img src="$UI/wd/main/img/carouselBox61.jpg" alt="" xid="image1" height="133px;" style="width:100%;"></img></div> 
    <div xid="div10" class="swiper-slide">
     <img src="$UI/wd/main/img/carouselBox62.jpg" alt="" xid="image2" height="133px;" style="width:100%;;"></img>
  </div> 
    <div xid="div11" class="swiper-slide">
     <img src="$UI/wd/main/img/carouselBox63.jpg" alt="" xid="image3" height="133px" style="width:100%;"></img>
  </div> </div> 
   <div xid="div12" class="swiper-pagination"></div>
  </div><div xid="div5" style="padding-top:5px;background-color:#e6e7e8;"><table class="table" component="$UI/system/components/bootstrap/table/table" xid="table2" style="margin-bottom:0;background-color:#fff;">
     
     <tbody class="x-list-template" xid="listTemplate2">
      <tr xid="tr6">
       <td xid="td6" style="text-align:center;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="促销活动" xid="salesActive" icon="linear linear-store" style="color:#4E4D4D;font-family: “Microsoft YaHei” ! important;" onClick="salesActiveClick">
   <i xid="i10" class="linear linear-store" style="font-size:16px;border-radius:20%;height:30px;line-height:30px;width:30px;color:#fff;background-color: rgb(177, 113, 250);"></i>
   <span xid="span16">促销活动</span></a></td><td xid="td7" style="text-align:center;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="促销商品" xid="promoteSales" icon="linear linear-bookmark" style="color:#4E4D4D;font-family: “Microsoft YaHei” ! important;">
   <i xid="i6" class="linear linear-bookmark" style="font-size:18px;border-radius:20%;height:30px;line-height:30px;width:30px;color:#fff;background-color: rgb(248, 191, 126);"></i>
   <span xid="span12">促销商品</span></a></td> 
  <td xid="td9" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="最近购买" xid="collection" icon="icon-heart" style="color:#4E4D4D;font-family: “Microsoft YaHei” ! important;">
   <i xid="i8" class="icon-heart" style="font-size:16px;border-radius:20%;height:30px;line-height:30px;width:30px;color:#fff;background-color: rgb(113, 127, 250);"></i>
   <span xid="span14">最近购买</span></a></td></tr> 
  </tbody> </table>
  </div><div xid="div6" style="padding-top:5px"><div component="$UI/system/components/justep/list/list" class="x-list x-flex" xid="list2" data="$model.productInfo">
   <ul class="x-list-template x-min-height" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl2">
    <li xid="li2" class="col col-xs-6" componentname="li(html)" id="undefined_li2"><img src=" " alt="" xid="image7" style="width:100%;height:120px;" bind-attr-src=' $model.getImageUrl( val("pro_image_url"))'></img>
  <div xid="div15"><h5 xid="h51" bind-text=' ref("pro_name")' style="color:#999;font-size:12px;font-family: “Microsoft YaHei” ! important;"><![CDATA[]]></h5>
  <div xid="div16" style="color:#f66;"><span xid="span5" style="font-size:16px;" bind-text='  "¥"+val("pro_price")'></span>
  <span xid="span13" bind-text=' "/"+ val("pro_unit") ' style="font-size:12px;"></span></div></div></li></ul> </div></div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span10">加载更多...</span></div> </div></div> 
          </div>
        </div>  
        <div class="x-contents-content" xid="page2">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer4" autoLoad="false"/>
        </div>  
        <div class="x-contents-content" xid="page3">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer3" src="$UI/wd/order/order.w"/>
        </div>  
        <div class="x-contents-content" xid="page4">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer1" autoLoad="true"/>
        </div>  
        <div class="x-contents-content" xid="page5">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer2" src="$UI/wd/my/my.w"/>
        </div>
      </div>
    </div>  
    <div class="x-panel-bottom" xid="bottom1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1" selected="home"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="首页" xid="home" icon="icon-home" target="page1" style="height:100%;"> 
          <i xid="i11" class="icon-home"/>  
          <span xid="span1">首页</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="商品" xid="product" icon="icon-ios7-briefcase-outline" target="page2" onClick="productClick"> 
          <i xid="i12" class="icon-ios7-briefcase-outline"/>  
          <span xid="span2">商品</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="快速下单" xid="order" icon="icon-clipboard" target="page3"> 
          <i xid="i16" class="icon-clipboard"/>  
          <span xid="span6">快速下单</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="购物车" xid="message" icon="icon-ios7-cart-outline" target="page4" onClick="messageClick"> 
          <i xid="i17" class="icon-ios7-cart-outline"/>  
          <span xid="span7">购物车</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="我的" xid="my" icon="icon-android-contact" target="page5"> 
          <i xid="i18" class="icon-android-contact"/>  
          <span xid="span8">我的</span>
        </a>
      </div> 
    </div>
  </div>
</div>
