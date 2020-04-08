<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:351px;top:42px;"
    onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid2"/>  
      <column label="图片" name="fImgUrl" type="String" xid="xid1"/> 
    </div>  
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
      xid="goodsData" idColumn="id"> 
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
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver" position="bottom"> 
    <div class="x-popOver-overlay" xid="div2"/>  
    <div class="x-popOver-content" xid="div3"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black"
        icon="icon-ios7-close-outline" onClick="{operation:'popOver.hide'}"> 
        <i xid="i17" class="icon-ios7-close-outline"/>  
        <span xid="span35"/> 
      </a>  
      <img src="$UI/demo/taobao/detail/img/pic1.png" alt="" class="img-thumbnail tb-colorImg"/>  
      <div class="tb-title"> 
        <span class="text-danger h4"><![CDATA[￥]]></span>  
        <span bind-text="goodsData.ref('fPrice')" class="text-danger h4"><![CDATA[]]></span>  
        <div xid="div7"/>  
        <span><![CDATA[库存]]></span>  
        <span bind-text="goodsData.ref('fRecord')"/>  
        <span xid="span47"><![CDATA[件]]></span>  
        <h5 xid="h52" class="text-black"><![CDATA[请选择颜色分类]]></h5> 
      </div>  
      <div class="panel-body"> 
        <h4 class="text-black"><![CDATA[颜色分类]]> </h4>  
        <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList"
          xid="colorList" data="colorData" bind-click="colorLiClick" dataItemAlias="colorRow"> 
          <ul class="x-list-template" xid="ul2" componentname="ul(html)" id="undefined_ul2"> 
            <li xid="li2" class="col col-xs-6" componentname="li(html)" id="undefined_li2"> 
              <div class="text-center" bind-css="{'current':colorRow.val('fState')==1}"> 
                <span bind-text="ref('fColor')"/> 
              </div> 
            </li> 
          </ul> 
        </div>  
        <div class="clearfix"/> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block tb-colorOk"
        label="确定" onClick="{operation:'popOver.hide'}" bind-visible='$model.stateData.val("state")==0'> 
        <i xid="i18"/>  
        <span xid="span50">确定</span> 
      </a>  
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-shopping"
        tabbed="true" xid="buttonGroup4" bind-visible='$model.stateData.val("state")==1'>
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
          label="加入购物车"> 
          <i xid="i16"/>  
          <span xid="span34">加入购物车</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
          label="立即购买"> 
          <i xid="i19"/>  
          <span xid="span37">立即购买</span>
        </a>
      </div>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card tb-trans x-has-iosstatu"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-box" xid="titleBar" style="background-color:#47D1D1;" title="商品详情">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="backBtn" icon="icon-chevron-left" onClick="backBtnClick"> 
          <i xid="i6" class="icon-chevron-left" />  
          <span xid="span6">关闭</span> 
        </a></div>
   <div class="x-titlebar-title" xid="title1">商品详情</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content x-cards"> 
        
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
            <h4 xid="h41" class=" text-black" bind-text="goodsData.ref('fTitle')"><![CDATA[]]></h4>  
            <div xid="div4"> 
              <span xid="span17" class="text-danger h3"><![CDATA[￥]]></span>  
              <span xid="span29" bind-text="goodsData.ref('fPrice')" class="text-danger h3"/> 
            <span xid="span5" class="text-danger"><![CDATA[/]]></span>
  <span xid="span9" class="text-danger"><![CDATA[单位]]></span></div>  
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
            <div bind-html="$model.goodsData.val(&quot;fDetail&quot;)"/> 
          </div>  
          <div class="x-contents-content panel-body" xid="parameterContent"> 
            <div xid="div1" style="height:100px;"><span xid="span2"><![CDATA[暂无附件]]></span></div></div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"> 
        <div class="col col-xs-5 tb-nopadding" xid="col3"> 
          </div>  
        <div class="col col-xs-7 tb-nopadding" xid="col6"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="加入购物车" xid="joinCartBtn" icon="icon-radio-waves" onClick="joinCartBtnClick"> 
              <i xid="i8" class="icon-radio-waves icon"/>  
              <span xid="span7">加入购物车</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="立即购买" xid="buyBtn" icon="icon-android-display" onClick="buyBtnClick"> 
              <i xid="i7" class="icon-android-display icon"/>  
              <span xid="span8">立即购买</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>