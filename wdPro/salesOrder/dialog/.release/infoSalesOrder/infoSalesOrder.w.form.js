define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/salesOrder/dialog/infoSalesOrder'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRbQ3En';
	this._flag_='c7807a7434996bf143ef22bb6d6ea684';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"category":{"define":"category","name":"category","relation":"category","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"create_at":{"define":"create_at","name":"create_at","relation":"create_at","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"create_staff_id":{"define":"create_staff_id","name":"create_staff_id","relation":"create_staff_id","type":"String"},"department":{"define":"department","name":"department","relation":"department","type":"String"},"documentary_id":{"define":"documentary_id","name":"documentary_id","relation":"documentary_id","type":"String"},"goods":{"define":"goods","name":"goods","relation":"goods","type":"String"},"images":{"define":"images","name":"images","relation":"images","type":"String"},"money":{"define":"money","name":"money","relation":"money","type":"String"},"no_change_days":{"define":"no_change_days","name":"no_change_days","relation":"no_change_days","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"staff_id":{"define":"staff_id","name":"staff_id","relation":"staff_id","type":"String"},"stage":{"define":"stage","name":"stage","relation":"stage","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"update_at":{"define":"update_at","name":"update_at","relation":"update_at","type":"String"},"update_staff":{"define":"update_staff","name":"update_staff","relation":"update_staff","type":"String"}},"directDelete":false,"events":{},"idColumn":"documentary_id","isMain":false,"limit":20,"xid":"ListData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":true,"defCols":{"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"}},"directDelete":false,"events":{},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"goodsData"});
}}); 
return __result;});