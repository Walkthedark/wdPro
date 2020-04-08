define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/addressBookInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAF3Yn2';
	this._flag_='4d2bc8465e578630062f6e272bd67de6';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cz":{"define":"cz","name":"cz","relation":"cz","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khlx":{"define":"khlx","name":"khlx","relation":"khlx","type":"String"},"lxdh":{"define":"lxdh","name":"lxdh","relation":"lxdh","type":"String"},"sj":{"define":"sj","name":"sj","relation":"sj","type":"String"},"sskh":{"define":"sskh","name":"sskh","relation":"sskh","type":"String"},"xm":{"define":"xm","name":"xm","relation":"xm","type":"String"},"yx":{"define":"yx","name":"yx","relation":"yx","type":"String"},"zw":{"define":"zw","name":"zw","relation":"zw","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});