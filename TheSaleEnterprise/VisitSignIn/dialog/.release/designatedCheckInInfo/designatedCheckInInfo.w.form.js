define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/designatedCheckInInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='czEvUJv';
	this._flag_='299ccab4ce0102aee1db20561cc90294';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dwsj":{"define":"dwsj","name":"dwsj","relation":"dwsj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"qdbm":{"define":"qdbm","name":"qdbm","relation":"qdbm","type":"String"},"qddz":{"define":"qddz","name":"qddz","relation":"qddz","type":"String"},"qdlx":{"define":"qdlx","name":"qdlx","relation":"qdlx","type":"String"},"qdms":{"define":"qdms","name":"qdms","relation":"qdms","type":"String"},"qdr":{"define":"qdr","name":"qdr","relation":"qdr","type":"String"},"qdr_name":{"define":"qdr_name","name":"qdr_name","relation":"qdr_name","type":"String"},"qdrq":{"define":"qdrq","name":"qdrq","relation":"qdrq","type":"String"},"qdsj":{"define":"qdsj","name":"qdsj","relation":"qdsj","type":"String"},"qdzp":{"define":"qdzp","name":"qdzp","relation":"qdzp","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"text\":\"否\"},{\"id\":\"1\",\"text\":\"是\"}]","isMain":false,"limit":20,"xid":"CData"});
}}); 
return __result;});