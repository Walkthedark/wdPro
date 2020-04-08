define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/picker/picker');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/picker/popPicker');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/order/dialog/invoice'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUneYZv';
	this._flag_='77ee7770442db3d7765088c2e865ded6';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"desc":{"define":"desc","name":"desc","relation":"desc","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"name\":\"不开发票\",\"desc\":\"默认不开具发票\",\"choose\":\"0\"},{\"id\":\"1\",\"name\":\"普通发票\",\"desc\":\"如需转票请填写完整购方信息并联系商家\",\"choose\":\"0\"},{\"id\":\"2\",\"name\":\"专用发票\",\"desc\":\"需要填写完整专票信息\",\"choose\":\"0\"}]","isMain":false,"limit":20,"xid":"invoiceData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoice":{"define":"invoice","name":"invoice","relation":"invoice","type":"String"},"invoice_address":{"define":"invoice_address","name":"invoice_address","relation":"invoice_address","type":"String"},"invoice_content":{"define":"invoice_content","name":"invoice_content","relation":"invoice_content","type":"String"},"invoice_mobile":{"define":"invoice_mobile","name":"invoice_mobile","relation":"invoice_mobile","type":"String"},"is_debt_init":{"define":"is_debt_init","name":"is_debt_init","relation":"is_debt_init","type":"String"},"last_reconciliation_time":{"define":"last_reconciliation_time","name":"last_reconciliation_time","relation":"last_reconciliation_time","type":"String"},"pdt_id":{"define":"pdt_id","name":"pdt_id","relation":"pdt_id","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"blankData"});
}}); 
return __result;});