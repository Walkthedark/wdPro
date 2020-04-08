define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/ChannelCost/dialog/activityApprovalInfoCheckInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cVvMBri';
	this._flag_='567af13269243fce07744e749dfc0345';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"hdms":{"define":"hdms","name":"hdms","relation":"hdms","type":"String"},"hdzp":{"define":"hdzp","name":"hdzp","relation":"hdzp","type":"String"},"net_name":{"define":"net_name","name":"net_name","relation":"net_name","type":"String"},"sfjyhx":{"define":"sfjyhx","name":"sfjyhx","relation":"sfjyhx","type":"String"}},"directDelete":false,"events":{},"idColumn":"net_name","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"dpxx":{"define":"dpxx","name":"dpxx","relation":"dpxx","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"dpData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"yj":{"define":"yj","name":"yj","relation":"yj","type":"String"}},"directDelete":false,"events":{},"idColumn":"yj","isMain":false,"limit":20,"xid":"tData"});
}}); 
return __result;});