define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/editOrderInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c26nMFb';
	this._flag_='bae20f9c41dccec05b3aa4ba4e6b43be';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cp_id":{"define":"cp_id","name":"cp_id","relation":"cp_id","type":"String"},"cpbz":{"define":"cpbz","name":"cpbz","relation":"cpbz","type":"String"},"did":{"define":"did","name":"did","relation":"did","type":"String"},"ge":{"define":"ge","name":"ge","relation":"ge","type":"String"},"ghj":{"define":"ghj","name":"ghj","relation":"ghj","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"xiang":{"define":"xiang","name":"xiang","relation":"xiang","type":"String"},"yhms":{"define":"yhms","name":"yhms","relation":"yhms","type":"String"}},"directDelete":false,"events":{},"idColumn":"did","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});