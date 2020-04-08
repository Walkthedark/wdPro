define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Underling/dialog/underlingBranches'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3QN7Fj';
	this._flag_='c60a8c2bc2848ca5b9228727f3b34ead';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"jh":{"define":"jh","name":"jh","relation":"jh","type":"String"},"jhw":{"define":"jhw","name":"jhw","relation":"jhw","type":"String"},"sf":{"define":"sf","name":"sf","relation":"sf","type":"String"},"sj":{"define":"sj","name":"sj","relation":"sj","type":"String"},"xm":{"define":"xm","name":"xm","relation":"xm","type":"String"}},"directDelete":false,"events":{},"idColumn":"xm","isMain":false,"limit":20,"xid":"pData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"text":{"define":"text","name":"text","relation":"text","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"text\":\"只看直接下属\"},{\"id\":\"1\",\"text\":\"查看所有下属\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{"onValueChanged":"cDateValueChanged"},"idColumn":"type","isMain":false,"limit":20,"xid":"cDate"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"jh":{"define":"jh","name":"jh","relation":"jh","type":"String"},"jhw":{"define":"jhw","name":"jhw","relation":"jhw","type":"String"},"sf":{"define":"sf","name":"sf","relation":"sf","type":"String"},"sj":{"define":"sj","name":"sj","relation":"sj","type":"String"},"xm":{"define":"xm","name":"xm","relation":"xm","type":"String"}},"directDelete":false,"events":{},"idColumn":"xm","isMain":false,"limit":20,"xid":"dData"});
}}); 
return __result;});