define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/overtimeNew'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cvumQz2';
	this._flag_='10209dafb21321d0c7741d337e672b11';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jbjssj":{"define":"jbjssj","name":"jbjssj","relation":"jbjssj","rules":{"datetime":true},"type":"DateTime"},"jbkssj":{"define":"jbkssj","name":"jbkssj","relation":"jbkssj","rules":{"datetime":true},"type":"DateTime"},"jbsy":{"define":"jbsy","name":"jbsy","relation":"jbsy","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqr_bm":{"define":"sqr_bm","name":"sqr_bm","relation":"sqr_bm","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"t":{"define":"t","name":"t","relation":"t","type":"String"},"xs":{"define":"xs","name":"xs","relation":"xs","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"overtimeData"});
}}); 
return __result;});