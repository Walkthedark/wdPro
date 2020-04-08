define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Process/Process'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cqE7Rfu';
	this._flag_='f7cbd1ba79fc8e733f54102af630c403';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"city":{"define":"city","name":"city","relation":"city","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"2017年东南大曲AP费用预算\",\"time\":\"2017-03-22\",\"name\":\"张三\",\"type\":\"AP预算申请\",\"state\":\"0\",\"city\":\"东南大区\"},{\"id\":\"2\",\"title\":\"2017年东南大曲日常费用预算\",\"time\":\"2017-03-22\",\"name\":\"张三\",\"type\":\"日常费用预算申请\",\"state\":\"0\",\"city\":\"东南大区\"},{\"id\":\"3\",\"title\":\"2017年个人销售目标\",\"time\":\"2017-03-23\",\"name\":\"李四\",\"type\":\"个人销售目标申请\",\"state\":\"0\",\"city\":\"东南大区\"},{\"id\":\"4\",\"title\":\"张三的请假单\",\"time\":\"2017-03-23\",\"name\":\"张三\",\"type\":\"请假申请\",\"state\":\"0\",\"city\":\"东南大区\"}]","isMain":false,"limit":20,"xid":"DData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"city":{"define":"city","name":"city","relation":"city","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"2017年东南大曲AP费用预算\",\"time\":\"2017-03-22\",\"name\":\"张三\",\"type\":\"AP预算申请\",\"state\":\"1\",\"city\":\"东南大区\"},{\"id\":\"2\",\"title\":\"2017年东南大曲日常费用预算\",\"time\":\"2017-03-22\",\"name\":\"张三\",\"type\":\"日常费用预算申请\",\"state\":\"1\",\"city\":\"东南大区\"},{\"id\":\"3\",\"title\":\"2017年个人销售目标\",\"time\":\"2017-03-23\",\"name\":\"李四\",\"type\":\"个人销售目标申请\",\"state\":\"1\",\"city\":\"东南大区\"},{\"id\":\"4\",\"title\":\"张三的请假单\",\"time\":\"2017-03-23\",\"name\":\"张三\",\"type\":\"请假申请\",\"state\":\"1\",\"city\":\"东南大区\"}]","isMain":false,"limit":20,"xid":"YData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"department":{"define":"department","name":"department","relation":"department","type":"String"},"myId":{"define":"myId","name":"myId","relation":"myId","type":"String"},"rwmcjbh":{"define":"rwmcjbh","name":"rwmcjbh","relation":"rwmcjbh","type":"String"},"sendTime":{"define":"sendTime","name":"sendTime","relation":"sendTime","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"trackId":{"define":"trackId","name":"trackId","relation":"trackId","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"type_id":{"define":"type_id","name":"type_id","relation":"type_id","type":"String"},"workId":{"define":"workId","name":"workId","relation":"workId","type":"String"}},"directDelete":false,"events":{},"idColumn":"workId","isMain":false,"limit":20,"xid":"dData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"department":{"define":"department","name":"department","relation":"department","type":"String"},"myId":{"define":"myId","name":"myId","relation":"myId","type":"String"},"rwmcjbh":{"define":"rwmcjbh","name":"rwmcjbh","relation":"rwmcjbh","type":"String"},"sendTime":{"define":"sendTime","name":"sendTime","relation":"sendTime","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"trackId":{"define":"trackId","name":"trackId","relation":"trackId","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"type_id":{"define":"type_id","name":"type_id","relation":"type_id","type":"String"},"workId":{"define":"workId","name":"workId","relation":"workId","type":"String"}},"directDelete":false,"events":{},"idColumn":"workId","isMain":false,"limit":20,"xid":"yData"});
}}); 
return __result;});