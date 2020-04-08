define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/wd/applyReturnGoods/productList/productList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cR7f6Vr';
	this._flag_='b42d291a403f63adddbb9cec587ff76f';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"rCoding":{"define":"rCoding","name":"rCoding","relation":"rCoding","type":"String"},"rImgUrl":{"define":"rImgUrl","name":"rImgUrl","relation":"rImgUrl","type":"String"},"rName":{"define":"rName","label":"商品名称","name":"rName","relation":"rName","type":"String"},"rPrice":{"define":"rPrice","name":"rPrice","relation":"rPrice","type":"String"},"rQuantity":{"define":"rQuantity","name":"rQuantity","relation":"rQuantity","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{"onCustomRefresh":"returnGoodsCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"returnGoods"});
}}); 
return __result;});