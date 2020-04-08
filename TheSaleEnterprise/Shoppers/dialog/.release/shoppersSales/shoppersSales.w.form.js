define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Shoppers/dialog/shoppersSales'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cnuENNr';
	this._flag_='8b0a4a73f77bbfd0864b594a4eeed06d';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"col6":{"define":"col6","name":"col6","relation":"col6","type":"String"},"col7":{"define":"col7","name":"col7","relation":"col7","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"2018-02-17\",\"col2\":\"杨洋\",\"col3\":\"上海经销部\",\"col4\":\"4800\",\"col5\":\"4800\",\"col6\":\"13888888888\",\"col7\":\"\",\"col8\":\"\"},{\"id\":\"2\",\"col1\":\"2018-02-17\",\"col2\":\"杨洋\",\"col3\":\"杭州经销部\",\"col4\":\"2500\",\"col5\":\"4800\",\"col6\":\"13888888888\",\"col7\":\"\",\"col8\":\"\"}]","isMain":false,"limit":20,"xid":"checkData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"code":{"define":"code","name":"code","relation":"code","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"col9":{"define":"col9","name":"col9","relation":"col9","type":"String"},"daogou":{"define":"daogou","name":"daogou","relation":"daogou","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"},"time":{"define":"time","name":"time","relation":"time","type":"String"},"zhongdian":{"define":"zhongdian","name":"zhongdian","relation":"zhongdian","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"万家公用分店\",\"address\":\"万家公用分店\",\"state\":\"未拜访\",\"code\":\"10100001\",\"daogou\":\"导购\",\"zhongdian\":\"重点\",\"time\":\"2018-02-12\",\"col8\":\"999M\"},{\"id\":\"2\",\"name\":\"长城饭店\",\"address\":\"渭南路111\",\"state\":\"已拜访\",\"code\":\"10100002\",\"daogou\":\"导购\",\"zhongdian\":\"重点\",\"time\":\"2018-02-12\",\"col8\":\"50M\"}]","isMain":false,"limit":20,"xid":"InData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"col1":{"define":"col1","name":"col1","relation":"col1","type":"String"},"col2":{"define":"col2","name":"col2","relation":"col2","type":"String"},"col3":{"define":"col3","name":"col3","relation":"col3","type":"String"},"col4":{"define":"col4","name":"col4","relation":"col4","type":"String"},"col5":{"define":"col5","name":"col5","relation":"col5","type":"String"},"col6":{"define":"col6","name":"col6","relation":"col6","type":"String"},"col7":{"define":"col7","name":"col7","relation":"col7","type":"String"},"col8":{"define":"col8","name":"col8","relation":"col8","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"2018-02-17\",\"col2\":\"杨洋\",\"col3\":\"上海经销部\",\"col4\":\"未排班\",\"col5\":\"13888888888\",\"col6\":\"\",\"col7\":\"\",\"col8\":\"\"},{\"id\":\"2\",\"col1\":\"2018-02-17\",\"col2\":\"杨洋\",\"col3\":\"杭州经销部\",\"col4\":\"未排班\",\"col5\":\"13888888888\",\"col6\":\"\",\"col7\":\"\",\"col8\":\"\"}]","isMain":false,"limit":20,"xid":"noData"});
}}); 
return __result;});