window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_108469364738447b930b6075e6735d3fl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_d8035bdce12b45dda3db3131c47683e4l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_8a9156102d0e49a18b1d1a345bc2dbf3l_zh_CNs_d_m/system/components/comp2.min.js','/v_ebecc5527e534f56b1b6b44c7f61a3fdl_zh_CNs_d_m/system/core.min.js','/v_b9a7a19fc05e4b25af45b5ff69dee39al_zh_CNs_d_m/system/common.min.js','/v_a1f77e2ec010423ca6e08134b89a78d7l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/select/checkboxGroup');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Schedule/dialog/staff'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='caQFFRb';
	this._flag_='dc56dfba70b069cf0110c0283753ec8d';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"人事部\"},{\"id\":\"2\",\"col1\":\"销售部\"},{\"id\":\"3\",\"col1\":\"采购部\"}]","isMain":false,"limit":20,"xid":"depData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"pid":{"define":"pid","name":"pid","relation":"pid","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"pid\":\"0\",\"name\":\"董事会\"},{\"id\":\"2\",\"pid\":\"0\",\"name\":\"东南大区\"},{\"id\":\"3\",\"pid\":\"0\",\"name\":\"华南大区\"}]","isMain":false,"limit":1,"xid":"YHData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"check":{"define":"check","name":"check","relation":"check","type":"String"},"deptId":{"define":"deptId","name":"deptId","relation":"deptId","type":"String"},"userId":{"define":"userId","name":"userId","relation":"userId","type":"String"},"userName":{"define":"userName","name":"userName","relation":"userName","type":"String"}},"directDelete":false,"events":{},"idColumn":"userId","initData":"[{\"userId\":\"1\",\"userName\":\"老张\",\"deptId\":\"1\"},{\"userId\":\"2\",\"userName\":\"小白\",\"deptId\":\"1\"},{\"userId\":\"3\",\"userName\":\"张三\",\"deptId\":\"1\"},{\"userId\":\"4\",\"userName\":\"李四\",\"deptId\":\"1\"},{\"userId\":\"5\",\"userName\":\"王五\",\"deptId\":\"2\"},{\"userId\":\"6\",\"userName\":\"老六\",\"deptId\":\"2\"},{\"userId\":\"7\",\"userName\":\"七七\",\"deptId\":\"2\"},{\"userId\":\"8\",\"userName\":\"杨洋\",\"deptId\":\"2\"},{\"userId\":\"9\",\"userName\":\"李狗蛋\",\"deptId\":\"3\"},{\"userId\":\"10\",\"userName\":\"李春华\",\"deptId\":\"3\"},{\"userId\":\"11\",\"userName\":\"隔壁老王\",\"deptId\":\"3\"},{\"userId\":\"12\",\"userName\":\"大白\",\"deptId\":\"3\"}]","isMain":false,"limit":20,"xid":"RData"});
}}); 
return __result;});
