define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/bootstrap/progress/progress');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/IntegratedQuery/dialog/SalesProgress'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cQzeyei';
	this._flag_='ec732dd8a91c3d685e78b14b49356f8d';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dacheng":{"define":"dacheng","name":"dacheng","relation":"dacheng","type":"String"},"fysyl":{"define":"fysyl","name":"fysyl","relation":"fysyl","type":"String"},"sjfyl":{"define":"sjfyl","name":"sjfyl","relation":"sjfyl","type":"String"},"target":{"define":"target","name":"target","relation":"target","type":"String"},"xsdcl":{"define":"xsdcl","name":"xsdcl","relation":"xsdcl","type":"String"},"yizhi":{"define":"yizhi","name":"yizhi","relation":"yizhi","type":"String"},"yjfyl":{"define":"yjfyl","name":"yjfyl","relation":"yjfyl","type":"String"},"yusuan":{"define":"yusuan","name":"yusuan","relation":"yusuan","type":"String"},"zid":{"define":"zid","name":"zid","relation":"zid","type":"String"},"ztitle":{"define":"ztitle","name":"ztitle","relation":"ztitle","type":"String"}},"directDelete":false,"events":{},"idColumn":"zid","initData":"[{\"progress\":\"80\",\"state\":\"success\"}]","isMain":false,"limit":20,"xid":"pDate"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"areaList"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"area":{"define":"area","name":"area","relation":"area","type":"String"}},"directDelete":false,"events":{"onValueChanged":"cDateValueChanged"},"idColumn":"area","isMain":false,"limit":20,"xid":"cDate"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});