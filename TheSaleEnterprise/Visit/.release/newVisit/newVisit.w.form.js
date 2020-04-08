define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/newVisit'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFJNZFr';
	this._flag_='3cb6e6bdbfbcc462bff642e8970f6e58';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"date":{"define":"date","name":"date","relation":"date","rules":{"date":true},"type":"Date"},"dz":{"define":"dz","name":"dz","relation":"dz","type":"String"},"netId":{"define":"netId","name":"netId","relation":"netId","type":"String"},"netName":{"define":"netName","name":"netName","relation":"netName","type":"String"},"target":{"define":"target","name":"target","relation":"target","type":"String"}},"directDelete":false,"events":{},"idColumn":"netId","initData":"[{\"id\":\"1\",\"col1\":\"万家天河公园分店\",\"col2\":\"广州市汇佳贸易有限公司\",\"col3\":\"张三\",\"col4\":\"13888888888\",\"col5\":\"S363（吉利大道）\",\"col6\":\"经销商\"}]","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});