window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_683161ca878849009478beda195dd478l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_e4bf335e518c4765996b1fbfae9664e3l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_3b3219441a7446f5be0b6053df64a175l_zh_CNs_d_m/system/core.min.js','/v_6900d73228c44c11a6c7bbc1eb2522d8l_zh_CNs_d_m/system/common.min.js','/v_1def0322a25d49868ba86132be2c2191l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/placeOrder/placeOrder'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cimqMZf';
	this._flag_='af651dc2ee7a599836d07c7b01744738';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bz":{"define":"bz","name":"bz","relation":"bz","type":"String"},"customerID":{"define":"customerID","name":"customerID","relation":"customerID","type":"String"},"customerName":{"define":"customerName","name":"customerName","relation":"customerName","type":"String"},"ddtpj":{"define":"ddtpj","name":"ddtpj","relation":"ddtpj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jhrq":{"define":"jhrq","name":"jhrq","relation":"jhrq","rules":{"date":true},"type":"Date"},"shdh":{"define":"shdh","name":"shdh","relation":"shdh","type":"String"},"shdz":{"define":"shdz","name":"shdz","relation":"shdz","type":"String"},"shr":{"define":"shr","name":"shr","relation":"shr","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"李四\",\"col2\":\"13888888888\",\"col3\":\"上海市渭南路111号111\"}]","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"img":{"define":"img","name":"img","relation":"img","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"qty":{"define":"qty","name":"qty","relation":"qty","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"spec":{"define":"spec","name":"spec","relation":"spec","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"}},"directDelete":false,"events":{"onAfterRefresh":"goodsDataAfterRefresh","onDataChange":"goodsDataDataChange"},"idColumn":"id","initData":"[{\"id\":\"1\",\"img\":\"1\",\"pro_name\":\"1\",\"pro_id\":\"1\",\"spec\":\"1111\",\"price\":\"1\",\"qty\":\"2\",\"unit\":\"1\",\"unitm\":\"个\",\"remark\":\"备注1\"},{\"id\":\"2\",\"img\":\"2\",\"pro_name\":\"2\",\"pro_id\":\"2\",\"spec\":\"2222\",\"price\":\"2\",\"qty\":\"3\",\"unit\":\"2\",\"unitm\":\"套\",\"remark\":\"备注2\"}]","isMain":false,"limit":-1,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"img":{"define":"img","name":"img","relation":"img","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"qty":{"define":"qty","name":"qty","relation":"qty","type":"String"},"rate":{"define":"rate","name":"rate","relation":"rate","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"spec":{"define":"spec","name":"spec","relation":"spec","type":"String"},"story":{"define":"story","name":"story","relation":"story","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"img\":\"1\",\"pro_name\":\"1\",\"pro_id\":\"1\",\"spec\":\"1111\",\"price\":\"1\",\"qty\":\"2\",\"unit\":\"1\",\"unitm\":\"个\",\"remark\":\"备注1\"},{\"id\":\"2\",\"img\":\"2\",\"pro_name\":\"2\",\"pro_id\":\"2\",\"spec\":\"2222\",\"price\":\"2\",\"qty\":\"3\",\"unit\":\"2\",\"unitm\":\"套\",\"remark\":\"备注2\"}]","isMain":false,"limit":-1,"xid":"cData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"dis_tag":{"define":"dis_tag","name":"dis_tag","relation":"dis_tag","type":"String"},"fsum":{"define":"fsum","name":"fsum","relation":"fsum","rules":{"calculate":"$row.val(\"goods_num\")","number":true},"type":"Float"},"fsumMoney":{"define":"fsumMoney","name":"fsumMoney","relation":"fsumMoney","rules":{"calculate":"$row.val(\"total_price\")","number":true},"type":"Float"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","rules":{"integer":true},"type":"Integer"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"price":{"define":"price","name":"price","relation":"price","rules":{"number":true},"type":"Float"},"promotion":{"define":"promotion","name":"promotion","relation":"promotion","type":"String"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"sales_flag":{"define":"sales_flag","label":"是否是促销商品","name":"sales_flag","relation":"sales_flag","type":"String"},"sales_flag_num":{"define":"sales_flag_num","name":"sales_flag_num","relation":"sales_flag_num","type":"String"},"sales_price":{"define":"sales_price","label":"促销的价格","name":"sales_price","relation":"sales_price","rules":{"number":true},"type":"Float"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"},"specification1":{"define":"specification1","name":"specification1","relation":"specification1","type":"String"},"specification2":{"define":"specification2","name":"specification2","relation":"specification2","type":"String"},"specification3":{"define":"specification3","name":"specification3","relation":"specification3","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"total_price":{"define":"total_price","label":"总价","name":"total_price","relation":"total_price","rules":{"number":true},"type":"Float"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"goodsDataM"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"client_id","isMain":false,"limit":20,"xid":"clientData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"client_address_id":{"define":"client_address_id","name":"client_address_id","relation":"client_address_id","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"consignee":{"define":"consignee","name":"consignee","relation":"consignee","type":"String"},"is_default":{"define":"is_default","name":"is_default","relation":"is_default","type":"String"},"mobile":{"define":"mobile","name":"mobile","relation":"mobile","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"client_address_id","isMain":false,"limit":20,"xid":"addressData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Value":{"define":"Value","name":"Value","relation":"Value","rules":{"calculate":"$model.goodsDataM.sum(\"fsum\")","integer":true},"type":"Integer"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"moeny":{"define":"moeny","name":"moeny","relation":"moeny","rules":{"calculate":"$model.goodsDataM.sum(\"fsumMoney\")","number":true},"type":"Float"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"Value\":0,\"moeny\":0}]","isMain":false,"limit":20,"xid":"sumdata"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"flag":{"define":"flag","name":"flag","relation":"flag","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"newPrice":{"define":"newPrice","name":"newPrice","relation":"newPrice","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"flag\":\"0\"}]","isMain":false,"limit":20,"xid":"orderFlagData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"guige":{"define":"guige","name":"guige","relation":"guige","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"protionData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","type":"String"},"guige":{"define":"guige","name":"guige","relation":"guige","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"pdata"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"goods_id":{"define":"goods_id","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","type":"String"},"guige":{"define":"guige","name":"guige","relation":"guige","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"goods_id","isMain":false,"limit":20,"xid":"gift2data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"dis_tag":{"define":"dis_tag","name":"dis_tag","relation":"dis_tag","type":"String"},"fsum":{"define":"fsum","name":"fsum","relation":"fsum","rules":{"calculate":"$row.val(\"goods_num\")","number":true},"type":"Float"},"fsumMoney":{"define":"fsumMoney","name":"fsumMoney","relation":"fsumMoney","rules":{"calculate":"$row.val(\"total_price\")","number":true},"type":"Float"},"goods_id":{"define":"goods_id","label":"商品ID","name":"goods_id","relation":"goods_id","type":"String"},"goods_img":{"define":"goods_img","name":"goods_img","relation":"goods_img","type":"String"},"goods_inventory":{"define":"goods_inventory","name":"goods_inventory","relation":"goods_inventory","type":"String"},"goods_name":{"define":"goods_name","name":"goods_name","relation":"goods_name","type":"String"},"goods_num":{"define":"goods_num","name":"goods_num","relation":"goods_num","rules":{"integer":true},"type":"Integer"},"goods_sn":{"define":"goods_sn","name":"goods_sn","relation":"goods_sn","type":"String"},"price":{"define":"price","name":"price","relation":"price","rules":{"number":true},"type":"Float"},"promotion":{"define":"promotion","name":"promotion","relation":"promotion","type":"String"},"promotion_id":{"define":"promotion_id","name":"promotion_id","relation":"promotion_id","type":"String"},"remark":{"define":"remark","name":"remark","relation":"remark","type":"String"},"sales_flag":{"define":"sales_flag","label":"是否是促销商品","name":"sales_flag","relation":"sales_flag","type":"String"},"sales_flag_num":{"define":"sales_flag_num","name":"sales_flag_num","relation":"sales_flag_num","type":"String"},"sales_price":{"define":"sales_price","label":"促销的价格","name":"sales_price","relation":"sales_price","rules":{"number":true},"type":"Float"},"show_name":{"define":"show_name","name":"show_name","relation":"show_name","type":"String"},"specification":{"define":"specification","name":"specification","relation":"specification","type":"String"},"specification1":{"define":"specification1","name":"specification1","relation":"specification1","type":"String"},"specification2":{"define":"specification2","name":"specification2","relation":"specification2","type":"String"},"specification3":{"define":"specification3","name":"specification3","relation":"specification3","type":"String"},"specification_id":{"define":"specification_id","name":"specification_id","relation":"specification_id","type":"String"},"total_price":{"define":"total_price","label":"总价","name":"total_price","relation":"total_price","rules":{"number":true},"type":"Float"},"unit_id":{"define":"unit_id","name":"unit_id","relation":"unit_id","type":"String"},"uuid":{"define":"uuid","name":"uuid","relation":"uuid","type":"String"}},"directDelete":false,"events":{},"idColumn":"uuid","isMain":false,"limit":20,"xid":"data2"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"PaymenTypeDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"PaymenTypeData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","rules":{"date":true},"type":"Date"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onValueChanged":"data1ValueChanged"},"idColumn":"id","initData":"[{\"id\":\"1\"}]","isMain":false,"limit":20,"xid":"data1"});
}}); 
return __result;});
