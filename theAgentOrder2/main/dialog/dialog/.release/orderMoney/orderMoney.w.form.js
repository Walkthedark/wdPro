define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/main/dialog/dialog/orderMoney'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7F36R3';
	this._flag_='cd46736b8205b3f9c53c05f522577410';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"discount_price":{"define":"discount_price","name":"discount_price","relation":"discount_price","type":"String"},"has_pay":{"define":"has_pay","name":"has_pay","relation":"has_pay","type":"String"},"no_pay":{"define":"no_pay","name":"no_pay","relation":"no_pay","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"order_sn":{"define":"order_sn","name":"order_sn","relation":"order_sn","type":"String"},"order_time":{"define":"order_time","name":"order_time","relation":"order_time","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"}},"directDelete":false,"events":{},"idColumn":"order_id","isMain":false,"limit":20,"xid":"dataInfo"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"pay_money":{"define":"pay_money","name":"pay_money","relation":"pay_money","type":"String"},"receipt_date":{"define":"receipt_date","name":"receipt_date","relation":"receipt_date","type":"String"},"receipt_id":{"define":"receipt_id","name":"receipt_id","relation":"receipt_id","type":"String"},"receipt_sn":{"define":"receipt_sn","name":"receipt_sn","relation":"receipt_sn","type":"String"},"receipt_type":{"define":"receipt_type","name":"receipt_type","relation":"receipt_type","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"}},"directDelete":false,"events":{},"idColumn":"receipt_id","isMain":false,"limit":20,"xid":"hostryData"});
}}); 
return __result;});