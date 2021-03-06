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
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/editOrder'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuqqyuu';
	this._flag_='5145600a3e20bb2e1f256716077aa357';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"type\":\"经销商\"},{\"id\":\"2\",\"type\":\"配送商\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"dh":{"define":"dh","name":"dh","relation":"dh","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jid":{"define":"jid","name":"jid","relation":"jid","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"net":{"define":"net","name":"net","relation":"net","type":"String"},"net_id":{"define":"net_id","name":"net_id","relation":"net_id","type":"String"},"sendType":{"define":"sendType","name":"sendType","relation":"sendType","type":"String"},"shdz":{"define":"shdz","name":"shdz","relation":"shdz","type":"String"},"shr":{"define":"shr","name":"shr","relation":"shr","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"yhPolicy":{"define":"yhPolicy","name":"yhPolicy","relation":"yhPolicy","type":"String"},"yhPolicymc":{"define":"yhPolicymc","name":"yhPolicymc","relation":"yhPolicymc","type":"String"},"yszje":{"define":"yszje","name":"yszje","relation":"yszje","type":"String"}},"directDelete":false,"events":{"onValueChanged":"orderDataValueChanged"},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"activityList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"box":{"define":"box","name":"box","relation":"box","type":"String"},"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"did":{"define":"did","name":"did","relation":"did","type":"String"},"ge":{"define":"ge","name":"ge","relation":"ge","type":"String"},"ghj":{"define":"ghj","name":"ghj","relation":"ghj","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"xslx":{"define":"xslx","name":"xslx","relation":"xslx","type":"String"},"yhms":{"define":"yhms","name":"yhms","relation":"yhms","type":"String"}},"directDelete":false,"events":{},"idColumn":"did","isMain":false,"limit":20,"xid":"infoData"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});