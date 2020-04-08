define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
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
var __parent0=require('$model/UI2/wd/product/product'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3E7zm2';
	this._flag_='769b0e5db8b7f042df28d6e87eefe339';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fImg":{"define":"fImg","label":"图片","name":"fImg","relation":"fImg","type":"String"},"fPrice":{"define":"fPrice","label":"价格","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Float"},"fShopID":{"define":"fShopID","label":"店铺ID","name":"fShopID","relation":"fShopID","type":"String"},"fSpec":{"define":"fSpec","label":"邮费","name":"fSpec","relation":"fSpec","type":"String"},"fStock":{"define":"fStock","label":"月销量","name":"fStock","relation":"fStock","rules":{"integer":true},"type":"Integer"},"fTitle":{"define":"fTitle","label":"标题","name":"fTitle","relation":"fTitle","type":"String"},"fUnit":{"define":"fUnit","name":"fUnit","relation":"fUnit","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fName\":\"综合排序\",\"fState\":1},{\"id\":\"2\",\"fName\":\"价格升序\",\"fState\":0},{\"id\":\"3\",\"fName\":\"价格降序\",\"fState\":0}]","isMain":false,"limit":20,"xid":"conditionData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fName\":\"免运费\",\"fState\":0},{\"id\":\"2\",\"fName\":\"天猫\",\"fState\":0},{\"id\":\"3\",\"fName\":\"全球购\",\"fState\":0},{\"id\":\"4\",\"fName\":\"消费者保障\",\"fState\":0}]","isMain":false,"limit":20,"xid":"discountData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fName\":\"3C数码配件市场\",\"fState\":0},{\"id\":\"2\",\"fName\":\"品牌手表/流行手表\",\"fState\":0},{\"id\":\"3\",\"fName\":\"女装\",\"fState\":0}]","isMain":false,"limit":20,"xid":"classData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"isBack":{"define":"isBack","label":"是否显示","name":"isBack","relation":"isBack","type":"String"}},"directDelete":false,"events":{},"idColumn":"isBack","initData":"[{\"isBack\":\"1\"}]","isMain":false,"limit":20,"xid":"backData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cost_price":{"define":"cost_price","name":"cost_price","relation":"cost_price","type":"String"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"set_specs":{"define":"set_specs","name":"set_specs","relation":"set_specs","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"goodsDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"CATE_ID":{"define":"CATE_ID","name":"CATE_ID","relation":"CATE_ID","type":"String"},"CATE_NAME":{"define":"CATE_NAME","name":"CATE_NAME","relation":"CATE_NAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"CATE_ID","isMain":false,"limit":20,"xid":"classDataM"});
}}); 
return __result;});