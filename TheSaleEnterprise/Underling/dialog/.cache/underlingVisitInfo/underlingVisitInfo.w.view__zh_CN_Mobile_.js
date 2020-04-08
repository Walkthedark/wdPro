window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_eb22c16d4d5b4b1581c7c69be4928114l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_fa161a3be2d44439ac350a304a16efe3l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_4e0a9df37f124fb59b6deb1e1830568el_zh_CNs_d_m/system/components/comp2.min.js','/v_e2992afdf0f148f59dab4e148e41a157l_zh_CNs_d_m/system/core.min.js','/v_c23c75743fa74c649fabea4401866bb9l_zh_CNs_d_m/system/common.min.js','/v_555b27bcb8ec45efa6650d7f50e779efl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Underling/dialog/underlingVisitInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cARZ3q2';
	this._flag_='533a410cce767af997cb94c88c5e45ff';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"de_name":{"define":"de_name","name":"de_name","relation":"de_name","type":"String"},"em_name":{"define":"em_name","name":"em_name","relation":"em_name","type":"String"},"qdslxj":{"define":"qdslxj","name":"qdslxj","relation":"qdslxj","type":"String"},"sl_jxs":{"define":"sl_jxs","name":"sl_jxs","relation":"sl_jxs","type":"String"},"sl_kq":{"define":"sl_kq","name":"sl_kq","relation":"sl_kq","type":"String"},"sl_qdhb":{"define":"sl_qdhb","name":"sl_qdhb","relation":"sl_qdhb","type":"String"},"sl_schd":{"define":"sl_schd","name":"sl_schd","relation":"sl_schd","type":"String"},"sl_wd":{"define":"sl_wd","name":"sl_wd","relation":"sl_wd","type":"String"}},"directDelete":false,"events":{},"idColumn":"em_name","initData":"[{\"id\":\"1\",\"col1\":\"张三\",\"col2\":\"东南大区\",\"col3\":\"东南大区经理\",\"col4\":\"\",\"col5\":\"\",\"col6\":\"\",\"col7\":\"\",\"col8\":\"\"},{\"id\":\"2\",\"col1\":\"李四\",\"col2\":\"华南大区\",\"col3\":\"华南大区客户主管\",\"col4\":\"\",\"col5\":\"\",\"col6\":\"\",\"col7\":\"\",\"col8\":\"\"}]","isMain":false,"limit":20,"xid":"pData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{},"directDelete":false,"events":{},"isMain":false,"limit":20,"xid":"yData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{},"directDelete":false,"events":{},"isMain":false,"limit":20,"xid":"sData"});
}}); 
return __result;});
