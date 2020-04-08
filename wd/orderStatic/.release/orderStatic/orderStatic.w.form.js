define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/orderStatic/orderStatic'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAjM7Rf';
	this._flag_='1d2bd79b624dd5c1d0c3d688a1c6eaab';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"year":{"define":"year","name":"year","relation":"year","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"year"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bg":{"define":"bg","name":"bg","relation":"bg","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"month":{"define":"month","name":"month","relation":"month","rules":{"integer":true},"type":"Integer"},"order_quantity":{"define":"order_quantity","name":"order_quantity","relation":"order_quantity","rules":{"integer":true},"type":"Integer"},"order_sum":{"define":"order_sum","name":"order_sum","relation":"order_sum","rules":{"number":true},"type":"Float"},"return_quantity":{"define":"return_quantity","name":"return_quantity","relation":"return_quantity","rules":{"integer":true},"type":"Integer"},"return_sum":{"define":"return_sum","name":"return_sum","relation":"return_sum","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{"onCustomRefresh":"monthOrderCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"monthOrder"});
}}); 
return __result;});