define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/contactPep/dialog/dialog/linkAndPop'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cj6fAre';
	this._flag_='fb3142e333607711ee4091a5ba420729';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"category":{"define":"category","name":"category","relation":"category","type":"String"},"choose":{"define":"choose","name":"choose","relation":"choose","rules":{"integer":true},"type":"Integer"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"documentary_id":{"define":"documentary_id","name":"documentary_id","relation":"documentary_id","type":"String"},"last_contract_staff":{"define":"last_contract_staff","name":"last_contract_staff","relation":"last_contract_staff","type":"String"},"last_contract_time":{"define":"last_contract_time","name":"last_contract_time","relation":"last_contract_time","type":"String"},"linkman":{"define":"linkman","name":"linkman","relation":"linkman","type":"String"},"no_change_days":{"define":"no_change_days","name":"no_change_days","relation":"no_change_days","type":"String"},"stage":{"define":"stage","name":"stage","relation":"stage","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"ListDataCustomRefresh"},"idColumn":"client_id","isMain":false,"limit":20,"xid":"ListData"});
}}); 
return __result;});