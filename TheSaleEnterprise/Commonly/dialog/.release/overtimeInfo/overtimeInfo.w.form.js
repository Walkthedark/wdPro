define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/overtimeInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAzqI7b';
	this._flag_='37919dbdad4177f4119ad614d0d3c7a4';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ACTIONTIME":{"define":"ACTIONTIME","name":"ACTIONTIME","relation":"ACTIONTIME","type":"String"},"COMMENTS":{"define":"COMMENTS","name":"COMMENTS","relation":"COMMENTS","type":"String"},"MEMO":{"define":"MEMO","name":"MEMO","relation":"MEMO","type":"String"},"USERNAME":{"define":"USERNAME","name":"USERNAME","relation":"USERNAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"USERNAME","isMain":false,"limit":20,"xid":"spData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jbjssj":{"define":"jbjssj","name":"jbjssj","relation":"jbjssj","type":"String"},"jbkssj":{"define":"jbkssj","name":"jbkssj","relation":"jbkssj","type":"String"},"jbsy":{"define":"jbsy","name":"jbsy","relation":"jbsy","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqr_bm":{"define":"sqr_bm","name":"sqr_bm","relation":"sqr_bm","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"t":{"define":"t","name":"t","relation":"t","type":"String"},"xs":{"define":"xs","name":"xs","relation":"xs","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"overtimeData"});
}}); 
return __result;});