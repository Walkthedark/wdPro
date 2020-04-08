window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_f28c9037f74b4e42bc4dc89c47fd36cfl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_b26d63b982604d55bcda92636e2e3e9fl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_c0727c9c3703410093e6146aa4804295l_zh_CNs_d_m/system/components/comp2.min.js','/v_689aa961f8ec48a2986a96b224690716l_zh_CNs_d_m/system/core.min.js','/v_e38fdfecdcf74362a67109b65e918f4el_zh_CNs_d_m/system/common.min.js','/v_0ed925476b6542698a41bc7f71279f8bl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/overtimeInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAzqI7b';
	this._flag_='37919dbdad4177f4119ad614d0d3c7a4';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ACTIONTIME":{"define":"ACTIONTIME","name":"ACTIONTIME","relation":"ACTIONTIME","type":"String"},"COMMENTS":{"define":"COMMENTS","name":"COMMENTS","relation":"COMMENTS","type":"String"},"MEMO":{"define":"MEMO","name":"MEMO","relation":"MEMO","type":"String"},"USERNAME":{"define":"USERNAME","name":"USERNAME","relation":"USERNAME","type":"String"}},"directDelete":false,"events":{},"idColumn":"USERNAME","isMain":false,"limit":20,"xid":"spData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"jbjssj":{"define":"jbjssj","name":"jbjssj","relation":"jbjssj","type":"String"},"jbkssj":{"define":"jbkssj","name":"jbkssj","relation":"jbkssj","type":"String"},"jbsy":{"define":"jbsy","name":"jbsy","relation":"jbsy","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqr_bm":{"define":"sqr_bm","name":"sqr_bm","relation":"sqr_bm","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"t":{"define":"t","name":"t","relation":"t","type":"String"},"xs":{"define":"xs","name":"xs","relation":"xs","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"overtimeData"});
}}); 
return __result;});
