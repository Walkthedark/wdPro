define(function(require){
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
var __parent0=require('$model/UI2/wdPro/client/dialog/addClient'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7Z3umq';
	this._flag_='9ad0f4df0cb097cee8057ca235ffc469';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"add_linkman":{"define":"add_linkman","name":"add_linkman","relation":"add_linkman","type":"String"},"address":{"define":"address","name":"address","relation":"address","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"business_type":{"define":"business_type","name":"business_type","relation":"business_type","type":"String"},"category":{"define":"category","name":"category","relation":"category","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"deal_impression":{"define":"deal_impression","name":"deal_impression","relation":"deal_impression","type":"String"},"email":{"define":"email","name":"email","relation":"email","type":"String"},"enterprise_nature":{"define":"enterprise_nature","name":"enterprise_nature","relation":"enterprise_nature","type":"String"},"enterprise_scale":{"define":"enterprise_scale","name":"enterprise_scale","relation":"enterprise_scale","type":"String"},"establish_time":{"define":"establish_time","name":"establish_time","relation":"establish_time","type":"String"},"fax":{"define":"fax","name":"fax","relation":"fax","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoice":{"define":"invoice","name":"invoice","relation":"invoice","type":"String"},"invoice_address":{"define":"invoice_address","name":"invoice_address","relation":"invoice_address","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"},"main_product":{"define":"main_product","name":"main_product","relation":"main_product","type":"String"},"micro_blog":{"define":"micro_blog","name":"micro_blog","relation":"micro_blog","type":"String"},"mnemonic":{"define":"mnemonic","name":"mnemonic","relation":"mnemonic","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"region_id":{"define":"region_id","name":"region_id","relation":"region_id","type":"String"},"relation_linkman":{"define":"relation_linkman","name":"relation_linkman","relation":"relation_linkman","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"service_rate":{"define":"service_rate","name":"service_rate","relation":"service_rate","type":"String"},"source":{"define":"source","name":"source","relation":"source","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"},"trade_id":{"define":"trade_id","name":"trade_id","relation":"trade_id","type":"String"},"website":{"define":"website","name":"website","relation":"website","type":"String"},"year_turnover":{"define":"year_turnover","name":"year_turnover","relation":"year_turnover","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"10001\"}]","isMain":false,"limit":20,"xid":"dataJson"});
}}); 
return __result;});