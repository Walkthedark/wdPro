define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/client/clientMain'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbIfUf2';
	this._flag_='6b9c0dbbf77f875148952389fa958e05';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"category":{"define":"category","name":"category","relation":"category","type":"String"},"client_id":{"define":"client_id","name":"client_id","relation":"client_id","type":"String"},"client_name":{"define":"client_name","name":"client_name","relation":"client_name","type":"String"},"contract":{"define":"contract","name":"contract","relation":"contract","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"documentary_id":{"define":"documentary_id","name":"documentary_id","relation":"documentary_id","type":"String"},"last_contract_staff":{"define":"last_contract_staff","name":"last_contract_staff","relation":"last_contract_staff","type":"String"},"last_contract_time":{"define":"last_contract_time","name":"last_contract_time","relation":"last_contract_time","type":"String"},"no_change_days":{"define":"no_change_days","name":"no_change_days","relation":"no_change_days","type":"String"},"stage":{"define":"stage","name":"stage","relation":"stage","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"ListDataCustomRefresh"},"idColumn":"client_id","isMain":false,"limit":20,"xid":"ListData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"attention_type":{"define":"attention_type","name":"attention_type","relation":"attention_type","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"head_img":{"define":"head_img","name":"head_img","relation":"head_img","type":"String"},"is_orderer":{"define":"is_orderer","name":"is_orderer","relation":"is_orderer","type":"String"},"last_login":{"define":"last_login","name":"last_login","relation":"last_login","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"qq":{"define":"qq","name":"qq","relation":"qq","type":"String"},"staff_id":{"define":"staff_id","name":"staff_id","relation":"staff_id","type":"String"},"staff_name":{"define":"staff_name","name":"staff_name","relation":"staff_name","type":"String"},"tag":{"define":"tag","name":"tag","relation":"tag","type":"String"}},"directDelete":false,"events":{},"idColumn":"staff_id","isMain":false,"limit":20,"xid":"linkMan"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"dataJasonCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"categoryData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"region_idData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"name\":\"无跟单\",\"choose\":\"\"},{\"id\":\"1\",\"name\":\"无订货人\",\"choose\":\"\"},{\"id\":\"2\",\"name\":\"无联系人\",\"choose\":\"\"}]","isMain":false,"limit":20,"xid":"moreData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"deal_impression":{"define":"deal_impression","name":"deal_impression","relation":"deal_impression","type":"String"},"enterprise_nature":{"define":"enterprise_nature","name":"enterprise_nature","relation":"enterprise_nature","type":"String"},"establish_time":{"define":"establish_time","label":"成立时间","name":"establish_time","relation":"establish_time","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"service_rate":{"define":"service_rate","name":"service_rate","relation":"service_rate","type":"String"},"source":{"define":"source","name":"source","relation":"source","type":"String"},"year_turnover":{"define":"year_turnover","name":"year_turnover","relation":"year_turnover","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"10001\"}]","isMain":false,"limit":20,"xid":"dataJson"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"choose":{"define":"choose","name":"choose","relation":"choose","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"name\":\"未联系天数由高到低\"},{\"id\":\"2\",\"name\":\"未联系天数由低到高\"},{\"id\":\"3\",\"name\":\"创建时间由近到远\"},{\"id\":\"4\",\"name\":\"创建时间由远到近\"}]","isMain":false,"limit":20,"xid":"descData"});
}}); 
return __result;});