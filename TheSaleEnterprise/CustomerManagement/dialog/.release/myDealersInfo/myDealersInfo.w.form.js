define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/CustomerManagement/dialog/myDealersInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3yMniq';
	this._flag_='b451d09c18540d0c2cd13b403428c9a8';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addr":{"define":"addr","name":"addr","relation":"addr","type":"String"},"brief":{"define":"brief","name":"brief","relation":"brief","type":"String"},"channeltype":{"define":"channeltype","name":"channeltype","relation":"channeltype","type":"String"},"city":{"define":"city","name":"city","relation":"city","type":"String"},"city_fzr":{"define":"city_fzr","name":"city_fzr","relation":"city_fzr","type":"String"},"contact1":{"define":"contact1","name":"contact1","relation":"contact1","type":"String"},"contact2":{"define":"contact2","name":"contact2","relation":"contact2","type":"String"},"cooptime":{"define":"cooptime","name":"cooptime","relation":"cooptime","type":"String"},"costrate":{"define":"costrate","name":"costrate","relation":"costrate","type":"String"},"ctime":{"define":"ctime","name":"ctime","relation":"ctime","type":"String"},"cuser":{"define":"cuser","name":"cuser","relation":"cuser","type":"String"},"cw_bank":{"define":"cw_bank","name":"cw_bank","relation":"cw_bank","type":"String"},"cw_banksn":{"define":"cw_banksn","name":"cw_banksn","relation":"cw_banksn","type":"String"},"cw_creditperiod":{"define":"cw_creditperiod","name":"cw_creditperiod","relation":"cw_creditperiod","type":"String"},"cw_legalrepre":{"define":"cw_legalrepre","name":"cw_legalrepre","relation":"cw_legalrepre","type":"String"},"cw_lremail":{"define":"cw_lremail","name":"cw_lremail","relation":"cw_lremail","type":"String"},"cw_lrmobile":{"define":"cw_lrmobile","name":"cw_lrmobile","relation":"cw_lrmobile","type":"String"},"cw_lrphone":{"define":"cw_lrphone","name":"cw_lrphone","relation":"cw_lrphone","type":"String"},"cw_qualification":{"define":"cw_qualification","name":"cw_qualification","relation":"cw_qualification","type":"String"},"cw_taxsn":{"define":"cw_taxsn","name":"cw_taxsn","relation":"cw_taxsn","type":"String"},"direct":{"define":"direct","name":"direct","relation":"direct","type":"String"},"fymb":{"define":"fymb","name":"fymb","relation":"fymb","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"invoicetype":{"define":"invoicetype","name":"invoicetype","relation":"invoicetype","type":"String"},"mailaddr":{"define":"mailaddr","name":"mailaddr","relation":"mailaddr","type":"String"},"mobile1":{"define":"mobile1","name":"mobile1","relation":"mobile1","type":"String"},"mobile2":{"define":"mobile2","name":"mobile2","relation":"mobile2","type":"String"},"phone1":{"define":"phone1","name":"phone1","relation":"phone1","type":"String"},"phone2":{"define":"phone2","name":"phone2","relation":"phone2","type":"String"},"provice":{"define":"provice","name":"provice","relation":"provice","type":"String"},"provice_fzr":{"define":"provice_fzr","name":"provice_fzr","relation":"provice_fzr","type":"String"},"ptime":{"define":"ptime","name":"ptime","relation":"ptime","type":"String"},"puser":{"define":"puser","name":"puser","relation":"puser","type":"String"},"sjdc":{"define":"sjdc","name":"sjdc","relation":"sjdc","type":"String"},"sjhf":{"define":"sjhf","name":"sjhf","relation":"sjhf","type":"String"},"sn":{"define":"sn","name":"sn","relation":"sn","type":"String"},"stuff":{"define":"stuff","name":"stuff","relation":"stuff","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"types":{"define":"types","name":"types","relation":"types","type":"String"},"xsmb":{"define":"xsmb","name":"xsmb","relation":"xsmb","type":"String"},"zipcode":{"define":"zipcode","name":"zipcode","relation":"zipcode","type":"String"},"zoning":{"define":"zoning","name":"zoning","relation":"zoning","type":"String"},"zoning_fzr":{"define":"zoning_fzr","name":"zoning_fzr","relation":"zoning_fzr","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"col1\":\"安徽副食品经销部\",\"col2\":\"CU10001\",\"col3\":\"安徽副食品经销部\"},{\"id\":\"2\",\"col1\":\"上海副食品经销部\",\"col2\":\"CU10002\",\"col3\":\"上海副食品经销部\"}]","isMain":false,"limit":20,"xid":"orderData"});
}}); 
return __result;});