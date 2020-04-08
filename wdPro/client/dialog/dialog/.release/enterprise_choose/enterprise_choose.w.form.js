define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/accordion/accordion');
require('$model/UI2/system/components/bootstrap/panel/panel');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/client/dialog/dialog/enterprise_choose'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cI7jYRb';
	this._flag_='bf43387217424e5773a2050e9f419993';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"},"trade_id":{"define":"trade_id","name":"trade_id","relation":"trade_id","type":"String"},"trade_name":{"define":"trade_name","name":"trade_name","relation":"trade_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"trade_id","isMain":false,"limit":20,"xid":"paret_data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","rules":{"integer":true},"type":"Integer"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"},"trade_id":{"define":"trade_id","name":"trade_id","relation":"trade_id","type":"String"},"trade_name":{"define":"trade_name","name":"trade_name","relation":"trade_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"trade_id","isMain":false,"limit":20,"xid":"child_data"});
}}); 
return __result;});