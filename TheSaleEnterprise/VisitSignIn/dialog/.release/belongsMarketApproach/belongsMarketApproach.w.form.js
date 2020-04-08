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
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/belongsMarketApproach'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cjyQb2u';
	this._flag_='bc7e55ca5cdbca56828a05089f06c169';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"hbr":{"define":"hbr","name":"hbr","relation":"hbr","type":"String"},"hbtime":{"define":"hbtime","name":"hbtime","relation":"hbtime","type":"String"},"hdms":{"define":"hdms","name":"hdms","relation":"hdms","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"isthis":{"define":"isthis","name":"isthis","relation":"isthis","type":"String"},"jyhx":{"define":"jyhx","name":"jyhx","relation":"jyhx","type":"String"},"zp":{"define":"zp","name":"zp","relation":"zp","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"盘老白\",\"col2\":\"是\",\"col3\":\"广西柳州市北雀路\",\"col4\":\"0.01千米\",\"col5\":\"2018-02-14至2018-02-22\",\"col6\":\"解决\",\"col7\":\"../TheSaleEnterprise/VisitSignIn/dialog/img/007.png\",\"col8\":\"2018-02-14 08:49\",\"col9\":\"\",\"col10\":\"\",\"col11\":\"\"},{\"id\":\"2\",\"col1\":\"小黑\",\"col2\":\"是\",\"col3\":\"广州白云区什么路\",\"col4\":\"0.01千米\",\"col5\":\"2018-02-14至2018-02-22\",\"col6\":\"解决\",\"col7\":\"../TheSaleEnterprise/VisitSignIn/dialog/img/005.png\",\"col8\":\"2018-02-14 08:49\",\"col9\":\"\",\"col10\":\"\",\"col11\":\"\"}]","isMain":false,"limit":20,"xid":"listData"});
}}); 
return __result;});