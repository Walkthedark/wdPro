<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="checkData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <column name="col6" type="String" xid="xid7"/>  
      <column name="col7" type="String" xid="xid8"/>  
      <column name="col8" type="String" xid="xid9"/>  
      <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;col1&quot;:&quot;../TheSaleEnterprise/main/Img/001.png&quot;,&quot;col2&quot;:&quot;杨洋1&quot;,&quot;col3&quot;:&quot;无任务&quot;,&quot;col4&quot;:&quot;1个延迟&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;col1&quot;:&quot;../TheSaleEnterprise/main/Img/001.png&quot;,&quot;col2&quot;:&quot;2张三&quot;,&quot;col3&quot;:&quot;11个任务&quot;,&quot;col4&quot;:&quot;&quot;,&quot;col5&quot;:&quot;&quot;,&quot;col6&quot;:&quot;&quot;,&quot;col7&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;col1&quot;:&quot;../TheSaleEnterprise/main/Img/001.png&quot;,&quot;col2&quot;:&quot;李四&quot;,&quot;col3&quot;:&quot;1个任务&quot;,&quot;col4&quot;:&quot;1个延迟&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="InData" idColumn="id"> 
      <column name="id" type="String" xid="column1"/>  
      <column name="name" type="String" xid="column2"/>  
      <column name="address" type="String" xid="column3"/>  
      <column name="state" type="String" xid="column4"/>  
      <column name="code" type="String" xid="column5"/>  
      <column name="daogou" type="String" xid="column6"/>  
      <column name="zhongdian" type="String" xid="column7"/>  
      <column name="time" type="String" xid="column8"/>  
      <column name="col8" type="String" xid="column9"/>  
      <column name="col9" type="String" xid="column10"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;万家公用分店&quot;,&quot;address&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;code&quot;:&quot;&quot;,&quot;daogou&quot;:&quot;&quot;,&quot;zhongdian&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;,&quot;col9&quot;:&quot;&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name&quot;:&quot;长城饭店&quot;,&quot;address&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;code&quot;:&quot;&quot;,&quot;daogou&quot;:&quot;&quot;,&quot;zhongdian&quot;:&quot;&quot;,&quot;time&quot;:&quot;&quot;,&quot;col8&quot;:&quot;&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="noData" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="col1" type="String" xid="column12"/>  
      <column name="col2" type="String" xid="column13"/>  
      <column name="col3" type="String" xid="column14"/>  
      <column name="col4" type="String" xid="column15"/>  
      <column name="col5" type="String" xid="column16"/>  
      <column name="col6" type="String" xid="column17"/>  
      <column name="col7" type="String" xid="column18"/>  
      <column name="col8" type="String" xid="column19"/>  
      <data xid="default3">[{"id":"1","col1":"2018-02-17","col2":"杨洋","col3":"上海经销部","col4":"未排班","col5":"13888888888","col6":"","col7":"","col8":""},{"id":"2","col1":"2018-02-17","col2":"杨洋","col3":"杭州经销部","col4":"未排班","col5":"13888888888","col6":"","col7":"","col8":""}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoDialog"
    src="$UI/TheSaleEnterprise/Project/dialog/ProjectUpdate.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Project/dialog/ProjectNew.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="listDialog" src="$UI/TheSaleEnterprise/Project/dialog/ProjectArchive.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="项目管理"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">项目管理</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1" height="48"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified x-card" tabbed="true" xid="buttonGroup1"
            style="background-color:#FFFFFF;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="项目" xid="button2" target="content4"> 
              <i xid="i2"/>  
              <span xid="span1">项目</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="动态" xid="button3" target="content5"> 
              <i xid="i3"/>  
              <span xid="span2">动态</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="团队" xid="button14" target="content7"> 
              <i xid="i16"/>  
              <span xid="span24">团队</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default active"
              label="我自己" xid="button4" target="content1"> 
              <i xid="i4"/>  
              <span xid="span3">我自己</span> 
            </a> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content3"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="3" xid="contents2" swipe="false"> 
            <div class="x-contents-content" xid="content4">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   <div class="x-panel-top" xid="top4" height="80"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row8" bind-click="row8Click">
   <div class="x-col x-col-10" xid="col19">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button11" icon="round round-plus" style="color:#999999;">
     <i xid="i11" class="round round-plus"></i>
     <span xid="span21"></span></a> </div> 
   <div class="x-col" xid="col18">
    <span xid="span22" style="display:block;color:#999999;font-size:16px;margin-top:15px;"><![CDATA[添加新项目]]></span></div> </div></div>
   <div class="x-panel-content" xid="content11"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="InData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" bind-click="li2Click"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row22">
   <div class="x-col x-col-10" xid="col47" style="text-align:center;"><img src="$UI/TheSaleEnterprise/Project/dialog/img/menu_emp_huoDongShenQing.png" alt="" xid="image3" style="width:30px;"></img></div>
   <div class="x-col" xid="col48"><div component="$UI/system/components/justep/output/output" class="x-output font-One" xid="output4" bind-ref='ref("name")'></div></div>
   <div class="x-col x-col-10" xid="col49"><img src="$UI/TheSaleEnterprise/Project/dialog/img/menu_emp_khgl_xtgl.png" alt="" xid="image4" style="width:30px;"></img></div></div></li></ul> </div></div>
   <div class="x-panel-bottom" xid="bottom2"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row9" bind-click="row9Click">
   
   <div class="x-col" xid="col20">
    <span xid="span25" style="display:block;color:#999999;font-size:16px;"><![CDATA[查看已归档项目]]></span></div> </div></div></div></div>  
            <div class="x-contents-content  x-content-on-remoting-sibling"
              xid="content5"/>  
            <div class="x-contents-content  x-scroll-view" xid="content7"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div2">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i13"></i>
    <span class="x-pull-down-label" xid="span26">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div3"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row10">
   
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="checkData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div class="col col-xs-6" xid="col22" style="text-align:center;" bind-click="col22Click"><img src=" " alt="" xid="image2" style="width:80px;" bind-attr-src=' val("col1")'></img>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("col2")'></div>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref="val(&quot;col3&quot;)+&quot; &lt;font style='color:red;'&gt;&quot;+val(&quot;col4&quot;)+&quot;&lt;/font&gt;&quot;"></div>
  </div></li></ul> </div></div></div>
   <div class="x-content-center x-pull-up" xid="div4">
    <span class="x-pull-up-label" xid="span27">加载更多...</span></div> </div></div>  
            <div class="x-contents-content" xid="content1"> 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                xid="panel2"> 
                <div class="x-panel-top" xid="top2"> 
                  <div component="$UI/system/components/justep/button/buttonGroup"
                    class="btn-group btn-group-justified x-card2 mar2" tabbed="true"
                    xid="buttonGroup2"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-default8 active" label="我的任务" xid="button5" target="content8"> 
                      <i xid="i5"/>  
                      <span xid="span5">我的任务</span> 
                    </a>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-default8" label="我分派的任务" xid="button6" target="content9"> 
                      <i xid="i6"/>  
                      <span xid="span6">我分派的任务</span> 
                    </a>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-default8" label="我关注的任务" xid="button7" target="content10"> 
                      <i xid="i7"/>  
                      <span xid="span7">我关注的任务</span> 
                    </a> 
                  </div> 
                </div>  
                <div class="x-panel-content" xid="content2"> 
                  <div component="$UI/system/components/justep/contents/contents"
                    class="x-contents x-full" active="0" xid="contents1" swipe="false"> 
                    <div class="x-contents-content" xid="content8"> 
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row1"> 
                        <div class="x-col x-col-10" xid="col1"> 
                          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" icon="icon-android-alarm" style="color:#999999;">
   <i xid="i8" class="icon-android-alarm"></i>
   <span xid="span8"></span></a></div> 
                      <div class="x-col" xid="col7"><span xid="span9" style="display:block;color:#999999;font-size:16px;margin-top:7px;"><![CDATA[今天的任务]]></span></div></div> 
                    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-10" xid="col4"></div>
   <div class="x-col" xid="col5"><span xid="span10" style="display:block;color:#c0c0c0;font-size:16px;margin-top:7px;"><![CDATA[今天暂无任务]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="margin-top:20px;">
   <div class="x-col x-col-10" xid="col11">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button9" icon="icon-android-lightbulb" style="color:#999999;">
     <i xid="i9" class="icon-android-lightbulb"></i>
     <span xid="span11"></span></a> </div> 
   <div class="x-col" xid="col8">
    <span xid="span12" style="display:block;color:#999999;font-size:16px;margin-top:7px;"><![CDATA[明天的任务]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-10" xid="col9"></div>
   <div class="x-col" xid="col10">
    <span xid="span13" style="display:block;color:#c0c0c0;font-size:16px;margin-top:7px;"><![CDATA[明天暂无任务]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="margin-top:20px;">
   <div class="x-col x-col-10" xid="col12">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button10" icon="icon-android-mixer" style="color:#999999;">
     <i xid="i10" class="icon-android-mixer"></i>
     <span xid="span16"></span></a> </div> 
   <div class="x-col" xid="col13">
    <span xid="span15" style="display:block;color:#999999;font-size:16px;margin-top:7px;"><![CDATA[以后的任务]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row6">
   <div class="x-col x-col-10" xid="col14"></div>
   <div class="x-col" xid="col15">
    <span xid="span14" style="display:block;color:#c0c0c0;font-size:16px;margin-top:7px;"><![CDATA[以后暂无任务]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row7">
   <div class="x-col" xid="col17"><span xid="span18" style="display:block;color:#999999;font-size:16px;margin-top:7px;"><![CDATA[查看已完成任务]]></span></div>
   <div class="x-col" xid="col16">
    <span xid="span20" style="display:block;color:#999999;font-size:16px;margin-top:7px;"><![CDATA[查看已延迟任务]]></span></div> </div></div>  
                    <div class="x-contents-content" xid="content9"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
   <div class="x-panel-top" xid="top6" height="96"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card2 mar2" tabbed="true" xid="buttonGroup4">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default8 active" label="按执行时间排序" xid="button21">
    <i xid="i22"></i>
    <span xid="span44">按执行时间排序</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default8" label="按分派时间排序" xid="button22">
    <i xid="i23"></i>
    <span xid="span45">按分派时间排序</span></a> 
   </div>
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card3 mar2" tabbed="true" xid="buttonGroup6">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default2 active" label="未完成任务" xid="button27">
    <i xid="i28"></i>
    <span xid="span50">未完成任务</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default2" label="已完成任务" xid="button28">
    <i xid="i29"></i>
    <span xid="span51">已完成任务</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default2" label="全部的任务" xid="button29">
    <i xid="i30"></i>
    <span xid="span52">全部的任务</span></a> </div></div>
   <div class="x-panel-content" xid="content17"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row21" style="text-align:center;">
   <div class="x-col" xid="col46">
    <span xid="span55" style="display:block;color:#999999;font-size:16px;"><![CDATA[没有更多任务了]]></span></div> </div></div>
   <div class="x-panel-bottom" xid="bottom3"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row20">
   <div class="x-col" xid="col44">
    <span xid="span54" style="display:block;color:#999999;font-size:16px;"><![CDATA[我分派的已完成任务]]></span></div> 
   </div></div></div></div>  
                    <div class="x-contents-content" xid="content10"/> 
                  </div> 
                </div> 
              </div> 
            </div> 
          <div class="x-contents-content" xid="content12"><div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row18">
   
   <div class="x-col" xid="col40">
    <span xid="span43" class="font8"><![CDATA[李四的任务]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
       <div class="x-col x-col-10" xid="col37">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button15" icon="icon-android-alarm" style="color:#999999;">
         <i xid="i19" class="icon-android-alarm"></i>
         <span xid="span32"></span></a> </div> 
       <div class="x-col" xid="col34">
        <span xid="span33" style="display:block;color:#999999;font-size:16px;margin-top:7px;">今天的任务</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
       <div class="x-col x-col-10" xid="col35"></div>
       <div class="x-col" xid="col36">
        <span xid="span39" style="display:block;color:#c0c0c0;font-size:16px;margin-top:7px;">今天暂无任务</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="margin-top:20px;">
       <div class="x-col x-col-10" xid="col31">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button17" icon="icon-android-lightbulb" style="color:#999999;">
         <i xid="i20" class="icon-android-lightbulb"></i>
         <span xid="span41"></span></a> </div> 
       <div class="x-col" xid="col32">
        <span xid="span40" style="display:block;color:#999999;font-size:16px;margin-top:7px;">明天的任务</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row17">
       <div class="x-col x-col-10" xid="col33"></div>
       <div class="x-col" xid="col38">
        <span xid="span36" style="display:block;color:#c0c0c0;font-size:16px;margin-top:7px;">明天暂无任务</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="margin-top:20px;">
   <div class="x-col x-col-10" xid="col30">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button16" icon="icon-android-mixer" style="color:#999999;">
     <i xid="i14" class="icon-android-mixer"></i>
     <span xid="span37"></span></a> </div> 
   <div class="x-col" xid="col29">
    <span xid="span38" style="display:block;color:#999999;font-size:16px;margin-top:7px;">以后的任务</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row13">
   <div class="x-col x-col-10" xid="col28"></div>
   <div class="x-col" xid="col27">
    <span xid="span35" style="display:block;color:#c0c0c0;font-size:16px;margin-top:7px;">以后暂无任务</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row border-Two" xid="row12">
   <div class="x-col" xid="col25">
    <span xid="span34" style="display:block;color:#999999;font-size:16px;margin-top:7px;">查看已完成任务</span></div> 
   <div class="x-col" xid="col26">
    </div> </div>
  </div></div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
