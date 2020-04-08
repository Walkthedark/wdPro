window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_5da032c9931a44ee9a2f97f29609260dl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_d032fa229eee45058a9a363cd28367c5l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_27f1d65e22b84c23bde13b5c51f27c4el_zh_CNs_d_m/system/components/comp2.min.js','/v_29e5fa1cf14043f4bd8c26964d990e4al_zh_CNs_d_m/system/core.min.js','/v_b08ff5178e514a50b0f0cc290bb7b9cdl_zh_CNs_d_m/system/common.min.js','/v_1804fbd33e384a3b8b9c318120052435l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/shoppers'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuQnMje';
	this._flag_='7471c61f04ff0623cbc5da9973f0d56a';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"gwlx":{"define":"gwlx","label":"岗位类型","name":"gwlx","relation":"gwlx","type":"String"},"id":{"define":"id","label":"导购员id","name":"id","relation":"id","type":"String"},"lxfs":{"define":"lxfs","label":"联系方式","name":"lxfs","relation":"lxfs","type":"String"},"mqzt":{"define":"mqzt","label":"目前状态","name":"mqzt","relation":"mqzt","type":"String"},"workNumber":{"define":"workNumber","name":"workNumber","relation":"workNumber","type":"String"},"xm":{"define":"xm","label":"姓名","name":"xm","relation":"xm","type":"String"},"zgjl":{"define":"zgjl","label":"在岗记录","name":"zgjl","relation":"zgjl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"bgsdgCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"bgsdg"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dg_id":{"define":"dg_id","label":"导购编号","name":"dg_id","relation":"dg_id","type":"String"},"gwlx":{"define":"gwlx","label":"岗位类型","name":"gwlx","relation":"gwlx","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"lxfs":{"define":"lxfs","label":"联系方式","name":"lxfs","relation":"lxfs","type":"String"},"mqzt":{"define":"mqzt","label":"目前状态","name":"mqzt","relation":"mqzt","type":"String"},"net":{"define":"net","label":"网点","name":"net","relation":"net","type":"String"},"net_id":{"define":"net_id","label":"网点id","name":"net_id","relation":"net_id","type":"String"},"xm":{"define":"xm","label":"姓名","name":"xm","relation":"xm","type":"String"},"zgjl":{"define":"zgjl","label":"在岗记录","name":"zgjl","relation":"zgjl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"jxsdgCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"jxsdg"});
}}); 
return __result;});
