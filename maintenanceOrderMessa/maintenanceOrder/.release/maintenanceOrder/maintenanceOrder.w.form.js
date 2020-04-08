define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/propertyElevatorMag/maintenanceOrder/maintenanceOrder'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cJFRNrm';
	this._flag_='f412ac948bb02006e9a20d76ee71b13d';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"elevatorId":{"define":"elevatorId","name":"elevatorId","relation":"elevatorId","type":"String"},"fpEvaluate1":{"define":"fpEvaluate1","name":"fpEvaluate1","relation":"fpEvaluate1","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"is_qm":{"define":"is_qm","name":"is_qm","relation":"is_qm","type":"String"},"maintainDate":{"define":"maintainDate","name":"maintainDate","relation":"maintainDate","type":"String"},"maintainDays":{"define":"maintainDays","name":"maintainDays","relation":"maintainDays","type":"String"},"project":{"define":"project","name":"project","relation":"project","type":"String"},"teamName":{"define":"teamName","name":"teamName","relation":"teamName","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"TenplanData"});
}}); 
return __result;});