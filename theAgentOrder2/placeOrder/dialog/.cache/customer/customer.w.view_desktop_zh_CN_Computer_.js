window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_07f087434a6a4b7bbdc7dc587e59e244l_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_94db2f4104b541ec93b8d8f0cd10c306l_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_11de239a6505447b990a11c7ff92b283l_zh_CNs_desktopd_pc/system/core.min.js','/v_c79ab39930854d6f95ed6a5ffe97d916l_zh_CNs_desktopd_pc/system/common.min.js','/v_c2f1d865b85e4f63b3c25fae4404b382l_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/theAgentOrder2/placeOrder/dialog/customer'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cnaiIV3';
	this._flag_='8f0930d9db06ea2bdbfda5bc714ef0f5';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"shdh":{"define":"shdh","name":"shdh","relation":"shdh","type":"String"},"shdz":{"define":"shdz","name":"shdz","relation":"shdz","type":"String"},"shr":{"define":"shr","name":"shr","relation":"shr","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"人事部\"},{\"id\":\"2\",\"col1\":\"销售部\"},{\"id\":\"3\",\"col1\":\"采购部\"}]","isMain":false,"limit":20,"xid":"depData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"select":{"define":"select","name":"select","relation":"select","type":"String"},"selectM":{"define":"selectM","name":"selectM","relation":"selectM","type":"String"},"temp":{"define":"temp","name":"temp","relation":"temp","type":"String"}},"directDelete":false,"events":{},"idColumn":"temp","isMain":false,"limit":20,"xid":"cData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"area":{"define":"area","name":"area","relation":"area","type":"String"},"category":{"define":"category","name":"category","relation":"category","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"client_sn":{"define":"client_sn","name":"client_sn","relation":"client_sn","type":"String"},"client_source":{"define":"client_source","name":"client_source","relation":"client_source","type":"String"},"department_name":{"define":"department_name","name":"department_name","relation":"department_name","type":"String"},"level_id":{"define":"level_id","name":"level_id","relation":"level_id","type":"String"},"level_name":{"define":"level_name","name":"level_name","relation":"level_name","type":"String"},"mobile":{"define":"mobile","name":"mobile","relation":"mobile","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"salesman_name":{"define":"salesman_name","name":"salesman_name","relation":"salesman_name","type":"String"},"user_name":{"define":"user_name","name":"user_name","relation":"user_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"client_id","isMain":false,"limit":20,"xid":"clientData"});
}}); 
return __result;});