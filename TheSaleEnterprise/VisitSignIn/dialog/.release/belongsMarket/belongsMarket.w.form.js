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
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/VisitSignIn/dialog/belongsMarket'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cR3eiaa';
	this._flag_='b1cc04575f87b12b8bdb4bddb28377cb';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"daogou":{"define":"daogou","name":"daogou","relation":"daogou","type":"String"},"end":{"define":"end","name":"end","relation":"end","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"hbr":{"define":"hbr","name":"hbr","relation":"hbr","type":"String"},"hbrq":{"define":"hbrq","name":"hbrq","relation":"hbrq","type":"String"},"hd_sn":{"define":"hd_sn","name":"hd_sn","relation":"hd_sn","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"net":{"define":"net","name":"net","relation":"net","type":"String"},"net_sn":{"define":"net_sn","name":"net_sn","relation":"net_sn","type":"String"},"pro":{"define":"pro","name":"pro","relation":"pro","type":"String"},"pro_type":{"define":"pro_type","name":"pro_type","relation":"pro_type","type":"String"},"start":{"define":"start","name":"start","relation":"start","type":"String"},"yewuyuan":{"define":"yewuyuan","name":"yewuyuan","relation":"yewuyuan","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"yData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"daogou":{"define":"daogou","name":"daogou","relation":"daogou","type":"String"},"end":{"define":"end","name":"end","relation":"end","type":"String"},"feetype":{"define":"feetype","name":"feetype","relation":"feetype","type":"String"},"hbr":{"define":"hbr","name":"hbr","relation":"hbr","type":"String"},"hbrq":{"define":"hbrq","name":"hbrq","relation":"hbrq","type":"String"},"hd_sn":{"define":"hd_sn","name":"hd_sn","relation":"hd_sn","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"net":{"define":"net","name":"net","relation":"net","type":"String"},"net_sn":{"define":"net_sn","name":"net_sn","relation":"net_sn","type":"String"},"pro":{"define":"pro","name":"pro","relation":"pro","type":"String"},"pro_type":{"define":"pro_type","name":"pro_type","relation":"pro_type","type":"String"},"start":{"define":"start","name":"start","relation":"start","type":"String"},"yewuyuan":{"define":"yewuyuan","name":"yewuyuan","relation":"yewuyuan","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"wData"});
}}); 
return __result;});