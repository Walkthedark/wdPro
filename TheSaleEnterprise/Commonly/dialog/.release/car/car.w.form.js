define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/car'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBbYf6j';
	this._flag_='4c92eadecbceb32f68dc963fc01b40b8';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"APP_USERINFO_ID":{"define":"APP_USERINFO_ID","label":"APP_USERINFO_ID","name":"APP_USERINFO_ID","relation":"APP_USERINFO_ID","type":"String"},"FID":{"define":"FID","label":"FID","name":"FID","relation":"FID","type":"String"},"ITEM_CODE":{"define":"ITEM_CODE","label":"ITEM_CODE","name":"ITEM_CODE","relation":"ITEM_CODE","type":"String"},"ITEM_DESC":{"define":"ITEM_DESC","label":"ITEM_DESC","name":"ITEM_DESC","relation":"ITEM_DESC","type":"String"},"ITEM_ID":{"define":"ITEM_ID","label":"ITEM_ID","name":"ITEM_ID","relation":"ITEM_ID","type":"String"},"ITEM_INFO":{"define":"ITEM_INFO","label":"ITEM_INFO","name":"ITEM_INFO","relation":"ITEM_INFO","type":"String"},"ITEM_NAME":{"define":"ITEM_NAME","label":"ITEM_NAME","name":"ITEM_NAME","relation":"ITEM_NAME","type":"String"},"ITEM_STATUS":{"define":"ITEM_STATUS","label":"ITEM_STATUS","name":"ITEM_STATUS","relation":"ITEM_STATUS","type":"String"},"ITEM_TYPE":{"define":"ITEM_TYPE","label":"ITEM_TYPE","name":"ITEM_TYPE","relation":"ITEM_TYPE","type":"String"},"ITEM_URL":{"define":"ITEM_URL","label":"ITEM_URL","name":"ITEM_URL","relation":"ITEM_URL","type":"String"},"LOGISTICS_DISTRI":{"define":"LOGISTICS_DISTRI","label":"LOGISTICS_DISTRI","name":"LOGISTICS_DISTRI","relation":"LOGISTICS_DISTRI","type":"String"},"MDS_ITEM_INFO_ID":{"define":"MDS_ITEM_INFO_ID","label":"MDS_ITEM_INFO_ID","name":"MDS_ITEM_INFO_ID","relation":"MDS_ITEM_INFO_ID","type":"String"},"PRICE":{"define":"PRICE","label":"PRICE","name":"PRICE","relation":"PRICE","type":"String"},"QTY":{"define":"QTY","label":"QTY","name":"QTY","relation":"QTY","type":"String"},"REMARK":{"define":"REMARK","label":"REMARK","name":"REMARK","relation":"REMARK","type":"String"},"UNITNO":{"define":"UNITNO","label":"UNITNO","name":"UNITNO","relation":"UNITNO","type":"String"},"USER_INFO":{"define":"USER_INFO","label":"USER_INFO","name":"USER_INFO","relation":"USER_INFO","type":"String"},"fChoose":{"define":"fChoose","name":"fChoose","relation":"fChoose","type":"String"}},"directDelete":false,"events":{"onAfterRefresh":"goodsDataAfterRefresh","onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"FID","isMain":false,"limit":20,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"allNumber":{"define":"allNumber","label":"总数量","name":"allNumber","relation":"allNumber","rules":{"calculate":"$model.goodsData.sum('fChoose')"},"type":"String"},"allSum":{"define":"allSum","label":"合计","name":"allSum","relation":"allSum","type":"String"},"isBack":{"define":"isBack","label":"是否返回","name":"isBack","relation":"isBack","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{"onValueChanged":"calculateDataValueChanged"},"idColumn":"allSum","initData":"[{\"allSum\":\"0\",\"isBack\":0}]","isMain":false,"limit":20,"xid":"calculateData"});
}}); 
return __result;});