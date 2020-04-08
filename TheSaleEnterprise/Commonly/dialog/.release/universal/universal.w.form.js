define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/universal'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFRjEBj';
	this._flag_='1bd8bb014247589a6426810fc38e1744';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"fujian":{"define":"fujian","name":"fujian","relation":"fujian","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"iscost":{"define":"iscost","name":"iscost","relation":"iscost","type":"String"},"neirong":{"define":"neirong","name":"neirong","relation":"neirong","type":"String"},"no":{"define":"no","name":"no","relation":"no","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"statetype":{"define":"statetype","name":"statetype","relation":"statetype","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"请假测试（事假）\",\"col2\":\"2018021600001\",\"col3\":\"0天1小时\",\"col4\":\"已归档\",\"col5\":\"2018-02-16 11:44\"}]","isMain":false,"limit":20,"xid":"AskForLeaveData"});
}}); 
return __result;});