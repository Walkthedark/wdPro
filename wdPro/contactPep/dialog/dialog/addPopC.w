<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:54px;left:19px;height:auto;"
    onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dataJson" idColumn="id">
      <column name="id" type="String" xid="xid1"/>  
      <column name="client_name" type="String" xid="xid2"/>  
      <column name="category" type="String" xid="xid3"/>  
      <column name="region_id" type="String" xid="xid4"/>  
      <column name="level_id" type="String" xid="xid5"/>  
      <column name="business_type" type="String" xid="xid6"/>  
      <column name="source" type="String" xid="xid7"/>  
      <column name="establish_time" type="String" xid="xid8"/>  
      <column name="service_rate" type="String" xid="xid9"/>  
      <column name="deal_impression" type="String" xid="xid10"/>  
      <column name="enterprise_nature" type="String" xid="xid11"/>  
      <column name="year_turnover" type="String" xid="xid12"/>  
      <column name="enterprise_scale" type="String" xid="xid13"/>  
      <column name="mnemonic" type="String" xid="xid14"/>  
      <column name="keywords" type="String" xid="xid15"/>  
      <column name="phone" type="String" xid="xid16"/>  
      <column name="fax" type="String" xid="xid17"/>  
      <column name="email" type="String" xid="xid18"/>  
      <column name="website" type="String" xid="xid19"/>  
      <column name="micro_blog" type="String" xid="xid20"/>  
      <column name="area" type="String" xid="xid21"/>  
      <column name="address" type="String" xid="xid22"/>  
      <column name="trade_id" type="String" xid="xid23"/>  
      <column name="main_product" type="String" xid="xid24"/>  
      <column name="add_linkman" type="String" xid="xid25"/>  
      <column name="relation_linkman" type="String" xid="xid26"/>  
      <column name="invoice" type="String" xid="xid27"/>  
      <column name="tax_num" type="String" xid="xid28"/>  
      <column name="invoice_address" type="String" xid="xid29"/>  
      <column name="bank_name" type="String" xid="xid30"/>  
      <column name="bank" type="String" xid="xid31"/>  
      <column name="bank_account" type="String" xid="xid32"/>  
      <column name="remark" type="String" xid="xid33"/>  
      <data xid="default1">[{"id":"10001"}]</data>
    </div>
  </div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1"> 
    <div class="x-contents-content" xid="content1" style="background-color:#EBEAF0;"> 
      <div xid="div1" class="list-group-item" style="background-color:#EBEAF0;"> 
        <span xid="span1"><![CDATA[客户]]></span> 
      </div>  
      <div xid="div2" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;"> 
        <div xid="div3" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit1"> 
            <label class="x-label" xid="label1" style="width:80px;"><![CDATA[客户名称]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="nameInp" required="required"/> 
          </div> 
        </div>  
        <div xid="div20" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit19"> 
            <label class="x-label" style="width:80px;" xid="label19"><![CDATA[客户分类]]></label>  
            <div class="x-edit" xid="div21"> 
              <div class="input-group" xid="div22"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="typeInp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span2"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="button1"
                    style="color:#838484;" onClick="button1Click"> 
                    <i class="icon-chevron-right" xid="i1"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div28" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit21"> 
            <label class="x-label" style="width:80px;" xid="label21"><![CDATA[销售区域]]></label>  
            <div class="x-edit" xid="div26"> 
              <div class="input-group" xid="div27"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="region_ID_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span4"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="region_ID_btn"
                    style="color:#838484;" onClick="region_ID_btnClick"> 
                    <i class="icon-chevron-right" xid="i3"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div34" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit23"> 
            <label class="x-label" style="width:80px;" xid="label23"><![CDATA[业务模式]]></label>  
            <div class="x-edit" xid="div32"> 
              <div class="input-group" xid="div33"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="business_type_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span6"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="business_type_btn"
                    style="color:#838484;" onClick="business_type_btnClick"> 
                    <i class="icon-chevron-right" xid="i5"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div31" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit22"> 
            <label class="x-label" style="width:80px;" xid="label22">客户等级</label>  
            <div class="x-edit" xid="div29"> 
              <div class="input-group" xid="div30"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="level_Id_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span5"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="level_id_btn"
                    style="color:#838484;" onClick="level_id_btnClick"> 
                    <i class="icon-chevron-right" xid="i4"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div37" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit24"> 
            <label class="x-label" style="width:80px;" xid="label24"><![CDATA[客户来源]]></label>  
            <div class="x-edit" xid="div35"> 
              <div class="input-group" xid="div36"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="source_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span7"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="source_Btn"
                    style="color:#838484;" onClick="source_BtnClick"> 
                    <i class="icon-chevron-right" xid="i6"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div47" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit28"> 
            <label class="x-label" style="width:80px;" xid="label25"><![CDATA[成立时间]]></label>  
            <div class="x-edit" xid="div48"> 
              <div class="input-group" xid="div46"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="establish_Time_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span8"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="establish_Time_Btn"
                    style="color:#838484;" onClick="establish_Time_BtnClick"> 
                    <i class="icon-chevron-right" xid="i7"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div45" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit26"> 
            <label class="x-label" style="width:80px;" xid="label28">服务满意度</label>  
            <div class="x-edit" xid="div49"> 
              <div class="input-group" xid="div44"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="service_Rate_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span9"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="service_Rate_Btn"
                    style="color:#838484;" onClick="service_Rate_BtnClick"> 
                    <i class="icon-chevron-right" xid="i8"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div38" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit27"> 
            <label class="x-label" style="width:80px;" xid="label27">交易印象</label>  
            <div class="x-edit" xid="div40"> 
              <div class="input-group" xid="div41"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="deal_Impression_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span10"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="deal_Impression_Btn"
                    style="color:#838484;" onClick="deal_Impression_BtnClick"> 
                    <i class="icon-chevron-right" xid="i9"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div4" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2"> 
            <label class="x-label" xid="label2" style="width:80px;"><![CDATA[开户名]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="bank_Name_Inp"/> 
          </div> 
        </div>  
        <div xid="div5" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit3"> 
            <label class="x-label" xid="label3" style="width:80px;"><![CDATA[开户行]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="bank_Inp"/> 
          </div> 
        </div>  
        <div xid="div8" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4"> 
            <label class="x-label" xid="label4" style="width:80px;"><![CDATA[税号]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="tax_Num_Inp"/> 
          </div> 
        </div>  
        <div xid="div7" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit6"> 
            <label class="x-label" xid="label5" style="width:80px;"><![CDATA[备注]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="remark_Inp"/> 
          </div> 
        </div>  
        <div xid="div6" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit5"> 
            <label class="x-label" xid="label6" style="width:80px;"><![CDATA[助记码]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="mnemonic_Inp"/> 
          </div> 
        </div>  
        <div xid="div11" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit7"> 
            <label class="x-label" xid="label7" style="width:80px;"><![CDATA[关键词]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="keywords_Inp"/> 
          </div> 
        </div>  
        <div xid="div10" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit9"> 
            <label class="x-label" xid="label8" style="width:80px;"><![CDATA[座机]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="phone_Inp"/> 
          </div> 
        </div>  
        <div xid="div9" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit8"> 
            <label class="x-label" xid="label9" style="width:80px;"><![CDATA[传真]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="fax_Inp"/> 
          </div> 
        </div>  
        <div xid="div14" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit10"> 
            <label class="x-label" xid="label10" style="width:80px;"><![CDATA[邮箱]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="email_Inp"/> 
          </div> 
        </div>  
        <div xid="div13" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit12"> 
            <label class="x-label" xid="label11" style="width:80px;"><![CDATA[官网]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="website_Inp"/> 
          </div> 
        </div>  
        <div xid="div12" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit11"> 
            <label class="x-label" xid="label12" style="width:80px;"><![CDATA[微博]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="micro_Blog_Inp"/> 
          </div> 
        </div>  
        <div xid="div19" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit13"> 
            <label class="x-label" xid="label13" style="width:80px;"><![CDATA[地址]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="address_Inp"/> 
          </div> 
        </div>  
        <div xid="div18" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit17"> 
            <label class="x-label" xid="label16" style="width:80px;"><![CDATA[主营产品]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="main_Product_Inp"/> 
          </div> 
        </div>  
        <div xid="div17" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit16"> 
            <label class="x-label" xid="label17" style="width:80px;"><![CDATA[银行账号]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="bank_Account_Inp"/> 
          </div> 
        </div>  
        <div xid="div43" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit25"> 
            <label class="x-label" style="width:80px;" xid="label26"><![CDATA[行业]]></label>  
            <div class="x-edit" xid="div39"> 
              <div class="input-group" xid="div42"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="trade_Id_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span11"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="trade_Id_Btn"
                    style="color:#838484;" onClick="trade_Id_BtnClick"> 
                    <i class="icon-chevron-right" xid="i10"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div59" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit32"> 
            <label class="x-label" style="width:80px;" xid="label29"><![CDATA[企业性质]]></label>  
            <div class="x-edit" xid="div60"> 
              <div class="input-group" xid="div58"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="enterprise_Nature_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span12"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="enterprise_Nature_Btn"
                    style="color:#838484;" onClick="enterprise_Nature_BtnClick"> 
                    <i class="icon-chevron-right" xid="i11"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div57" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit30"> 
            <label class="x-label" style="width:80px;" xid="label32"><![CDATA[年营业额]]></label>  
            <div class="x-edit" xid="div61"> 
              <div class="input-group" xid="div56"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="year_Turnover_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span13"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="year_Turnover_Btn"
                    style="color:#838484;" onClick="year_Turnover_BtnClick"> 
                    <i class="icon-chevron-right" xid="i12"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div xid="div50" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit31"> 
            <label class="x-label" style="width:80px;" xid="label31"><![CDATA[企业规模]]></label>  
            <div class="x-edit" xid="div52"> 
              <div class="input-group" xid="div53"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="enterprise_Scale_Inp" placeHolder="请选择"/>  
                <span class="input-group-btn" xid="span14"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-right" xid="enterprise_Scale_Btn"
                    style="color:#838484;" onClick="enterprise_Scale_BtnClick"> 
                    <i class="icon-chevron-right" xid="i13"/> 
                  </a> 
                </span> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
        style="height:5px;"> 
        <div class="x-col" xid="col3"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"
        style="height:5px;"> 
        <div class="x-col" xid="col4"/> 
      </div>  
      <div xid="div72" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;"></div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"
        style="height:10px;"> 
        <div class="x-col" xid="col1"/> 
      </div>  
      <div xid="div77" class="list-group-item" style="text-align:center;background-color:#4B76AE;padding:5px 5px 5px 5px;"
        bind-click="div77Click"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-label"
          label="保存" xid="button18" style="color:#FFFFFF;" icon="icon-plus-round"> 
          <i xid="i18" class="icon-plus-round"/>  
          <span xid="span19" style="font-size:16px;">保存</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="clinet_TypeWinDialog"
    src="$UI/wdPro/client/dialog/dialog/client_Type_ID.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="business_TypewinDialog"
    src="$UI/wdPro/client/dialog/dialog/business_type_choose.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="region_IDWinDialog"
    src="$UI/wdPro/client/dialog/dialog/region_ID_Choose.w"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="common_RadioWinDialog"
    src="$UI/wdPro/client/dialog/dialog/common_radio.w" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="enterprise_WinDialog"
    src="$UI/wdPro/client/dialog/dialog/enterprise_choose.w"/>
</div>
