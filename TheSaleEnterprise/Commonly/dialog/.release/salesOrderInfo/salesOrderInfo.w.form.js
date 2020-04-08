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
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/salesOrderInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuAZbQv';
	this._flag_='d5ebe95e2180f9b0692b894625ea7c71';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bm":{"define":"bm","name":"bm","relation":"bm","type":"String"},"fpType":{"define":"fpType","name":"fpType","relation":"fpType","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"yhPolicy":{"define":"yhPolicy","name":"yhPolicy","relation":"yhPolicy","type":"String"},"zw":{"define":"zw","name":"zw","relation":"zw","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"安顺市新城区副食品经销部\",\"col2\":\"李四\",\"col3\":\"东南大区经理\",\"col4\":\"2018021700001\",\"col5\":\"增值税发票\",\"col6\":\"没有优惠\",\"col7\":\"2018-02-17\",\"col8\":\"../TheSaleEnterprise/Commonly/img/006.png\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"content":{"define":"content","name":"content","relation":"content","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"0\",\"content\":\"什么都没有\"},{\"id\":\"2\",\"name\":\"李四\",\"time\":\"2018-01-08\",\"type\":\"1\",\"content\":\"请填写正确网点\"},{\"id\":\"3\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"2\",\"content\":\"提交\"},{\"id\":\"4\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"3\",\"content\":\"执行活动\"},{\"id\":\"5\",\"name\":\"老张\",\"time\":\"2018-01-08\",\"type\":\"4\",\"content\":\"抄送\"}]","isMain":false,"limit":20,"xid":"spData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"col6":{"define":"col6","name":"col6","relation":"col6","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"椰子冻\",\"col2\":\"10\",\"col3\":\"10\",\"col4\":\"0\",\"col5\":\"1000\",\"col6\":\"销售\"},{\"id\":\"2\",\"col1\":\"叫花鸡\",\"col2\":\"10\",\"col3\":\"13\",\"col4\":\"0\",\"col5\":\"1300\",\"col6\":\"销售\"}]","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});