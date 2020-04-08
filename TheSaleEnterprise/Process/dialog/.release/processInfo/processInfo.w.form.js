define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Process/dialog/processInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cvYzyyq';
	this._flag_='2a48542ca0cb65a815001bc730b859e1';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"c":{"define":"c","name":"c","relation":"c","type":"String"},"code":{"define":"code","name":"code","relation":"code","type":"String"},"fy":{"define":"fy","name":"fy","relation":"fy","type":"String"},"fyl":{"define":"fyl","name":"fyl","relation":"fyl","type":"String"},"fynum":{"define":"fynum","name":"fynum","relation":"fynum","type":"String"},"fytr":{"define":"fytr","name":"fytr","relation":"fytr","type":"String"},"gnum":{"define":"gnum","name":"gnum","relation":"gnum","type":"String"},"goods":{"define":"goods","name":"goods","relation":"goods","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"red":{"define":"red","name":"red","relation":"red","type":"String"},"roi":{"define":"roi","name":"roi","relation":"roi","type":"String"},"sala":{"define":"sala","name":"sala","relation":"sala","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"wang":{"define":"wang","name":"wang","relation":"wang","type":"String"},"wnum":{"define":"wnum","name":"wnum","relation":"wnum","type":"String"},"yjxl":{"define":"yjxl","name":"yjxl","relation":"yjxl","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"杭州乐购中华广场3月堆头费用\",\"code\":\"201703230020\",\"name\":\"张三（东南客户主管）\",\"sala\":\"常规\",\"c\":\"杭州市清江贸易有限公司\",\"time\":\"2017-03-01至2017-03-30\",\"wang\":\"杭州乐购中华广场店\",\"wnum\":\"（等公1家网点）\",\"goods\":\"160g大嘴猴病死猪\",\"gnum\":\"（等公1家网点）\",\"fy\":\"堆头费\",\"fynum\":\"（等公1家费用）\",\"red\":\"红灯\",\"roi\":\"18,102.02%\",\"fytr\":\"0元\",\"yjxl\":\"0元\",\"fyl\":\"0%\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"content":{"define":"content","name":"content","relation":"content","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"0\",\"content\":\"什么都没有\"},{\"id\":\"2\",\"name\":\"李四\",\"time\":\"2018-01-08\",\"type\":\"1\",\"content\":\"请填写正确网点\"},{\"id\":\"3\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"2\",\"content\":\"提交\"},{\"id\":\"4\",\"name\":\"张三\",\"time\":\"2018-01-08\",\"type\":\"3\",\"content\":\"执行活动\"},{\"id\":\"5\",\"name\":\"老张\",\"time\":\"2018-01-08\",\"type\":\"4\",\"content\":\"抄送\"}]","isMain":false,"limit":20,"xid":"spData"});
}}); 
return __result;});