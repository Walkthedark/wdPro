define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/grid/grid');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/universalInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBRRzuy';
	this._flag_='5fbb414f170a74d6ced6487f2be77477';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Shoukuan":{"define":"Shoukuan","name":"Shoukuan","relation":"Shoukuan","type":"String"},"State":{"define":"State","name":"State","relation":"State","type":"String"},"bm":{"define":"bm","name":"bm","relation":"bm","type":"String"},"bm_title":{"define":"bm_title","name":"bm_title","relation":"bm_title","type":"String"},"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"cuser_bm":{"define":"cuser_bm","name":"cuser_bm","relation":"cuser_bm","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"iscost":{"define":"iscost","name":"iscost","relation":"iscost","type":"String"},"kaohe":{"define":"kaohe","name":"kaohe","relation":"kaohe","type":"String"},"kaohe_title":{"define":"kaohe_title","name":"kaohe_title","relation":"kaohe_title","type":"String"},"neirong":{"define":"neirong","name":"neirong","relation":"neirong","type":"String"},"no":{"define":"no","name":"no","relation":"no","type":"String"},"shoukuan_title":{"define":"shoukuan_title","name":"shoukuan_title","relation":"shoukuan_title","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"typetitle":{"define":"typetitle","name":"typetitle","relation":"typetitle","type":"String"},"zhifu":{"define":"zhifu","name":"zhifu","relation":"zhifu","type":"String"},"zhifu_title":{"define":"zhifu_title","name":"zhifu_title","relation":"zhifu_title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ACTIONTIME":{"define":"ACTIONTIME","name":"ACTIONTIME","relation":"ACTIONTIME","type":"String"},"COMMENTS":{"define":"COMMENTS","name":"COMMENTS","relation":"COMMENTS","type":"String"},"MEMO":{"define":"MEMO","name":"MEMO","relation":"MEMO","type":"String"},"USERNAME":{"define":"USERNAME","name":"USERNAME","relation":"USERNAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"USERNAME","isMain":false,"limit":20,"xid":"spData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"did":{"define":"did","name":"did","relation":"did","type":"String"},"fee":{"define":"fee","name":"fee","relation":"fee","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"feetype_title":{"define":"feetype_title","name":"feetype_title","relation":"feetype_title","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"}},"directDelete":false,"events":{},"idColumn":"did","isMain":false,"limit":20,"xid":"feeList"});
}}); 
return __result;});