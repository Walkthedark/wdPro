window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_8c1e83f619a54ce196b0d6161130e010l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_9322c84741d54593ad88a22195dd0701l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5dfd285494794619812f843a30c01d28l_zh_CNs_d_m/system/core.min.js','/v_953c9b8ba81e4dac82cc985e1e71885cl_zh_CNs_d_m/system/common.min.js','/v_af8a29ee246c46aa8c9ce53b4630c883l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/wdPro/contactPep/dialog/dialog/linkAddClient'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBNzQ7f';
	this._flag_='088d46b5df0dadaa616460103f6c6f17';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"add_linkman":{"define":"add_linkman","name":"add_linkman","relation":"add_linkman","type":"String"},"address":{"define":"address","name":"address","relation":"address","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"business_type":{"define":"business_type","name":"business_type","relation":"business_type","type":"String"},"category":{"define":"category","name":"category","relation":"category","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"deal_impression":{"define":"deal_impression","name":"deal_impression","relation":"deal_impression","type":"String"},"email":{"define":"email","name":"email","relation":"email","type":"String"},"enterprise_nature":{"define":"enterprise_nature","name":"enterprise_nature","relation":"enterprise_nature","type":"String"},"enterprise_scale":{"define":"enterprise_scale","name":"enterprise_scale","relation":"enterprise_scale","type":"String"},"establish_time":{"define":"establish_time","name":"establish_time","relation":"establish_time","type":"String"},"fax":{"define":"fax","name":"fax","relation":"fax","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoice":{"define":"invoice","name":"invoice","relation":"invoice","type":"String"},"invoice_address":{"define":"invoice_address","name":"invoice_address","relation":"invoice_address","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"},"main_product":{"define":"main_product","name":"main_product","relation":"main_product","type":"String"},"micro_blog":{"define":"micro_blog","name":"micro_blog","relation":"micro_blog","type":"String"},"mnemonic":{"define":"mnemonic","name":"mnemonic","relation":"mnemonic","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"region_id":{"define":"region_id","name":"region_id","relation":"region_id","type":"String"},"relation_linkman":{"define":"relation_linkman","name":"relation_linkman","relation":"relation_linkman","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"service_rate":{"define":"service_rate","name":"service_rate","relation":"service_rate","type":"String"},"source":{"define":"source","name":"source","relation":"source","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"},"trade_id":{"define":"trade_id","name":"trade_id","relation":"trade_id","type":"String"},"website":{"define":"website","name":"website","relation":"website","type":"String"},"year_turnover":{"define":"year_turnover","name":"year_turnover","relation":"year_turnover","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"10001\"}]","isMain":false,"limit":20,"xid":"dataJson"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"staff_id":{"define":"staff_id","name":"staff_id","relation":"staff_id","type":"String"},"staff_name":{"define":"staff_name","name":"staff_name","relation":"staff_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"staff_id","isMain":false,"limit":20,"xid":"linkManData"});
}}); 
return __result;});