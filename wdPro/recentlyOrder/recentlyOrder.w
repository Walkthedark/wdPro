<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="ListData" onCustomRefresh="ListDataCustomRefresh" idColumn="documentary_id" confirmDelete="false">
      <column name="category" type="String" xid="xid1"/>  
      <column name="client_id" type="String" xid="xid2"/>  
      <column name="client_name" type="String" xid="xid3"/>  
      <column name="create_at" type="String" xid="xid4"/>  
      <column name="create_staff" type="String" xid="xid5"/>  
      <column name="create_staff_id" type="String" xid="xid6"/>  
      <column name="department" type="String" xid="xid7"/>  
      <column name="documentary_id" type="String" xid="xid8"/>  
      <column name="goods" type="String" xid="xid9"/>  
      <column name="images" type="String" xid="xid10"/>  
      <column name="money" type="String" xid="xid11"/>  
      <column name="remark" type="String" xid="xid12"/>  
      <column name="staff_id" type="String" xid="xid13"/>  
      <column name="stage" type="String" xid="xid14"/>  
      <column name="title" type="String" xid="xid15"/>  
      <column name="update_at" type="String" xid="xid16"/>  
      <column name="update_staff" type="String" xid="xid17"/>  
      <column name="no_change_days" type="String" xid="xid18"/>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tagListData" idColumn="id" onCustomRefresh="tagListDataCustomRefresh">
   <column name="stage_id" type="String" xid="column1"></column>
   <column name="stage" type="String" xid="column2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="categoryData" idColumn="id" onCustomRefresh="dataJasonCustomRefresh">
   <column name="id" type="String" xid="xid22"></column>
   <column name="name" type="String" xid="xid23"></column>
   <column name="choose" type="String" xid="xid24"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" height="80">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="padding:0px 0px 0px 0px;background-color:#EBEAF0;"> 
        <div xid="col3" style="width:0.5em;"/>  
        <div class="x-col x-col-80" xid="col4"> 
          <input component="$UI/system/components/justep/input/input" class="form-control"
            xid="titleInp" style="background-color:white;height:30px;" placeHolder="跟单标题"/>
        </div>  
        <div xid="col5" class="x-col "><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="确定" xid="button41" onClick="button41Click">
   <i xid="i44"></i>
   <span xid="span32">确定</span></a></div>
      </div>  
      <div xid="div1" class="list-group-item" style="padding:0px 0px 0px 0px;">
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified"
          tabbed="true" xid="buttonGroup2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="跟单接单" xid="button4" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button4Click"> 
            <i xid="i4" class="icon-arrow-down-b"/>  
            <span xid="span4">跟单接单</span>
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="创建人" xid="button5" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button5Click"> 
            <i xid="i5" class="icon-arrow-down-b"/>  
            <span xid="span5">创建人</span>
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="分类" xid="button6" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button6Click"> 
            <i xid="i6" class="icon-arrow-down-b"/>  
            <span xid="span6">分类</span>
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="更多" xid="button7" style="color:#585958;" icon="icon-arrow-down-b"
            onClick="button7Click"> 
            <i xid="i7" class="icon-arrow-down-b"/>  
            <span xid="span7">更多</span>
          </a>
        </div>
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div xid="div2" class="list-group-item">
        <span xid="span8" style="color:#908F94;font-size:14px;"><![CDATA[共189条信息]]></span>
      </div>  
      <div xid="div3" class="list-group-item" style="background-color:#EBEAF0;"> 
        <span xid="span9" style="color:#908F94;font-size:13px;"><![CDATA[无联系频率]]></span>
      </div>  
      <div xid="div6">
        
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullUp="scrollView1PullUp">
   <div class="x-scroll-content" xid="div100"><div component="$UI/system/components/justep/list/list" class="x-list  x-scroll-view" xid="list1" data="ListData"> 
          <ul class="x-list-template" xid="listTemplateUl1"> 
            <li xid="li1">
              <div xid="div4" class="list-group-item" bind-click="div4Click">
                <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px 0px 0px 0px;"> 
                  <div class="x-col" xid="col1">
                    <div class="media" xid="media1"> 
                      <div class="media-body" xid="mediaBody1"> 
                        <h4 class="media-heading" xid="h41" style="font-size:16px;color:#181919;" bind-text=" val(&quot;title&quot;)"><![CDATA[福盈集团]]></h4>  
                        <h5 xid="h51" class="media-heading"><![CDATA[]]>
                          <span xid="span10" style="font-size:13px;color:#4C62FF;" bind-text="val(&quot;stage&quot;)" />
                          <span xid="span1" style="font-size:13px;color:#838484;" bind-text="val(&quot;client_name&quot;)"><![CDATA[]]></span>  
                          <span xid="span2" class=" pull-right" style="font-size:16px;color:#838484;"><![CDATA[0天]]></span> 
                        </h5>  
                        <h5 xid="h52" class="media-heading"><![CDATA[]]>  
                          <span xid="span11" class=" pull-right" style="font-size:13px;color:#838484;"><![CDATA[未联系]]></span>
                        </h5>  
                        <h5 xid="h53" class="media-heading"><![CDATA[]]>  
                          <span xid="span12" style="font-size:13px;color:#838484;" bind-text="val(&quot;create_staff&quot;) +&quot;/&quot; + val(&quot;create_at&quot;)"><![CDATA[潜在金蝶客户]]></span>
                        </h5>
                      </div>  
                      <div class="media-right" xid="mediaRight1"></div>
                    </div>
                  </div>  
                  <div class="x-col x-col-10" xid="col2" style="text-align:center;">
                    <div xid="div5" class="btn-radius list_btn" bind-click="div5Click">...</div>
                  </div> 
                </div>
              </div>
            </li>
          </ul> 
        </div></div>
   <div class="x-content-center x-pull-up" xid="div101">
    <span class="x-pull-up-label" xid="span31">加载更多...</span></div> </div></div>
    </div>  
    <div class="x-panel-bottom" xid="bottom1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1" style="background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="新增跟单" xid="addSalesOrder" icon="icon-plus-round" onClick="addSalesOrderClick"> 
          <i xid="i3" class="icon-plus-round"/>  
          <span xid="span3" style="font-size:16px;">新增跟单</span>
        </a> 
      </div>
    </div>
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver6" anchor="addSalesOrder"> 
    <div class="x-popOver-overlay" xid="div52"/>  
    <div class="x-popOver-content ddd" xid="div53" style="width:100%;height:30%;">
      <div xid="div54" style="height:100%;width:100%;background-color:white;">
        <div component="$UI/system/components/justep/panel/panel" class=" x-full"
          xid="panel6"> 
          <div class="x-panel-content" xid="content6">
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row9" style="padding:0px 0px 0px 0px;"> 
              <div class="x-col" xid="col18" style="text-align:center;">
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="修改跟单阶段" xid="button15"
                  icon="dataControl dataControl-timeo" style="color:#181919;" onClick="button15Click"> 
                  <i xid="i15" class="dataControl dataControl-timeo" style="color:#BACE83;font-size:20px"/>  
                  <span xid="span44">修改跟单阶段</span>
                </a>
              </div>  
              <div class="x-col" xid="col19" style="text-align:center;">
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="未变化原因" xid="button16" icon="linear linear-questioncircle"
                  style="color:#181919;" onClick="button16Click"> 
                  <i xid="i16" class="linear linear-questioncircle" style="color:#DEAA64;font-size:20px"/>  
                  <span xid="span45">未变化原因</span>
                </a>
              </div>  
              <div class="x-col" xid="col20" style="text-align:center;">
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="修改" xid="button17" icon="dataControl dataControl-transform1"
                  style="color:#181919;" onClick="button17Click"> 
                  <i xid="i17" class="dataControl dataControl-transform1"
                    style="color:#99473F;font-size:20px"/>  
                  <span xid="span46">修改</span>
                </a>
              </div>
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row11" style="padding:0px 0px 0px 0px;"> 
              <div class="x-col" xid="col24" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top" label="删除" xid="button25" icon="linear linear-trash"
                  style="color:#181919;" onClick="button25Click"> 
                  <i xid="i24" class="linear linear-trash" style="color:#9F96BC;font-size:20px"/>  
                  <span xid="span56">删除</span>
                </a> 
              </div>  
              <div class="x-col" xid="col25" style="text-align:center;"></div>  
              <div class="x-col" xid="col26" style="text-align:center;"></div> 
            </div> 
          </div>  
          <div class="x-panel-bottom" xid="bottom5">
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row12" style="padding:0px 0px 0px 0px;position:absolute;bottom:5px;"> 
              <div class="x-col" xid="col29" style="text-align:center;"></div>  
              <div class="x-col" xid="col28" style="text-align:center;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-link btn-icon-top btn-only-label" label="取消" xid="button28"
                  icon="linear linear-phonehandset" style="color:#181919;"> 
                  <i xid="i28" class="linear linear-phonehandset"/>  
                  <span xid="span59">取消</span>
                </a> 
              </div>  
              <div class="x-col" xid="col27" style="text-align:center;"></div> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="TagWinDialog"
    src="$UI/wdPro/salesOrder/dialog/tagChoose.w" forceRefreshOnOpen="true"/>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    direction="auto" xid="popOver4"> 
    <div class="x-popOver-overlay" xid="div8"/>  
    <div class="x-popOver-content" xid="div9" style="width:90%;height:60%;"> 
      <div xid="div11" style="height:100%;width:100%;"> 
        <div xid="div12" style="height:100%;width:100%;">
          <div component="$UI/system/components/justep/panel/panel" class=" x-full"
            xid="panel5"> 
            <div class="x-panel-content" xid="content5">
              <div xid="div10">
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control" xid="textarea1" style="width:100%;height:150px;"/>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row4" style="height:5px;background-color:white;"> 
                  <div class="x-col" xid="col9"/>  
                  <div class="x-col" xid="col10"/>  
                  <div class="x-col" xid="col11"/>
                </div>
                <div xid="div13" style="background-color:white;padding:0px 0px 0px 0px;"
                  class="list-group-item">
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row3"> 
                    <div class="x-col x-col-75" xid="col6"/>  
                    <div class="x-col tb-settlement" xid="col8" style="text-align:center;"
                      bind-click="col8Click">
                      <span xid="span15"><![CDATA[提交]]></span>
                    </div>
                  </div>
                </div> 
              </div>
            </div> 
          </div>
        </div>
      </div>
    </div>
  </div>
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" title="温馨提示" message="是否要删除跟单记录？" type="OKCancel" onOK="messageDialogOK"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver8" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div59"></div>
   <div class="x-popOver-content" xid="div58" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel9">
     <div class="x-panel-content" xid="content9" style="background-color:white;">
      
  <div xid="div61">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="tagListData">
    <ul class="x-list-template" xid="listTemplateUl2">
     <li xid="li2">
      <div xid="div60" class="list-group-item" style="padding:5px 5px 5px 5px;">
       <div class="media" xid="media5">
        <div class="media-body" xid="mediaBody5">
         <h5 xid="h55" style="color:#181919;" bind-text=' val("stage")'>潜在用友客户</h5></div> 
        <div class="media-right" xid="mediaRight5">
         <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio6" name="chooseValue" onChange="radio1Change"></span></div> </div> </div> </li> </ul> </div> </div></div> 
     <div class="x-panel-bottom" xid="bottom7">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup7">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button24" style="background-color:#fff;" onClick='{"operation":"popOver8.hide"}'>
        <i xid="i26"></i>
        <span xid="span14">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button23" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button8Click">
        <i xid="i27"></i>
        <span xid="span14">确认</span></a> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver9" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div64"></div>
   <div class="x-popOver-content" xid="div66" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel10">
     <div class="x-panel-content" xid="content10" style="background-color:white;">
      <div xid="div65">
       <div xid="div62">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="请输入创建人名称" xid="button27" style="font-size:14px">
         <i xid="i31"></i>
         <span xid="span20">请输入创建人名称</span></a> </div> 
       <div xid="div63">
        <input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInp"></input></div> </div> </div> 
     <div class="x-panel-bottom" xid="bottom8">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup8">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button29" style="background-color:#fff;" onClick='{"operation":"popOver9.hide"}'>
        <i xid="i30"></i>
        <span xid="span16">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button26" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button10Click">
        <i xid="i29"></i>
        <span xid="span16">确认</span></a> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver11" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div85"></div>
   <div class="x-popOver-content" xid="div83" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel12">
     <div class="x-panel-content" xid="content12" style="background-color:white;">
      <div xid="div89" class="list-group-item" style="padding:5px 5px 5px 5px;text-align:center;">
   <span xid="span23" style="color:#A8A9A8;">设置客户分类联系频率，超期未联系将提醒到首页</span></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="categoryData">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3">
     <div xid="div88" class="list-group-item" style="padding:5px 5px 5px 5px;">
      <div class="media" xid="media12">
       <div class="media-body" xid="mediaBody12">
        <h5 xid="h57" style="color:#181919;" bind-text=' val("name")'>未分类</h5></div> 
       <div class="media-right" xid="mediaRight12">
        <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio7" onChange="radio7Change" bind-ref='ref("choose")' checkedValue="1" uncheckedValue="0" name="categoryName"></span></div> </div> </div> </li> </ul> </div></div> 
     <div class="x-panel-bottom" xid="bottom11">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup11">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button34" style="background-color:#fff;" onClick='{"operation":"popOver11.hide"}'>
        <i xid="i35"></i>
        <span xid="span22">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button33" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button33Click">
        <i xid="i36"></i>
        <span xid="span22">确认</span></a> </div> </div> </div> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="left-bottom" xid="popOver12" anchor="top1">
   <div class="x-popOver-overlay tClass" xid="div92"></div>
   <div class="x-popOver-content" xid="div93" style="width:100%;height:60%;">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel13">
     <div class="x-panel-content" xid="content13" style="background-color:white;">
      
      <div xid="div95" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media30">
    <div class="media-body" xid="mediaBody15">
     <h5 xid="h510" style="color:#181919;">选择跟单阶段超期未变化的跟单</h5></div> 
    <div class="media-right" xid="mediaRight15">
     <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" checkedValue="1" uncheckedValue="0"></span></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:5px;">
   <div class="x-col" xid="col7"></div></div>
  <div xid="div96" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div class="media" xid="media31">
    <div class="media-body" xid="mediaBody14">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[销售地区]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3"></input></div></div> 
    <div class="media-right" xid="mediaRight14">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button37" icon="icon-arrow-right-b" style="margin-top:9px;color:#838484;" onClick="button37Click">
      <i xid="i41" class="icon-arrow-right-b"></i>
      <span xid="span28"></span></a> </div> </div> </div>
  <div xid="div94" class="list-group-item" style="padding:5px 5px 5px 5px;">
   <div xid="div98">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="按时间搜索" xid="button40" style="font-size:14px">
    <i xid="i42"></i>
    <span xid="span29">按时间搜索</span></a> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0px 0px 0px 0px;">
   <div class="x-col" xid="col13"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input5" placeHolder="开始时间" dataType="Date"></input></div>
   <div class="x-col" xid="col14"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input6" placeHolder="结束时间" dataType="Date"></input></div></div></div></div> 
     <div class="x-panel-bottom" xid="bottom12">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup12">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button35" style="background-color:#fff;" onClick='{"operation":"popOver12.hide"}'>
        <i xid="i37"></i>
        <span xid="span25">取消</span></a> 
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button36" style="background-color:#4DA7F4;color:#FEFFFE;" onClick="button36Click">
        <i xid="i38"></i>
        <span xid="span25">确认</span></a> </div> </div> </div> </div> </div></div>
