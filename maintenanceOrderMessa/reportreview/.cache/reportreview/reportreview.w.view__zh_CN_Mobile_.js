window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_4282e6623b3349e08cca156aea983555l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_4eec8bfd137a4138895adbde38898a43l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_23ae7ecbdc5d442e8939dd69a7b9e126l_zh_CNs_d_m/system/core.min.js','/v_5da16e37d1584fd187d3a2e26ffd4cc9l_zh_CNs_d_m/system/common.min.js','/v_32f6a3dc7b054793a05c1598ba8af0a9l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/maintenanceOrderMessa/reportreview/reportreview'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbyEBVj';
	this._flag_='eccf460d6256aa024369361e8b8e255f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"buildingNo":{"define":"buildingNo","name":"buildingNo","relation":"buildingNo","type":"String"},"col19":{"define":"col19","name":"col19","relation":"col19","type":"String"},"col20":{"define":"col20","name":"col20","relation":"col20","type":"String"},"enteringDate":{"define":"enteringDate","name":"enteringDate","relation":"enteringDate","type":"String"},"enteringPort":{"define":"enteringPort","name":"enteringPort","relation":"enteringPort","type":"String"},"enteringUser":{"define":"enteringUser","name":"enteringUser","relation":"enteringUser","type":"String"},"enteringUser_id":{"define":"enteringUser_id","name":"enteringUser_id","relation":"enteringUser_id","type":"String"},"faultDes":{"define":"faultDes","name":"faultDes","relation":"faultDes","type":"String"},"faultLevel":{"define":"faultLevel","name":"faultLevel","relation":"faultLevel","type":"String"},"faultReason":{"define":"faultReason","name":"faultReason","relation":"faultReason","type":"String"},"faultTime":{"define":"faultTime","name":"faultTime","relation":"faultTime","type":"String"},"faultType":{"define":"faultType","name":"faultType","relation":"faultType","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"liftIDNo":{"define":"liftIDNo","name":"liftIDNo","relation":"liftIDNo","type":"String"},"liftNo":{"define":"liftNo","name":"liftNo","relation":"liftNo","type":"String"},"project":{"define":"project","name":"project","relation":"project","type":"String"},"sheetNo":{"define":"sheetNo","name":"sheetNo","relation":"sheetNo","type":"String"},"sp_date":{"define":"sp_date","name":"sp_date","relation":"sp_date","type":"String"},"sp_reason":{"define":"sp_reason","name":"sp_reason","relation":"sp_reason","type":"String"},"sp_state":{"define":"sp_state","name":"sp_state","relation":"sp_state","type":"String"},"sp_user":{"define":"sp_user","name":"sp_user","relation":"sp_user","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"data1"});
}}); 
return __result;});