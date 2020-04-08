define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/IntegratedQuery/dialog/workQueryInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c63qYba';
	this._flag_='d9569297b2f55059b33c1e74f35938c0';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"cdfz":{"define":"cdfz","name":"cdfz","relation":"cdfz","type":"String"},"cqxs":{"define":"cqxs","name":"cqxs","relation":"cqxs","type":"String"},"date":{"define":"date","name":"date","relation":"date","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"kgt":{"define":"kgt","name":"kgt","relation":"kgt","type":"String"},"sbdd":{"define":"sbdd","name":"sbdd","relation":"sbdd","type":"String"},"sbsj":{"define":"sbsj","name":"sbsj","relation":"sbsj","type":"String"},"sbzp":{"define":"sbzp","name":"sbzp","relation":"sbzp","type":"String"},"xbsj":{"define":"xbsj","name":"xbsj","relation":"xbsj","type":"String"},"xbzp":{"define":"xbzp","name":"xbzp","relation":"xbzp","type":"String"},"ztfz":{"define":"ztfz","name":"ztfz","relation":"ztfz","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"2018-02-02\",\"col2\":\"15:29:30\",\"col4\":\"迟到，没有下班签到记录\"},{\"id\":\"2\",\"col1\":\"2018-02-03\",\"col2\":\"15:29:30\",\"col3\":\"16:29:30\",\"col4\":\"上班签到正常，早退\"}]","isMain":false,"limit":20,"xid":"CData"});
}}); 
return __result;});