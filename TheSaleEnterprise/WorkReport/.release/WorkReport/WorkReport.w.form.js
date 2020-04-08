define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/WorkReport/WorkReport'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cNJJf6z';
	this._flag_='17a879a6d8f6832fcdc85f36ee677c4c';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col10":{"define":"col10","name":"col10","relation":"col10","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"col9":{"define":"col9","name":"col9","relation":"col9","type":"String"},"dzs":{"define":"dzs","name":"dzs","relation":"dzs","type":"String"},"em_bm":{"define":"em_bm","name":"em_bm","relation":"em_bm","type":"String"},"em_id":{"define":"em_id","name":"em_id","relation":"em_id","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"lx":{"define":"lx","name":"lx","relation":"lx","type":"String"},"nr":{"define":"nr","name":"nr","relation":"nr","type":"String"},"rq":{"define":"rq","name":"rq","relation":"rq","type":"String"},"zp":{"define":"zp","name":"zp","relation":"zp","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"workData"});
}}); 
return __result;});