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
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/newInventoryCheck'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ca6RZVb';
	this._flag_='a53339c9c37d3a4b3e863f65f8e6d9b1';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cp_dpmc":{"define":"cp_dpmc","name":"cp_dpmc","relation":"cp_dpmc","type":"String"},"cp_id":{"define":"cp_id","name":"cp_id","relation":"cp_id","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"kcqk_kcsl_x":{"define":"kcqk_kcsl_x","name":"kcqk_kcsl_x","relation":"kcqk_kcsl_x","type":"String"},"kcqk_kcsl_z":{"define":"kcqk_kcsl_z","name":"kcqk_kcsl_z","relation":"kcqk_kcsl_z","type":"String"},"kcqk_lx":{"define":"kcqk_lx","name":"kcqk_lx","relation":"kcqk_lx","type":"String"},"kcqk_lx_title":{"define":"kcqk_lx_title","name":"kcqk_lx_title","relation":"kcqk_lx_title","type":"String"},"kcqk_scrq":{"define":"kcqk_scrq","name":"kcqk_scrq","relation":"kcqk_scrq","rules":{"date":true},"type":"Date"},"sm":{"define":"sm","name":"sm","relation":"sm","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"cDate"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"typeList"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});