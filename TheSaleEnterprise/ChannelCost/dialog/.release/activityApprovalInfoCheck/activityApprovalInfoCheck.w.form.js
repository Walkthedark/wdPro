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
var __parent0=require('$model/UI2/TheSaleEnterprise/ChannelCost/dialog/activityApprovalInfoCheck'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3q6b2i';
	this._flag_='d191584e2eb9cfbafb2544ac43d584db';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"hbr":{"define":"hbr","name":"hbr","relation":"hbr","type":"String"},"hbrq":{"define":"hbrq","name":"hbrq","relation":"hbrq","type":"String"},"hbzt":{"define":"hbzt","name":"hbzt","relation":"hbzt","type":"String"},"hdms":{"define":"hdms","name":"hdms","relation":"hdms","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"sfjyhx":{"define":"sfjyhx","name":"sfjyhx","relation":"sfjyhx","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"net_name":{"define":"net_name","name":"net_name","relation":"net_name","type":"String"},"product":{"define":"product","name":"product","relation":"product","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"}},"directDelete":false,"events":{},"idColumn":"net_name","isMain":false,"limit":20,"xid":"cData"});
}}); 
return __result;});