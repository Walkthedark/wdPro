window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_79d46a85dc124ba3a0fa679d7f92fc6al_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_764855a3b265425faf1dbffb78b50773l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_92b6bb8147e045ff86dd191af9da157al_zh_CNs_d_m/system/components/comp2.min.js','/v_2fc7615a3cf345218bc6e3de47f1d015l_zh_CNs_d_m/system/core.min.js','/v_91feb8c26a1749b4bac33d62602e82eel_zh_CNs_d_m/system/common.min.js','/v_a0d3d1e0ac3349eb8e6e4073f8e0f313l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/mySystemInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUb6bue';
	this._flag_='252c74936ea189446a090f57bc212643';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"breif":{"define":"breif","name":"breif","relation":"breif","type":"String"},"city":{"define":"city","name":"city","relation":"city","type":"String"},"city_fzr":{"define":"city_fzr","name":"city_fzr","relation":"city_fzr","type":"String"},"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"cusman":{"define":"cusman","name":"cusman","relation":"cusman","type":"String"},"erjiqudao":{"define":"erjiqudao","name":"erjiqudao","relation":"erjiqudao","type":"String"},"jxs":{"define":"jxs","name":"jxs","relation":"jxs","type":"String"},"provice":{"define":"provice","name":"provice","relation":"provice","type":"String"},"provice_fzr":{"define":"provice_fzr","name":"provice_fzr","relation":"provice_fzr","type":"String"},"stuff":{"define":"stuff","name":"stuff","relation":"stuff","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"zoning":{"define":"zoning","name":"zoning","relation":"zoning","type":"String"},"zoning_fzr":{"define":"zoning_fzr","name":"zoning_fzr","relation":"zoning_fzr","type":"String"}},"directDelete":false,"events":{},"idColumn":"jxs","initData":"[{\"id\":\"1\",\"col1\":\"安徽副食品经销部\",\"col2\":\"CU10001\",\"col3\":\"安徽副食品经销部\"},{\"id\":\"2\",\"col1\":\"上海副食品经销部\",\"col2\":\"CU10002\",\"col3\":\"上海副食品经销部\"}]","isMain":false,"limit":20,"xid":"CData"});
}}); 
return __result;});
