window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_dd9c0b3e98f8449f979581d8daf45a7bl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_fec266cefbae4d01ab130cc0b90cd13bl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_1e2f581f85f3430e93be48436a5452bal_zh_CNs_d_m/system/core.min.js','/v_b528532a659b45c7a7c02aa73ca65e56l_zh_CNs_d_m/system/common.min.js','/v_27450d52142d454490e6039e342ead56l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/main/indexMain'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRBR7nm';
	this._flag_='0b5f2cdbd4705c13369cc75a9e4ed835';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bill_message":{"define":"bill_message","name":"bill_message","relation":"bill_message","type":"String"},"cancel_reason":{"define":"cancel_reason","name":"cancel_reason","relation":"cancel_reason","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"deliver_goods":{"define":"deliver_goods","name":"deliver_goods","relation":"deliver_goods","type":"String"},"delivery_time":{"define":"delivery_time","name":"delivery_time","relation":"delivery_time","type":"String"},"discount_price":{"define":"discount_price","name":"discount_price","relation":"discount_price","type":"String"},"gathering_type":{"define":"gathering_type","name":"gathering_type","relation":"gathering_type","type":"String"},"is_discount":{"define":"is_discount","name":"is_discount","relation":"is_discount","type":"String"},"is_instead":{"define":"is_instead","name":"is_instead","relation":"is_instead","type":"String"},"logistics_cn":{"define":"logistics_cn","name":"logistics_cn","relation":"logistics_cn","type":"String"},"make":{"define":"make","name":"make","relation":"make","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"num":{"define":"num","name":"num","relation":"num","type":"String"},"order_des":{"define":"order_des","name":"order_des","relation":"order_des","type":"String"},"order_id":{"define":"order_id","name":"order_id","relation":"order_id","type":"String"},"order_sn":{"define":"order_sn","name":"order_sn","relation":"order_sn","type":"String"},"order_time":{"define":"order_time","name":"order_time","relation":"order_time","type":"String"},"out_warehouse":{"define":"out_warehouse","name":"out_warehouse","relation":"out_warehouse","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"print_type":{"define":"print_type","name":"print_type","relation":"print_type","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"},"type_trans":{"define":"type_trans","name":"type_trans","relation":"type_trans","type":"String"}},"directDelete":false,"events":{},"idColumn":"order_id","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"day\",\"name\":\"今日\"},{\"id\":\"week\",\"name\":\"本周\"},{\"id\":\"month\",\"name\":\"本月\"},{\"id\":\"year\",\"name\":\"本年\"}]","isMain":false,"limit":20,"xid":"data1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":20,"xid":"data2"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"count":{"define":"count","name":"count","relation":"count","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"orderCensusDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"orderCensusData"});
}}); 
return __result;});
