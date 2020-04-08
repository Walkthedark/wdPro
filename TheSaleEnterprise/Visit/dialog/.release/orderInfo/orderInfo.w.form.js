define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
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
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/orderInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cZriiam';
	this._flag_='8316e3f6865724b608a47fe4eb41cdca';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"did":{"define":"did","name":"did","relation":"did","type":"String"},"ge":{"define":"ge","name":"ge","relation":"ge","type":"String"},"ghj":{"define":"ghj","name":"ghj","relation":"ghj","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"xiang":{"define":"xiang","name":"xiang","relation":"xiang","type":"String"},"xslx":{"define":"xslx","name":"xslx","relation":"xslx","type":"String"},"yhms":{"define":"yhms","name":"yhms","relation":"yhms","type":"String"}},"directDelete":false,"events":{},"idColumn":"did","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"dh":{"define":"dh","name":"dh","relation":"dh","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jsn":{"define":"jsn","name":"jsn","relation":"jsn","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"net":{"define":"net","name":"net","relation":"net","type":"String"},"net_id":{"define":"net_id","name":"net_id","relation":"net_id","type":"String"},"shdz":{"define":"shdz","name":"shdz","relation":"shdz","type":"String"},"shr":{"define":"shr","name":"shr","relation":"shr","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"yhPolicy":{"define":"yhPolicy","name":"yhPolicy","relation":"yhPolicy","type":"String"},"yhPolicymc":{"define":"yhPolicymc","name":"yhPolicymc","relation":"yhPolicymc","type":"String"},"yszje":{"define":"yszje","name":"yszje","relation":"yszje","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});