define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/belongsMarketApproachNew'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cqURBBr';
	this._flag_='0ee362da8178dda563b9023b9ba9e1d1';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"text":{"define":"text","name":"text","relation":"text","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"text\":\"否\"},{\"id\":\"1\",\"text\":\"是\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"hdms":{"define":"hdms","name":"hdms","relation":"hdms","type":"String"},"jyhx":{"define":"jyhx","name":"jyhx","relation":"jyhx","type":"String"}},"directDelete":false,"events":{},"idColumn":"jyhx","isMain":false,"limit":20,"xid":"cData"});
}}); 
return __result;});