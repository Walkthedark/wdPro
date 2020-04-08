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
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/dailyCostInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cimmUJ3';
	this._flag_='100f9c1263f47b511ac322580cfbdea7';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"cuser_bm":{"define":"cuser_bm","name":"cuser_bm","relation":"cuser_bm","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"kaohe":{"define":"kaohe","name":"kaohe","relation":"kaohe","type":"String"},"kaohe_title":{"define":"kaohe_title","name":"kaohe_title","relation":"kaohe_title","type":"String"},"no":{"define":"no","name":"no","relation":"no","type":"String"},"payway":{"define":"payway","name":"payway","relation":"payway","type":"String"},"payway_title":{"define":"payway_title","name":"payway_title","relation":"payway_title","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"李四\",\"col2\":\"东南大区\",\"col3\":\"2018-02-17 14:00\",\"col4\":\"2018021700001\",\"col5\":\"上海消消乐有限公司\",\"col6\":\"现金\",\"col7\":\"2017-2月\",\"col8\":\"../TheSaleEnterprise/Commonly/img/006.png\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"did":{"define":"did","name":"did","relation":"did","type":"String"},"feiid":{"define":"feiid","name":"feiid","relation":"feiid","type":"String"},"feiid_title":{"define":"feiid_title","name":"feiid_title","relation":"feiid_title","type":"String"},"feis":{"define":"feis","name":"feis","relation":"feis","type":"String"},"pizhunfeiyong":{"define":"pizhunfeiyong","name":"pizhunfeiyong","relation":"pizhunfeiyong","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"syr":{"define":"syr","name":"syr","relation":"syr","type":"String"}},"directDelete":false,"events":{},"idColumn":"did","isMain":false,"limit":20,"xid":"feeList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ACTIONTIME":{"define":"ACTIONTIME","name":"ACTIONTIME","relation":"ACTIONTIME","type":"String"},"COMMENTS":{"define":"COMMENTS","name":"COMMENTS","relation":"COMMENTS","type":"String"},"MEMO":{"define":"MEMO","name":"MEMO","relation":"MEMO","type":"String"},"USERNAME":{"define":"USERNAME","name":"USERNAME","relation":"USERNAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"USERNAME","isMain":false,"limit":20,"xid":"spData"});
}}); 
return __result;});