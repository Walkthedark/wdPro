<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:148px;top:20px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="default6"/>  
      <column label="店铺ID" name="fShopID" type="String" xid="xid3"/>  
      <column label="标题" name="fTitle" type="String" xid="xid6"/>  
      <column label="图片" name="fImg" type="String" xid="xid7"/>  
      <column label="价格" name="fPrice" type="Float" xid="xid8"/>  
      <column label="邮费" name="fSpec" type="String" xid="xid9"/>  
      <column label="月销量" name="fStock" type="Integer" xid="xid10"/>  
      <column name="fUnit" type="String" xid="xid17"/>
    </div>  
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
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="backData" idColumn="isBack">
      <column label="是否显示" name="isBack" type="String" xid="xid16"/>  
      <data xid="default4">[{"isBack":"1"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsDataM" idColumn="goods_id" onCustomRefresh="goodsDataCustomRefresh">
      <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
  <column name="goods_img" type="String" xid="xid19"></column>
  <column name="specification_id" type="String" xid="xid20"></column>
  <column name="cost_price" type="String" xid="xid21"></column>
  <column name="goods_name" type="String" xid="xid22"></column>
  <column name="specification1_name" type="String" xid="xid23"></column>
  <column name="specification1_value" type="String" xid="xid24"></column>
  <column name="specification2_name" type="String" xid="xid25"></column>
  <column name="specification2_value" type="String" xid="xid26"></column>
  <column name="specification3_name" type="String" xid="xid27"></column>
  <column name="specification3_value" type="String" xid="xid28"></column>
  <column name="unit" type="String" xid="xid29"></column>
  <column name="price" type="String" xid="xid30"></column>
  <column name="set_specs" type="String" xid="xid31"></column>
  <column name="goods_num" type="String" xid="xid32"></column>
  </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classDataM" idColumn="CATE_ID"><column name="CATE_ID" type="String" xid="xid39"></column>
  <column name="CATE_NAME" type="String" xid="xid40"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="sortingPopOver" anchor="sortingBtn" direction="left-bottom" opacity="0.7"
    dismissible="true"> 
    <div class="x-popOver-overlay" xid="div4"/>  
    <div class="x-popOver-content tb-sorting" xid="div11"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        data="conditionData" bind-click="sortingListClick" xid="conditionList" dataItemAlias="conditionRow"> 
        <ul class="x-list-template" xid="ul1"> 
          <li class="list-group-item" bind-css="{'current':conditionRow.val('fState')==1}" bind-click="li2Click"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right tb-liBtn"
              label="button" icon="icon-checkmark"> 
              <i xid="i4" class="icon-checkmark text-danger"/>  
              <span xid="span29"/> 
            </a>  
            <span bind-text="val(&quot;fName&quot;)"/> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="screeningPopOver" direction="right-bottom" opacity="0.7" anchor="listStyleBtn"
    dismissible="true"> 
    <div class="x-popOver-overlay" xid="div4"/>  
    <div class="x-popOver-content tb-sorting"> 
      <div> 
        <div class="list-group-item" xid="div26"> 
          <span class="pull-left" xid="span12">价格区间（元）</span>  
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block"
            xid="price1" style="width:30%;" dataType="Float" format="0,000.00"/>  
          <span class="pull-left" xid="span25">－</span>  
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm pull-left center-block"
            xid="price2" style="width:30%;" dataType="Float" format="0,000.00"/>  
          <div class="clearfix" xid="div27"/> 
        </div>  
        <div class="list-group-item" xid="div30"> 
          <div xid="div31"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon pull-right text-black"
              label="button" icon="icon-chevron-down" xid="button3"> 
              <i xid="i10" class="icon-ios7-arrow-down icon-chevron-down"/>  
              <span xid="span34"/> 
            </a>  
            <span class="text-black" xid="span31">分类：</span>  
            <span class="text-danger" xid="span32">所有分类</span> 
          </div>  
          <div component="$UI/system/components/justep/list/list" class="x-list tb-typelist text-center"
            data="classDataM" xid="classList" bind-click="classClick" dataItemAlias="classRow"> 
            <ul class="x-list-template" xid="ul5" componentname="ul(html)"> 
              <li xid="li3" class="col col-xs-4" componentname="li(html)" bind-style="{'listxz':$model.classDataM.val(&quot;CATE_ID&quot;)==$object.val('CATE_ID')}" bind-click="li3Click"> 
                <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm te" label="button" xid="button4" bind-css="{'listxz':$model.classDataM.val(&quot;CATE_ID&quot;)==$object.val('CATE_ID')}" style="width:90%;margin-top:5px;color:#535353;" bind-text=' val("CATE_NAME")'>
   <i xid="i15"></i>
   <span xid="span20"></span></a></li> 
            </ul> 
          </div>  
          <div class="clearfix" xid="div32"/> 
        </div>  
        <div class="text-center panel-body" xid="div33"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm tb-resetBtn x-flex1"
            label=" 重 置 " xid="resetBtn" onClick="resetBtnClick"> 
            <i xid="i9"/>  
            <span xid="span31">重 置</span> 
          </a> 
        </div>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg btn-block tb-okBtn"
          label="确认" xid="button3" style="background-color:#f66;" onClick="button3Click"> 
          <i xid="i5"/>  
          <span xid="span25" class="text-white">确认</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="88"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" style="background-color:#47D1D1;"> 
        <div class="x-titlebar-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top"
            label="分类" xid="classBtn" icon="linear linear-list" style="font-size:small;"
            onClick="classBtnClick"> 
            <i xid="i11" class="linear linear-list"/>  
            <span xid="span10">分类</span>
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title1"> 
          <input component="$UI/system/components/justep/input/input" class="form-control"
            xid="input1" style="margin-top:-5px;height:33px;" placeHolder="请输入商品"/>
        </div>  
        <div class="x-titlebar-right reverse" xid="right1" style="position:relative;top:0px;right:0px;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            xid="cart" icon="linear linear-cart" onClick="cartClick"> 
            <i xid="i6" class="linear linear-cart"/>  
            <span xid="span6"/>
          </a>  
          <span class="badge" xid="badge1" style="display:none;position:absolute;top:5px;right:5px;background-color:#F8A799;">20</span>
        </div> 
      </div>
      <div> 
        <div class="col-xs-10 pull-left tb-nopadding"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"
            style="height:40px;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="综合排序" xid="sortingBtn" icon="icon-arrow-down-b" onClick="sortingBtnClick"> 
              <i xid="i13" class="icon-arrow-down-b text-danger"/>  
              <span class="text-danger">综合排序</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="销量优先" xid="button1"> 
              <i xid="i1"/>  
              <span xid="span1">销量优先</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="筛选" icon="icon-arrow-down-b" xid="screeningBtn" onClick="screeningBtnClick"> 
              <i xid="i8" class="icon-arrow-down-b"/>  
              <span xid="span7">筛选</span> 
            </a> 
          </div> 
        </div>  
        <div class="col-xs-2 pull-left text-center tb-nopadding"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              xid="listStyleBtn" icon="glyphicon glyphicon-th-list" onClick="listStyleClick"> 
              <i xid="i2" class="glyphicon glyphicon-th-list"/>  
              <span xid="span2"/> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div xid="content" class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="pages" onActiveChanged="pagesActiveChanged" wrap="true" swipe="false"
        slidable="false"> 
        <div class="x-contents-content" xid="oneColList"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" onPullUp="scrollView1PullUp"> 
            <div class="x-content-center x-pull-down container" xid="div5"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
              <span class="x-pull-down-label" xid="span15">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div6"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="goodsDataM" limit="10" > 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="media" bind-click="li1Click"> 
                    <div xid="div10" class="media-left"> 
                      <img alt="" xid="image1" class="img-rounded media-object"
                        height="80px" bind-attr-src=' val("goods_img")' style="width:80px;"/> 
                    </div>  
                    <div class="media-body" xid="div14"> 
                      <h5 class="media-heading lead text-black" bind-text=' val("goods_name")'
                        xid="h51" style="color:black;font-size:16px;"/>  
                      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:2px;">
   <div class="x-col" xid="col2"></div>
   </div><div class="text-muted" xid="div16"> 
                        <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button2" style="background-color:white;border-style:none none none none;border-width:thin thin thin thin;border-color:#C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0;color:#9F9F9F;font-size:14px;" bind-text='val("unit").length&gt;1?val("unit").length+"种规格选择":""' bind-visible='val("unit").length&gt;1'>
   <i xid="i12"></i>
   <span xid="span13"></span></a></div><div class="text-muted" xid="div15"> 
                        <span xid="span11" class="text-danger" style="font-size:12px;">￥</span>  
                        <span xid="span9" bind-text='val("price")' class="text-danger"
                          style="font-size:16px;"/> 
                      
  <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs pull-right" label="请选择规格" xid="addCart" icon="icon-ios7-cart" style="background-color:#F7430C;border-color:#F7430C;" bind-visible='val("unit").length&gt;1'> 
                          <i xid="i14" class="icon-ios7-cart" />  
                          <span xid="span36">请选择规格</span>
                        </a>
  <div class="tb-numberOperation" xid="div21" style="text-align:right;" bind-visible='val("unit").length&lt;=1'>
   <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button11" icon="icon-android-add" target="oneColList" bind-click="addBtnClick">
    <i xid="i16" class="icon-android-add"></i>
    <span xid="span28"></span></a> 
   <span xid="span30" class="pull-right" style="line-height:0.8;height:22px;" bind-text='val("goods_num")==null?"0":val("goods_num")'><![CDATA[]]></span>
   <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button12" icon="icon-android-remove" bind-click="reductionBtnClick">
    <i xid="i16" class="icon-android-remove"></i>
    <span xid="span35"></span></a> </div></div>  
                       
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
        <div class="x-contents-content  x-scroll-view" xid="twoColList" style="background-color:#F0EFF2;"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView2" onPullUp="scrollView1PullUp"> 
            <div class="x-content-center x-pull-down container" xid="div9"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"/>  
              <span class="x-pull-down-label" xid="span5">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div17"> 
              <div class="col-xs-6 tb-twoColList div-radio" style="padding:0px 0px 0px 0px;"> 
                <div component="$UI/system/components/justep/list/list" class="x-list "
                  data="goodsDataM" limit="3" filter="$row.index()%2==0" xid="list2"
               disablePullToRefresh="false" disableInfiniteLoad="false"> 
                  <ul class="x-list-template" xid="ul3"> 
                    <li xid="li4" style="width:100%;height:220px;border-radius:10px"> 
                      <div xid="div3"></div><div xid="div8" style="width:100%;"> 
                        <div xid="div1" style="padding:0px 0px 0px 0px;"><img src="" alt="" bind-attr-src=' val("goods_img")' style="width:100%;height:130px;border-radius:10px 10px 0 0;" xid="image2" height="80px" class="img-responsive"/></div>  
                        <div xid="div19" style="padding:5px 5px 5px 20px;"> 
                          <h5 bind-text=' val("goods_name")' class="text-black"
                            xid="h52" style="color:#666;font-size:12px;"/>  
                          <div xid="div13" class="text-muted"> 
                            <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button7" style="background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#F7430C #F7430C #F7430C #F7430C;color:#F7430C;font-size:10px;" bind-text=' val("specification1_value")' bind-visible=' val("specification1_value") !=""'>
   <i xid="i20"></i>
   <span xid="span22"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button6" style="background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#F7430C #F7430C #F7430C #F7430C;color:#F7430C;font-size:10px;" bind-text=' val("specification2_value")' bind-visible=' val("specification2_value") !=""'>
   <i xid="i19"></i>
   <span xid="span24"></span></a></div><div xid="div12"> 
                            <span class="text-danger" xid="span3">￥</span>  
                            <span bind-text='val("cost_price")' class="text-danger"
                              xid="span4" style="font-size:16px;"/> 
                          </div>  
                           
                        </div> 
                      </div> 
                    </li> 
                  </ul> 
                </div> 
              </div>  
              <div class="col-xs-6 tb-twoColList"> 
                <div component="$UI/system/components/justep/list/list" class="x-list"
                  data="goodsDataM" limit="3"  xid="list4" filter="$row.index()%2==1"> 
                  <ul class="x-list-template" xid="ul4"> 
                    <li xid="li5" style="width:100%;height:210px;border-radius:10px"> 
                      <div xid="div24" style="width:100%;height:100%;"> 
                        <img src="" alt="" bind-attr-src=' val("goods_img")'
                          class="img-responsive" style='width:100%;height:130px;border-radius:10px 10px 0 0;' xid="image3"/>  
                        <div xid="div25" style="padding:5px 5px 5px 20px;"> 
                          <h5 bind-text=' val("goods_name")' class="text-black"
                            xid="h53" style="color:#666;font-size:12px;"/>  
                          <div xid="div22" class="text-muted"> 
                            <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button9" style="background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#F7430C #F7430C #F7430C #F7430C;color:#F7430C;font-size:10px;" bind-text=' val("specification1_value")' bind-visible=' val("specification1_value") !=""'>
   <i xid="i22"></i>
   <span xid="span26"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button8" style="background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#F7430C #F7430C #F7430C #F7430C;color:#F7430C;font-size:10px;" bind-text=' val("specification2_value")' bind-visible=' val("specification2_value") !=""'>
   <i xid="i21"></i>
   <span xid="span27"></span></a></div><div xid="div23"> 
                            <span class="text-danger" xid="span23" style="font-size:12px;">￥</span>  
                            <span bind-text='val("cost_price")' class="text-danger"
                              xid="span19" style="font-size:16px;"/> 
                          </div>  
                           
                        </div> 
                      </div> 
                    </li> 
                  </ul> 
                </div> 
              </div>  
              <div class="clearfix" xid="div2"/> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div18"> 
              <span class="x-pull-up-label" xid="span8">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
