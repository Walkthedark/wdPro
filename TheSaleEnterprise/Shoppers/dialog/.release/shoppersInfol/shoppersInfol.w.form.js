define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/grid/grid');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Shoppers/dialog/shoppersInfol'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7NVrYv';
	this._flag_='4bbd99429021c8c5b5a2ca83cbf79800';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"col6":{"define":"col6","name":"col6","relation":"col6","type":"String"},"col7":{"define":"col7","name":"col7","relation":"col7","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"张三\",\"col2\":\"1\",\"col3\":\"专职\",\"col4\":\"13800000000\",\"col5\":\"上海\",\"col6\":\"2018-02-02\",\"col7\":\"\",\"col8\":\"\"},{\"id\":\"2\",\"col1\":\"李四\",\"col2\":\"2\",\"col3\":\"临时\",\"col4\":\"13800012548\",\"col5\":\"上海市XXXXXXXXXXX经销部\",\"col6\":\"2018-02-02\",\"col7\":\"\",\"col8\":\"\"}]","isMain":false,"limit":20,"xid":"checkData"});
}}); 
return __result;});