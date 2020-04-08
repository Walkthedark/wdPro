<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="periodReceiver"/>  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="depData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="col1" type="String" xid="xid2"/>  
      <column name="col2" type="String" xid="xid3"/>  
      <column name="col3" type="String" xid="xid4"/>  
      <column name="col4" type="String" xid="xid5"/>  
      <column name="col5" type="String" xid="xid6"/>  
      <data xid="default1">[{"id":"1","col1":"人事部"},{"id":"2","col1":"销售部"},{"id":"3","col1":"采购部"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="YHData" idColumn="id" autoNew="false" limit="1"> 
      <column name="id" type="String" xid="xid7"/>  
      <column name="pid" type="String" xid="column1"/>  
      <column name="name" type="String" xid="column2"/>  
      <data xid="default2">[{"id":"1","pid":"0","name":"董事会"},{"id":"2","pid":"0","name":"东南大区"},{"id":"3","pid":"0","name":"华南大区"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="RData" idColumn="userId"> 
      <column name="userId" type="String" xid="column3"/>  
      <column name="userName" type="String" xid="column4"/>  
      <column name="deptId" type="String" xid="column5"/>  
      <column name="check" type="String" xid="xid8"/>  
      <data xid="default4">[{"userId":"1","userName":"老张","deptId":"1"},{"userId":"2","userName":"小白","deptId":"1"},{"userId":"3","userName":"张三","deptId":"1"},{"userId":"4","userName":"李四","deptId":"1"},{"userId":"5","userName":"王五","deptId":"2"},{"userId":"6","userName":"老六","deptId":"2"},{"userId":"7","userName":"七七","deptId":"2"},{"userId":"8","userName":"杨洋","deptId":"2"},{"userId":"9","userName":"李狗蛋","deptId":"3"},{"userId":"10","userName":"李春华","deptId":"3"},{"userId":"11","userName":"隔壁老王","deptId":"3"},{"userId":"12","userName":"大白","deptId":"3"}]</data>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="邀请人"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">邀请人</div>  
        <div class="x-titlebar-right reverse" xid="right2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="全选" xid="button3" onClick="button3Click" style="display:none;"> 
            <i xid="i3"/>  
            <span xid="span3">全选</span>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="YHData" filter=" $row.val(&quot;pid&quot;) == 0"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1"> 
            <div component="$UI/system/components/justep/controlGroup/controlGroup"
              class="x-control-group" title="title" xid="YHcontrolGroup" collapsible="true"
              collapsed="true"> 
              <div class="x-control-group-title" xid="controlGroupTitle1"> 
                <span xid="titleSpan" bind-text="ref(&quot;name&quot;)">title</span> 
              </div>  
              <div component="$UI/system/components/bootstrap/row/row" class="row"
                xid="row3"> 
                <div class="col col-xs-12" xid="col7"> 
                  <span component="$UI/system/components/justep/select/checkboxGroup"
                    class="x-checkbox-group x-checkbox-group-vertical" xid="transferCheckboxGroup"
                    bind-itemsetLabel="ref(&quot;userName&quot;)" bind-itemsetValue="ref(&quot;check&quot;)"
                    bind-ref="ref(&quot;check&quot;)" name="staff" bind-itemset="$model.getItems($object.val(&quot;id&quot;))"
                    bind-checked=" $model.RData == true"/> 
                </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col x-col-20" xid="col4"/>  
        <div class="x-col" xid="col5"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="保 存" xid="button2" style="width:100%;" onClick="button2Click"> 
            <i xid="i2"/>  
            <span xid="span1">保 存</span> 
          </a> 
        </div>  
        <div class="x-col x-col-20" xid="col6"/> 
      </div> 
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
