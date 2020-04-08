define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/IntegratedQuery/dialog/workQuery'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cVZryAj';
	this._flag_='8bca2a0f7ffad4e4bf5cb107513e98f6';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"date":{"define":"date","name":"date","relation":"date","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"sbsj":{"define":"sbsj","name":"sbsj","relation":"sbsj","type":"String"},"xbsj":{"define":"xbsj","name":"xbsj","relation":"xbsj","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"2018-02-02\",\"col2\":\"15:29:30\",\"col4\":\"迟到，没有下班签到记录\"},{\"id\":\"2\",\"col1\":\"2018-02-03\",\"col2\":\"15:29:30\",\"col3\":\"16:29:30\",\"col4\":\"上班签到正常，早退\"}]","isMain":false,"limit":20,"xid":"CData"});
}}); 
return __result;});