<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="ListData" onCustomRefresh="ListDataCustomRefresh" idColumn="staff_id"> 
      <column name="client" type="String" xid="xid1"></column>
  <column name="duty" type="String" xid="xid2"></column>
  <column name="head_img" type="String" xid="xid3"></column>
  <column name="staff_id" type="String" xid="xid4"></column>
  <column name="staff_name" type="String" xid="xid5"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" height="48"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="padding:0px 0px 0px 0px;background-color:#EBEAF0;"> 
        <div xid="col3" style="width:0.5em;"/>  
        <div class="x-col " xid="col4"> 
          <input component="$UI/system/components/justep/input/input" class="form-control"
            xid="input1" style="background-color:white;height:30px;" placeHolder="客户名称"/> 
        </div>  
        <div xid="col5" style="width:0.5em;"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div xid="div1"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list1" data="ListData"> 
          <ul class="x-list-template" xid="listTemplateUl1"> 
            <li xid="li1"> 
              <div xid="div22" class="list-group-item" style="padding:5px 5px 5px 5px;"> 
                <div class="media" xid="media9"> 
                  <div class="media-body" xid="mediaBody9"> 
                    <h5 xid="h518" style="color:#181919;" bind-text=' val("staff_name")'>潜在用友客户</h5>  
                    </div>  
                  <div class="media-right" xid="mediaRight8"> 
                    <span component="$UI/system/components/justep/button/radio"
                      class="x-radio" xid="radio1" name="chooseValue" onChange="radio1Change"/>
                  </div> 
                </div> 
              </div> 
            </li> 
          </ul> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="取消" xid="button1" style="background-color:white;" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
          <i xid="i1"/>  
          <span xid="span1">取消</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="确定" xid="okBtn" style="background-color:#4B76AE;color:#FFFFFF;" onClick="okBtnClick"> 
          <i xid="i2"/>  
          <span xid="span2">确定</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
