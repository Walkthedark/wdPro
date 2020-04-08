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
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/ChannelCost/dialog/activityApply'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbyANZv';
	this._flag_='8b4f6db4bbcbecbc824036205619f7c7';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"brief":{"define":"brief","name":"brief","relation":"brief","type":"String"},"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs_id":{"define":"jxs_id","name":"jxs_id","relation":"jxs_id","type":"String"},"ptime":{"define":"ptime","name":"ptime","relation":"ptime","type":"String"},"puser":{"define":"puser","name":"puser","relation":"puser","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"statename":{"define":"statename","name":"statename","relation":"statename","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"pData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"brief":{"define":"brief","name":"brief","relation":"brief","type":"String"},"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs_id":{"define":"jxs_id","name":"jxs_id","relation":"jxs_id","type":"String"},"ptime":{"define":"ptime","name":"ptime","relation":"ptime","type":"String"},"puser":{"define":"puser","name":"puser","relation":"puser","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"statename":{"define":"statename","name":"statename","relation":"statename","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"nData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"brief":{"define":"brief","name":"brief","relation":"brief","type":"String"},"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs_id":{"define":"jxs_id","name":"jxs_id","relation":"jxs_id","type":"String"},"ptime":{"define":"ptime","name":"ptime","relation":"ptime","type":"String"},"puser":{"define":"puser","name":"puser","relation":"puser","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"statename":{"define":"statename","name":"statename","relation":"statename","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"rData"});
}}); 
return __result;});