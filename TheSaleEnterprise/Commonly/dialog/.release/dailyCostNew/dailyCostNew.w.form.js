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
require('$model/UI2/system/components/justep/grid/grid');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/dailyCostNew'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cB36rEn';
	this._flag_='87af97da5e83948c49131eae52e3cbbc';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"jrbm":{"define":"jrbm","name":"jrbm","relation":"jrbm","type":"String"},"jrbmm":{"define":"jrbmm","name":"jrbmm","relation":"jrbmm","type":"String"},"kaohe":{"define":"kaohe","name":"kaohe","relation":"kaohe","type":"String"},"kaohem":{"define":"kaohem","name":"kaohem","relation":"kaohem","type":"String"},"payway":{"define":"payway","name":"payway","relation":"payway","type":"String"},"paywaym":{"define":"paywaym","name":"paywaym","relation":"paywaym","type":"String"},"reason":{"define":"reason","name":"reason","relation":"reason","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"text":{"define":"text","name":"text","relation":"text","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"text\":\"是\"},{\"id\":\"1\",\"text\":\"否\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"chufa":{"define":"chufa","name":"chufa","relation":"chufa","type":"String"},"end":{"define":"end","name":"end","relation":"end","type":"String"},"feiid":{"define":"feiid","name":"feiid","relation":"feiid","type":"String"},"feim":{"define":"feim","name":"feim","relation":"feim","type":"String"},"feis":{"define":"feis","name":"feis","relation":"feis","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"jxsm":{"define":"jxsm","name":"jxsm","relation":"jxsm","type":"String"},"mudi":{"define":"mudi","name":"mudi","relation":"mudi","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"start":{"define":"start","name":"start","relation":"start","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"costData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"payTypeList"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});