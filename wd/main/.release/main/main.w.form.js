define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/bootstrap/table/table');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/main/main'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cIZVBRr';
	this._flag_='4eac993123bbd8ee2560d9f6b565e6de';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"pro_image_url":{"define":"pro_image_url","name":"pro_image_url","relation":"pro_image_url","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"pro_price":{"define":"pro_price","name":"pro_price","relation":"pro_price","type":"String"},"pro_unit":{"define":"pro_unit","name":"pro_unit","relation":"pro_unit","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"productInfo"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"sales_type":{"define":"sales_type","name":"sales_type","relation":"sales_type","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"salesType"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"add_goods_time":{"define":"add_goods_time","name":"add_goods_time","relation":"add_goods_time","type":"String"},"brand_id":{"define":"brand_id","name":"brand_id","relation":"brand_id","type":"String"},"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cost_price":{"define":"cost_price","name":"cost_price","relation":"cost_price","type":"String"},"goods_code1":{"define":"goods_code1","name":"goods_code1","relation":"goods_code1","type":"String"},"goods_code2":{"define":"goods_code2","name":"goods_code2","relation":"goods_code2","type":"String"},"goods_code3":{"define":"goods_code3","name":"goods_code3","relation":"goods_code3","type":"String"},"goods_fid":{"define":"goods_fid","name":"goods_fid","relation":"goods_fid","type":"String"},"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"goods_state":{"define":"goods_state","name":"goods_state","relation":"goods_state","type":"String"},"is_client_price":{"define":"is_client_price","name":"is_client_price","relation":"is_client_price","type":"String"},"is_combo":{"define":"is_combo","name":"is_combo","relation":"is_combo","type":"String"},"is_material":{"define":"is_material","name":"is_material","relation":"is_material","type":"String"},"is_material2":{"define":"is_material2","name":"is_material2","relation":"is_material2","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"preposition_day":{"define":"preposition_day","name":"preposition_day","relation":"preposition_day","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"update_goods_time":{"define":"update_goods_time","name":"update_goods_time","relation":"update_goods_time","type":"String"}},"directDelete":false,"events":{},"idColumn":"add_goods_time","isMain":false,"limit":20,"xid":"goodsData"});
}}); 
return __result;});