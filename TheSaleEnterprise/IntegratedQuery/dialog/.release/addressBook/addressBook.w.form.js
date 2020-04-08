define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/IntegratedQuery/dialog/addressBook'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ciyeyM3';
	this._flag_='dd30eb1d9d1553f0112d74cd7579481c';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"sskh":{"define":"sskh","name":"sskh","relation":"sskh","type":"String"},"sskhmc":{"define":"sskhmc","name":"sskhmc","relation":"sskhmc","type":"String"}},"directDelete":false,"events":{},"idColumn":"sskh","isMain":false,"limit":-1,"xid":"khData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cz":{"define":"cz","name":"cz","relation":"cz","type":"String"},"dh":{"define":"dh","name":"dh","relation":"dh","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khlx":{"define":"khlx","name":"khlx","relation":"khlx","type":"String"},"sjh":{"define":"sjh","name":"sjh","relation":"sjh","type":"String"},"sskh":{"define":"sskh","name":"sskh","relation":"sskh","type":"String"},"sskhmc":{"define":"sskhmc","name":"sskhmc","relation":"sskhmc","type":"String"},"xm":{"define":"xm","name":"xm","relation":"xm","type":"String"},"yx":{"define":"yx","name":"yx","relation":"yx","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":-1,"xid":"lxData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"mail":{"define":"mail","name":"mail","relation":"mail","type":"String"},"tel":{"define":"tel","name":"tel","relation":"tel","type":"String"},"xm":{"define":"xm","name":"xm","relation":"xm","type":"String"}},"directDelete":false,"events":{},"idColumn":"tel","isMain":false,"limit":20,"xid":"telData"});
}}); 
return __result;});