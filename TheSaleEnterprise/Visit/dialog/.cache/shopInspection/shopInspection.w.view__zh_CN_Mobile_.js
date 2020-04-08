window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_476a41bc76304db99138af6059d042d8l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_efa080be041848b7a7cd7744c6729334l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_e8a59a9b187e49bea60cef3b87ca6407l_zh_CNs_d_m/system/components/comp2.min.js','/v_eb39c04611a34980ae95782ef03ff307l_zh_CNs_d_m/system/core.min.js','/v_b77e89192f0b44bf9294003e033db0dcl_zh_CNs_d_m/system/common.min.js','/v_d32d3d71080541dc8af89d8a24f680a2l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/dialog/shopInspection'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cryUnM3';
	this._flag_='4a6b195c86ab906232df486c4b9ebcc9';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"CDataCustomRefresh"},"idColumn":"id","initData":"[{\"id\":\"1\",\"type\":\"是\"},{\"id\":\"2\",\"type\":\"否\"}]","isMain":false,"limit":20,"xid":"CData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"dg_id":{"define":"dg_id","label":"导购编号","name":"dg_id","relation":"dg_id","type":"String"},"gwlx":{"define":"gwlx","label":"岗位类型","name":"gwlx","relation":"gwlx","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"lxfs":{"define":"lxfs","label":"联系方式","name":"lxfs","relation":"lxfs","type":"String"},"mqzt":{"define":"mqzt","label":"目前状态","name":"mqzt","relation":"mqzt","type":"String"},"net":{"define":"net","label":"网点名称","name":"net","relation":"net","type":"String"},"net_id":{"define":"net_id","label":"网点id","name":"net_id","relation":"net_id","type":"String"},"xm":{"define":"xm","label":"姓名","name":"xm","relation":"xm","type":"String"},"zgjl":{"define":"zgjl","label":"在岗记录","name":"zgjl","relation":"zgjl","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"infoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"lable":{"define":"lable","label":"lable","name":"lable","relation":"lable","type":"String"},"value":{"define":"value","label":"值","name":"value","relation":"value","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"value","initData":"[{\"value\":1,\"lable\":\"是\"},{\"value\":0,\"lable\":\"否\"}]","isMain":false,"limit":20,"xid":"radioData"});
}}); 
return __result;});
