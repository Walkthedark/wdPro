define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/myBranchesInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='caIFjAb';
	this._flag_='c3237f25f55aca7ffa2de2fb447f613a';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"breif":{"define":"breif","name":"breif","relation":"breif","type":"String"},"cashiers":{"define":"cashiers","name":"cashiers","relation":"cashiers","type":"String"},"cat":{"define":"cat","name":"cat","relation":"cat","type":"String"},"competitor":{"define":"competitor","name":"competitor","relation":"competitor","type":"String"},"dg":{"define":"dg","name":"dg","relation":"dg","type":"String"},"grade":{"define":"grade","name":"grade","relation":"grade","type":"String"},"guide":{"define":"guide","name":"guide","relation":"guide","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"iskey":{"define":"iskey","name":"iskey","relation":"iskey","type":"String"},"jinchang":{"define":"jinchang","name":"jinchang","relation":"jinchang","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"lianxiren":{"define":"lianxiren","name":"lianxiren","relation":"lianxiren","type":"String"},"mysn":{"define":"mysn","name":"mysn","relation":"mysn","type":"String"},"net":{"define":"net","name":"net","relation":"net","type":"String"},"shelf_num":{"define":"shelf_num","name":"shelf_num","relation":"shelf_num","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"starttime":{"define":"starttime","name":"starttime","relation":"starttime","type":"String"},"sys":{"define":"sys","name":"sys","relation":"sys","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"安徽副食品经销部\",\"col2\":\"CU10001\",\"col3\":\"安徽副食品经销部\"},{\"id\":\"2\",\"col1\":\"上海副食品经销部\",\"col2\":\"CU10002\",\"col3\":\"上海副食品经销部\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"job":{"define":"job","name":"job","relation":"job","type":"String"},"mobile":{"define":"mobile","name":"mobile","relation":"mobile","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"name","isMain":false,"limit":20,"xid":"person"});
}}); 
return __result;});