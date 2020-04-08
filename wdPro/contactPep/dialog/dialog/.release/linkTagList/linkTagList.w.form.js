define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/contactPep/dialog/dialog/linkTagList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cE3yMNb';
	this._flag_='16b9417a943770d315a77dfe992a8bb3';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"tag_id":{"define":"tag_id","name":"tag_id","relation":"tag_id","type":"String"},"tag_name":{"define":"tag_name","name":"tag_name","relation":"tag_name","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"tagDataCustomRefresh"},"idColumn":"col0","isMain":false,"limit":20,"xid":"tagData"});
}}); 
return __result;});