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
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/statementsPayment'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cem6N32';
	this._flag_='83635c147d8b4046f9e906013cd1e655';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"安徽副食品经销部\",\"col2\":\"CU10001\",\"col3\":\"安徽副食品经销部\"},{\"id\":\"2\",\"col1\":\"上海副食品经销部\",\"col2\":\"CU10002\",\"col3\":\"上海副食品经销部\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"djlx":{"define":"djlx","name":"djlx","relation":"djlx","type":"String"},"dzf":{"define":"dzf","name":"dzf","relation":"dzf","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"qmye":{"define":"qmye","name":"qmye","relation":"qmye","type":"String"},"rq":{"define":"rq","name":"rq","relation":"rq","type":"String"},"yis":{"define":"yis","name":"yis","relation":"yis","type":"String"},"ys":{"define":"ys","name":"ys","relation":"ys","type":"String"},"zt":{"define":"zt","name":"zt","relation":"zt","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"2018-01-01\",\"col2\":\"期初余额\",\"col3\":\"未确认\",\"col4\":\"3000元\",\"col5\":\"1500元\",\"col6\":\"20000元\",\"col7\":\"\",\"col8\":\"\"},{\"id\":\"2\",\"col1\":\"2018-01-05\",\"col2\":\"标准应收单\",\"col3\":\"未确认\",\"col4\":\"3000元\",\"col5\":\"1500元\",\"col6\":\"20000元\"}]","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});