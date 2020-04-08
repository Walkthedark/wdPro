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
var __parent0=require('$model/UI2/TheSaleEnterprise/ChannelCost/dialog/statements'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRJnAvi';
	this._flag_='4a9e3e56166842877760da01bf50e33d';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"byhx":{"define":"byhx","name":"byhx","relation":"byhx","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"whx_sqz":{"define":"whx_sqz","name":"whx_sqz","relation":"whx_sqz","type":"String"},"whx_wsq":{"define":"whx_wsq","name":"whx_wsq","relation":"whx_wsq","type":"String"},"yhx":{"define":"yhx","name":"yhx","relation":"yhx","type":"String"},"ypf":{"define":"ypf","name":"ypf","relation":"ypf","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"李四股份有限公司\",\"col2\":\"C20180219\",\"col3\":\"￥50002.00\",\"col4\":\"￥0.00\",\"col5\":\"￥0.00\",\"col6\":\"￥50002.00\",\"col7\":\"￥0.00\",\"col8\":\"\",\"col9\":\"\",\"co20\":\"\"},{\"id\":\"2\",\"col1\":\"李四股份有限公司\",\"col2\":\"C20180219\",\"col3\":\"￥2222.00\",\"col4\":\"￥0.00\",\"col5\":\"￥0.00\",\"col6\":\"￥2222.00\",\"col7\":\"￥0.00\",\"col8\":\"\",\"col9\":\"\"}]","isMain":false,"limit":20,"xid":"infoData"});
}}); 
return __result;});