define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/designatedCheckIn'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cEzmA7z';
	this._flag_='fbde62381a4c6858bebe3d7544d34ec2';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dwsj":{"define":"dwsj","name":"dwsj","relation":"dwsj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"qdbm":{"define":"qdbm","name":"qdbm","relation":"qdbm","type":"String"},"qddz":{"define":"qddz","name":"qddz","relation":"qddz","type":"String"},"qdlx":{"define":"qdlx","name":"qdlx","relation":"qdlx","type":"String"},"qdms":{"define":"qdms","name":"qdms","relation":"qdms","type":"String"},"qdr":{"define":"qdr","name":"qdr","relation":"qdr","type":"String"},"qdr_name":{"define":"qdr_name","name":"qdr_name","relation":"qdr_name","type":"String"},"qdrq":{"define":"qdrq","name":"qdrq","relation":"qdrq","type":"String"},"qdsj":{"define":"qdsj","name":"qdsj","relation":"qdsj","type":"String"},"qdzp":{"define":"qdzp","name":"qdzp","relation":"qdzp","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"myData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dwsj":{"define":"dwsj","name":"dwsj","relation":"dwsj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"qdbm":{"define":"qdbm","name":"qdbm","relation":"qdbm","type":"String"},"qddz":{"define":"qddz","name":"qddz","relation":"qddz","type":"String"},"qdlx":{"define":"qdlx","name":"qdlx","relation":"qdlx","type":"String"},"qdms":{"define":"qdms","name":"qdms","relation":"qdms","type":"String"},"qdr":{"define":"qdr","name":"qdr","relation":"qdr","type":"String"},"qdr_name":{"define":"qdr_name","name":"qdr_name","relation":"qdr_name","type":"String"},"qdrq":{"define":"qdrq","name":"qdrq","relation":"qdrq","type":"String"},"qdsj":{"define":"qdsj","name":"qdsj","relation":"qdsj","type":"String"},"qdzp":{"define":"qdzp","name":"qdzp","relation":"qdzp","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"什么办事处\",\"col2\":\"2018-12-14 16:43\",\"col3\":\"2018-12-14 16:43\",\"col4\":\"广西柳州市12路\"},{\"id\":\"1\",\"col1\":\"其他签到地点：与梁总会谈\",\"col2\":\"2018-12-14 16:43\",\"col3\":\"2018-12-14 16:43\",\"col4\":\"上海渭南路1111\"}]","isMain":false,"limit":20,"xid":"underData"});
}}); 
return __result;});