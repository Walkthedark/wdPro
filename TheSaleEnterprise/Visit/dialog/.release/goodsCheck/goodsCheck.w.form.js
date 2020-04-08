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
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/goodsCheck'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyQ363a';
	this._flag_='9805e42f65925d76a651caf74cc3b2ea';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cp_id":{"define":"cp_id","name":"cp_id","relation":"cp_id","type":"String"},"jcqk_bz":{"define":"jcqk_bz","name":"jcqk_bz","relation":"jcqk_bz","type":"String"},"jcqk_jg":{"define":"jcqk_jg","name":"jcqk_jg","relation":"jcqk_jg","type":"String"},"jcqk_zt":{"define":"jcqk_zt","name":"jcqk_zt","relation":"jcqk_zt","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"}},"directDelete":false,"events":{},"idColumn":"cp_id","initData":"[{\"id\":\"1\",\"col1\":\"沙田柚\",\"col2\":\"正常\",\"col3\":\"300\",\"col4\":\"元/个\",\"col5\":\"无\"},{\"id\":\"2\",\"col1\":\"椰子冻\",\"col2\":\"正常\",\"col3\":\"200\",\"col4\":\"元/个\"},{\"id\":\"3\",\"col1\":\"大肉粽\",\"col2\":\"异常\",\"col3\":\"100\",\"col4\":\"元/个\",\"col5\":\"送达方是个个人\"}]","isMain":false,"limit":20,"xid":"GoodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"states":{"define":"states","name":"states","relation":"states","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"states\":\"正常\"},{\"id\":\"2\",\"states\":\"异常\"}]","isMain":false,"limit":20,"xid":"statesData"});
}}); 
return __result;});