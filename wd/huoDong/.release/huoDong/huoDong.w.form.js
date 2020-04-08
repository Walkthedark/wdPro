define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/huoDong/huoDong'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cumABFr';
	this._flag_='f040a5fdf03222e88e2cc462e555a7f2';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"end_time":{"define":"end_time","name":"end_time","relation":"end_time","type":"String"},"group_goods_count":{"define":"group_goods_count","name":"group_goods_count","relation":"group_goods_count","type":"String"},"promotion_cate":{"define":"promotion_cate","name":"promotion_cate","relation":"promotion_cate","type":"String"},"promotion_detail":{"define":"promotion_detail","name":"promotion_detail","relation":"promotion_detail","type":"String"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"promotion_rule":{"define":"promotion_rule","name":"promotion_rule","relation":"promotion_rule","type":"String"},"promotion_title":{"define":"promotion_title","name":"promotion_title","relation":"promotion_title","type":"String"},"promotion_type":{"define":"promotion_type","name":"promotion_type","relation":"promotion_type","type":"String"},"start_time":{"define":"start_time","name":"start_time","relation":"start_time","type":"String"}},"directDelete":false,"events":{},"idColumn":"promotion_id","isMain":false,"limit":20,"xid":"data1"});
}}); 
return __result;});