window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_da64325b662f4db693092dfd053fc4d3l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_846e30dbd58941c8a509892f6dbf111fl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_6c6f83e944d4467aa3470764371d7241l_zh_CNs_d_m/system/core.min.js','/v_893232d990bb49ee835e4c18bb58cbeel_zh_CNs_d_m/system/common.min.js','/v_cb37767d6b4d4ceb913b04ee91107d2dl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/picker/picker');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/picker/popPicker');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/order/dialog/invoice'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUneYZv';
	this._flag_='77ee7770442db3d7765088c2e865ded6';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"desc":{"define":"desc","name":"desc","relation":"desc","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"name\":\"不开发票\",\"desc\":\"默认不开具发票\",\"choose\":\"0\"},{\"id\":\"1\",\"name\":\"普通发票\",\"desc\":\"如需转票请填写完整购方信息并联系商家\",\"choose\":\"0\"},{\"id\":\"2\",\"name\":\"专用发票\",\"desc\":\"需要填写完整专票信息\",\"choose\":\"0\"}]","isMain":false,"limit":20,"xid":"invoiceData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"bank":{"define":"bank","name":"bank","relation":"bank","type":"String"},"bank_account":{"define":"bank_account","name":"bank_account","relation":"bank_account","type":"String"},"bank_name":{"define":"bank_name","name":"bank_name","relation":"bank_name","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoice":{"define":"invoice","name":"invoice","relation":"invoice","type":"String"},"invoice_address":{"define":"invoice_address","name":"invoice_address","relation":"invoice_address","type":"String"},"invoice_content":{"define":"invoice_content","name":"invoice_content","relation":"invoice_content","type":"String"},"invoice_mobile":{"define":"invoice_mobile","name":"invoice_mobile","relation":"invoice_mobile","type":"String"},"is_debt_init":{"define":"is_debt_init","name":"is_debt_init","relation":"is_debt_init","type":"String"},"last_reconciliation_time":{"define":"last_reconciliation_time","name":"last_reconciliation_time","relation":"last_reconciliation_time","type":"String"},"pdt_id":{"define":"pdt_id","name":"pdt_id","relation":"pdt_id","type":"String"},"search_goods":{"define":"search_goods","name":"search_goods","relation":"search_goods","type":"String"},"tax_num":{"define":"tax_num","name":"tax_num","relation":"tax_num","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"blankData"});
}}); 
return __result;});