define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Schedule/Schedule'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cYBFRZz';
	this._flag_='da69fa9ca73cc9e01cd7648e8abacd03';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dd":{"define":"dd","name":"dd","relation":"dd","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"js":{"define":"js","name":"js","relation":"js","type":"String"},"ks":{"define":"ks","name":"ks","relation":"ks","type":"String"},"lx":{"define":"lx","name":"lx","relation":"lx","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"万家公用分店\",\"address\":\"\",\"state\":\"\",\"code\":\"\",\"daogou\":\"\",\"zhongdian\":\"\",\"time\":\"\",\"col8\":\"\",\"col9\":\"\"},{\"id\":\"2\",\"name\":\"长城饭店\",\"address\":\"\",\"state\":\"\",\"code\":\"\",\"daogou\":\"\",\"zhongdian\":\"\",\"time\":\"\",\"col8\":\"\"}]","isMain":false,"limit":20,"xid":"InData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"time":{"define":"time","name":"time","relation":"time","type":"String"}},"directDelete":false,"events":{},"idColumn":"time","isMain":false,"limit":20,"xid":"cDate"});
}}); 
return __result;});