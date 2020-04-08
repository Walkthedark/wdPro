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
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/ChannelCost/dialog/activityFeedbackInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuyANfm';
	this._flag_='435711265715c158caf9b52cd7c66397';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"end":{"define":"end","name":"end","relation":"end","type":"String"},"fb_shijitourufeiyong":{"define":"fb_shijitourufeiyong","name":"fb_shijitourufeiyong","relation":"fb_shijitourufeiyong","type":"String"},"fb_shijixiaoliang":{"define":"fb_shijixiaoliang","name":"fb_shijixiaoliang","relation":"fb_shijixiaoliang","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"net":{"define":"net","name":"net","relation":"net","type":"String"},"product":{"define":"product","name":"product","relation":"product","type":"String"},"product_type":{"define":"product_type","name":"product_type","relation":"product_type","type":"String"},"start":{"define":"start","name":"start","relation":"start","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"totalExpectedSales":{"define":"totalExpectedSales","name":"totalExpectedSales","relation":"totalExpectedSales","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"yjsjtrfy":{"define":"yjsjtrfy","name":"yjsjtrfy","relation":"yjsjtrfy","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"title","isMain":false,"limit":20,"xid":"cData"});
}}); 
return __result;});