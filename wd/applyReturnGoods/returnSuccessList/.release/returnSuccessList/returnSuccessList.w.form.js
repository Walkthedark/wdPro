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
var __parent0=require('$model/UI2/wd/applyReturnGoods/returnSuccessList/returnSuccessList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cmuMfqm';
	this._flag_='1fe6641b6f20dcbe7ffc0602ca18b357';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"re_auditing_state":{"define":"re_auditing_state","name":"re_auditing_state","relation":"re_auditing_state","type":"String"},"re_coding":{"define":"re_coding","name":"re_coding","relation":"re_coding","type":"String"},"re_money_state":{"define":"re_money_state","name":"re_money_state","relation":"re_money_state","type":"String"},"re_quantity":{"define":"re_quantity","name":"re_quantity","relation":"re_quantity","rules":{"integer":true},"type":"Integer"},"re_sum":{"define":"re_sum","name":"re_sum","relation":"re_sum","rules":{"number":true},"type":"Float"},"re_time":{"define":"re_time","name":"re_time","relation":"re_time","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"returnOrderListCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"returnOrderList"});
}}); 
return __result;});