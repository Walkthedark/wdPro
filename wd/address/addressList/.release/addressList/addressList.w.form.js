define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/address/addressList/addressList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cueaAne';
	this._flag_='476842f91f3976e7e7fbc2029ebd439f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address_area":{"define":"address_area","name":"address_area","relation":"address_area","type":"String"},"address_detail":{"define":"address_detail","name":"address_detail","relation":"address_detail","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"is_default":{"define":"is_default","name":"is_default","relation":"is_default","rules":{"integer":true},"type":"Integer"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"tell":{"define":"tell","name":"tell","relation":"tell","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"addressCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"address"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"address_id":{"define":"address_id","name":"address_id","relation":"address_id","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"consignee":{"define":"consignee","name":"consignee","relation":"consignee","type":"String"},"is_default":{"define":"is_default","name":"is_default","relation":"is_default","type":"String"},"is_delete":{"define":"is_delete","name":"is_delete","relation":"is_delete","type":"String"},"mobile":{"define":"mobile","name":"mobile","relation":"mobile","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"address_id","isMain":false,"limit":20,"xid":"adressData"});
}}); 
return __result;});