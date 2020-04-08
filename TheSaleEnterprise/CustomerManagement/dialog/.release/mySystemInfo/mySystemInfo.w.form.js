define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/mySystemInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUb6bue';
	this._flag_='252c74936ea189446a090f57bc212643';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"breif":{"define":"breif","name":"breif","relation":"breif","type":"String"},"city":{"define":"city","name":"city","relation":"city","type":"String"},"city_fzr":{"define":"city_fzr","name":"city_fzr","relation":"city_fzr","type":"String"},"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"cusman":{"define":"cusman","name":"cusman","relation":"cusman","type":"String"},"erjiqudao":{"define":"erjiqudao","name":"erjiqudao","relation":"erjiqudao","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"provice":{"define":"provice","name":"provice","relation":"provice","type":"String"},"provice_fzr":{"define":"provice_fzr","name":"provice_fzr","relation":"provice_fzr","type":"String"},"stuff":{"define":"stuff","name":"stuff","relation":"stuff","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"zoning":{"define":"zoning","name":"zoning","relation":"zoning","type":"String"},"zoning_fzr":{"define":"zoning_fzr","name":"zoning_fzr","relation":"zoning_fzr","type":"String"}},"directDelete":false,"events":{},"idColumn":"jxs","initData":"[{\"id\":\"1\",\"col1\":\"安徽副食品经销部\",\"col2\":\"CU10001\",\"col3\":\"安徽副食品经销部\"},{\"id\":\"2\",\"col1\":\"上海副食品经销部\",\"col2\":\"CU10002\",\"col3\":\"上海副食品经销部\"}]","isMain":false,"limit":20,"xid":"CData"});
}}); 
return __result;});