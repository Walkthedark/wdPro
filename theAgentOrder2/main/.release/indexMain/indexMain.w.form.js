define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/main/indexMain'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRBR7nm';
	this._flag_='0b5f2cdbd4705c13369cc75a9e4ed835';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bill_message":{"define":"bill_message","name":"bill_message","relation":"bill_message","type":"String"},"cancel_reason":{"define":"cancel_reason","name":"cancel_reason","relation":"cancel_reason","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"deliver_goods":{"define":"deliver_goods","name":"deliver_goods","relation":"deliver_goods","type":"String"},"delivery_time":{"define":"delivery_time","name":"delivery_time","relation":"delivery_time","type":"String"},"discount_price":{"define":"discount_price","name":"discount_price","relation":"discount_price","type":"String"},"gathering_type":{"define":"gathering_type","name":"gathering_type","relation":"gathering_type","type":"String"},"is_discount":{"define":"is_discount","name":"is_discount","relation":"is_discount","type":"String"},"is_instead":{"define":"is_instead","name":"is_instead","relation":"is_instead","type":"String"},"logistics_cn":{"define":"logistics_cn","name":"logistics_cn","relation":"logistics_cn","type":"String"},"make":{"define":"make","name":"make","relation":"make","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"num":{"define":"num","name":"num","relation":"num","type":"String"},"order_des":{"define":"order_des","name":"order_des","relation":"order_des","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"order_sn":{"define":"order_sn","name":"order_sn","relation":"order_sn","type":"String"},"order_time":{"define":"order_time","name":"order_time","relation":"order_time","type":"String"},"out_warehouse":{"define":"out_warehouse","name":"out_warehouse","relation":"out_warehouse","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"print_type":{"define":"print_type","name":"print_type","relation":"print_type","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"type_trans":{"define":"type_trans","name":"type_trans","relation":"type_trans","type":"String"}},"directDelete":false,"events":{},"idColumn":"order_id","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"day\",\"name\":\"今日\"},{\"id\":\"week\",\"name\":\"本周\"},{\"id\":\"month\",\"name\":\"本月\"},{\"id\":\"year\",\"name\":\"本年\"}]","isMain":false,"limit":20,"xid":"data1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":20,"xid":"data2"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"count":{"define":"count","name":"count","relation":"count","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"orderCensusDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"orderCensusData"});
}}); 
return __result;});