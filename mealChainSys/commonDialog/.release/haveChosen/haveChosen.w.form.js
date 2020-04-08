define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/mealChainSys/commonDialog/haveChosen'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cf6zyam';
	this._flag_='2d24a12b46dfd4e11ded834086ed99e8';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col0":{"define":"col0","name":"col0","relation":"col0","type":"String"},"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"}},"directDelete":false,"events":{},"idColumn":"col0","initData":"[{\"col0\":\"1\",\"col1\":\"鸡\"},{\"col0\":\"2\",\"col1\":\"鸭\"},{\"col0\":\"3\",\"col1\":\"牛肉\"}]","isMain":false,"limit":20,"xid":"data1"});
}}); 
return __result;});