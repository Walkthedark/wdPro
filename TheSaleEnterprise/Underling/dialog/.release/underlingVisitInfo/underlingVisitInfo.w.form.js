define(function(require){
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