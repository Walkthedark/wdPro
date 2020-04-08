define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/maintenanceOrderMessa/reportreview/reportreview'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbyEBVj';
	this._flag_='eccf460d6256aa024369361e8b8e255f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"buildingNo":{"define":"buildingNo","name":"buildingNo","relation":"buildingNo","type":"String"},"col19":{"define":"col19","name":"col19","relation":"col19","type":"String"},"col20":{"define":"col20","name":"col20","relation":"col20","type":"String"},"enteringDate":{"define":"enteringDate","name":"enteringDate","relation":"enteringDate","type":"String"},"enteringPort":{"define":"enteringPort","name":"enteringPort","relation":"enteringPort","type":"String"},"enteringUser":{"define":"enteringUser","name":"enteringUser","relation":"enteringUser","type":"String"},"enteringUser_id":{"define":"enteringUser_id","name":"enteringUser_id","relation":"enteringUser_id","type":"String"},"faultDes":{"define":"faultDes","name":"faultDes","relation":"faultDes","type":"String"},"faultLevel":{"define":"faultLevel","name":"faultLevel","relation":"faultLevel","type":"String"},"faultReason":{"define":"faultReason","name":"faultReason","relation":"faultReason","type":"String"},"faultTime":{"define":"faultTime","name":"faultTime","relation":"faultTime","type":"String"},"faultType":{"define":"faultType","name":"faultType","relation":"faultType","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"liftIDNo":{"define":"liftIDNo","name":"liftIDNo","relation":"liftIDNo","type":"String"},"liftNo":{"define":"liftNo","name":"liftNo","relation":"liftNo","type":"String"},"project":{"define":"project","name":"project","relation":"project","type":"String"},"sheetNo":{"define":"sheetNo","name":"sheetNo","relation":"sheetNo","type":"String"},"sp_date":{"define":"sp_date","name":"sp_date","relation":"sp_date","type":"String"},"sp_reason":{"define":"sp_reason","name":"sp_reason","relation":"sp_reason","type":"String"},"sp_state":{"define":"sp_state","name":"sp_state","relation":"sp_state","type":"String"},"sp_user":{"define":"sp_user","name":"sp_user","relation":"sp_user","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"data1"});
}}); 
return __result;});