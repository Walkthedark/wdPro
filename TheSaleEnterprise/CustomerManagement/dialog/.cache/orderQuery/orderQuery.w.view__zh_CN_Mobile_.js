window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_c7d25db8457e4725907ad4446d3be203l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_dda52b60d1264af69615ae958b15e17al_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_478cfed49c044f768738a9a2546b9cc1l_zh_CNs_d_m/system/components/comp2.min.js','/v_836512518def47ef912e5b3813d69d5fl_zh_CNs_d_m/system/core.min.js','/v_96b41545be3d46b59518d8bb3ea7d066l_zh_CNs_d_m/system/common.min.js','/v_283429adbbd44e52ba929a11dba5de5fl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/orderQuery'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cr6faEb';
	this._flag_='9df2c307cef2b6a73b24429524eba531';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"dhje":{"define":"dhje","name":"dhje","relation":"dhje","type":"String"},"djsl":{"define":"djsl","name":"djsl","relation":"djsl","type":"String"},"fhzt":{"define":"fhzt","name":"fhzt","relation":"fhzt","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khmc":{"define":"khmc","name":"khmc","relation":"khmc","type":"String"},"shzt":{"define":"shzt","name":"shzt","relation":"shzt","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqrmc":{"define":"sqrmc","name":"sqrmc","relation":"sqrmc","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"code":{"define":"code","name":"code","relation":"code","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"col9":{"define":"col9","name":"col9","relation":"col9","type":"String"},"daogou":{"define":"daogou","name":"daogou","relation":"daogou","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"zhongdian":{"define":"zhongdian","name":"zhongdian","relation":"zhongdian","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"InData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"dhje":{"define":"dhje","name":"dhje","relation":"dhje","type":"String"},"djsl":{"define":"djsl","name":"djsl","relation":"djsl","type":"String"},"fhzt":{"define":"fhzt","name":"fhzt","relation":"fhzt","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khmc":{"define":"khmc","name":"khmc","relation":"khmc","type":"String"},"shzt":{"define":"shzt","name":"shzt","relation":"shzt","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqrmc":{"define":"sqrmc","name":"sqrmc","relation":"sqrmc","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"dhje":{"define":"dhje","name":"dhje","relation":"dhje","type":"String"},"djsl":{"define":"djsl","name":"djsl","relation":"djsl","type":"String"},"fhzt":{"define":"fhzt","name":"fhzt","relation":"fhzt","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khmc":{"define":"khmc","name":"khmc","relation":"khmc","type":"String"},"shzt":{"define":"shzt","name":"shzt","relation":"shzt","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqrmc":{"define":"sqrmc","name":"sqrmc","relation":"sqrmc","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData2"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"dhje":{"define":"dhje","name":"dhje","relation":"dhje","type":"String"},"djsl":{"define":"djsl","name":"djsl","relation":"djsl","type":"String"},"fhzt":{"define":"fhzt","name":"fhzt","relation":"fhzt","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khmc":{"define":"khmc","name":"khmc","relation":"khmc","type":"String"},"shzt":{"define":"shzt","name":"shzt","relation":"shzt","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqrmc":{"define":"sqrmc","name":"sqrmc","relation":"sqrmc","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData3"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"cusType":{"define":"cusType","name":"cusType","relation":"cusType","type":"String"},"dhje":{"define":"dhje","name":"dhje","relation":"dhje","type":"String"},"djsl":{"define":"djsl","name":"djsl","relation":"djsl","type":"String"},"fhzt":{"define":"fhzt","name":"fhzt","relation":"fhzt","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"khmc":{"define":"khmc","name":"khmc","relation":"khmc","type":"String"},"shzt":{"define":"shzt","name":"shzt","relation":"shzt","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"sqr":{"define":"sqr","name":"sqr","relation":"sqr","type":"String"},"sqrmc":{"define":"sqrmc","name":"sqrmc","relation":"sqrmc","type":"String"},"sqrq":{"define":"sqrq","name":"sqrq","relation":"sqrq","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"orderData4"});
}}); 
return __result;});