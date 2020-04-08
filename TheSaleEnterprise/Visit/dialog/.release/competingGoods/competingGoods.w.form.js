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
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/competingGoods'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cZjMrUf';
	this._flag_='a0926ad0e2d125a04504052b30edb08e';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"category":{"define":"category","name":"category","relation":"category","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"competitor":{"define":"competitor","name":"competitor","relation":"competitor","type":"String"},"day":{"define":"day","name":"day","relation":"day","type":"String"},"hbr":{"define":"hbr","name":"hbr","relation":"hbr","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jp_id":{"define":"jp_id","name":"jp_id","relation":"jp_id","type":"String"},"jpgg":{"define":"jpgg","name":"jpgg","relation":"jpgg","type":"String"},"jpms":{"define":"jpms","name":"jpms","relation":"jpms","type":"String"},"lsj":{"define":"lsj","name":"lsj","relation":"lsj","type":"String"},"net_id":{"define":"net_id","name":"net_id","relation":"net_id","type":"String"},"sfcx":{"define":"sfcx","name":"sfcx","relation":"sfcx","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"infoData"});
}}); 
return __result;});