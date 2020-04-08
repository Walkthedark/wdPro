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
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/salesReturn'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMb26zq';
	this._flag_='e65038989ef4d9cfc21326721219cd4b';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"col6":{"define":"col6","name":"col6","relation":"col6","type":"String"},"col7":{"define":"col7","name":"col7","relation":"col7","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"安顺市新城区副食品经销部\",\"col2\":\"201802170001\",\"col3\":\"10\",\"col4\":\"4800元\",\"col5\":\"未发货\",\"col6\":\"未收货\",\"col7\":\"已归档\",\"col8\":\"2018-02-17\"},{\"id\":\"2\",\"col1\":\"柳州市白云区经销部\",\"col2\":\"201802170002\",\"col3\":\"11\",\"col4\":\"2500元\",\"col5\":\"未发货\",\"col6\":\"未收货\",\"col7\":\"已归档\",\"col8\":\"2018-02-17\"}]","isMain":false,"limit":20,"xid":"orderData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"code":{"define":"code","name":"code","relation":"code","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"col9":{"define":"col9","name":"col9","relation":"col9","type":"String"},"daogou":{"define":"daogou","name":"daogou","relation":"daogou","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"zhongdian":{"define":"zhongdian","name":"zhongdian","relation":"zhongdian","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"万家公用分店\",\"address\":\"万家公用分店\",\"state\":\"未拜访\",\"code\":\"10100001\",\"daogou\":\"导购\",\"zhongdian\":\"重点\",\"time\":\"2018-02-12\",\"col8\":\"999M\"},{\"id\":\"2\",\"name\":\"长城饭店\",\"address\":\"渭南路111\",\"state\":\"已拜访\",\"code\":\"10100002\",\"daogou\":\"导购\",\"zhongdian\":\"重点\",\"time\":\"2018-02-12\",\"col8\":\"50M\"}]","isMain":false,"limit":20,"xid":"InData"});
}}); 
return __result;});