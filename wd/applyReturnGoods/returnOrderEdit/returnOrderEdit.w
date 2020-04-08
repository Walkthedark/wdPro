<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:351px;left:448px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData"/>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="填写退单"
        class="x-titlebar" style="background-color:#47D1D1;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">填写退单</div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3"> 
        <div class="x-panel-content" xid="content2">
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1"> 
            <div class="x-col" xid="col1" style="text-indent:10px;text-align:left;"><![CDATA[]]>  
              <span xid="span3" style="text-indent:10px;"><![CDATA[商品总额]]></span>
            </div>  
            <div class="x-col" xid="col3" style="text-align:right;">
              <span xid="span1"><![CDATA[¥]]></span>  
              <span xid="span2"><![CDATA[0.02]]></span>
            </div>
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2"> 
            <div class="x-col x-col-center" xid="col4" style="text-indent:10px;text-align:left;">
              <span xid="span4"><![CDATA[输入退款金额]]></span>
            </div>  
            <div class="x-col x-col-25" xid="col6">
              <input component="$UI/system/components/justep/input/input" class="form-control input-sm"
                xid="input1" placeHolder="请输入" style="border-top:0;border-left:0;border-right:0;text-align:right;"/>
            </div>
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row6"> 
            <div class="x-col" xid="col16">
              <h5 xid="h51" style="color:#333;text-indent:8px;"><![CDATA[退款信息]]></h5><div component="$UI/system/components/justep/controlGroup/controlGroup"
                class="x-control-group" title="title" xid="controlGroup1"> 
               <!--  <div class="x-control-group-title" xid="controlGroupTitle1"> 
                  <span xid="span6">title</span>
                </div>  -->
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[联系人]]></label>
   <div class="x-edit" xid="div1"><input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input2"></input></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[手机号]]></label>
   <div class="x-edit" xid="div2"><input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input3"></input></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3"><![CDATA[开户银行]]></label>
   <div class="x-edit" xid="div3"><input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input4"></input></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[开户名称]]></label>
   <div class="x-edit" xid="div4"><input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input5"></input></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5"><![CDATA[银行账号]]></label>
   <div class="x-edit" xid="div5"><input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input6"></input></div></div></div>
            </div> 
          </div>
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
            <div class="x-col" xid="col7">
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding:0;"> 
                <div class="x-col" xid="col10">
                  <span xid="span5"><![CDATA[备注信息]]></span>
                </div> 
              </div>  
              <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0;"> 
                <div class="x-col" xid="col13">
                  <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" />
                </div> 
              </div>
            </div> 
          </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="productInfo" bind-click="productInfoClick">
   <div class="x-col x-col-center" xid="col19" style="text-indent:10px;"><![CDATA[]]>
  <span xid="span13"><![CDATA[商品信息]]></span></div>
   <div class="x-col x-col-center" xid="col23" style="text-align:right;"><span xid="span9"><![CDATA[共]]></span>
  <span xid="span10"><![CDATA[1]]></span>
  <span xid="span11"><![CDATA[款，总数]]></span>
  <span xid="span12"><![CDATA[2]]></span></div>
  <div class="x-col x-col-10" xid="col24"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" xid="toProductInfo" icon="linear linear-chevronright" onClick="toProductInfoClick">
   <i xid="i1" class="linear linear-chevronright"></i>
   <span xid="span7"></span></a></div></div>
        </div>  
        
      </div>
    </div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="padding:0;">
   <div class="x-col x-col-center" xid="col25" style="text-align:left;"><span xid="span15"><![CDATA[应退金额：]]></span>
  <span xid="span16" style="font-size:16px;color:#f66;"><![CDATA[¥]]></span>
  <span xid="span17" style="color:#f66;font-size:16px;"><![CDATA[0.02]]></span></div>
   <div class="x-col x-col-25 x-col-center" xid="col27" style="background-color:#f66;text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="提交退单" xid="confirmOrderBtn" style="background-color:#f66;color:#fff;" onClick="confirmOrderBtnClick">
   <i xid="i2"></i>
   <span xid="span14">提交退单</span></a></div></div></div></div> 
</div>
