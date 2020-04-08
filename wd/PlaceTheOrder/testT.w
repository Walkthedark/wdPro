<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <title>商品分类</title>
  <link rel="stylesheet" type="text/css" href="https://www.jq22.com/jquery/font-awesome.4.6.0.css"/>  
  <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"/>  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="categoryData" idColumn="cate_id" onCustomRefresh="categoryDataCustomRefresh"> 
      <column name="cate_id" type="String" xid="xid37"/>  
      <column name="cate_name" type="String" xid="xid38"/>  
      <column name="parent_id" type="String" xid="xid41"/>  
      <column name="children" type="String" xid="xid42"/> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classNameData" idColumn="id">
   <column name="id" type="String" xid="column6"></column>
   <column name="name" type="String" xid="column7"></column>
   <column name="cid" type="String" xid="column5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classValueData" idColumn="id">
   <column name="id" type="String" xid="column9"></column>
   <column name="name" type="String" xid="column10"></column>
   <column name="pid" type="String" xid="column8"></column>
   <column name="flag" type="String" xid="column10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classValue2Data" idColumn="id" confirmRefresh="false">
   <column name="id" type="String" xid="column12"></column>
   <column name="name" type="String" xid="column11"></column>
   <column name="pid" type="String" xid="column13"></column>
   <column name="flag" type="String" xid="column11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classValue3Data" idColumn="id">
   <column name="id" type="String" xid="column15"></column>
   <column name="name" type="String" xid="column14"></column>
   <column name="pid" type="String" xid="column16"></column>
   <column name="flag" type="String" xid="column9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="className2Data" idColumn="id">
   <column name="id" type="String" xid="column18"></column>
   <column name="name" type="String" xid="column19"></column>
   <column name="cid" type="String" xid="column17"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="className3Data" idColumn="id">
   <column name="id" type="String" xid="column21"></column>
   <column name="name" type="String" xid="column22"></column>
   <column name="cid" type="String" xid="column20"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="unitData" idColumn="id">
   <column name="origin_price" type="String" xid="column23"></column>
   <column name="id" type="String" xid="column24"></column>
   <column name="name" type="String" xid="column25"></column>
   <column name="price" type="String" xid="column26"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="specificationData" idColumn="id">
   <column name="id" type="String" xid="column29"></column>
   <column name="specificationName" type="String" xid="column30"></column>
   <column name="specificationThis" type="String" xid="column27"></column>
   <column name="specificationValue" type="String" xid="column28"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsDataM" idColumn="uuid">
   <rule xid="rule2">
    <col name="uuid" xid="ruleCol2">
     <defaultValue xid="default9">
      <expr xid="default10"></expr></defaultValue> 
     <calculate xid="calculate2">
      <expr xid="default11">justep.UUID.createUUID()</expr></calculate> </col> </rule> 
   <column label="商品ID" name="goods_id" type="String" xid="xid18"></column>
   <column name="goods_name" type="String" xid="xid19"></column>
   <column name="goods_img" type="String" xid="xid20"></column>
   <column name="goods_num" type="String" xid="xid21"></column>
   <column name="goods_sn" type="String" xid="xid22"></column>
   <column name="order_num" type="String" xid="xid23"></column>
   <column name="price" type="String" xid="xid24"></column>
   <column name="quantity" type="String" xid="xid25"></column>
   <column name="show_name" type="String" xid="xid26"></column>
   <column name="specification1_name" type="String" xid="xid27"></column>
   <column name="specification1_value" type="String" xid="xid28"></column>
   <column name="specification2_name" type="String" xid="xid29"></column>
   <column name="specification2_value" type="String" xid="xid30"></column>
   <column name="specification3_name" type="String" xid="xid31"></column>
   <column name="specification3_value" type="String" xid="xid32"></column>
   <column name="specification_id" type="String" xid="xid33"></column>
   <column name="unit_id" type="String" xid="xid34"></column>
   <column name="unit_name" type="String" xid="xid35"></column>
   <column name="unit" type="String" xid="xid36"></column>
   <column name="uuid" type="String" xid="xid95"></column>
   <column name="set_specs" type="String" xid="xid96"></column>
   <column name="specification" type="String" xid="xid97"></column></div></div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1"> 
    <div class="x-contents-content" xid="content1"> 
    
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div xid="div3">
   <div class="col-xs-10 pull-left tb-nopadding" xid="div4">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="height:40px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link " label="综合排序" xid="sortingBtn" icon="icon-arrow-down-b" onClick="sortingBtnClick">
      <span class="text-danger" xid="span3">综合排序</span>
      <i xid="i13" class="icon-arrow-down-b text-danger"></i></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="商品标签" xid="button1">
      <i xid="i1"></i>
      <span xid="span2">商品标签</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="促销状态" icon="icon-arrow-down-b" xid="screeningBtn" onClick="screeningBtnClick">
      <span xid="span7">促销状态</span>
      <i xid="i8" class="icon-arrow-down-b"></i></a> </div> </div> 
   <div class="col-xs-2 pull-left text-center tb-nopadding" xid="div5">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="listStyleBtn" icon="glyphicon glyphicon-th-list">
      <i xid="i2" class="glyphicon glyphicon-th-list"></i>
      <span xid="span2"></span></a> </div> </div> </div></div>
   <div class="x-panel-content" xid="content3"><div xid="div2" style="height:100%;width:100%;padding:3px 3px 3px 3px;"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1" style="height:100%;margin-right: 0px; "> 
        <div class="col col-xs-4" xid="col1" style="height:100%;padding-right: 5px;"><div xid="div1" id="test" style="background-color:#F4F3F4;height:auto;"></div>
  </div>  
        <div class="col col-xs-8  x-scroll-view" xid="col3" style="height:100%;padding-left: 3px;">
  
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div6" style="padding-right: 0px">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsDataM" limit="10">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="media" bind-click="li1Click">
       <div xid="div10" class="media-left">
        <img alt="" xid="image1" class="img-rounded media-object" bind-attr-src=' val("goods_img")' style="width:75px;" height="80px"></img></div> 
       <div class="media-body" xid="div14">
        <h5 class="media-heading lead text-black" xid="h51" style="color:black;font-size:16px;" bind-text=' val("goods_name")'></h5>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:2px;">
         <div class="x-col" xid="col9"></div></div> 
        <div class="text-muted" xid="div21">
         <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs " label="button" xid="button14" style="background-color:white;border-style:none none none none;border-width:thin thin thin thin;border-color:#C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0;color:#9F9F9F;font-size:14px;" bind-text='val("unit").length&gt;1?val("unit").length+"种规格选择":""' bind-visible='val("unit").length&gt;1'>
          <i xid="i23"></i>
          <span xid="span43"></span></a> </div> 
        <div class="text-muted" xid="div15">
         <span xid="span11" class="text-danger" style="font-size:12px;">￥</span>
         <span xid="span9" bind-text=' val("price")' class="text-danger" style="font-size:16px;"></span>
         <a component="$UI/system/components/justep/button/button" class="btn x-orange btn-xs pull-right" label="选择格" xid="addCart" style="border-color:#00BFFF #00BFFF #00BFFF #00BFFF;background-color:white;border-style:solid solid solid solid;border-width:thin thin thin thin;color:#00BFFF" bind-click="addCartClick" bind-visible=' val("set_specs")==1'>
          <i xid="i14"></i>
          <span xid="span36">选择格</span></a> 
         <div class="tb-numberOperation" xid="div26" style="text-align:right;" bind-visible=' val("set_specs")==0'>
          <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button10" icon="icon-android-add" target="oneColList" bind-click="addZBtnClick">
           <i xid="i22" class="icon-android-add"></i>
           <span xid="span41"></span></a> 
          <span xid="span22" class="pull-right" style="line-height:0.8;height:22px;" bind-text='val("goods_num")==null?"0":val("goods_num")'></span>
          <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button9" icon="icon-android-remove" bind-click="reductionZBtnClick">
           <i xid="i22" class="icon-android-remove"></i>
           <span xid="span42"></span></a> </div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div7">
    <span class="x-pull-up-label" xid="span16">加载更多...</span></div> </div></div> 
      </div></div></div>
   </div></div> 
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver1" position="bottom">
   <div class="x-popOver-overlay" xid="div16"></div>
   <div class="x-popOver-content" xid="div41" style="width:100%;height:70%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
     <div class="x-panel-content" xid="content4">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right tb-close text-black" icon="icon-ios7-close-outline" onClick="{operation:'popOver1.hide'}" xid="button15">
       <i xid="i25" class="icon-ios7-close-outline"></i>
       <span xid="span46"></span></a> 
      <img alt="" class="img-thumbnail tb-colorImg" bind-attr-src=' $model.goodsDataM.val("goods_img")' xid="image4"></img>
      <div class="tb-title" xid="div37">
       <span class="text-danger h4" xid="span21">￥</span>
       <span class="text-danger h4" xid="span48" bind-text='$model.goodsDataM.val("price")'></span>
       <div xid="div40"></div>
       <span xid="span50" bind-text='$model.goodsDataM.val("goods_name")'></span>
       <h5 xid="h56" class="text-black">请选择规格</h5></div> 
      <div xid="div27" style="height:30px;width:100%;"></div>
      <div class="panel-body" xid="div36" style="padding-top: 3px">
       <div xid="div42" bind-visible=" $model.classNameData.getCount() !=0">
        <h4 class="text-black" xid="h43" bind-text=' $model.classNameData.val("name") +"分类"'></h4>
        <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list5" data="classValueData" dataItemAlias="colorRow">
         <ul class="x-list-template" xid="listTemplateUl3" componentname="ul(html)" id="undefined_ul2">
          <li xid="li7" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li7Click">
           <div class="text-center" bind-css=" val(&quot;flag&quot;)==0?{'current2':colorRow.val('id')==$model.classValueData.val('id')}:{'current':colorRow.val('id')==$model.classValueData.val('id')}" xid="div38" bind-disable=' val("flag") !=1' bind-enable=' val("flag") ==1'>
            <span bind-text='val("name")' xid="span52"></span></div> </li> </ul> </div> </div> 
       <div class="clearfix" xid="div44"></div>
       <div xid="div43" bind-visible=" $model.className2Data.getCount() !=0">
        <h4 class="text-black" xid="h44" bind-text=' $model.className2Data.val("name") +"分类"'></h4>
        <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list7" data="classValue2Data" dataItemAlias="color2Row">
         <ul class="x-list-template" xid="listTemplateUl3" componentname="ul(html)" id="undefined_ul2">
          <li xid="li6" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li6Click">
           <div class="text-center " bind-css=" val(&quot;flag&quot;)==0?{'current2':color2Row.val('id')==$model.classValue2Data.val('id')}:{'current':color2Row.val('id')==$model.classValue2Data.val('id')}" xid="div39" bind-style="{ &quot;color&quot;: val(&quot;flag&quot;)==0?'#8E8E8E':'#4D4D4D', }">
            <span bind-text='val("name")' xid="span44"></span></div> </li> </ul> </div> </div> 
       <div class="clearfix" xid="div28"></div>
       <div xid="div16" bind-visible=" $model.className3Data.getCount() !=0">
        <h4 class="text-black" xid="h41" bind-text=' $model.className3Data.val("name") +"分类"'></h4>
        <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list6" data="classValue3Data" dataItemAlias="color3Row">
         <ul class="x-list-template" xid="listTemplateUl4" componentname="ul(html)" id="undefined_ul2">
          <li xid="li8" class="col col-xs-4" componentname="li(html)" id="undefined_li2" bind-click="li8Click">
           <div class="text-center" bind-css="val(&quot;flag&quot;)==0?{'current2':color3Row.val('id')==$model.classValue3Data.val('id')}:{'current':color3Row.val('id')==$model.classValue3Data.val('id')}" xid="div29" bind-style="{ &quot;color&quot;: val(&quot;flag&quot;)==0?'#8E8E8E':'#4D4D4D', }">
            <span bind-text='val("name")' xid="span301"></span></div> </li> </ul> </div> </div> 
       <div class="clearfix" xid="div32"></div>
       <div xid="div30" bind-visible=" $model.unitData.getCount()&gt;1">
        <h4 class="text-black" xid="h46">单位分类</h4>
        <div component="$UI/system/components/justep/list/list" class="x-list tb-colorList" xid="list5" data="unitData" dataItemAlias="color4Row">
         <ul class="x-list-template" xid="listTemplateUl5" componentname="ul(html)" id="undefined_ul2">
          <li xid="li9" class="col col-xs-4" componentname="li(html)" id="undefined_li2">
           <div class="text-center" bind-css="{'current':color4Row.val('id')==$model.unitData.val('id')}" xid="div31">
            <span bind-text='val("name")' xid="span45"></span></div> </li> </ul> </div> </div> 
       <div class="clearfix" xid="div27"></div>
       <div xid="div28">
        <h4 class="text-black" xid="h47">购买数量</h4>
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0px 0px 0px 0px;">
         <div class="x-col x-col-33" xid="col18"></div>
         <div class="x-col" xid="col19">
          <div class="tb-numberOperation" xid="div30" style="text-align:right;">
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button19" icon="icon-android-add" onClick="button19Click">
            <i xid="i24" class="icon-android-add"></i>
            <span xid="span21"></span></a> 
           <span xid="span30" class="pull-right" style="line-height:0.8;height:22px;">1</span>
           <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-xs btn-only-icon pull-right" label="button" xid="button17" icon="icon-android-remove" onClick="button17Click">
            <i xid="i24" class="icon-android-remove"></i>
            <span xid="span49"></span></a> </div> </div> </div> </div> </div> </div> 
     <div class="x-panel-bottom" xid="bottom1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified tb-shopping" tabbed="true" xid="buttonGroup4">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="确定" onClick="button4Click" xid="button16">
        <i xid="i26"></i>
        <span xid="span47">确定</span></a> 
       </div> </div> </div> </div> </div></div>
