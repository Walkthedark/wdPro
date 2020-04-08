<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:264px;left:458px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="default6"></column>
  <column label="店铺ID" name="fShopID" type="String" xid="xid3"></column>
  <column label="标题" name="fTitle" type="String" xid="xid6"></column>
  <column label="图片" name="fImg" type="String" xid="xid7"></column>
  <column label="价格" name="fPrice" type="Float" xid="xid8"></column>
  <column label="规格长度" name="fSpec" type="Integer" xid="xid9"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="conditionData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="名称" name="fName" type="String" xid="xid2"/>  
      <column label="状态" name="fState" type="Integer" xid="xid4"/>  
      <data xid="default1">[{"id":"1","fName":"综合排序","fState":1},{"id":"2","fName":"价格升序","fState":0},{"id":"3","fName":"价格降序","fState":0}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="discountData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid5"/>  
      <column label="名称" name="fName" type="String" xid="xid11"/>  
      <column label="状态" name="fState" type="Integer" xid="xid14"/>  
      <data xid="default2">[{"id":"1","fName":"免运费","fState":0},{"id":"2","fName":"天猫","fState":0},{"id":"3","fName":"全球购","fState":0},{"id":"4","fName":"消费者保障","fState":0}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid12"/>  
      <column label="名称" name="fName" type="String" xid="xid13"/>  
      <column label="状态" name="fState" type="Integer" xid="xid15"/>  
      <data xid="default3">[{"id":"1","fName":"3C数码配件市场","fState":0},{"id":"2","fName":"品牌手表/流行手表","fState":0},{"id":"3","fName":"女装","fState":0}]</data>
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="backData" idColumn="isBack"><column label="是否显示" name="isBack" type="String" xid="xid16"></column>
  <data xid="default4">[{&quot;isBack&quot;:&quot;1&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="sortingPopOver" anchor="sortingBtn" direction="left-bottom" opacity="0.7" dismissible="true">
   <div class="x-popOver-overlay" xid="div4"></div>
   <div class="x-popOver-content tb-sorting" xid="div11">
    <div component="$UI/system/components/justep/list/list" class="x-list" data="conditionData" bind-click="sortingListClick" xid="conditionList" dataItemAlias="conditionRow">
     <ul class="x-list-template" xid="ul1">
      <li class="list-group-item" bind-css="{'current':conditionRow.val('fState')==1}" xid="li2">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right tb-liBtn" label="button" icon="icon-checkmark" xid="button10">
        <i xid="i4" class="icon-checkmark text-danger"></i>
        <span xid="span29"></span></a> 
       <span bind-text='val("fName")' xid="span17"></span></li> </ul> </div> </div> </div><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="screeningPopOver" direction="right-bottom" opacity="0.7" anchor="listStyleBtn" dismissible="true">
   <div class="x-popOver-overlay" xid="div8"></div>
   <div class="x-popOver-content tb-sorting" xid="div9">
    <div xid="div12">
     <div class="list-group-item" xid="div26">
      <span class="pull-left" xid="span12">价格区间（元）</span>
      <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block" xid="price1" style="width:30%;"></input>
      <span class="pull-left" xid="span25">－</span>
      <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block" xid="price2" style="width:30%;"></input>
      <div class="clearfix" xid="div27"></div></div> 
     <div class="list-group-item" xid="div30">
      <div xid="div31">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon pull-right text-black" label="button" icon="icon-chevron-down" xid="button3">
        <i xid="i10" class="icon-ios7-arrow-down icon-chevron-down"></i>
        <span xid="span34"></span></a> 
       <span class="text-black" xid="span31">分类：</span>
       <span class="text-danger" xid="span32">所有分类</span></div> 
      <div component="$UI/system/components/justep/list/list" class="x-list tb-typelist text-center" data="classData" xid="classList" bind-click="classClick" dataItemAlias="classRow">
       <ul class="x-list-template" xid="ul5" componentname="ul(html)">
        <li xid="li3" class="col col-xs-4" componentname="li(html)">
         <h5 class="text-black" bind-text="ref('fName')" bind-css="{'current':classRow.val('fState')==1 &amp;&amp; classRow.val('id')==$model.classData.val('id')}" xid="h52"></h5></li> </ul> </div> 
      <div class="clearfix" xid="div32"></div></div> 
     <div class="text-center panel-body" xid="div33">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1" label=" 重 置 " xid="resetBtn" onClick="resetBtnClick">
       <i xid="i9"></i>
       <span xid="span31">重 置</span></a> </div> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg btn-block tb-okBtn" label="确认" xid="button3" onClick="screeningBtnClick" style="background-color:#f66;">
      <i xid="i5"></i>
      <span xid="span25" class="text-white">确认</span></a> </div> </div> </div><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" position="top" opacity="0.5" xid="selectReturnPopOver" anchor="returnCart">
   <div class="x-popOver-overlay" xid="div13"></div>
   <div class="x-popOver-content" xid="div17" style="background-color:#fff;height:100%;width:90%;"><div xid="div18"><div class="media" xid="media1" style="border:0">
   <div class="media-left" xid="mediaLeft1">
    <img src="$UI/wd/main/image/w4.jpg" alt="" xid="image3" style="width:80px;height:100px;"></img></div> 
   <div class="media-body" xid="mediaBody1" style="padding:0 2px 0 0;box-sizing:border-box;">
    <h4 class="media-heading" xid="h41" style="color:#666"><![CDATA[四川特产 休闲零食 棒棒娃牛肉干酱香牛肉800g 新老包装随机发放]]></h4>
  <div xid="div19"><span xid="span2" class="text-danger" style="font-size:18px"><![CDATA[¥]]></span>
  <span xid="span5" class="text-danger" style="font-size:18px"><![CDATA[20]]></span></div></div> </div>
  <div xid="div21" style="padding:4px 6px;box-sizing:border-box;"><div xid="div22" style="padding:2px;"><span xid="span18"><![CDATA[大小]]></span></div>
  <div xid="div23" style="padding:2px;">
   <span xid="span19" style="border-radius:10px;padding:3px 12px;display:inline-block;background-color:#f66;color:#fff;"><![CDATA[200g]]></span></div>
  <div xid="div24" style="padding:2px;">
   <span xid="span20"><![CDATA[单位]]></span></div>
  <div xid="div25" style="padding:2px;">
   <span xid="span22" style="border-radius:10px;padding:3px 12px;display:inline-block;background-color:#f66;color:#fff;"><![CDATA[件]]></span></div>
  <div xid="div28" style="padding:2px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <span component="$UI/system/components/justep/select/checkboxGroup" class="x-checkbox-group x-checkbox-orange x-checkbox-group-sm pull-left x-checkboxs x-edit" xid="checkboxGroup1" style="width:8%;"></span><label class="center-block x-label" xid="label1" style="width:92%;"><![CDATA[启用多选]]></label>
   </div></div>
  <div xid="div29"><div xid="div37" style="display:inline-block;width:70%;padding:0 5px;">
  
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="true" xid="buttonGroup3" style="display:flex;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm btn-only-icon" xid="add" style="border:0;background-color:#fff;flex:1;padding: 9px 10px;" icon="icon-android-add" onClick="addClick">
    <i xid="i19" class="icon-android-add"></i>
    <span xid="span27"></span></a> 
   <input component="$UI/system/components/justep/input/input" class="form-control" xid="returnCount" style="flex:3;border-top:0;border-bottom:0;text-align:center;" placeHolder="0"></input><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm btn-only-icon" style="border:0;background-color:#fff;flex:1;padding: 9px 10px;" icon="icon-android-remove" xid="reduce" onClick="reduceClick">
    <i xid="i20" class="icon-android-remove"></i>
    <span xid="span28"></span></a> 
  </div>
  </div><span xid="span30" style="display:inline-block;width:8%;"><![CDATA[件]]></span></div></div></div>
  <div class="btn-group btn-group-justified x-card" component="$UI/system/components/fragment/bottomNavBar" xid="bottomNavBar1" style="position:absolute;bottom:0;">
   
   
   
   <a class="btn btn-icon-top btn-only-label" component="$UI/system/components/justep/button/button" label="取消" xid="button14">
    <i class="icon" xid="i24"></i>
    <span xid="span1">取消</span></a> 
   <a class="btn btn-link btn-icon-top btn-only-label" component="$UI/system/components/justep/button/button" label="确定" xid="button15" style="color:#fff;background-color:#f66;" onClick="button15Click">
    <i class="icon" xid="i25"></i>
    <span xid="span1">确定</span></a> </div></div></div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="88"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar tb-index" style="background-color:#47D1D1;"> 
        <div class="x-titlebar-left" xid="div1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="搜索" xid="button6" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i6" class="icon-chevron-left"/>  
            <span xid="span6">搜索</span> 
          </a> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-top" label="分类" xid="selectClass" icon="linear linear-list" style="margin-left:10px;font-size:12px;">
   <i xid="i3" class="linear linear-list" style="font-size:16px;"></i>
   <span xid="span3">分类</span></a></div>  
        <div class="x-titlebar-title" xid="div20" bind-click="searchBtnClick"><![CDATA[选择商品]]></div>  
        <div class="x-titlebar-right reverse" xid="div3"> 
          
  <div xid="div2" style="position:relative;top:0;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="returnCart" icon="linear linear-cart">
   <i xid="i15" class="linear linear-cart"></i>
   <span xid="span8"></span></a>
  <span class="badge" xid="badge1" style="position:absolute;top:5px;right:0px;background-color:#F8A799;" bind-if="false">20</span></div><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="searchReturn" icon="linear linear-magnifier" style="font-size:18px;">
   <i xid="i11" class="linear linear-magnifier"></i>
   <span xid="span4"></span></a></div> 
      </div>  
      <div> 
        <div class="pull-left col-xs-12 tb-nopadding"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"
            style="height:40px;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="价格" xid="sortingBtn" icon="icon-arrow-down-b" onClick="sortingBtnClick"> 
              <i xid="i13" class="icon-arrow-down-b" />  
              <span>价格</span> 
            </a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="综合" xid="colligateBtn" target="oneColList" icon="icon-arrow-down-b"> 
              <i xid="i1" class="icon-arrow-down-b text-danger" />  
              <span xid="span1">综合</span> 
            </a>  
              
            <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="商品编码" xid="sortingNumBtn" icon="icon-arrow-down-b" onClick="sortingBtnClick">
   <i xid="i17" class="icon-arrow-down-b"></i>
   <span xid="span14">商品编码</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="筛选" icon="icon-arrow-down-b" xid="screeningBtn" onClick="screeningBtnClick"> 
              <i xid="i8" class="icon-arrow-down-b"/>  
              <span xid="span7">筛选</span> 
            </a> 
          </div> 
        </div>  
        </div> 
    </div>  
    <div xid="content" class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="pages" onActiveChanged="pagesActiveChanged" wrap="true" swipe="false" slidable="false"> 
        <div class="x-contents-content" xid="oneColList"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div5"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
              <span class="x-pull-down-label" xid="span15">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div6"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="goodsData" limit="6" bind-click="listClick"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="media"> 
                    <div xid="div10" class="media-left"> 
                      <img alt="" xid="image1" class="img-rounded media-object"
                        bind-attr-src="$model.getImageUrl(val(&quot;fImg&quot;))" style="width:75px;"
                        height="80px"/> 
                    </div>  
                    <div class="media-body" xid="div14"> 
                      <h5 class="media-heading lead text-black" bind-text="ref('fTitle')"
                        xid="h51" style="font-size:12px;"/>  
                      <div class="text-muted" xid="div15"> 
                        <span xid="span10" bind-text=' ref("fSpec")'></span><span xid="span9"><![CDATA[个规格可选]]></span> 
                      </div>  
                      <div class="text-muted" xid="div16"> 
                        <span xid="span11" class="text-danger"><![CDATA[¥]]></span><span xid="span21" bind-text=' ref("fPrice")' class="text-danger"/>  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs pull-right" label="退货" xid="returnGoodsBtn" style="color:#666;border-radius:5px;border:1px solid #e6e7e8;" onClick="returnGoodsBtnClick">
   <i xid="i16"></i>
   <span xid="span13">退货</span></a></div> 
                    </div> 
                  </li> 
                </ul> 
              </div>
            </div>  
            <div class="x-content-center x-pull-up" xid="div7"> 
              <span class="x-pull-up-label" xid="span16">加载更多...</span> 
            </div> 
          </div> 
        </div>  
        </div> 
    </div> 
  </div> 
</div>