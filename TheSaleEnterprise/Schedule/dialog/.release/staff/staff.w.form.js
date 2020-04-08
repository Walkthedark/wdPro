define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/select/checkboxGroup');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Schedule/dialog/staff'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='caQFFRb';
	this._flag_='dc56dfba70b069cf0110c0283753ec8d';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"人事部\"},{\"id\":\"2\",\"col1\":\"销售部\"},{\"id\":\"3\",\"col1\":\"采购部\"}]","isMain":false,"limit":20,"xid":"depData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"pid\":\"0\",\"name\":\"董事会\"},{\"id\":\"2\",\"pid\":\"0\",\"name\":\"东南大区\"},{\"id\":\"3\",\"pid\":\"0\",\"name\":\"华南大区\"}]","isMain":false,"limit":1,"xid":"YHData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"check":{"define":"check","name":"check","relation":"check","type":"String"},"deptId":{"define":"deptId","name":"deptId","relation":"deptId","type":"String"},"userId":{"define":"userId","name":"userId","relation":"userId","type":"String"},"userName":{"define":"userName","name":"userName","relation":"userName","type":"String"}},"directDelete":false,"events":{},"idColumn":"userId","initData":"[{\"userId\":\"1\",\"userName\":\"老张\",\"deptId\":\"1\"},{\"userId\":\"2\",\"userName\":\"小白\",\"deptId\":\"1\"},{\"userId\":\"3\",\"userName\":\"张三\",\"deptId\":\"1\"},{\"userId\":\"4\",\"userName\":\"李四\",\"deptId\":\"1\"},{\"userId\":\"5\",\"userName\":\"王五\",\"deptId\":\"2\"},{\"userId\":\"6\",\"userName\":\"老六\",\"deptId\":\"2\"},{\"userId\":\"7\",\"userName\":\"七七\",\"deptId\":\"2\"},{\"userId\":\"8\",\"userName\":\"杨洋\",\"deptId\":\"2\"},{\"userId\":\"9\",\"userName\":\"李狗蛋\",\"deptId\":\"3\"},{\"userId\":\"10\",\"userName\":\"李春华\",\"deptId\":\"3\"},{\"userId\":\"11\",\"userName\":\"隔壁老王\",\"deptId\":\"3\"},{\"userId\":\"12\",\"userName\":\"大白\",\"deptId\":\"3\"}]","isMain":false,"limit":20,"xid":"RData"});
}}); 
return __result;});