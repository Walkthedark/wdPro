<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:2px;left:59px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive">
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dataJson" idColumn="id" confirmRefresh="false">
   <column name="id" type="String" xid="column102"></column>
   <column name="client_name" type="String" xid="column103"></column>
   <column name="category" type="String" xid="xid3"></column>
   <column name="region_id" type="String" xid="xid4"></column>
   <column name="level_id" type="String" xid="xid5"></column>
   <column name="business_type" type="String" xid="xid6"></column>
   <column name="source" type="String" xid="xid7"></column>
   <column name="establish_time" type="String" xid="xid8"></column>
   <column name="service_rate" type="String" xid="xid9"></column>
   <column name="deal_impression" type="String" xid="xid10"></column>
   <column name="enterprise_nature" type="String" xid="xid11"></column>
   <column name="year_turnover" type="String" xid="xid12"></column>
   <column name="enterprise_scale" type="String" xid="xid13"></column>
   <column name="mnemonic" type="String" xid="xid14"></column>
   <column name="keywords" type="String" xid="xid15"></column>
   <column name="phone" type="String" xid="xid16"></column>
   <column name="fax" type="String" xid="xid17"></column>
   <column name="email" type="String" xid="xid18"></column>
   <column name="website" type="String" xid="xid19"></column>
   <column name="micro_blog" type="String" xid="xid20"></column>
   <column name="area" type="String" xid="xid21"></column>
   <column name="address" type="String" xid="xid22"></column>
   <column name="trade_id" type="String" xid="xid23"></column>
   <column name="main_product" type="String" xid="xid24"></column>
   <column name="add_linkman" type="String" xid="xid25"></column>
   <column name="relation_linkman" type="String" xid="xid26"></column>
   <column name="invoice" type="String" xid="xid27"></column>
   <column name="tax_num" type="String" xid="xid28"></column>
   <column name="invoice_address" type="String" xid="xid29"></column>
   <column name="bank_name" type="String" xid="xid30"></column>
   <column name="bank" type="String" xid="xid31"></column>
   <column name="bank_account" type="String" xid="xid32"></column>
   <column name="remark" type="String" xid="xid33"></column>
   <data xid="default1">[{&quot;id&quot;:&quot;10001&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="clientData" idColumn="client_id">
   <column name="client_id" type="String" xid="xid34"></column>
   <column name="abroad" type="String" xid="xid35"></column>
   <column name="accessory" type="String" xid="xid36"></column>
   <column name="address" type="String" xid="xid37"></column>
   <column name="age" type="String" xid="xid38"></column>
   <column name="animal" type="String" xid="xid39"></column>
   <column name="anniversaries" type="Date" xid="xid40"></column>
   <column name="area" type="String" xid="xid41"></column>
   <column name="belief" type="String" xid="xid42"></column>
   <column name="bill" type="String" xid="xid43"></column>
   <column name="book" type="String" xid="xid44"></column>
   <column name="brand" type="String" xid="xid45"></column>
   <column name="brithday" type="Date" xid="xid46"></column>
   <column name="business_type" type="String" xid="xid47"></column>
   <column name="buy_ability" type="String" xid="xid48"></column>
   <column name="can_see" type="String" xid="xid49"></column>
   <column name="car_brand" type="String" xid="xid50"></column>
   <column name="cartoon_characters" type="String" xid="xid51"></column>
   <column name="category" type="String" xid="xid52"></column>
   <column name="category_name" type="String" xid="xid53"></column>
   <column name="character" type="String" xid="xid54"></column>
   <column name="city" type="String" xid="xid55"></column>
   <column name="client_name" type="String" xid="xid57"></column>
   <column name="clothing" type="String" xid="xid58"></column>
   <column name="color" type="String" xid="xid59"></column>
   <column name="company" type="String" xid="xid60"></column>
   <column name="constellation" type="String" xid="xid61"></column>
   <column name="contract" type="String" xid="xid62"></column>
   <column name="country" type="String" xid="xid63"></column>
   <column name="create_at" type="String" xid="xid64"></column>
   <column name="create_staff" type="String" xid="xid65"></column>
   <column name="create_staff_id" type="String" xid="xid66"></column>
   <column name="custom_code" type="String" xid="xid67"></column>
   <column name="deal_impression" type="String" xid="xid68"></column>
   <column name="del_staff" type="String" xid="xid69"></column>
   <column name="del_time" type="String" xid="xid70"></column>
   <column name="documentary" type="String" xid="xid71"></column>
   <column name="drink" type="String" xid="xid72"></column>
   <column name="education" type="String" xid="xid73"></column>
   <column name="element" type="String" xid="xid74"></column>
   <column name="email" type="String" xid="xid75"></column>
   <column name="en_name" type="String" xid="xid76"></column>
   <column name="enterprise_nature" type="String" xid="xid77"></column>
   <column name="enterprise_scale" type="String" xid="xid78"></column>
   <column name="establish_time" type="String" xid="xid79"></column>
   <column name="family_background" type="String" xid="xid80"></column>
   <column name="fax" type="String" xid="xid81"></column>
   <column name="festival" type="Date" xid="xid82"></column>
   <column name="fid" type="String" xid="xid83"></column>
   <column name="floriculture" type="String" xid="xid84"></column>
   <column name="food" type="String" xid="xid85"></column>
   <column name="form" type="String" xid="xid86"></column>
   <column name="game" type="String" xid="xid87"></column>
   <column name="gift" type="String" xid="xid88"></column>
   <column name="hobby" type="String" xid="xid89"></column>
   <column name="old_address" type="String" xid="xid90"></column>
   <column name="hotel" type="String" xid="xid91"></column>
   <column name="household" type="String" xid="xid92"></column>
   <column name="id_num" type="String" xid="xid93"></column>
   <column name="is_del" type="String" xid="xid94"></column>
   <column name="keywords" type="String" xid="xid95"></column>
   <column name="last_contract_staff" type="String" xid="xid96"></column>
   <column name="last_contract_time" type="String" xid="xid97"></column>
   <column name="level_id" type="String" xid="xid98"></column>
   <column name="like" type="String" xid="xid99"></column>
   <column name="love_experience" type="String" xid="xid100"></column>
   <column name="main_product" type="String" xid="xid101"></column>
   <column name="micro_blog" type="String" xid="xid102"></column>
   <column name="mnemonic" type="String" xid="xid103"></column>
   <column name="movie" type="String" xid="xid104"></column>
   <column name="music" type="String" xid="xid105"></column>
   <column name="offer_state" type="String" xid="xid106"></column>
   <column name="other_contact" type="String" xid="xid107"></column>
   <column name="person" type="String" xid="xid108"></column>
   <column name="phone" type="String" xid="xid109"></column>
   <column name="profession" type="String" xid="xid110"></column>
   <column name="program" type="String" xid="xid111"></column>
   <column name="race" type="String" xid="xid112"></column>
   <column name="region_id" type="String" xid="xid113"></column>
   <column name="region_name" type="String" xid="xid114"></column>
   <column name="relevance_client" type="String" xid="xid115"></column>
   <column name="remark" type="String" xid="xid116"></column>
   <column name="service_rate" type="String" xid="xid117"></column>
   <column name="shape" type="String" xid="xid118"></column>
   <column name="skill" type="String" xid="xid119"></column>
   <column name="source" type="String" xid="xid120"></column>
   <column name="style" type="String" xid="xid121"></column>
   <column name="system_id" type="String" xid="xid122"></column>
   <column name="trade_id" type="String" xid="xid123"></column>
   <column name="update_at" type="String" xid="xid124"></column>
   <column name="update_staff" type="String" xid="xid125"></column>
   <column name="website" type="String" xid="xid126"></column>
   <column name="wechat" type="String" xid="xid127"></column>
   <column name="year_turnover" type="String" xid="xid128"></column>
   <column name="zodiac" type="String" xid="xid129"></column>
   <column name="bank_name" type="String" xid="xid130"></column>
   <column name="bank" type="String" xid="xid131"></column>
   <column name="tax_num" type="String" xid="xid132"></column>
   <column name="bank_account" type="String" xid="xid133"></column>
   <column name="pet" type="String" xid="xid1"></column>
   <column name="level_name" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1" style="height:100%;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="客户信息" xid="button5" target="content1"> 
          <i xid="i17"/>  
          <span xid="span20">客户信息</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="基本信息" xid="button6" target="content3"> 
          <i xid="i19"/>  
          <span xid="span21">基本信息</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="个人喜好" xid="button7" target="content4"> 
          <i xid="i20"/>  
          <span xid="span22">个人喜好</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="恋爱经历" xid="button11" target="content5"> 
          <i xid="i24"/>  
          <span xid="span26">恋爱经历</span>
        </a> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content2">
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1" wrap="false" slidable="false" routable="false"
        swipe="false"> 
        <div class="x-contents-content" xid="content1" style="background-color:#EBEAF0;"> 
          <div xid="div1" class="list-group-item" style="background-color:#EBEAF0;"> 
            <span xid="span1"><![CDATA[客户]]></span> 
          </div>  
          <div xid="div2" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;"> 
            <div xid="div3" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1" style="width:90px;font-size:16px"><![CDATA[客户名称]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="nameInp" required="required" bind-ref="$model.clientData.ref(&quot;client_name&quot;)"/> 
              </div> 
            </div>  
            <div xid="div20" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit19"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label19"><![CDATA[客户分类]]></label>  
                <div class="x-edit" xid="div21"> 
                  <div class="input-group" xid="div22"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="typeInp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref='$model.clientData.ref("category_name")'/>  
                    <span class="input-group-btn" xid="span2"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div28" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit21"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label21"><![CDATA[销售区域]]></label>  
                <div class="x-edit" xid="div26"> 
                  <div class="input-group" xid="div27"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="region_ID_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref='$model.clientData.ref("region_name")'/>  
                    </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div34" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit23"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label23"><![CDATA[业务模式]]></label>  
                <div class="x-edit" xid="div32"> 
                  <div class="input-group" xid="div33"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="business_type_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;business_type&quot;)"/>  
                    <span class="input-group-btn" xid="span6"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div31" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit22"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label22">客户等级</label>  
                <div class="x-edit" xid="div29"> 
                  <div class="input-group" xid="div30"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="level_Id_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref='$model.clientData.ref("level_name")'/>  
                    <span class="input-group-btn" xid="span5"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div37" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit24"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label24"><![CDATA[客户来源]]></label>  
                <div class="x-edit" xid="div35"> 
                  <div class="input-group" xid="div36"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="source_Inp" disabled="true"
                      style="background-color:white;border-style:none none none none;"
                      bind-ref="$model.clientData.ref(&quot;source&quot;)"/>  
                    <span class="input-group-btn" xid="span7"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div47" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit28"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label25"><![CDATA[成立时间]]></label>  
                <div class="x-edit" xid="div48"> 
                  <div class="input-group" xid="div46"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="establish_Time_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;establish_time&quot;)"/>  
                    <span class="input-group-btn" xid="span8"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div45" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit26"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label28">服务满意度</label>  
                <div class="x-edit" xid="div49"> 
                  <div class="input-group" xid="div44"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="service_Rate_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;service_rate&quot;)"/>  
                    <span class="input-group-btn" xid="span9"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div38" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit27"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label27">交易印象</label>  
                <div class="x-edit" xid="div40"> 
                  <div class="input-group" xid="div41"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="deal_Impression_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;deal_impression&quot;)"/>  
                    <span class="input-group-btn" xid="span10"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div4" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit2"> 
                <label class="x-label" xid="label2" style="width:90px;font-size:16px"><![CDATA[开户名]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="bank_Name_Inp" bind-ref="$model.clientData.ref(&quot;bank_name&quot;)"/> 
              </div> 
            </div>  
            <div xid="div5" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit3"> 
                <label class="x-label" xid="label3" style="width:90px;font-size:16px"><![CDATA[开户行]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="bank_Inp" bind-ref="$model.clientData.ref(&quot;bank&quot;)"/> 
              </div> 
            </div>  
            <div xid="div8" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit4"> 
                <label class="x-label" xid="label4" style="width:90px;font-size:16px"><![CDATA[税号]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="tax_Num_Inp" bind-ref="$model.clientData.ref(&quot;tax_num&quot;)"/> 
              </div> 
            </div>  
            <div xid="div7" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit6"> 
                <label class="x-label" xid="label5" style="width:90px;font-size:16px"><![CDATA[备注]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="remark_Inp" bind-ref="$model.clientData.ref(&quot;remark&quot;)"/> 
              </div> 
            </div>  
            <div xid="div6" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit5"> 
                <label class="x-label" xid="label6" style="width:90px;font-size:16px"><![CDATA[助记码]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="mnemonic_Inp" bind-ref="$model.clientData.ref(&quot;mnemonic&quot;)"/> 
              </div> 
            </div>  
            <div xid="div11" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit7"> 
                <label class="x-label" xid="label7" style="width:90px;font-size:16px"><![CDATA[关键词]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="keywords_Inp" bind-ref="$model.clientData.ref(&quot;keywords&quot;)"/> 
              </div> 
            </div>  
            <div xid="div13" class="list-group-item" style=";border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12"> 
                <label class="x-label" xid="label11" style="width:90px;font-size:16px"><![CDATA[交易印象]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="website_Inp" bind-ref="$model.clientData.ref(&quot;website&quot;)" /> 
              </div> 
            </div><div xid="div10" class="list-group-item" style=";border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit9"> 
                <label class="x-label" xid="label8" style="width:90px;font-size:16px"><![CDATA[手机号]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="phone_Inp" bind-ref="$model.clientData.ref(&quot;phone&quot;)"/> 
              </div> 
            </div>  
            <div xid="div9" class="list-group-item" style=";border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit8"> 
                <label class="x-label" xid="label9" style="width:90px;font-size:16px"><![CDATA[微信号]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="fax_Inp" bind-ref="$model.clientData.ref(&quot;fax&quot;)"/> 
              </div> 
            </div>  
            <div xid="div14" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit10"> 
                <label class="x-label" xid="label10" style="width:90px;font-size:16px"><![CDATA[邮箱]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="email_Inp" bind-ref="$model.clientData.ref(&quot;email&quot;)"/> 
              </div> 
            </div>  
              
            <div xid="div12" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit11"> 
                <label class="x-label" xid="label12" style="width:90px;font-size:16px"><![CDATA[微博]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="micro_Blog_Inp" bind-ref="$model.clientData.ref(&quot;micro_blog&quot;)"/> 
              </div> 
            </div>  
            <div xid="div19" class="list-group-item" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit13"> 
                <label class="x-label" xid="label13" style="width:90px;font-size:16px"><![CDATA[地址]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="address_Inp" bind-ref="$model.clientData.ref(&quot;address&quot;)"/> 
              </div> 
            </div>  
            <div xid="div18" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit17"> 
                <label class="x-label" xid="label16" style="width:90px;font-size:16px"><![CDATA[主营产品]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="main_Product_Inp"/> 
              </div> 
            </div>  
            <div xid="div17" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit16"> 
                <label class="x-label" xid="label17" style="width:90px;font-size:16px"><![CDATA[银行账号]]></label>  
                <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                  xid="bank_Account_Inp" bind-ref="$model.clientData.ref(&quot;bank_account&quot;)"/> 
              </div> 
            </div>  
            <div xid="div43" class="list-group-item" style="display:none;display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit25"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label26"><![CDATA[行业]]></label>  
                <div class="x-edit" xid="div39"> 
                  <div class="input-group" xid="div42"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="trade_Id_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;trade_id&quot;)"/>  
                    <span class="input-group-btn" xid="span11"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div59" class="list-group-item" style="display:none;;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit32"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label29"><![CDATA[企业性质]]></label>  
                <div class="x-edit" xid="div60"> 
                  <div class="input-group" xid="div58"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="enterprise_Nature_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;enterprise_nature&quot;)"/>  
                    <span class="input-group-btn" xid="span12"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div57" class="list-group-item" style="display:none;;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit30"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label32"><![CDATA[年营业额]]></label>  
                <div class="x-edit" xid="div61"> 
                  <div class="input-group" xid="div56"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="year_Turnover_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;year_turnover&quot;)"/>  
                    <span class="input-group-btn" xid="span13"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div>  
            <div xid="div50" class="list-group-item" style="display:none;border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit" xid="labelEdit31"> 
                <label class="x-label" style="width:90px;font-size:16px" xid="label31"><![CDATA[企业规模]]></label>  
                <div class="x-edit" xid="div52"> 
                  <div class="input-group" xid="div53"> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="enterprise_Scale_Inp" style="background-color:white;border-style:none none none none;"
                      disabled="true" bind-ref="$model.clientData.ref(&quot;enterprise_scale&quot;)"/>  
                    <span class="input-group-btn" xid="span14"> 
                      </span> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1" style="height:5px;"> 
            <div class="x-col" xid="col3"/> 
          </div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2" style="height:5px;"> 
            <div class="x-col" xid="col4"/> 
          </div>  
          <div xid="div72" class="list-group-item" style="border-right-style:none;border-left-style:none;padding-right:0px;padding-top:2px;padding-bottom:2px;"></div>  
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row3" style="height:10px;"> 
            <div class="x-col" xid="col1"/> 
          </div> 
        </div>  
        <div class="x-contents-content" xid="content3"> 
          <div xid="div51" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit18"> 
              <label class="x-label" xid="label18" style="width:90px;font-size:16px;text-align:center;"><![CDATA[英文名字]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input3" bind-ref='$model.clientData.ref("en_name")'/>
            </div> 
          </div>  
          <div xid="div54" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit20"> 
              <label class="x-label" xid="label36" style="width:90px;font-size:16px;text-align:center;"><![CDATA[年龄]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input5" bind-ref='$model.clientData.ref("age")'/>
            </div> 
          </div>  
          <div xid="div55" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit36"> 
              <label class="x-label" xid="label20" style="width:90px;font-size:16px;text-align:center;"><![CDATA[属相]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input4" bind-ref='$model.clientData.ref("zodiac")'/>
            </div> 
          </div>  
          <div xid="div70" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit37"> 
              <label class="x-label" xid="label38" style="width:90px;font-size:16px;text-align:center;"><![CDATA[生日]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input9" dataType="Date" bind-ref='$model.clientData.ref("brithday")'/>
            </div> 
          </div>  
          <div xid="div71" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit39"> 
              <label class="x-label" xid="label37" style="width:90px;font-size:16px;text-align:center;"><![CDATA[星座]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input8" bind-ref='$model.clientData.ref("constellation")'/>
            </div> 
          </div>  
          <div xid="div68" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit40"> 
              <label class="x-label" xid="label40" style="width:90px;font-size:16px;text-align:center;"><![CDATA[性格]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input6" bind-ref='$model.clientData.ref("character")'/>
            </div> 
          </div>  
          <div xid="div69" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit38"> 
              <label class="x-label" xid="label39" style="width:90px;font-size:16px;text-align:center;"><![CDATA[才艺]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input7" bind-ref='$model.clientData.ref("skill")'/>
            </div> 
          </div>  
          <div xid="div80" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit41"> 
              <label class="x-label" xid="label46" style="width:90px;font-size:16px;text-align:center;"><![CDATA[职业]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input17" bind-ref='$model.clientData.ref("profession")'/>
            </div> 
          </div>  
          <div xid="div78" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit46"> 
              <label class="x-label" xid="label43" style="width:90px;font-size:16px;text-align:center;"><![CDATA[企业]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input16" bind-ref='$model.clientData.ref("company")'/>
            </div> 
          </div>  
          <div xid="div73" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit48"> 
              <label class="x-label" xid="label48" style="width:90px;font-size:16px;text-align:center;"><![CDATA[身份证]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input14" bind-ref='$model.clientData.ref("id_num")'/>
            </div> 
          </div>  
          <div xid="div75" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit42"> 
              <label class="x-label" xid="label45" style="width:90px;font-size:16px;text-align:center;"><![CDATA[微信]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input10" bind-ref='$model.clientData.ref("wechat")'/>
            </div> 
          </div>
          <div xid="div74" lang="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit44"> 
              <label class="x-label" xid="label41" style="width:90px;font-size:16px;text-align:center;"><![CDATA[其他社交]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input15" bind-ref='$model.clientData.ref("other_contact")'/>
            </div> 
          </div>
          <div xid="div81" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit43"> 
              <label class="x-label" xid="label44" style="width:90px;font-size:16px;text-align:center;"><![CDATA[国籍]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input12" bind-ref='$model.clientData.ref("country")'/>
            </div> 
          </div>  
          <div xid="div86" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit49"> 
              <label class="x-label" xid="label49" style="width:90px;font-size:16px;text-align:center;"><![CDATA[民族]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input19" bind-ref='$model.clientData.ref("race")'/>
            </div> 
          </div>  
          <div xid="div84" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit51"> 
              <label class="x-label" xid="label51" style="width:90px;font-size:16px;text-align:center;"><![CDATA[最高学历]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input20" bind-ref='$model.clientData.ref("education")'/>
            </div> 
          </div>  
          <div xid="div85" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit53"> 
              <label class="x-label" xid="label53" style="width:90px;font-size:16px;text-align:center;"><![CDATA[留学地点]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input21" bind-ref='$model.clientData.ref("abroad")'/>
            </div> 
          </div>  
          <div xid="div87" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit54"> 
              <label class="x-label" xid="label54" style="width:90px;font-size:16px;text-align:center;"><![CDATA[曾居地址]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input23" bind-ref='$model.clientData.ref("old_address")'/>
            </div> 
          </div>  
          <div xid="div92" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit55"> 
              <label class="x-label" xid="label55" style="width:90px;font-size:16px;text-align:center;"><![CDATA[户籍]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input25" bind-ref='$model.clientData.ref("household")'/>
            </div> 
          </div>  
          <div xid="div90" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit57"> 
              <label class="x-label" xid="label57" style="width:90px;font-size:16px;text-align:center;"><![CDATA[家庭背景]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input26" bind-ref='$model.clientData.ref("family_background")'/>
            </div> 
          </div>  
          <div xid="div91" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit59"> 
              <label class="x-label" xid="label59" style="width:90px;font-size:16px;text-align:center;"><![CDATA[宗教信仰]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input27" bind-ref='$model.clientData.ref("belief")'/>
            </div> 
          </div>  
          <div xid="div89" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit58"> 
              <label class="x-label" xid="label58" style="width:90px;font-size:16px;text-align:center;"><![CDATA[消费能力]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input28" bind-ref='$model.clientData.ref("buy_ability")'/>
            </div> 
          </div>  
          <div xid="div88" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit56"> 
              <label class="x-label" xid="label56" style="width:90px;font-size:16px;text-align:center;"><![CDATA[汽车品牌]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input24" bind-ref='$model.clientData.ref("car_brand")'/>
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content" xid="content4">
          <div xid="div94" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit61"> 
              <label class="x-label" xid="label63" style="width:90px;font-size:16px;text-align:center;"><![CDATA[颜色]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input46" bind-ref='$model.clientData.ref("color")'/>
            </div> 
          </div>  
          <div xid="div97" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit62"> 
              <label class="x-label" xid="label62" style="width:90px;font-size:16px;text-align:center;"><![CDATA[花艺]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input45" bind-ref='$model.clientData.ref("floriculture")'/>
            </div> 
          </div>  
          <div xid="div95" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit63"> 
              <label class="x-label" xid="label77" style="width:90px;font-size:16px;text-align:center;"><![CDATA[风格]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input43" bind-ref='$model.clientData.ref("style")'/>
            </div> 
          </div>  
          <div xid="div96" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit80"> 
              <label class="x-label" xid="label61" style="width:90px;font-size:16px;text-align:center;"><![CDATA[形式]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input44" bind-ref='$model.clientData.ref("form")'/>
            </div> 
          </div>  
          <div xid="div101" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit78"> 
              <label class="x-label" xid="label75" style="width:90px;font-size:16px;text-align:center;"><![CDATA[服装]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input39" bind-ref='$model.clientData.ref("clothing")'/>
            </div> 
          </div>  
          <div xid="div102" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit81"> 
              <label class="x-label" xid="label76" style="width:90px;font-size:16px;text-align:center;"><![CDATA[节日]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input40" bind-ref='$model.clientData.ref("festival")'/>
            </div> 
          </div>  
          <div xid="div106" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit82"> 
              <label class="x-label" xid="label69" style="width:90px;font-size:16px;text-align:center;"><![CDATA[纪念日]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input42" bind-ref='$model.clientData.ref("anniversaries")'/>
            </div> 
          </div>  
          <div xid="div107" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit79"> 
              <label class="x-label" xid="label74" style="width:90px;font-size:16px;text-align:center;"><![CDATA[礼物]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input41" bind-ref='$model.clientData.ref("gift")'/>
            </div> 
          </div>  
          <div xid="div116" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit83"> 
              <label class="x-label" xid="label71" style="width:90px;font-size:16px;text-align:center;"><![CDATA[元素]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input54" bind-ref='$model.clientData.ref("element")'/>
            </div> 
          </div>  
          <div xid="div98" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit69"> 
              <label class="x-label" xid="label66" style="width:90px;font-size:16px;text-align:center;"><![CDATA[形状]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input50" bind-ref='$model.clientData.ref("shape")'/>
            </div> 
          </div>  
          <div xid="div105" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit67"> 
              <label class="x-label" xid="label65" style="width:90px;font-size:16px;text-align:center;"><![CDATA[电影]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input48" bind-ref='$model.clientData.ref("movie")'/>
            </div> 
          </div>  
          <div xid="div103" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit84"> 
              <label class="x-label" xid="label68" style="width:90px;font-size:16px;text-align:center;"><![CDATA[书籍]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input49" bind-ref='$model.clientData.ref("book")'/>
            </div> 
          </div>  
          <div xid="div104" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit86"> 
              <label class="x-label" xid="label72" style="width:90px;font-size:16px;text-align:center;"><![CDATA[音乐]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input51" bind-ref='$model.clientData.ref("music")'/>
            </div> 
          </div>  
          <div xid="div100" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit85"> 
              <label class="x-label" xid="label70" style="width:90px;font-size:16px;text-align:center;"><![CDATA[品牌]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input52" bind-ref='$model.clientData.ref("brand")'/>
            </div> 
          </div>  
          <div xid="div99" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit70"> 
              <label class="x-label" xid="label67" style="width:90px;font-size:16px;text-align:center;"><![CDATA[游戏]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input47" bind-ref='$model.clientData.ref("game")'/>
            </div> 
          </div>  
          <div xid="div114" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit87"> 
              <label class="x-label" xid="label73" style="width:90px;font-size:16px;text-align:center;"><![CDATA[食物]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input53" bind-ref='$model.clientData.ref("food")'/>
            </div> 
          </div>  
          <div xid="div118" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit68"> 
              <label class="x-label" xid="label64" style="width:90px;font-size:16px;text-align:center;"><![CDATA[饮品]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input56" bind-ref='$model.clientData.ref("drink")'/>
            </div> 
          </div>  
          <div xid="div120" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit71"> 
              <label class="x-label" xid="label82" style="width:90px;font-size:16px;text-align:center;"><![CDATA[爱好]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input34" bind-ref='$model.clientData.ref("hobby")'/>
            </div> 
          </div>  
          <div xid="div117" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit76"> 
              <label class="x-label" xid="label80" style="width:90px;font-size:16px;text-align:center;"><![CDATA[城市]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input35" bind-ref='$model.clientData.ref("city")'/>
            </div> 
          </div>  
          <div xid="div119" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit72"> 
              <label class="x-label" xid="label81" style="width:90px;font-size:16px;text-align:center;"><![CDATA[酒店]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input36" bind-ref='$model.clientData.ref("hotel")'/>
            </div> 
          </div>  
          <div xid="div115" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit73"> 
              <label class="x-label" xid="label87" style="width:90px;font-size:16px;text-align:center;"><![CDATA[喜好]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input55" bind-ref='$model.clientData.ref("like")'/>
            </div> 
          </div>  
          <div xid="div112" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit77"> 
              <label class="x-label" xid="label79" style="width:90px;font-size:16px;text-align:center;"><![CDATA[人物]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input37" bind-ref='$model.clientData.ref("person")'/>
            </div> 
          </div>  
          <div xid="div108" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit74"> 
              <label class="x-label" xid="label86" style="width:90px;font-size:16px;text-align:center;"><![CDATA[宠物]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input31" bind-ref='$model.clientData.ref("pet")'/>
            </div> 
          </div>  
          <div xid="div109" lang="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit65"> 
              <label class="x-label" xid="label84" style="width:90px;font-size:16px;text-align:center;"><![CDATA[动物]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input32" bind-ref='$model.clientData.ref("animal")'/>
            </div> 
          </div>  
          <div xid="div110" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit64"> 
              <label class="x-label" xid="label78" style="width:90px;font-size:16px;text-align:center;"><![CDATA[卡通人物]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input33" bind-ref='$model.clientData.ref("cartoon_characters")'/>
            </div> 
          </div>  
          <div xid="div111" style="border-right-style:none;border-left-style:none;padding:5px 5px 5px 5px;"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit66"> 
              <label class="x-label" xid="label83" style="width:90px;font-size:16px;text-align:center;"><![CDATA[节目]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="input38" bind-ref='$model.clientData.ref("program")'/>
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content" xid="content5">
          <div xid="div25" style="height:10px;"/>
          <div xid="div121">
            <label class="x-label" xid="label88" style="width:90px;font-size:16px;text-align:center;"><![CDATA[恋爱经历]]></label>
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit88"> 
              <textarea component="$UI/system/components/justep/textarea/textarea"
                class="form-control x-edit" xid="textarea1" style="height:200px;" bind-ref='$model.clientData.ref("love_experience")'/>
            </div>
          </div>  
          <div xid="div122"> 
            <label class="x-label" xid="label89" style="width:90px;font-size:16px;text-align:center;"><![CDATA[备注]]></label>
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelEdit89"> 
              <textarea component="$UI/system/components/justep/textarea/textarea"
                class="form-control x-edit" xid="textarea2" style="height:150px;" bind-ref='$model.clientData.ref("remark")'/>
            </div> 
          </div> 
        </div>
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
    src="$UI/wdPro/client/dialog/dialog/enterprise_choose.w" style="top:12px;left:152px;"/> 
</div>
