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