define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wdPro/workReport/newDialog/otherPepReport'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cqUjQn2';
	this._flag_='a252591396830f3cfadda7f025e6364f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"accessory":{"define":"accessory","name":"accessory","relation":"accessory","type":"String"},"cc_department":{"define":"cc_department","name":"cc_department","relation":"cc_department","type":"String"},"cc_staff":{"define":"cc_staff","name":"cc_staff","relation":"cc_staff","type":"String"},"client":{"define":"client","name":"client","relation":"client","type":"String"},"comment":{"define":"comment","name":"comment","relation":"comment","type":"String"},"create_at":{"define":"create_at","name":"create_at","relation":"create_at","type":"String"},"create_staff":{"define":"create_staff","name":"create_staff","relation":"create_staff","type":"String"},"create_staff_id":{"define":"create_staff_id","name":"create_staff_id","relation":"create_staff_id","type":"String"},"date_begin":{"define":"date_begin","name":"date_begin","relation":"date_begin","type":"String"},"date_end":{"define":"date_end","name":"date_end","relation":"date_end","type":"String"},"department":{"define":"department","name":"department","relation":"department","type":"String"},"image":{"define":"image","name":"image","relation":"image","type":"String"},"likes":{"define":"likes","name":"likes","relation":"likes","type":"String"},"only_mine":{"define":"only_mine","name":"only_mine","relation":"only_mine","type":"String"},"report_action":{"define":"report_action","name":"report_action","relation":"report_action","type":"String"},"report_content":{"define":"report_content","name":"report_content","relation":"report_content","type":"String"},"report_id":{"define":"report_id","name":"report_id","relation":"report_id","type":"String"},"report_state":{"define":"report_state","name":"report_state","relation":"report_state","type":"String"},"staff":{"define":"staff","name":"staff","relation":"staff","type":"String"},"sync_company":{"define":"sync_company","name":"sync_company","relation":"sync_company","type":"String"}},"directDelete":false,"events":{},"idColumn":"report_id","isMain":false,"limit":20,"xid":"myreData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"staff_id":{"define":"staff_id","name":"staff_id","relation":"staff_id","type":"String"},"staff_name":{"define":"staff_name","name":"staff_name","relation":"staff_name","type":"String"}},"directDelete":false,"events":{},"idColumn":"staff_id","isMain":false,"limit":20,"xid":"cc_staffData"});
}}); 
return __result;});