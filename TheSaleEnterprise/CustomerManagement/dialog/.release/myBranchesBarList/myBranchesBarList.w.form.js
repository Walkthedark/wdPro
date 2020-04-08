define(function(require){
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
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/myBranchesBarList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c2uErei';
	this._flag_='aeb5bd04e34237c267e5f2c4a733f27a';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"beizhu":{"define":"beizhu","name":"beizhu","relation":"beizhu","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"prod":{"define":"prod","name":"prod","relation":"prod","type":"String"},"retailPrice":{"define":"retailPrice","name":"retailPrice","relation":"retailPrice","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"西部人葵瓜子\",\"col2\":\"正常\",\"col3\":\"50元/箱\",\"col4\":\"无\"},{\"id\":\"2\",\"col1\":\"QQ糖\",\"col2\":\"正常\",\"col3\":\"8元/箱\",\"col4\":\"\",\"col5\":\"\"},{\"id\":\"3\",\"col1\":\"芝士卷\",\"col2\":\"正常\",\"col3\":\"11元/箱\",\"col4\":\"\"},{\"id\":\"4\",\"col1\":\"冰皮月饼\",\"col2\":\"正常\",\"col3\":\"50元/箱\",\"col5\":\"\"}]","isMain":false,"limit":20,"xid":"yData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"beizhu":{"define":"beizhu","name":"beizhu","relation":"beizhu","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"prod":{"define":"prod","name":"prod","relation":"prod","type":"String"},"retailPrice":{"define":"retailPrice","name":"retailPrice","relation":"retailPrice","type":"String"},"status":{"define":"status","name":"status","relation":"status","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"西部人葵瓜子\",\"col2\":\"正常\",\"col3\":\"50元/箱\",\"col4\":\"无\"},{\"id\":\"2\",\"col1\":\"QQ糖\",\"col2\":\"正常\",\"col3\":\"8元/箱\",\"col4\":\"\",\"col5\":\"\"},{\"id\":\"3\",\"col1\":\"芝士卷\",\"col2\":\"正常\",\"col3\":\"11元/箱\",\"col4\":\"\"},{\"id\":\"4\",\"col1\":\"冰皮月饼\",\"col2\":\"正常\",\"col3\":\"50元/箱\",\"col5\":\"\"}]","isMain":false,"limit":20,"xid":"dData"});
}}); 
return __result;});