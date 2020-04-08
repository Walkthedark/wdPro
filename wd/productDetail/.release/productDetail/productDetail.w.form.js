define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/bootstrap/carousel/carousel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/productDetail/productDetail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBJBBzi';
	this._flag_='4db8d16f4710d3857208d3b024e1a26c';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fContent":{"define":"fContent","label":"评论内容","name":"fContent","relation":"fContent","type":"String"},"fDate":{"define":"fDate","label":"评论日期","name":"fDate","relation":"fDate","rules":{"date":true},"type":"Date"},"fScore":{"define":"fScore","label":"评分","name":"fScore","relation":"fScore","rules":{"number":true},"type":"Float"},"fUserImg":{"define":"fUserImg","label":"用户头像","name":"fUserImg","relation":"fUserImg","type":"String"},"fUserName":{"define":"fUserName","label":"用户名","name":"fUserName","relation":"fUserName","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"commentsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"commentsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAddress":{"define":"fAddress","label":"所在地区","name":"fAddress","relation":"fAddress","type":"String"},"fCommentsNumber":{"define":"fCommentsNumber","label":"评价数量","name":"fCommentsNumber","relation":"fCommentsNumber","rules":{"calculate":"$model.commentsData.count()"},"type":"String"},"fDetail":{"define":"fDetail","label":"详情","name":"fDetail","relation":"fDetail","type":"String"},"fImg":{"define":"fImg","label":"图片","name":"fImg","relation":"fImg","type":"String"},"fOldPrice":{"define":"fOldPrice","label":"原价格","name":"fOldPrice","relation":"fOldPrice","rules":{"number":true},"type":"Float"},"fPostage":{"define":"fPostage","label":"邮费","name":"fPostage","relation":"fPostage","type":"String"},"fPrice":{"define":"fPrice","label":"价格","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Float"},"fRecord":{"define":"fRecord","label":"买出数量","name":"fRecord","relation":"fRecord","rules":{"integer":true},"type":"Integer"},"fTitle":{"define":"fTitle","label":"标题","name":"fTitle","relation":"fTitle","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fConsistent":{"define":"fConsistent","label":"描述相符","name":"fConsistent","relation":"fConsistent","rules":{"number":true},"type":"Float"},"fFocusNumber":{"define":"fFocusNumber","label":"关注人数","name":"fFocusNumber","relation":"fFocusNumber","rules":{"integer":true},"type":"Integer"},"fGoodsNumber":{"define":"fGoodsNumber","label":"商品数量","name":"fGoodsNumber","relation":"fGoodsNumber","rules":{"integer":true},"type":"Integer"},"fLevel":{"define":"fLevel","label":"等级","name":"fLevel","relation":"fLevel","rules":{"integer":true},"type":"Integer"},"fService":{"define":"fService","label":"服务态度","name":"fService","relation":"fService","rules":{"number":true},"type":"Float"},"fShopImg":{"define":"fShopImg","label":"店标","name":"fShopImg","relation":"fShopImg","type":"String"},"fShopName":{"define":"fShopName","label":"店名","name":"fShopName","relation":"fShopName","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"shopDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"shopData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fGoodsID":{"define":"fGoodsID","label":"商品ID","name":"fGoodsID","relation":"fGoodsID","type":"String"},"fName":{"define":"fName","label":"参数名","name":"fName","relation":"fName","type":"String"},"fParameter":{"define":"fParameter","label":"参数","name":"fParameter","relation":"fParameter","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"parameterDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"parameterData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fColor":{"define":"fColor","label":"颜色","name":"fColor","relation":"fColor","type":"String"},"fGoodID":{"define":"fGoodID","label":"商品ID","name":"fGoodID","relation":"fGoodID","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fGoodID\":\"1\",\"fColor\":\"草绿（12支/盒）\",\"fState\":0},{\"id\":\"2\",\"fGoodID\":\"1\",\"fColor\":\"橙色（12支/盒）\",\"fState\":0},{\"id\":\"3\",\"fGoodID\":\"1\",\"fColor\":\"蓝色（12支/盒）\",\"fState\":0},{\"id\":\"4\",\"fGoodID\":\"1\",\"fColor\":\"粉红（12支/盒）\",\"fState\":0},{\"id\":\"5\",\"fGoodID\":\"1\",\"fColor\":\"黑色（12支/盒）\",\"fState\":0},{\"id\":\"6\",\"fGoodID\":\"1\",\"fColor\":\"红色（12支/盒）\",\"fState\":0},{\"id\":\"7\",\"fGoodID\":\"1\",\"fColor\":\"黄色（12支/盒）\",\"fState\":0},{\"id\":\"8\",\"fGoodID\":\"1\",\"fColor\":\"绿色（12支/盒）\",\"fState\":0},{\"id\":\"9\",\"fGoodID\":\"1\",\"fColor\":\"墨蓝（12支/盒）\",\"fState\":0},{\"id\":\"10\",\"fGoodID\":\"1\",\"fColor\":\"天蓝（12支/盒）\",\"fState\":0},{\"id\":\"11\",\"fGoodID\":\"1\",\"fColor\":\"紫色（12支/盒）\",\"fState\":0},{\"id\":\"12\",\"fGoodID\":\"1\",\"fColor\":\"棕色（12支/盒）\",\"fState\":0},{\"id\":\"13\",\"fGoodID\":\"1\",\"fColor\":\"12色混装（12支/盒）\",\"fState\":0}]","isMain":false,"limit":20,"xid":"colorData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"state":{"define":"state","label":"显示状态","name":"state","relation":"state","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"state","initData":"[{\"state\":0}]","isMain":false,"limit":20,"xid":"stateData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"add_goods_time":{"define":"add_goods_time","name":"add_goods_time","relation":"add_goods_time","type":"String"},"brand":{"define":"brand","name":"brand","relation":"brand","type":"String"},"brand_id":{"define":"brand_id","name":"brand_id","relation":"brand_id","type":"String"},"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"cost_price":{"define":"cost_price","name":"cost_price","relation":"cost_price","type":"String"},"goods_code1":{"define":"goods_code1","name":"goods_code1","relation":"goods_code1","type":"String"},"goods_code2":{"define":"goods_code2","name":"goods_code2","relation":"goods_code2","type":"String"},"goods_code3":{"define":"goods_code3","name":"goods_code3","relation":"goods_code3","type":"String"},"goods_fid":{"define":"goods_fid","name":"goods_fid","relation":"goods_fid","type":"String"},"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"goods_state":{"define":"goods_state","name":"goods_state","relation":"goods_state","type":"String"},"is_client_price":{"define":"is_client_price","name":"is_client_price","relation":"is_client_price","type":"String"},"is_combo":{"define":"is_combo","name":"is_combo","relation":"is_combo","type":"String"},"is_units":{"define":"is_units","name":"is_units","relation":"is_units","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"set_specs":{"define":"set_specs","name":"set_specs","relation":"set_specs","type":"String"},"sort_num":{"define":"sort_num","name":"sort_num","relation":"sort_num","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"tag":{"define":"tag","name":"tag","relation":"tag","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"update_goods_time":{"define":"update_goods_time","name":"update_goods_time","relation":"update_goods_time","type":"String"}},"directDelete":false,"events":{},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"goodsDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"dis_tag":{"define":"dis_tag","name":"dis_tag","relation":"dis_tag","type":"String"},"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"is_client_price":{"define":"is_client_price","name":"is_client_price","relation":"is_client_price","type":"String"},"is_units":{"define":"is_units","name":"is_units","relation":"is_units","type":"String"},"origin_price":{"define":"origin_price","name":"origin_price","relation":"origin_price","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"quantity":{"define":"quantity","name":"quantity","relation":"quantity","type":"String"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"unit_name":{"define":"unit_name","name":"unit_name","relation":"unit_name","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"goodsDataWeb"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"specificationName":{"define":"specificationName","name":"specificationName","relation":"specificationName","type":"String"},"specificationThis":{"define":"specificationThis","name":"specificationThis","relation":"specificationThis","type":"String"},"specificationValue":{"define":"specificationValue","name":"specificationValue","relation":"specificationValue","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"specificationData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cid":{"define":"cid","name":"cid","relation":"cid","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classNameData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classValueData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classValue2Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"classValue3Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cid":{"define":"cid","name":"cid","relation":"cid","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"className2Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cid":{"define":"cid","name":"cid","relation":"cid","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"className3Data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"origin_price":{"define":"origin_price","name":"origin_price","relation":"origin_price","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"unitData"});
}}); 
return __result;});