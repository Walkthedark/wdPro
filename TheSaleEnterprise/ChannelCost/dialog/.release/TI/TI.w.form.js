define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/ChannelCost/dialog/TI'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFJJNJn';
	this._flag_='c9109c532521b3608dddb6432072c84f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"jxs_id":{"define":"jxs_id","name":"jxs_id","relation":"jxs_id","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"tax":{"define":"tax","name":"tax","relation":"tax","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"安顺市新城区副食品经销部\",\"col2\":\"201802170001\",\"col3\":\"2018-01-01\",\"col4\":\"区域领导审批\",\"col5\":\"15990元\",\"col6\":\"\",\"col7\":\"\",\"col8\":\"\"},{\"id\":\"2\",\"col1\":\"柳州市白云区经销部\",\"col2\":\"201802170002\",\"col3\":\"2018-01-01\",\"col4\":\"已作废\",\"col5\":\"0元\",\"col6\":\"\",\"col7\":\"\",\"col8\":\"\"}]","isMain":false,"limit":20,"xid":"pData"});
}}); 
return __result;});