define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/placeOrder/orderDialog/giftClassMain'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cI32MBr';
	this._flag_='3e941c0c11234256f2fe424e8895ac65';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"child":{"define":"child","name":"child","relation":"child","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"categoryDataCustomRefresh"},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"categoryData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"data1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"data2"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col22":{"define":"col22","name":"col22","relation":"col22","type":"String"},"col23":{"define":"col23","name":"col23","relation":"col23","type":"String"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"order_num":{"define":"order_num","name":"order_num","relation":"order_num","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"quantity":{"define":"quantity","name":"quantity","relation":"quantity","type":"String"},"set_specs":{"define":"set_specs","name":"set_specs","relation":"set_specs","type":"String"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"unit_name":{"define":"unit_name","name":"unit_name","relation":"unit_name","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"goodsDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_img":{"define":"cate_img","name":"cate_img","relation":"cate_img","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"data3"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cid":{"define":"cid","name":"cid","relation":"cid","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classNameData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classValueData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classValue2Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classValue3Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cid":{"define":"cid","name":"cid","relation":"cid","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"className2Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cid":{"define":"cid","name":"cid","relation":"cid","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"className3Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"origin_price":{"define":"origin_price","name":"origin_price","relation":"origin_price","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"unitData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"specificationName":{"define":"specificationName","name":"specificationName","relation":"specificationName","type":"String"},"specificationThis":{"define":"specificationThis","name":"specificationThis","relation":"specificationThis","type":"String"},"specificationValue":{"define":"specificationValue","name":"specificationValue","relation":"specificationValue","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"specificationData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"dis_tag":{"define":"dis_tag","name":"dis_tag","relation":"dis_tag","type":"String"},"fsum":{"define":"fsum","name":"fsum","relation":"fsum","rules":{"calculate":"$row.val(\"goods_num\")","number":true},"type":"Float"},"fsumMoney":{"define":"fsumMoney","name":"fsumMoney","relation":"fsumMoney","rules":{"calculate":"$row.val(\"total_price\")","number":true},"type":"Float"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","rules":{"integer":true},"type":"Integer"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"price":{"define":"price","name":"price","relation":"price","rules":{"number":true},"type":"Float"},"promotion":{"define":"promotion","name":"promotion","relation":"promotion","type":"String"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"sales_flag":{"define":"sales_flag","label":"是否是促销商品","name":"sales_flag","relation":"sales_flag","type":"String"},"sales_flag_num":{"define":"sales_flag_num","name":"sales_flag_num","relation":"sales_flag_num","type":"String"},"sales_price":{"define":"sales_price","label":"促销的价格","name":"sales_price","relation":"sales_price","rules":{"number":true},"type":"Float"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"},"specification1":{"define":"specification1","name":"specification1","relation":"specification1","type":"String"},"specification2":{"define":"specification2","name":"specification2","relation":"specification2","type":"String"},"specification3":{"define":"specification3","name":"specification3","relation":"specification3","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"total_price":{"define":"total_price","label":"总价","name":"total_price","relation":"total_price","rules":{"number":true},"type":"Float"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"data5"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Value":{"define":"Value","name":"Value","relation":"Value","rules":{"calculate":"$model.data5.sum(\"fsum\")","integer":true},"type":"Integer"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"moeny":{"define":"moeny","name":"moeny","relation":"moeny","rules":{"calculate":"$model.data5.sum(\"fsumMoney\")","number":true},"type":"Float"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"Value\":0,\"moeny\":0}]","isMain":false,"limit":20,"xid":"sumdata"});
}}); 
return __result;});