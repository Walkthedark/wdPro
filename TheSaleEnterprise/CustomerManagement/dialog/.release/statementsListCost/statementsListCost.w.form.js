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
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/statementsListCost'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cEnu6ji';
	this._flag_='8fbd0ac8cc118f8b0d9c9b92e22a9518';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"byhx":{"define":"byhx","name":"byhx","relation":"byhx","type":"String"},"dzf":{"define":"dzf","name":"dzf","relation":"dzf","type":"String"},"hxz":{"define":"hxz","name":"hxz","relation":"hxz","type":"String"},"wsq":{"define":"wsq","name":"wsq","relation":"wsq","type":"String"},"yhx":{"define":"yhx","name":"yhx","relation":"yhx","type":"String"},"ypz":{"define":"ypz","name":"ypz","relation":"ypz","type":"String"},"yzf":{"define":"yzf","name":"yzf","relation":"yzf","type":"String"}},"directDelete":false,"events":{},"idColumn":"ypz","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"byhx":{"define":"byhx","name":"byhx","relation":"byhx","type":"String"},"dzf":{"define":"dzf","name":"dzf","relation":"dzf","type":"String"},"hxz":{"define":"hxz","name":"hxz","relation":"hxz","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"wsq":{"define":"wsq","name":"wsq","relation":"wsq","type":"String"},"yhx":{"define":"yhx","name":"yhx","relation":"yhx","type":"String"},"ypz":{"define":"ypz","name":"ypz","relation":"ypz","type":"String"},"yzf":{"define":"yzf","name":"yzf","relation":"yzf","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"detailDate"});
}}); 
return __result;});