define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/order/order'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='czMnume';
	this._flag_='c2f4ff5eee898244846c7934da85d570';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"order_auting_state":{"define":"order_auting_state","name":"order_auting_state","relation":"order_auting_state","type":"String"},"order_coding":{"define":"order_coding","name":"order_coding","relation":"order_coding","type":"String"},"order_create_time":{"define":"order_create_time","name":"order_create_time","relation":"order_create_time","type":"String"},"order_money_state":{"define":"order_money_state","name":"order_money_state","relation":"order_money_state","type":"String"},"order_quantity":{"define":"order_quantity","name":"order_quantity","relation":"order_quantity","rules":{"integer":true},"type":"Integer"},"order_sum":{"define":"order_sum","name":"order_sum","relation":"order_sum","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{"onCustomRefresh":"orderGoodsListCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"orderGoodsList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bill_message":{"define":"bill_message","name":"bill_message","relation":"bill_message","type":"String"},"cancel_reason":{"define":"cancel_reason","name":"cancel_reason","relation":"cancel_reason","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"deliver_goods":{"define":"deliver_goods","name":"deliver_goods","relation":"deliver_goods","type":"String"},"delivery_time":{"define":"delivery_time","name":"delivery_time","relation":"delivery_time","type":"String"},"discount_price":{"define":"discount_price","name":"discount_price","relation":"discount_price","type":"String"},"gathering_type":{"define":"gathering_type","name":"gathering_type","relation":"gathering_type","type":"String"},"is_discount":{"define":"is_discount","name":"is_discount","relation":"is_discount","type":"String"},"is_instead":{"define":"is_instead","name":"is_instead","relation":"is_instead","type":"String"},"logistics_cn":{"define":"logistics_cn","name":"logistics_cn","relation":"logistics_cn","type":"String"},"make":{"define":"make","name":"make","relation":"make","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"num":{"define":"num","name":"num","relation":"num","type":"String"},"order_des":{"define":"order_des","name":"order_des","relation":"order_des","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"order_sn":{"define":"order_sn","name":"order_sn","relation":"order_sn","type":"String"},"order_time":{"define":"order_time","name":"order_time","relation":"order_time","type":"String"},"out_warehouse":{"define":"out_warehouse","name":"out_warehouse","relation":"out_warehouse","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"print_type":{"define":"print_type","name":"print_type","relation":"print_type","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"type_trans":{"define":"type_trans","name":"type_trans","relation":"type_trans","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"orderDataCustomRefresh"},"idColumn":"order_id","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});