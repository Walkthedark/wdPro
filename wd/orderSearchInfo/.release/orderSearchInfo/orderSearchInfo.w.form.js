define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/orderSearchInfo/orderSearchInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ceaq6Zz';
	this._flag_='ef7479e5c10daa136dc122598dbf3946';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"order_auting_state":{"define":"order_auting_state","name":"order_auting_state","relation":"order_auting_state","type":"String"},"order_coding":{"define":"order_coding","name":"order_coding","relation":"order_coding","type":"String"},"order_create_time":{"define":"order_create_time","name":"order_create_time","relation":"order_create_time","type":"String"},"order_money_state":{"define":"order_money_state","name":"order_money_state","relation":"order_money_state","type":"String"},"order_quantity":{"define":"order_quantity","name":"order_quantity","relation":"order_quantity","rules":{"integer":true},"type":"Integer"},"order_sum":{"define":"order_sum","name":"order_sum","relation":"order_sum","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{"onCustomRefresh":"orderGoodsListCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"orderGoodsList"});
}}); 
return __result;});