define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/timer/timer');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/maintenanceOrderMessa/signature-pad/signature'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyaEb2q';
	this._flag_='2e8bb94d7a54f9b4e7f394c48b181163';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('$UI/maintenanceOrderMessa/signature-pad/jquery.signaturepad');
 require('$UI/maintenanceOrderMessa/signature-pad/assets/json2.min');
 require('css!$UI/maintenanceOrderMessa/signature-pad/assets/jquery.signaturepad').load();
 require('$UI/maintenanceOrderMessa/signature-pad/jquery.min');
}}); 
return __result;});