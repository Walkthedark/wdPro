define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Shoppers/dialog/shoppersInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cI3yUry';
	this._flag_='96386d21b7649fcadb5c5dc238412a8f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"col6":{"define":"col6","name":"col6","relation":"col6","type":"String"},"col7":{"define":"col7","name":"col7","relation":"col7","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"李四\",\"col2\":\"东南大区\",\"col3\":\"2018-02-17 14:00\",\"col4\":\"2018021700001\",\"col5\":\"2018-02-17 14:00至2018-02-17 15:00\",\"col6\":\"共（0天1小时）\",\"col7\":\"测试\",\"col8\":\"../TheSaleEnterprise/Commonly/img/006.png\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"content":{"define":"content","name":"content","relation":"content","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"0\",\"content\":\"什么都没有\"},{\"id\":\"2\",\"name\":\"李四\",\"time\":\"2018-01-08\",\"type\":\"1\",\"content\":\"请填写正确网点\"},{\"id\":\"3\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"2\",\"content\":\"提交\"},{\"id\":\"4\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"3\",\"content\":\"执行活动\"},{\"id\":\"5\",\"name\":\"老张\",\"time\":\"2018-01-08\",\"type\":\"4\",\"content\":\"抄送\"}]","isMain":false,"limit":20,"xid":"spData"});
}}); 
return __result;});