define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/secondShopMain/secondShopMain'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cIVb6Fz';
	this._flag_='64e0c51476ea3b9a8284e6b4b3fbfec1';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"child":{"define":"child","name":"child","relation":"child","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"categoryDataCustomRefresh"},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"categoryData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"data1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"data2"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"order_num":{"define":"order_num","name":"order_num","relation":"order_num","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"quantity":{"define":"quantity","name":"quantity","relation":"quantity","type":"String"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"unit_name":{"define":"unit_name","name":"unit_name","relation":"unit_name","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"goodsDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"data3"});
}}); 
return __result;});