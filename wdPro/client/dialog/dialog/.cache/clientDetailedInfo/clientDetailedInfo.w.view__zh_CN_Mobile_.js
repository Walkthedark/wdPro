window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_fb5658ae70d24e57a51cf3ccf5db71b3l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_393b3bae6017470494fb96ea5e5c2c62l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_f34704120cbf4ebd9fdfe46af86512b9l_zh_CNs_d_m/system/core.min.js','/v_018ff1ce4a9d479fb92689be44a77458l_zh_CNs_d_m/system/common.min.js','/v_05db333355364c218abf792847b2d9c2l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/client/dialog/dialog/clientDetailedInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMFv2ie';
	this._flag_='fc297b19455a562b2ec02395ff271344';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"add_linkman":{"define":"add_linkman","name":"add_linkman","relation":"add_linkman","type":"String"},"address":{"define":"address","name":"address","relation":"address","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"business_type":{"define":"business_type","name":"business_type","relation":"business_type","type":"String"},"category":{"define":"category","name":"category","relation":"category","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"deal_impression":{"define":"deal_impression","name":"deal_impression","relation":"deal_impression","type":"String"},"email":{"define":"email","name":"email","relation":"email","type":"String"},"enterprise_nature":{"define":"enterprise_nature","name":"enterprise_nature","relation":"enterprise_nature","type":"String"},"enterprise_scale":{"define":"enterprise_scale","name":"enterprise_scale","relation":"enterprise_scale","type":"String"},"establish_time":{"define":"establish_time","name":"establish_time","relation":"establish_time","type":"String"},"fax":{"define":"fax","name":"fax","relation":"fax","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoice":{"define":"invoice","name":"invoice","relation":"invoice","type":"String"},"invoice_address":{"define":"invoice_address","name":"invoice_address","relation":"invoice_address","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"},"main_product":{"define":"main_product","name":"main_product","relation":"main_product","type":"String"},"micro_blog":{"define":"micro_blog","name":"micro_blog","relation":"micro_blog","type":"String"},"mnemonic":{"define":"mnemonic","name":"mnemonic","relation":"mnemonic","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"region_id":{"define":"region_id","name":"region_id","relation":"region_id","type":"String"},"relation_linkman":{"define":"relation_linkman","name":"relation_linkman","relation":"relation_linkman","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"service_rate":{"define":"service_rate","name":"service_rate","relation":"service_rate","type":"String"},"source":{"define":"source","name":"source","relation":"source","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"},"trade_id":{"define":"trade_id","name":"trade_id","relation":"trade_id","type":"String"},"website":{"define":"website","name":"website","relation":"website","type":"String"},"year_turnover":{"define":"year_turnover","name":"year_turnover","relation":"year_turnover","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"10001\"}]","isMain":false,"limit":20,"xid":"dataJson"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"abroad":{"define":"abroad","name":"abroad","relation":"abroad","type":"String"},"accessory":{"define":"accessory","name":"accessory","relation":"accessory","type":"String"},"address":{"define":"address","name":"address","relation":"address","type":"String"},"age":{"define":"age","name":"age","relation":"age","type":"String"},"animal":{"define":"animal","name":"animal","relation":"animal","type":"String"},"anniversaries":{"define":"anniversaries","name":"anniversaries","relation":"anniversaries","rules":{"date":true},"type":"Date"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"belief":{"define":"belief","name":"belief","relation":"belief","type":"String"},"bill":{"define":"bill","name":"bill","relation":"bill","type":"String"},"book":{"define":"book","name":"book","relation":"book","type":"String"},"brand":{"define":"brand","name":"brand","relation":"brand","type":"String"},"brithday":{"define":"brithday","name":"brithday","relation":"brithday","rules":{"date":true},"type":"Date"},"business_type":{"define":"business_type","name":"business_type","relation":"business_type","type":"String"},"buy_ability":{"define":"buy_ability","name":"buy_ability","relation":"buy_ability","type":"String"},"can_see":{"define":"can_see","name":"can_see","relation":"can_see","type":"String"},"car_brand":{"define":"car_brand","name":"car_brand","relation":"car_brand","type":"String"},"cartoon_characters":{"define":"cartoon_characters","name":"cartoon_characters","relation":"cartoon_characters","type":"String"},"category":{"define":"category","name":"category","relation":"category","type":"String"},"category_name":{"define":"category_name","name":"category_name","relation":"category_name","type":"String"},"character":{"define":"character","name":"character","relation":"character","type":"String"},"city":{"define":"city","name":"city","relation":"city","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"clothing":{"define":"clothing","name":"clothing","relation":"clothing","type":"String"},"color":{"define":"color","name":"color","relation":"color","type":"String"},"company":{"define":"company","name":"company","relation":"company","type":"String"},"constellation":{"define":"constellation","name":"constellation","relation":"constellation","type":"String"},"contract":{"define":"contract","name":"contract","relation":"contract","type":"String"},"country":{"define":"country","name":"country","relation":"country","type":"String"},"create_at":{"define":"create_at","name":"create_at","relation":"create_at","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"create_staff_id":{"define":"create_staff_id","name":"create_staff_id","relation":"create_staff_id","type":"String"},"custom_code":{"define":"custom_code","name":"custom_code","relation":"custom_code","type":"String"},"deal_impression":{"define":"deal_impression","name":"deal_impression","relation":"deal_impression","type":"String"},"del_staff":{"define":"del_staff","name":"del_staff","relation":"del_staff","type":"String"},"del_time":{"define":"del_time","name":"del_time","relation":"del_time","type":"String"},"documentary":{"define":"documentary","name":"documentary","relation":"documentary","type":"String"},"drink":{"define":"drink","name":"drink","relation":"drink","type":"String"},"education":{"define":"education","name":"education","relation":"education","type":"String"},"element":{"define":"element","name":"element","relation":"element","type":"String"},"email":{"define":"email","name":"email","relation":"email","type":"String"},"en_name":{"define":"en_name","name":"en_name","relation":"en_name","type":"String"},"enterprise_nature":{"define":"enterprise_nature","name":"enterprise_nature","relation":"enterprise_nature","type":"String"},"enterprise_scale":{"define":"enterprise_scale","name":"enterprise_scale","relation":"enterprise_scale","type":"String"},"establish_time":{"define":"establish_time","name":"establish_time","relation":"establish_time","type":"String"},"family_background":{"define":"family_background","name":"family_background","relation":"family_background","type":"String"},"fax":{"define":"fax","name":"fax","relation":"fax","type":"String"},"festival":{"define":"festival","name":"festival","relation":"festival","rules":{"date":true},"type":"Date"},"fid":{"define":"fid","name":"fid","relation":"fid","type":"String"},"floriculture":{"define":"floriculture","name":"floriculture","relation":"floriculture","type":"String"},"food":{"define":"food","name":"food","relation":"food","type":"String"},"form":{"define":"form","name":"form","relation":"form","type":"String"},"game":{"define":"game","name":"game","relation":"game","type":"String"},"gift":{"define":"gift","name":"gift","relation":"gift","type":"String"},"hobby":{"define":"hobby","name":"hobby","relation":"hobby","type":"String"},"hotel":{"define":"hotel","name":"hotel","relation":"hotel","type":"String"},"household":{"define":"household","name":"household","relation":"household","type":"String"},"id_num":{"define":"id_num","name":"id_num","relation":"id_num","type":"String"},"is_del":{"define":"is_del","name":"is_del","relation":"is_del","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"last_contract_staff":{"define":"last_contract_staff","name":"last_contract_staff","relation":"last_contract_staff","type":"String"},"last_contract_time":{"define":"last_contract_time","name":"last_contract_time","relation":"last_contract_time","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"},"level_name":{"define":"level_name","name":"level_name","relation":"level_name","type":"String"},"like":{"define":"like","name":"like","relation":"like","type":"String"},"love_experience":{"define":"love_experience","name":"love_experience","relation":"love_experience","type":"String"},"main_product":{"define":"main_product","name":"main_product","relation":"main_product","type":"String"},"micro_blog":{"define":"micro_blog","name":"micro_blog","relation":"micro_blog","type":"String"},"mnemonic":{"define":"mnemonic","name":"mnemonic","relation":"mnemonic","type":"String"},"movie":{"define":"movie","name":"movie","relation":"movie","type":"String"},"music":{"define":"music","name":"music","relation":"music","type":"String"},"offer_state":{"define":"offer_state","name":"offer_state","relation":"offer_state","type":"String"},"old_address":{"define":"old_address","name":"old_address","relation":"old_address","type":"String"},"other_contact":{"define":"other_contact","name":"other_contact","relation":"other_contact","type":"String"},"person":{"define":"person","name":"person","relation":"person","type":"String"},"pet":{"define":"pet","name":"pet","relation":"pet","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"profession":{"define":"profession","name":"profession","relation":"profession","type":"String"},"program":{"define":"program","name":"program","relation":"program","type":"String"},"race":{"define":"race","name":"race","relation":"race","type":"String"},"region_id":{"define":"region_id","name":"region_id","relation":"region_id","type":"String"},"region_name":{"define":"region_name","name":"region_name","relation":"region_name","type":"String"},"relevance_client":{"define":"relevance_client","name":"relevance_client","relation":"relevance_client","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"service_rate":{"define":"service_rate","name":"service_rate","relation":"service_rate","type":"String"},"shape":{"define":"shape","name":"shape","relation":"shape","type":"String"},"skill":{"define":"skill","name":"skill","relation":"skill","type":"String"},"source":{"define":"source","name":"source","relation":"source","type":"String"},"style":{"define":"style","name":"style","relation":"style","type":"String"},"system_id":{"define":"system_id","name":"system_id","relation":"system_id","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"},"trade_id":{"define":"trade_id","name":"trade_id","relation":"trade_id","type":"String"},"update_at":{"define":"update_at","name":"update_at","relation":"update_at","type":"String"},"update_staff":{"define":"update_staff","name":"update_staff","relation":"update_staff","type":"String"},"website":{"define":"website","name":"website","relation":"website","type":"String"},"wechat":{"define":"wechat","name":"wechat","relation":"wechat","type":"String"},"year_turnover":{"define":"year_turnover","name":"year_turnover","relation":"year_turnover","type":"String"},"zodiac":{"define":"zodiac","name":"zodiac","relation":"zodiac","type":"String"}},"directDelete":false,"events":{},"idColumn":"client_id","isMain":false,"limit":20,"xid":"clientData"});
}}); 
return __result;});
