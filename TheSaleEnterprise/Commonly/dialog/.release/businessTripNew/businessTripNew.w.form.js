define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/businessTripNew'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3A7nMr';
	this._flag_='fb0cb239fdf462f82556676a88444af6';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"feiyong":{"define":"feiyong","name":"feiyong","relation":"feiyong","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"target":{"define":"target","name":"target","relation":"target","type":"String"},"taveltype":{"define":"taveltype","name":"taveltype","relation":"taveltype","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"typeList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"em_name":{"define":"em_name","name":"em_name","relation":"em_name","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"persons"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"chufa":{"define":"chufa","name":"chufa","relation":"chufa","type":"String"},"end":{"define":"end","name":"end","relation":"end","rules":{"date":true},"type":"Date"},"fangshi":{"define":"fangshi","name":"fangshi","relation":"fangshi","type":"String"},"gl":{"define":"gl","name":"gl","relation":"gl","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jtgj":{"define":"jtgj","name":"jtgj","relation":"jtgj","type":"String"},"mudi":{"define":"mudi","name":"mudi","relation":"mudi","type":"String"},"peitongid":{"define":"peitongid","name":"peitongid","relation":"peitongid","type":"String"},"peitongren":{"define":"peitongren","name":"peitongren","relation":"peitongren","type":"String"},"qishi":{"define":"qishi","name":"qishi","relation":"qishi","type":"String"},"shijian":{"define":"shijian","name":"shijian","relation":"shijian","type":"String"},"start":{"define":"start","name":"start","relation":"start","rules":{"date":true},"type":"Date"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"detailData"});
}}); 
return __result;});