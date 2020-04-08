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
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/shelvesCheck'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cqye2yi';
	this._flag_='b8b8fd6c89fe82b25ff53885700846c9';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"clid":{"define":"clid","name":"clid","relation":"clid","type":"String"},"cllx":{"define":"cllx","name":"cllx","relation":"cllx","type":"String"},"clwz_m":{"define":"clwz_m","name":"clwz_m","relation":"clwz_m","type":"String"},"clwz_p":{"define":"clwz_p","name":"clwz_p","relation":"clwz_p","type":"String"},"cp_id":{"define":"cp_id","name":"cp_id","relation":"cp_id","type":"String"},"cpmc":{"define":"cpmc","name":"cpmc","relation":"cpmc","type":"String"},"cxhd":{"define":"cxhd","name":"cxhd","relation":"cxhd","type":"String"},"rq":{"define":"rq","name":"rq","relation":"rq","type":"String"},"sczp":{"define":"sczp","name":"sczp","relation":"sczp","type":"String"},"sm":{"define":"sm","name":"sm","relation":"sm","type":"String"},"zt":{"define":"zt","name":"zt","relation":"zt","type":"String"}},"directDelete":false,"events":{},"idColumn":"clid","isMain":false,"limit":20,"xid":"shelvesData"});
}}); 
return __result;});