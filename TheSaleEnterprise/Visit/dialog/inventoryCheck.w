<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="inventoryData" idColumn="id"> 
      <column name="id" type="String" xid="xid1"/>  
      <column name="cp_id" type="String" xid="xid2"/>  
      <column name="cp_dpmc" type="String" xid="xid3"/>  
      <column name="kcqk_lx" type="String" xid="xid4"/>  
      <column name="kcqk_lx_title" type="String" xid="xid5"/>  
      <column name="kcqk_kcsl_x" type="String" xid="xid6"/>  
      <column name="kcqk_kcsl_z" type="String" xid="xid7"/>  
      <column name="kcqk_scrq" type="String" xid="xid8"/>  
      <column name="sm" type="String" xid="xid9"/>  
      <column name="zp" type="String" xid="xid10"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newDialog"
    src="$UI/TheSaleEnterprise/Visit/dialog/newInventoryCheck.w" onClose="newDialogClose"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel3"> 
    <div class="x-panel-top" xid="top3"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar title-one index-title"
        xid="titleBar2" title="库存检查"> 
        <div class="x-titlebar-left" xid="left2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="返回" xid="button1" onClick="{&quot;operation&quot;:&quot;window.close&quot;}"> 
            <i xid="i1"/>  
            <span xid="span4">返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title2">库存检查</div>  
        <div class="x-titlebar-right reverse" xid="right2"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content6" style="background-color:#f0f0f0;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3" style="background-color:white;"> 
            <div class="x-col x-col-20" xid="col11"/>  
            <div class="x-col" xid="col12"> 
              <a component="$UI/system/components/justep/button/button" class="btn border-r"
                label="填 写" xid="button4" style="width:100%;" onClick="button4Click"> 
                <i xid="i5"/>  
                <span xid="span6">填 写</span> 
              </a> 
            </div>  
            <div class="x-col x-col-20" xid="col13"/> 
          </div> 
        </div>  
        <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7DF78904F900001988700701AF31363"
          style="background-size: cover; background-image: url(http://localhost:40527/x5/UI2/v_/TheSaleEnterprise/Visit/dialog/none);"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" style="background-color:white;"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"/>  
              <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="inventoryData"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="border-Two"> 
                    <div component="$UI/system/components/justep/row/row" class="x-row border-Two"
                      xid="row1"> 
                      <div class="x-col" xid="col1"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row4"> 
                          <div class="col col-xs-12" xid="col7"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit1"> 
                              <label class="x-label font-One" xid="label1" style="width:80px;">产品：</label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit font-One" xid="output1" bind-ref="ref(&quot;cp_dpmc&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col8"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit2"> 
                              <label class="x-label" xid="label2" style="width:80px;"><![CDATA[临期类型：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output2" bind-ref="ref(&quot;kcqk_lx_title&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col9"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit3"> 
                              <label class="x-label" xid="label3" style="width:80px;"><![CDATA[库存：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output3" bind-ref="ref(&quot;kcqk_kcsl_x&quot;)"
                                onRender="output3Render"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col15"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit4"> 
                              <label class="x-label" xid="label4" style="width:80px;"><![CDATA[生产日期：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output5" bind-ref="ref(&quot;kcqk_scrq&quot;)"/> 
                            </div> 
                          </div>  
                          <div class="col col-xs-12" xid="col10"> 
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelEdit6"> 
                              <label class="x-label" xid="label5" style="width:80px;"><![CDATA[说明：]]></label>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output6" bind-ref="ref(&quot;sm&quot;)"/> 
                            </div> 
                          </div> 
                        </div> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/row/row" class="x-row"
                      xid="row2"> 
                      <div class="x-col" xid="col4"/>  
                      <div class="x-col" xid="col6" style="text-align:right;"> 
                        <div component="$UI/system/components/justep/button/buttonGroup"
                          class="btn-group" tabbed="true" xid="buttonGroup1"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link" label="删除" xid="button2" icon="linear linear-trash"
                            style="color:#000000;" onClick="button2Click"> 
                            <i xid="i3" class="linear linear-trash"/>  
                            <span xid="span3">删除</span> 
                          </a>  
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link" label="修改" xid="button3" icon="linear linear-pencil"
                            style="color:#000000;" onClick="button3Click"> 
                            <i xid="i4" class="linear linear-pencil"/>  
                            <span xid="span5">修改</span> 
                          </a> 
                        </div> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom1"/> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="wReceiver" onReceive="wReceiverReceive"/>  
  <resource xid="resource2"> 
    <require xid="require1" url="css!$UI/TheSaleEnterprise/css/style"/> 
  </resource> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="editDialog" src="$UI/TheSaleEnterprise/Visit/dialog/editInventoryCheck.w" forceRefreshOnOpen="true" onClose="newDialogClose"></span></div>
