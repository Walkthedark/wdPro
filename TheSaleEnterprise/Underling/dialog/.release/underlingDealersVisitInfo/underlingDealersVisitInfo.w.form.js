define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Underling/dialog/underlingDealersVisitInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyqIN7n';
	this._flag_='f5a65ce597cb3056a128c9b841cf7588';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"jlpc":{"define":"jlpc","name":"jlpc","relation":"jlpc","type":"String"},"jxs_title":{"define":"jxs_title","name":"jxs_title","relation":"jxs_title","type":"String"},"qdjl":{"define":"qdjl","name":"qdjl","relation":"qdjl","type":"String"},"qdsj":{"define":"qdsj","name":"qdsj","relation":"qdsj","type":"String"},"qdzp":{"define":"qdzp","name":"qdzp","relation":"qdzp","type":"String"},"qtsj":{"define":"qtsj","name":"qtsj","relation":"qtsj","type":"String"},"ys":{"define":"ys","name":"ys","relation":"ys","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"pData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"text":{"define":"text","name":"text","relation":"text","type":"String"}},"directDelete":false,"events":{},"idColumn":"text","initData":"[{\"id\":\"0\",\"text\":\"只看直接下属\"},{\"id\":\"1\",\"text\":\"查看所有下属\"}]","isMain":false,"limit":20,"xid":"CData"});
}}); 
return __result;});