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
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/belongsMarketGoods'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cQRBnue';
	this._flag_='ebcf700a52623e7cf764b6b798083e95';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"end":{"define":"end","name":"end","relation":"end","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"hc_stauts":{"define":"hc_stauts","name":"hc_stauts","relation":"hc_stauts","type":"String"},"hd_id":{"define":"hd_id","name":"hd_id","relation":"hd_id","type":"String"},"hd_sn":{"define":"hd_sn","name":"hd_sn","relation":"hd_sn","type":"String"},"pro":{"define":"pro","name":"pro","relation":"pro","type":"String"},"pro_type":{"define":"pro_type","name":"pro_type","relation":"pro_type","type":"String"},"start":{"define":"start","name":"start","relation":"start","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"hd_id","isMain":false,"limit":20,"xid":"BData"});
}}); 
return __result;});