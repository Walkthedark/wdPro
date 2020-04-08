define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/main/dialog/dialog/InfoOrder'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbUfAna';
	this._flag_='636740b528ce3d8edbe45524e3336df4';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bill_message":{"define":"bill_message","name":"bill_message","relation":"bill_message","type":"String"},"cancel_reason":{"define":"cancel_reason","name":"cancel_reason","relation":"cancel_reason","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"deliver_goods":{"define":"deliver_goods","name":"deliver_goods","relation":"deliver_goods","type":"String"},"delivery_time":{"define":"delivery_time","name":"delivery_time","relation":"delivery_time","type":"String"},"discount_price":{"define":"discount_price","name":"discount_price","relation":"discount_price","type":"String"},"gathering_type":{"define":"gathering_type","name":"gathering_type","relation":"gathering_type","type":"String"},"is_discount":{"define":"is_discount","name":"is_discount","relation":"is_discount","type":"String"},"is_instead":{"define":"is_instead","name":"is_instead","relation":"is_instead","type":"String"},"logistics_cn":{"define":"logistics_cn","name":"logistics_cn","relation":"logistics_cn","type":"String"},"make":{"define":"make","name":"make","relation":"make","type":"String"},"num":{"define":"num","name":"num","relation":"num","type":"String"},"order_des":{"define":"order_des","name":"order_des","relation":"order_des","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"order_sn":{"define":"order_sn","name":"order_sn","relation":"order_sn","type":"String"},"order_time":{"define":"order_time","name":"order_time","relation":"order_time","type":"String"},"out_warehouse":{"define":"out_warehouse","name":"out_warehouse","relation":"out_warehouse","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"print_type":{"define":"print_type","name":"print_type","relation":"print_type","type":"String"},"promotion":{"define":"promotion","name":"promotion","relation":"promotion","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"type_trans":{"define":"type_trans","name":"type_trans","relation":"type_trans","type":"String"}},"directDelete":false,"events":{},"idColumn":"order_id","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fsum":{"define":"fsum","name":"fsum","relation":"fsum","rules":{"calculate":"$row.val(\"goods_num\")","integer":true},"type":"Integer"},"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","rules":{"number":true},"type":"Float"},"goods_price":{"define":"goods_price","name":"goods_price","relation":"goods_price","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"goods_special_price":{"define":"goods_special_price","name":"goods_special_price","relation":"goods_special_price","type":"String"},"goods_subtotal":{"define":"goods_subtotal","name":"goods_subtotal","relation":"goods_subtotal","type":"String"},"goods_type":{"define":"goods_type","name":"goods_type","relation":"goods_type","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"order_goods_des":{"define":"order_goods_des","name":"order_goods_des","relation":"order_goods_des","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"promotion":{"define":"promotion","name":"promotion","relation":"promotion","type":"String"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"unit_name":{"define":"unit_name","name":"unit_name","relation":"unit_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"consignee":{"define":"consignee","name":"consignee","relation":"consignee","type":"String"},"create_time":{"define":"create_time","name":"create_time","relation":"create_time","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"addressData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Id":{"define":"Id","name":"Id","relation":"Id","type":"String"},"Num":{"define":"Num","name":"Num","relation":"Num","rules":{"calculate":"$model.goodsData.sum(\"fsum\")","number":true},"type":"Float"}},"directDelete":false,"events":{},"idColumn":"Id","initData":"[{\"Id\":\"1\"}]","isMain":false,"limit":20,"xid":"numData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"company_name":{"define":"company_name","name":"company_name","relation":"company_name","type":"String"},"create_at":{"define":"create_at","name":"create_at","relation":"create_at","type":"String"},"desc":{"define":"desc","name":"desc","relation":"desc","type":"String"},"log_id":{"define":"log_id","name":"log_id","relation":"log_id","type":"String"},"operator":{"define":"operator","name":"operator","relation":"operator","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"log_id","isMain":false,"limit":20,"xid":"logData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fsum":{"define":"fsum","name":"fsum","relation":"fsum","rules":{"calculate":"$row.val(\"goods_num\")","number":true},"type":"Float"},"fsumMoney":{"define":"fsumMoney","name":"fsumMoney","relation":"fsumMoney","rules":{"calculate":"$row.val(\"total_price\")","number":true},"type":"Float"},"gift_id":{"define":"gift_id","name":"gift_id","relation":"gift_id","type":"String"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"num":{"define":"num","name":"num","relation":"num","rules":{"integer":true},"type":"Integer"},"price":{"define":"price","name":"price","relation":"price","rules":{"number":true},"type":"Float"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"},"specification1":{"define":"specification1","name":"specification1","relation":"specification1","type":"String"},"specification1_name":{"define":"specification1_name","label":"促销的价格","name":"specification1_name","relation":"specification1_name","rules":{"number":true},"type":"Float"},"specification1_value":{"define":"specification1_value","label":"是否是促销商品","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2":{"define":"specification2","name":"specification2","relation":"specification2","type":"String"},"specification2_name":{"define":"specification2_name","label":"总价","name":"specification2_name","relation":"specification2_name","rules":{"number":true},"type":"Float"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3":{"define":"specification3","name":"specification3","relation":"specification3","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","type":"String"}},"directDelete":false,"events":{},"idColumn":"gift_id","isMain":false,"limit":20,"xid":"data2"});
}}); 
return __result;});