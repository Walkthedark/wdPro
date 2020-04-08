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
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/businessTripInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3YfqQz';
	this._flag_='09a69e9700c2a0d9b036f79a9d255b64';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bm":{"define":"bm","name":"bm","relation":"bm","type":"String"},"cuser_name":{"define":"cuser_name","name":"cuser_name","relation":"cuser_name","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"no":{"define":"no","name":"no","relation":"no","type":"String"},"target":{"define":"target","name":"target","relation":"target","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"traveltype":{"define":"traveltype","name":"traveltype","relation":"traveltype","type":"String"},"zw":{"define":"zw","name":"zw","relation":"zw","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ACTIONTIME":{"define":"ACTIONTIME","name":"ACTIONTIME","relation":"ACTIONTIME","type":"String"},"COMMENTS":{"define":"COMMENTS","name":"COMMENTS","relation":"COMMENTS","type":"String"},"MEMO":{"define":"MEMO","name":"MEMO","relation":"MEMO","type":"String"},"USERNAME":{"define":"USERNAME","name":"USERNAME","relation":"USERNAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"USERNAME","isMain":false,"limit":20,"xid":"spData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"chufa":{"define":"chufa","name":"chufa","relation":"chufa","type":"String"},"end":{"define":"end","name":"end","relation":"end","type":"String"},"fangshi":{"define":"fangshi","name":"fangshi","relation":"fangshi","type":"String"},"mudi":{"define":"mudi","name":"mudi","relation":"mudi","type":"String"},"start":{"define":"start","name":"start","relation":"start","type":"String"}},"directDelete":false,"events":{},"idColumn":"start","isMain":false,"limit":20,"xid":"XData"});
}}); 
return __result;});