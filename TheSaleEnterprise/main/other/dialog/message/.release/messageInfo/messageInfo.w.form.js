define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/main/other/dialog/message/messageInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbA3eAj';
	this._flag_='5b266d43d54096f2a89b21dd02b63afb';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"content":{"define":"content","name":"content","relation":"content","type":"String"},"fsr":{"define":"fsr","name":"fsr","relation":"fsr","type":"String"},"fsr_name":{"define":"fsr_name","name":"fsr_name","relation":"fsr_name","type":"String"},"fssj":{"define":"fssj","name":"fssj","relation":"fssj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"is_read":{"define":"is_read","name":"is_read","relation":"is_read","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"txfs":{"define":"txfs","name":"txfs","relation":"txfs","type":"String"},"txrq":{"define":"txrq","name":"txrq","relation":"txrq","type":"String"},"txry":{"define":"txry","name":"txry","relation":"txry","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":-1,"xid":"MsgData"});
}}); 
return __result;});