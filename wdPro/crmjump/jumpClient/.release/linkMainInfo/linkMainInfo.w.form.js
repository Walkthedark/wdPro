define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/crmjump/jumpClient/linkMainInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cv6byEv';
	this._flag_='64d4a4165d355d7369c9307ce051c06a';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"attention_type":{"define":"attention_type","name":"attention_type","relation":"attention_type","type":"String"},"category":{"define":"category","name":"category","relation":"category","type":"String"},"client":{"define":"client","name":"client","relation":"client","type":"String"},"client_arr":{"define":"client_arr","name":"client_arr","relation":"client_arr","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"duty":{"define":"duty","name":"duty","relation":"duty","type":"String"},"head_img":{"define":"head_img","name":"head_img","relation":"head_img","type":"String"},"is_audit":{"define":"is_audit","name":"is_audit","relation":"is_audit","type":"String"},"is_checked":{"define":"is_checked","name":"is_checked","relation":"is_checked","type":"String"},"last_contract_staff":{"define":"last_contract_staff","name":"last_contract_staff","relation":"last_contract_staff","type":"String"},"last_contract_time":{"define":"last_contract_time","name":"last_contract_time","relation":"last_contract_time","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"special_plane":{"define":"special_plane","name":"special_plane","relation":"special_plane","type":"String"},"staff_id":{"define":"staff_id","name":"staff_id","relation":"staff_id","type":"String"},"staff_name":{"define":"staff_name","name":"staff_name","relation":"staff_name","type":"String"},"tag":{"define":"tag","name":"tag","relation":"tag","type":"String"}},"directDelete":false,"events":{},"idColumn":"staff_id","isMain":false,"limit":20,"xid":"linkManData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","rules":{"integer":true},"type":"Integer"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"client_id","isMain":false,"limit":20,"xid":"relevanceDlientData"});
}}); 
return __result;});