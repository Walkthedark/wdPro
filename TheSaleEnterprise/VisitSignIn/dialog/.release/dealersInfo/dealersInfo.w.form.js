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
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/dealersInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cVJRrim';
	this._flag_='824b5df7c39d9be58d9f7773aab7cb21';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bcbfxj":{"define":"bcbfxj","name":"bcbfxj","relation":"bcbfxj","type":"String"},"bcbfxjzp":{"define":"bcbfxjzp","name":"bcbfxjzp","relation":"bcbfxjzp","type":"String"},"bfjhtp":{"define":"bfjhtp","name":"bfjhtp","relation":"bfjhtp","type":"String"},"bfrq":{"define":"bfrq","name":"bfrq","relation":"bfrq","type":"String"},"jxs_title":{"define":"jxs_title","name":"jxs_title","relation":"jxs_title","type":"String"},"qtdz":{"define":"qtdz","name":"qtdz","relation":"qtdz","type":"String"},"qtpz":{"define":"qtpz","name":"qtpz","relation":"qtpz","type":"String"},"qtsj":{"define":"qtsj","name":"qtsj","relation":"qtsj","type":"String"},"xcbfmb":{"define":"xcbfmb","name":"xcbfmb","relation":"xcbfmb","type":"String"},"xcbfrq":{"define":"xcbfrq","name":"xcbfrq","relation":"xcbfrq","type":"String"}},"directDelete":false,"events":{},"idColumn":"qtsj","isMain":false,"limit":20,"xid":"BData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"qtdz":{"define":"qtdz","name":"qtdz","relation":"qtdz","type":"String"}},"directDelete":false,"events":{},"idColumn":"qtdz","isMain":false,"limit":20,"xid":"data1"});
}}); 
return __result;});