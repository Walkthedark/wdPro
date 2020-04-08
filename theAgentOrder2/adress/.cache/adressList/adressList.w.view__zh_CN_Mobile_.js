window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_ba5dc86aa89a4e8587bed3be7b8de481l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_b6c768b7b7a04f49b6b17ff7496a7b16l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_72ea53cbb2e7447a81a58f129c7a585dl_zh_CNs_d_m/system/core.min.js','/v_6a9e7e9f0ae148108c6fa33b96013a8el_zh_CNs_d_m/system/common.min.js','/v_d1bfda83b55241b8abdb3b0a046a4c2cl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/adress/adressList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cjuAFFv';
	this._flag_='9f8c13b7184f909a37c1a45b013ceb75';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address_area":{"define":"address_area","name":"address_area","relation":"address_area","type":"String"},"address_detail":{"define":"address_detail","name":"address_detail","relation":"address_detail","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"is_default":{"define":"is_default","name":"is_default","relation":"is_default","rules":{"integer":true},"type":"Integer"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"tell":{"define":"tell","name":"tell","relation":"tell","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"addressCustomRefresh"},"idColumn":"id","isMain":false,"limit":-1,"xid":"address"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"client_address_id":{"define":"client_address_id","name":"client_address_id","relation":"client_address_id","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"consignee":{"define":"consignee","name":"consignee","relation":"consignee","type":"String"},"is_default":{"define":"is_default","name":"is_default","relation":"is_default","type":"String"},"is_delete":{"define":"is_delete","name":"is_delete","relation":"is_delete","type":"String"},"mobile":{"define":"mobile","name":"mobile","relation":"mobile","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"client_address_id","isMain":false,"limit":20,"xid":"adressData"});
}}); 
return __result;});
