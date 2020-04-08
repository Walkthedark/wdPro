<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:351px;top:42px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="commentsData" idColumn="id" onCustomRefresh="commentsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid3"/>  
      <column label="用户名" name="fUserName" type="String" xid="xid4"/>  
      <column label="用户头像" name="fUserImg" type="String" xid="xid7"/>  
      <column label="评分" name="fScore" type="Float" xid="xid5"/>  
      <column label="评论内容" name="fContent" type="String" xid="xid6"/>  
      <column label="评论日期" name="fDate" type="Date" xid="xid8"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="标题" name="fTitle" type="String" xid="column2"/>  
      <column label="图片" name="fImg" type="String" xid="column3"/>  
      <column label="价格" name="fPrice" type="Float" xid="column4"/>  
      <column label="原价格" name="fOldPrice" type="Float" xid="column5"/>  
      <column label="邮费" name="fPostage" type="String" xid="column6"/>  
      <column label="买出数量" name="fRecord" type="Integer" xid="column7"/>  
      <column label="所在地区" name="fAddress" type="String" xid="column8"/>  
      <column label="详情" name="fDetail" type="String" xid="xid17"/>  
      <column label="评价数量" name="fCommentsNumber" type="String" xid="xid24"/>  
      <rule xid="rule1"> 
        <col name="fCommentsNumber" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default3">$model.commentsData.count()</expr> 
          </calculate> 
        </col> 
      </rule> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="shopData" idColumn="id" onCustomRefresh="shopDataCustomRefresh"> 
      <column name="id" type="String" xid="xid9"/>  
      <column label="店名" name="fShopName" type="String" xid="xid10"/>  
      <column label="等级" name="fLevel" type="Integer" xid="xid11"/>  
      <column label="店标" name="fShopImg" type="String" xid="xid16"/>  
      <column label="描述相符" name="fConsistent" type="Float" xid="xid12"/>  
      <column label="服务态度" name="fService" type="Float" xid="xid13"/>  
      <column label="商品数量" name="fGoodsNumber" type="Integer" xid="xid14"/>  
      <column label="关注人数" name="fFocusNumber" type="Integer" xid="xid15"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="parameterData" idColumn="id" onCustomRefresh="parameterDataCustomRefresh"> 
      <column name="id" type="String" xid="xid19"/>  
      <column label="商品ID" name="fGoodsID" type="String" xid="xid20"/>  
      <column label="参数名" name="fName" type="String" xid="xid20"/>  
      <column label="参数" name="fParameter" type="String" xid="xid21"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="colorData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid18"/>  
      <column label="商品ID" name="fGoodID" type="String" xid="xid22"/>  
      <column label="颜色" name="fColor" type="String" xid="xid23"/>  
      <column label="状态" name="fState" type="Integer" xid="xid25"/>  
      <data xid="default2">[{"id":"1","fGoodID":"1","fColor":"草绿（12支/盒）","fState":0},{"id":"2","fGoodID":"1","fColor":"橙色（12支/盒）","fState":0},{"id":"3","fGoodID":"1","fColor":"蓝色（12支/盒）","fState":0},{"id":"4","fGoodID":"1","fColor":"粉红（12支/盒）","fState":0},{"id":"5","fGoodID":"1","fColor":"黑色（12支/盒）","fState":0},{"id":"6","fGoodID":"1","fColor":"红色（12支/盒）","fState":0},{"id":"7","fGoodID":"1","fColor":"黄色（12支/盒）","fState":0},{"id":"8","fGoodID":"1","fColor":"绿色（12支/盒）","fState":0},{"id":"9","fGoodID":"1","fColor":"墨蓝（12支/盒）","fState":0},{"id":"10","fGoodID":"1","fColor":"天蓝（12支/盒）","fState":0},{"id":"11","fGoodID":"1","fColor":"紫色（12支/盒）","fState":0},{"id":"12","fGoodID":"1","fColor":"棕色（12支/盒）","fState":0},{"id":"13","fGoodID":"1","fColor":"12色混装（12支/盒）","fState":0}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="stateData" idColumn="state">
      <column label="显示状态" name="state" type="Integer" xid="xid26"></column>
  <data xid="default4">[{&quot;state&quot;:0}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="goods_id"><column name="add_goods_time" type="String" xid="xid27"></column>
  <column name="brand" type="String" xid="xid28"></column>
  <column name="brand_id" type="String" xid="xid29"></column>
  <column name="cate_id" type="String" xid="xid30"></column>
  <column name="cate_name" type="String" xid="xid31"></column>
  <column name="cost_price" type="String" xid="xid32"></column>
  <column name="goods_code1" type="String" xid="xid33"></column>
  <column name="goods_code2" type="String" xid="xid34"></column>
  <column name="goods_code3" type="String" xid="xid35"></column>
  <column name="goods_fid" type="String" xid="xid36"></column>
  <column name="goods_id" type="String" xid="xid37"></column>
  <column name="goods_img" type="String" xid="xid38"></column>
  <column name="goods_inventory" type="String" xid="xid39"></column>
  <column name="goods_name" type="String" xid="xid40"></column>
  <column name="goods_sn" type="String" xid="xid41"></column>
  <column name="goods_state" type="String" xid="xid42"></column>
  <column name="is_client_price" type="String" xid="xid43"></column>
  <column name="is_combo" type="String" xid="xid44"></column>
  <column name="is_units" type="String" xid="xid45"></column>
  <column name="keywords" type="String" xid="xid46"></column>
  <column name="price" type="String" xid="xid47"></column>
  <column name="set_specs" type="String" xid="xid48"></column>
  <column name="sort_num" type="String" xid="xid49"></column>
  <column name="specification1_name" type="String" xid="xid50"></column>
  <column name="specification1_value" type="String" xid="xid51"></column>
  <column name="specification2_name" type="String" xid="xid52"></column>
  <column name="specification2_value" type="String" xid="xid53"></column>
  <column name="specification3_name" type="String" xid="xid54"></column>
  <column name="specification3_value" type="String" xid="xid55"></column>
  <column name="specification_id" type="String" xid="xid56"></column>
  <column name="tag" type="String" xid="xid57"></column>
  <column name="update_goods_time" type="String" xid="xid58"></column>
  <column name="unit" type="String" xid="xid59"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataWeb" idColumn="uuid"><column name="cate_name" type="String" xid="xid60"></column>
  <column name="dis_tag" type="String" xid="xid61"></column>
  <column name="goods_id" type="String" xid="xid62"></column>
  <column name="goods_img" type="String" xid="xid63"></column>
  <column name="goods_name" type="String" xid="xid64"></column>
  <column name="goods_sn" type="String" xid="xid65"></column>
  <column name="is_client_price" type="String" xid="xid66"></column>
  <column name="is_units" type="String" xid="xid67"></column>
  <column name="origin_price" type="String" xid="xid68"></column>
  <column name="price" type="String" xid="xid69"></column>
  <column name="quantity" type="String" xid="xid70"></column>
  <column name="show_name" type="String" xid="xid71"></column>
  <column name="specification" type="String" xid="xid72"></column>
  <column name="specification1_name" type="String" xid="xid73"></column>
  <column name="specification1_value" type="String" xid="xid74"></column>
  <column name="specification2_name" type="String" xid="xid75"></column>
  <column name="specification2_value" type="String" xid="xid76"></column>
  <column name="specification3_name" type="String" xid="xid77"></column>
  <column name="specification3_value" type="String" xid="xid78"></column>
  <column name="specification_id" type="String" xid="xid79"></column>
  <column name="unit" type="String" xid="xid80"></column>
  <column name="unit_id" type="String" xid="xid81"></column>
  <column name="unit_name" type="String" xid="xid82"></column>
  <column name="uuid" type="String" xid="xid83"></column>
  <rule xid="rule2">
   <col name="uuid" xid="ruleCol2">
    <defaultValue xid="default5">
     <expr xid="default6"></expr></defaultValue> 
    <calculate xid="calculate2">
     <expr xid="default7">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="specificationData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="specificationName" type="String" xid="xid2"></column>
  <column name="specificationThis" type="String" xid="xid84"></column>
  <column name="specificationValue" type="String" xid="xid85"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classNameData" idColumn="id"><column name="id" type="String" xid="xid86"></column>
  <column name="name" type="String" xid="xid87"></column>
  <column name="cid" type="String" xid="xid89"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classValueData" idColumn="id">
   <column name="id" type="String" xid="column9"></column>
  <column name="name" type="String" xid="column10"></column>
  <column name="pid" type="String" xid="xid88"></column>
  <column name="flag" type="String" xid="xid90"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classValue2Data" idColumn="id" confirmRefresh="false">
   <column name="id" type="String" xid="column12"></column>
  <column name="name" type="String" xid="column11"></column>
  <column name="pid" type="String" xid="column13"></column>
  <column name="flag" type="String" xid="xid91"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classValue3Data" idColumn="id">
   <column name="id" type="String" xid="column15"></column>
  <column name="name" type="String" xid="column14"></column>
  <column name="pid" type="String" xid="column16"></column>
  <column name="flag" type="String" xid="xid92"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="className2Data" idColumn="id">
   <column name="id" type="String" xid="column18"></column>
   <column name="name" type="String" xid="column19"></column>
   <column name="cid" type="String" xid="column17"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="className3Data" idColumn="id">
   <column name="id" type="String" xid="column21"></column>
   <column name="name" type="String" xid="column22"></column>
   <column name="cid" type="String" xid="column20"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="unitData" idColumn="id"><column name="origin_price" type="String" xid="xid93"></column>
  <column name="id" type="String" xid="xid94"></column>
  <column name="name" type="String" xid="xid95"></column>
  <column name="price" type="String" xid="xid96"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver" position="bottom"> 
    <div class="x-popOver-overlay" xid="div2"/>  
    <div class="x-popOver-content" xid="div3" style="height:60%;width:100%;"> 
      
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black" icon="icon-ios7-close-outline" onClick="{operation:'popOver.hide'}" xid="button2">
   <i xid="i2" class="icon-ios7-close-outline"></i>
   <span xid="span11"></span></a>
  <img alt="" class="img-thumbnail tb-colorImg" bind-attr-src=' $model.goodsDataWeb.val("goods_img")' xid="image2"></img>
  <div class="tb-title" xid="div6">
   <span class="text-danger h4" xid="span12">￥</span>
   <span bind-text='$model.goodsDataWeb.val("price")' class="text-danger h4" xid="span13"></span>
   <span class="text-danger h4" bind-text='"/"+$model.goodsDataWeb.val("unit_name")' xid="span14"></span>
   <div xid="div5"></div>
   <span bind-text='$model.goodsDataWeb.val("show_name")' xid="span15"></span>
   <h5 xid="h51" class="text-black">请选择颜色分类</h5></div>
  <div class="panel-body" xid="div8">
   <h4 class="text-black" xid="h42">颜色分类</h4>
   <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list2" data="goodsDataWeb" bind-click="colorLiClick" dataItemAlias="colorRow">
    <ul class="x-list-template" xid="listTemplateUl2" componentname="ul(html)" id="undefined_ul2">
     <li xid="li3" class="col col-xs-6" componentname="li(html)" id="undefined_li2">
      <div class="text-center" bind-css="{'current':colorRow.val('uuid')==$model.goodsDataWeb.val('uuid')}" xid="div9">
       <span bind-text='val("specification")' xid="span16"></span></div> </li> </ul> </div> 
   <div class="clearfix" xid="div10"></div></div></div>
   <div class="x-panel-bottom" xid="bottom2"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup4">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="加入购物车" onClick="button4Click"> 
          <i xid="i16" />  
          <span xid="span34">加入购物车</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="立即购买"> 
          <i xid="i19" />  
          <span xid="span37">立即购买</span>
        </a>
      </div></div></div></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card tb-trans x-has-iosstatu"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar" style="background-color:#47D1D1;" title="商品详情">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="backBtn" icon="icon-chevron-left" onClick="backBtnClick"> 
          <i xid="i6" class="icon-chevron-left" />  
          <span xid="span6">关闭</span> 
        </a></div>
   <div class="x-titlebar-title" xid="title1">商品详情</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" xid="cartBtn" icon="icon-ios7-cart" onClick="shoppingCartBtnClick">
   <i xid="i12" class="icon-ios7-cart"></i>
   <span xid="span4"><![CDATA[]]></span></a></div></div></div><div class="x-panel-content x-cards"> 
        
      <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel"
        xid="carousel1" auto="false" style="height:251px;margin-top:48px;"> 
        <ol class="carousel-indicators" xid="default1"/>  
        <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
          active="0" slidable="true" wrap="true" swipe="true" xid="contents1" routable="false"> 
          <div class="x-contents-content" xid="content1"> 
            <img src="" alt="" xid="image1" class="image-wall tb-img"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card panel-body"> 
        <div component="$UI/system/components/bootstrap/row/row" class="row tb-nopadding"> 
          <div class="col col-xs-10  tb-nopadding" xid="col8"> 
            <h4 xid="h41" class=" text-black" bind-text=' $model.goodsDataM.val("goods_name")'><![CDATA[]]></h4>  
            <div xid="div4"> 
              <span xid="span17" class="text-danger h3"><![CDATA[￥]]></span>  
              <span xid="span29" class="text-danger h3" bind-text='$model.goodsDataM.val("price")'/> 
            </div>  
            </div>  
          </div>  
        </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-heading x-card"
        bind-click="popOverClick"> 
        <i xid="i4" class="text-muted icon-chevron-right pull-right btn-sm"/>  
        <span xid="span20"><![CDATA[规格选择]]></span> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel x-card"> 
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-tabs"
          tabbed="true"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label active"
            label="商品介绍" xid="detailsBtn" target="detailsContent"> 
            <i xid="i14"/>  
            <span xid="span31">商品介绍</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="商品附件" xid="parameterBtn" target="parameterContent"> 
            <i xid="i15"/>  
            <span xid="span33">商品附件</span> 
          </a> 
        </div>  
        <div component="$UI/system/components/justep/contents/contents" class="x-contents"
          active="0"> 
          <div class="x-contents-content panel-body" xid="detailsContent"> 
            <div/> 
          </div>  
          <div class="x-contents-content panel-body" xid="parameterContent"> 
            <div xid="div1" style="height:100px;"><span xid="span2"><![CDATA[暂无附件]]></span></div></div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"> 
        <div class="col col-xs-5 tb-nopadding" xid="col3"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="分享" xid="button1" icon="icon-android-share"> 
              <i xid="i1" class="icon icon-android-share"/>  
              <span xid="span1">分享</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="收藏" xid="button3" icon="icon-ios7-star-outline"> 
              <i xid="i3" class="icon icon-ios7-star-outline"/>  
              <span xid="span3">收藏</span> 
            </a></div> 
        </div>  
        <div class="col col-xs-7 tb-nopadding" xid="col6"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="加入购物车" xid="joinCartBtn" icon="icon-radio-waves" onClick='joinCartBtnClick'> 
              <i xid="i8" class="icon-radio-waves icon"/>  
              <span xid="span7">加入购物车</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="立即购买" xid="buyBtn" icon="icon-android-display" onClick='buyBtnClick'> 
              <i xid="i7" class="icon-android-display icon"/>  
              <span xid="span8">立即购买</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver1" position="bottom">
   <div class="x-popOver-overlay" xid="div16"></div>
   <div class="x-popOver-content" xid="div15" style="width:100%;height:70%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
     <div class="x-panel-content" xid="content3">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black" icon="icon-ios7-close-outline" onClick="{operation:'popOver1.hide'}" xid="button4">
       <i xid="i10" class="icon-ios7-close-outline"></i>
       <span xid="span23"></span></a> 
      <img alt="" class="img-thumbnail tb-colorImg" bind-attr-src=' $model.goodsDataM.val("goods_img")' xid="image3"></img>
      <div class="tb-title" xid="div13">
       <span class="text-danger h4" xid="span21">￥</span>
       <span class="text-danger h4" xid="span9" bind-text='$model.goodsDataM.val("price")'></span>
       <div xid="div14"></div>
       <span xid="span18" bind-text='$model.goodsDataM.val("goods_name")'></span>
       <h5 xid="h52" class="text-black"><![CDATA[请选择规格]]></h5></div> 
      <div xid="div24" style="height:30px;width:100%;"></div><div class="panel-body" xid="div12" style="padding-top: 3px">
       
        
       
  
  
  <div xid="div18" bind-visible=" $model.classNameData.getCount() !=0"><h4 class="text-black" xid="h43" bind-text=' $model.classNameData.val("name") +"分类"'>颜色分类</h4><div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list1" data="classValueData" bind-click="colorLiClick" dataItemAlias="colorRow">
        <ul class="x-list-template" xid="listTemplateUl1" componentname="ul(html)" id="undefined_ul2">
         <li xid="li1" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li1Click">
          <div class="text-center" bind-css=" val(&quot;flag&quot;)==0?{'current2':colorRow.val('id')==$model.classValueData.val('id')}:{'current':colorRow.val('id')==$model.classValueData.val('id')}" xid="div11" bind-disable=' val("flag") !=1' bind-enable=' val("flag") ==1'>
           <span bind-text='val("name")' xid="span10"></span>
  </div> </li> </ul> </div></div>
  <div class="clearfix" xid="div7"></div><div xid="div19" bind-visible=" $model.className2Data.getCount() !=0"><h4 class="text-black" xid="h44" bind-text=' $model.className2Data.val("name") +"分类"'>颜色分类</h4><div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list3" data="classValue2Data" bind-click="colorLiClick" dataItemAlias="color2Row">
   <ul class="x-list-template" xid="listTemplateUl3" componentname="ul(html)" id="undefined_ul2">
    <li xid="li2" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li2Click">
     <div class="text-center " bind-css=" val(&quot;flag&quot;)==0?{'current2':color2Row.val('id')==$model.classValue2Data.val('id')}:{'current':color2Row.val('id')==$model.classValue2Data.val('id')}" xid="div17" bind-style="{ &quot;color&quot;: val(&quot;flag&quot;)==0?'#8E8E8E':'#4D4D4D',
}">
      <span bind-text='val("name")' xid="span24"></span></div> </li> </ul> </div></div>
  <div class="clearfix" xid="div21"></div><div xid="div23" bind-visible=" $model.className3Data.getCount() !=0">
   <h4 class="text-black" xid="h45" bind-text=' $model.className3Data.val("name") +"分类"'>颜色分类</h4>
   <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list4" data="classValue3Data" bind-click="colorLiClick" dataItemAlias="color3Row">
    <ul class="x-list-template" xid="listTemplateUl4" componentname="ul(html)" id="undefined_ul2">
     <li xid="li4" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li4Click">
      <div class="text-center" bind-css="{'current':color3Row.val('id')==$model.classValue3Data.val('id')}" xid="div22">
       <span bind-text='val("name")' xid="span25"></span>
  </div> </li> </ul> </div> </div>
  <div class="clearfix" xid="div20"></div>
  <div xid="div25" bind-visible=" $model.unitData.getCount()&gt;1">
   <h4 class="text-black" xid="h46"><![CDATA[单位分类]]></h4>
   <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list5" data="unitData" bind-click="colorLiClick" dataItemAlias="color4Row">
    <ul class="x-list-template" xid="listTemplateUl5" componentname="ul(html)" id="undefined_ul2">
     <li xid="li5" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li4Click">
      <div class="text-center" bind-css="{'current':color4Row.val('id')==$model.unitData.val('id')}" xid="div26">
       <span bind-text='val("name")' xid="span26"></span></div> </li> </ul> </div> </div>
  <div class="clearfix" xid="div27"></div>
  <div xid="div28">
   <h4 class="text-black" xid="h47"><![CDATA[购买数量]]></h4>
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0px 0px 0px 0px;">
   <div class="x-col x-col-33" xid="col18">
    </div> 
   <div class="x-col" xid="col19">
    <div class="tb-numberOperation" xid="div30" style="text-align:right;">
     <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button11" icon="icon-android-add" onClick="addBtnClick">
      <i xid="i11" class="icon-android-add"></i>
      <span xid="span28"></span></a> 
     <span xid="span30" class="pull-right" style="line-height:0.8;height:22px;"><![CDATA[1]]></span>
     <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button12" icon="icon-android-remove" onClick="reductionBtnClick">
      <i xid="i11" class="icon-android-remove"></i>
      <span xid="span35"></span></a> </div> </div> </div></div></div> 
  </div> 
     <div class="x-panel-bottom" xid="bottom3">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup3">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="加入购物车" onClick="button4Click" xid="button5">
        <i xid="i5"></i>
        <span xid="span22">加入购物车</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="立即购买" xid="button6">
        <i xid="i9"></i>
        <span xid="span19">立即购买</span></a> </div> </div> </div> </div> </div></div>