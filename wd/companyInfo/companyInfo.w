<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:228px;left:368px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="公司基本信息"
        class="x-titlebar" style="background-color:#47D1D1;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">公司基本信息</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="保存" xid="button1" style="font-size:14px;"> 
            <i xid="i1"/>  
            <span xid="span1">保存</span> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col1"> 
          <h5 xid="h51" style="text-indent:10px;border-left:4px solid #50ade4;"><![CDATA[基本信息]]></h5>  
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="title" xid="controlGroup2"> 
            <!--   <div class="x-control-group-title" xid="controlGroupTitle2"> 
              <span xid="span3">title</span>
            </div>  -->  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit1"> 
              <label class="x-label" xid="label1"><![CDATA[公司名称]]></label>  
              <div class="x-edit" xid="div1"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output2"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit2"> 
              <label class="x-label" xid="label2"><![CDATA[所在地址]]></label>  
              <div class="x-edit" xid="div2"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output1"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit3"> 
              <label class="x-label" xid="label3"><![CDATA[详细地址]]></label>  
              <div class="x-edit" xid="div3"> 
                <textarea component="$UI/system/components/justep/textarea/textarea"
                  class="form-control" xid="textarea1" style="height:42px;"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit4"> 
              <label class="x-label" xid="label4"><![CDATA[邮编]]></label>  
              <div class="x-edit" xid="div4"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input2" placeHolder="请输入" max="js:new Date()" min="js:new Date()"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit5"> 
              <label class="x-label" xid="label5"><![CDATA[电话]]></label>  
              <div class="x-edit" xid="div5"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input3" placeHolder="请输入"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit6"> 
              <label class="x-label" xid="label6"><![CDATA[传真]]></label>  
              <div class="x-edit" xid="div6"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input4" placeHolder="请输入"/> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col4"> 
          <h5 xid="h52" style="text-indent:10px;border-left:4px solid #50ade4;"><![CDATA[财务信息]]></h5>  
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="title" xid="controlGroup1"> 
            <!--  <div class="x-control-group-title" xid="controlGroupTitle1"> 
              <span xid="span2">title</span>
            </div>   -->  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit7"> 
              <label class="x-label" xid="label7"><![CDATA[发票抬头]]></label>  
              <div class="x-edit" xid="div7">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input1" placeHolder="请输入"/>
              </div> 
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit8"> 
              <label class="x-label" xid="label8"><![CDATA[纳税人号]]></label>  
              <div class="x-edit" xid="div8">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input5" placeHolder="请输入"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit9"> 
              <label class="x-label" xid="label9"><![CDATA[地址]]></label>  
              <div class="x-edit" xid="div9">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input6" placeHolder="请输入"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit10"> 
              <label class="x-label" xid="label10"><![CDATA[电话]]></label>  
              <div class="x-edit" xid="div10">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input7" placeHolder="请输入"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit11"> 
              <label class="x-label" xid="label11"><![CDATA[开户名称]]></label>  
              <div class="x-edit" xid="div11">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input8" placeHolder="请输入"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit12"> 
              <label class="x-label" xid="label12"><![CDATA[开户银行]]></label>  
              <div class="x-edit" xid="div12">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input9" placeHolder="请输入"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit13"> 
              <label class="x-label" xid="label13"><![CDATA[银行账号]]></label>  
              <div class="x-edit" xid="div13">
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="input10" placeHolder="请输入"/>
              </div>
            </div>
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
        <div class="x-col" xid="col5">
          <h5 xid="h53" style="text-indent:10px;border-left:4px solid #50ade4;"><![CDATA[签约时间]]></h5>  
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="title" xid="controlGroup3"> 
           <!--  <div class="x-control-group-title" xid="controlGroupTitle2"> 
              <span xid="span3">title</span>
            </div>  --> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit14"> 
              <label class="x-label" xid="label14"><![CDATA[开始时间]]></label>  
              <div class="x-edit" xid="div14">
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output3"/>
              </div>
            </div>  
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit15"> 
              <label class="x-label" xid="label15"><![CDATA[结束时间]]></label>  
              <div class="x-edit" xid="div15">
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output4"/>
              </div>
            </div>
          </div>
        </div> 
      </div>
    </div> 
  </div> 
</div>
