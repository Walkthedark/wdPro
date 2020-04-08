define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
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
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/inventoryCheck'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMFnMry';
	this._flag_='45d4f3889598ba316f4c4473d7e1c085';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cp_dpmc":{"define":"cp_dpmc","name":"cp_dpmc","relation":"cp_dpmc","type":"String"},"cp_id":{"define":"cp_id","name":"cp_id","relation":"cp_id","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"kcqk_kcsl_x":{"define":"kcqk_kcsl_x","name":"kcqk_kcsl_x","relation":"kcqk_kcsl_x","type":"String"},"kcqk_kcsl_z":{"define":"kcqk_kcsl_z","name":"kcqk_kcsl_z","relation":"kcqk_kcsl_z","type":"String"},"kcqk_lx":{"define":"kcqk_lx","name":"kcqk_lx","relation":"kcqk_lx","type":"String"},"kcqk_lx_title":{"define":"kcqk_lx_title","name":"kcqk_lx_title","relation":"kcqk_lx_title","type":"String"},"kcqk_scrq":{"define":"kcqk_scrq","name":"kcqk_scrq","relation":"kcqk_scrq","type":"String"},"sm":{"define":"sm","name":"sm","relation":"sm","type":"String"},"zp":{"define":"zp","name":"zp","relation":"zp","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"inventoryData"});
}}); 
return __result;});