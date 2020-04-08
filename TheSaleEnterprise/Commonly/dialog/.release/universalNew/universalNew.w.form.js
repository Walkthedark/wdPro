define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/grid/grid');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/universalNew'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cjmiuAf';
	this._flag_='fc8682377e800fe23dc4d8e694fbd9e2';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bm":{"define":"bm","name":"bm","relation":"bm","type":"String"},"bmm":{"define":"bmm","name":"bmm","relation":"bmm","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"iscost":{"define":"iscost","name":"iscost","relation":"iscost","type":"String"},"kaohe":{"define":"kaohe","name":"kaohe","relation":"kaohe","type":"String"},"kaohem":{"define":"kaohem","name":"kaohem","relation":"kaohem","type":"String"},"neirong":{"define":"neirong","name":"neirong","relation":"neirong","type":"String"},"shoukuan":{"define":"shoukuan","name":"shoukuan","relation":"shoukuan","type":"String"},"shoukuanm":{"define":"shoukuanm","name":"shoukuanm","relation":"shoukuanm","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"zhifu":{"define":"zhifu","name":"zhifu","relation":"zhifu","type":"String"},"zhifum":{"define":"zhifum","name":"zhifum","relation":"zhifum","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"text":{"define":"text","name":"text","relation":"text","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"text\":\"是\"},{\"id\":\"0\",\"text\":\"否\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fee":{"define":"fee","name":"fee","relation":"fee","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"feetypeID":{"define":"feetypeID","name":"feetypeID","relation":"feetypeID","type":"String"},"handle":{"define":"handle","name":"handle","relation":"handle","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"costData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"typeList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"payTypeList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"feeTypeList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fee":{"define":"fee","name":"fee","relation":"fee","type":"String"},"feeTypeM":{"define":"feeTypeM","name":"feeTypeM","relation":"feeTypeM","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"}},"directDelete":false,"events":{},"idColumn":"feetype","isMain":false,"limit":20,"xid":"feeData"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});