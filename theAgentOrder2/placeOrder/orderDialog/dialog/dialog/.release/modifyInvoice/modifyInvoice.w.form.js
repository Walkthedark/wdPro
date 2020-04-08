define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/placeOrder/orderDialog/dialog/dialog/modifyInvoice'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cYjeEjy';
	this._flag_='b697b659fafc156cfd55a5df9b02395f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoice":{"define":"invoice","name":"invoice","relation":"invoice","type":"String"},"invoice_address":{"define":"invoice_address","name":"invoice_address","relation":"invoice_address","type":"String"},"invoice_content":{"define":"invoice_content","name":"invoice_content","relation":"invoice_content","type":"String"},"invoice_mobile":{"define":"invoice_mobile","name":"invoice_mobile","relation":"invoice_mobile","type":"String"},"is_debt_init":{"define":"is_debt_init","name":"is_debt_init","relation":"is_debt_init","type":"String"},"last_reconciliation_time":{"define":"last_reconciliation_time","name":"last_reconciliation_time","relation":"last_reconciliation_time","type":"String"},"pdt_id":{"define":"pdt_id","name":"pdt_id","relation":"pdt_id","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"blankData"});
}}); 
return __result;});