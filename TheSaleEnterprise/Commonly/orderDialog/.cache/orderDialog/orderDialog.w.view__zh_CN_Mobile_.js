window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_cf699e51639146e3b7dc30623105f3bal_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_8d976db34297430d9a2e8e52e2d0bd3bl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_fabbd9d86ea443879389221d38bef01el_zh_CNs_d_m/system/core.min.js','/v_bf29133e778048918636877dc0d5134cl_zh_CNs_d_m/system/common.min.js','/v_c9b660672dff449bba7e35981c7a3a91l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/orderDialog/orderDialog'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cb6Z3ii';
	this._flag_='7adda102820960b8401284224ba30f51';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fImg":{"define":"fImg","label":"图片","name":"fImg","relation":"fImg","type":"String"},"fPrice":{"define":"fPrice","label":"价格","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Float"},"fShopID":{"define":"fShopID","label":"店铺ID","name":"fShopID","relation":"fShopID","type":"String"},"fSpec":{"define":"fSpec","label":"邮费","name":"fSpec","relation":"fSpec","type":"String"},"fStock":{"define":"fStock","label":"月销量","name":"fStock","relation":"fStock","rules":{"integer":true},"type":"Integer"},"fTitle":{"define":"fTitle","label":"标题","name":"fTitle","relation":"fTitle","type":"String"},"fUnit":{"define":"fUnit","name":"fUnit","relation":"fUnit","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fName\":\"综合排序\",\"fState\":1},{\"id\":\"2\",\"fName\":\"价格升序\",\"fState\":0},{\"id\":\"3\",\"fName\":\"价格降序\",\"fState\":0}]","isMain":false,"limit":20,"xid":"conditionData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fName\":\"免运费\",\"fState\":0},{\"id\":\"2\",\"fName\":\"天猫\",\"fState\":0},{\"id\":\"3\",\"fName\":\"全球购\",\"fState\":0},{\"id\":\"4\",\"fName\":\"消费者保障\",\"fState\":0}]","isMain":false,"limit":20,"xid":"discountData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fState":{"define":"fState","label":"状态","name":"fState","relation":"fState","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"fName\":\"3C数码配件市场\",\"fState\":0},{\"id\":\"2\",\"fName\":\"品牌手表/流行手表\",\"fState\":0},{\"id\":\"3\",\"fName\":\"女装\",\"fState\":0}]","isMain":false,"limit":20,"xid":"classData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"isBack":{"define":"isBack","label":"是否显示","name":"isBack","relation":"isBack","type":"String"}},"directDelete":false,"events":{},"idColumn":"isBack","initData":"[{\"isBack\":\"1\"}]","isMain":false,"limit":20,"xid":"backData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"order_num":{"define":"order_num","name":"order_num","relation":"order_num","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"quantity":{"define":"quantity","name":"quantity","relation":"quantity","type":"String"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"unit_name":{"define":"unit_name","name":"unit_name","relation":"unit_name","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"uuid","isMain":false,"limit":20,"xid":"goodsDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"CATE_ID":{"define":"CATE_ID","name":"CATE_ID","relation":"CATE_ID","type":"String"},"CATE_NAME":{"define":"CATE_NAME","name":"CATE_NAME","relation":"CATE_NAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"CATE_ID","isMain":false,"limit":20,"xid":"classDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"categoryData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"add_goods_time":{"define":"add_goods_time","name":"add_goods_time","relation":"add_goods_time","type":"String"},"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"cost_price":{"define":"cost_price","name":"cost_price","relation":"cost_price","type":"String"},"expiration_date":{"define":"expiration_date","name":"expiration_date","relation":"expiration_date","type":"String"},"goods_accessory":{"define":"goods_accessory","name":"goods_accessory","relation":"goods_accessory","type":"String"},"goods_activity_state":{"define":"goods_activity_state","name":"goods_activity_state","relation":"goods_activity_state","type":"String"},"goods_code1":{"define":"goods_code1","name":"goods_code1","relation":"goods_code1","type":"String"},"goods_code2":{"define":"goods_code2","name":"goods_code2","relation":"goods_code2","type":"String"},"goods_code3":{"define":"goods_code3","name":"goods_code3","relation":"goods_code3","type":"String"},"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","rules":{"integer":true},"type":"Integer"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"goods_state":{"define":"goods_state","name":"goods_state","relation":"goods_state","type":"String"},"is_client_price":{"define":"is_client_price","name":"is_client_price","relation":"is_client_price","type":"String"},"is_delete":{"define":"is_delete","name":"is_delete","relation":"is_delete","type":"String"},"is_hot":{"define":"is_hot","name":"is_hot","relation":"is_hot","type":"String"},"is_new":{"define":"is_new","name":"is_new","relation":"is_new","type":"String"},"is_putaway":{"define":"is_putaway","name":"is_putaway","relation":"is_putaway","type":"String"},"is_units":{"define":"is_units","name":"is_units","relation":"is_units","type":"String"},"keywords":{"define":"keywords","name":"keywords","relation":"keywords","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"},"level_num":{"define":"level_num","name":"level_num","relation":"level_num","type":"String"},"level_price1":{"define":"level_price1","name":"level_price1","relation":"level_price1","type":"String"},"level_price2":{"define":"level_price2","name":"level_price2","relation":"level_price2","type":"String"},"level_price3":{"define":"level_price3","name":"level_price3","relation":"level_price3","type":"String"},"level_price_id":{"define":"level_price_id","name":"level_price_id","relation":"level_price_id","type":"String"},"level_purchase":{"define":"level_purchase","name":"level_purchase","relation":"level_purchase","type":"String"},"market_price1":{"define":"market_price1","name":"market_price1","relation":"market_price1","type":"String"},"market_price2":{"define":"market_price2","name":"market_price2","relation":"market_price2","type":"String"},"market_price3":{"define":"market_price3","name":"market_price3","relation":"market_price3","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"produced":{"define":"produced","name":"produced","relation":"produced","type":"String"},"produced_time":{"define":"produced_time","name":"produced_time","relation":"produced_time","type":"String"},"sort_num":{"define":"sort_num","name":"sort_num","relation":"sort_num","type":"String"},"specification1_name":{"define":"specification1_name","name":"specification1_name","relation":"specification1_name","type":"String"},"specification1_value":{"define":"specification1_value","name":"specification1_value","relation":"specification1_value","type":"String"},"specification2_name":{"define":"specification2_name","name":"specification2_name","relation":"specification2_name","type":"String"},"specification2_value":{"define":"specification2_value","name":"specification2_value","relation":"specification2_value","type":"String"},"specification3_name":{"define":"specification3_name","name":"specification3_name","relation":"specification3_name","type":"String"},"specification3_value":{"define":"specification3_value","name":"specification3_value","relation":"specification3_value","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"unit_name":{"define":"unit_name","name":"unit_name","relation":"unit_name","type":"String"},"update_goods_time":{"define":"update_goods_time","name":"update_goods_time","relation":"update_goods_time","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"},"warehouse_id":{"define":"warehouse_id","name":"warehouse_id","relation":"warehouse_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"GoodsInfodata"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cate_id":{"define":"cate_id","name":"cate_id","relation":"cate_id","type":"String"},"cate_name":{"define":"cate_name","name":"cate_name","relation":"cate_name","type":"String"},"children":{"define":"children","name":"children","relation":"children","type":"String"},"choose":{"define":"choose","name":"choose","relation":"choose","rules":{"integer":true},"type":"Integer"},"parent_id":{"define":"parent_id","name":"parent_id","relation":"parent_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"cate_id","isMain":false,"limit":20,"xid":"categoryDataList"});
}}); 
return __result;});
