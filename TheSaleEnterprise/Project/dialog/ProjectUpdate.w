<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="infoData" idColumn="id"> 
      <column name="id" type="String" xid="column9"/>  
      <column name="col1" type="String" xid="column10"/>  
      <column name="col2" type="String" xid="column1"/>  
      <column name="col3" type="String" xid="column2"/>  
      <column name="col4" type="String" xid="column3"/>  
      <column name="col5" type="String" xid="column4"/>  
      <column name="col6" type="String" xid="column5"/>  
      <column name="col7" type="String" xid="column6"/>  
      <column name="col8" type="String" xid="column6"/>  
      <column name="col9" type="String" xid="column7"/>  
      <column name="co20" type="String" xid="column8"/>  
      <data xid="default2">[]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="CData" idColumn="id"> 
      <column name="id" type="String" xid="column11"/>  
      <column name="type" type="String" xid="xid2"/>  
      <data xid="default3">[{"id":"1","type":"是"},{"id":"2","type":"否"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="listDialog" src="$UI/TheSaleEnterprise/Project/dialog/ProjectArchive.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="编辑项目"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick='{"operation":"window.close"}'> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">编辑项目</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list2" data="infoData"> 
        <ul class="x-list-template" xid="listTemplateUl2"> 
          <li xid="li2" style="background-color:white;"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row1" style="background-color:white;"> 
              <div class="x-col" xid="col17"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row4"> 
                  <div class="col col-xs-12" xid="col1"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit3"> 
                      <label class="x-label" xid="label3" style="width:80px;"><![CDATA[项目名称：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input1"/>
                    </div>
                  </div>  
                  <div class="col col-xs-12" xid="col3"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit5"> 
                      <label class="x-label" xid="label5" style="width:80px;"><![CDATA[项目描述：]]></label>  
                      <textarea component="$UI/system/components/justep/textarea/textarea"
                        class="form-control x-edit" xid="textarea1" bind-ref="ref(&quot;col6&quot;)"/> 
                    </div> 
                  </div>  
                  <div class="col col-xs-12" xid="col2"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit4"> 
                      <label class="x-label" xid="label4" style="width:80px;"><![CDATA[管理员：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input2"/>
                    </div>
                  </div>  
                  <div class="col col-xs-12" xid="col4"> 
                    <div component="$UI/system/components/justep/labelEdit/labelEdit"
                      class="x-label-edit x-label30" xid="labelEdit6"> 
                      <label class="x-label" xid="label6" style="width:80px;"><![CDATA[普通成员：]]></label>  
                      <input component="$UI/system/components/justep/input/input"
                        class="form-control x-edit" xid="input3"/>
                    </div>
                  </div>
                </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"> 
        <div class="x-col" xid="col5"><span xid="span3"><![CDATA[归档项目：项目归档后，所有的内容将变为只读，不能再修改，你只能通过激活操作，将项目重新恢复正常。]]></span></div>  
        </div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default3 btn-only-label"
          label="了解，归档了该项目" xid="button4" style="width:100%;" onClick="button4Click"> 
          <i xid="i4"/>  
          <span xid="span5">了解，归档了该项目</span>
        </a> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="确 定" xid="button2" style="width:100%;"> 
          <i xid="i2"/>  
          <span xid="span1">确 定</span>
        </a> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="padding:20px;background-color:white;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default3 btn-only-label"
          label="取消" xid="button3" style="width:100%;"> 
          <i xid="i3"/>  
          <span xid="span2">取消</span>
        </a> 
      </div>
    </div> 
  </div>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
</div>
