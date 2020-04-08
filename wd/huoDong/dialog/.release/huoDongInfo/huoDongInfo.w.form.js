define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/huoDong/dialog/huoDongInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cNfm26b';
	this._flag_='80ad71dd13d828539ff0e2d604f5b275';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"end_time":{"define":"end_time","name":"end_time","relation":"end_time","type":"String"},"group_goods_count":{"define":"group_goods_count","name":"group_goods_count","relation":"group_goods_count","type":"String"},"promotion_cate":{"define":"promotion_cate","name":"promotion_cate","relation":"promotion_cate","type":"String"},"promotion_detail":{"define":"promotion_detail","name":"promotion_detail","relation":"promotion_detail","type":"String"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"promotion_rule":{"define":"promotion_rule","name":"promotion_rule","relation":"promotion_rule","type":"String"},"promotion_title":{"define":"promotion_title","name":"promotion_title","relation":"promotion_title","type":"String"},"promotion_type":{"define":"promotion_type","name":"promotion_type","relation":"promotion_type","type":"String"},"start_time":{"define":"start_time","name":"start_time","relation":"start_time","type":"String"}},"directDelete":false,"events":{},"idColumn":"promotion_id","isMain":false,"limit":20,"xid":"data1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cost_price":{"define":"cost_price","name":"cost_price","relation":"cost_price","type":"String"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"guige":{"define":"guige","name":"guige","relation":"guige","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"set_specs":{"define":"set_specs","name":"set_specs","relation":"set_specs","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"}},"directDelete":false,"events":{},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"goodsDataM"});
}}); 
return __result;});