define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/tabs/tabs');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/TheSaleEnterprise/Commonly/dialog/salesOrderSelectGoods'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cVZV3ie';
	this._flag_='cb8c95c39296e1f78b518459fab81829';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 require('css!$UI/TheSaleEnterprise/css/common').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"allNumber":{"define":"allNumber","label":"总数量","name":"allNumber","relation":"allNumber","type":"String"},"allSum":{"define":"allSum","label":"合计","name":"allSum","relation":"allSum","type":"String"},"isBack":{"define":"isBack","label":"是否返回","name":"isBack","relation":"isBack","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{"onValueChanged":"calculateDataValueChanged"},"idColumn":"allSum","initData":"[{\"allSum\":\"0\",\"isBack\":0}]","isMain":false,"limit":20,"xid":"calculateData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"img":{"define":"img","name":"img","relation":"img","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"qty":{"define":"qty","name":"qty","relation":"qty","type":"String"},"select":{"define":"select","name":"select","relation":"select","type":"String"},"spec":{"define":"spec","name":"spec","relation":"spec","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"}},"directDelete":false,"events":{},"idColumn":"pro_id","initData":"[{\"id\":\"1\",\"img\":\"1\",\"pro_name\":\"1\",\"pro_id\":\"1\",\"spec\":\"1111\",\"price\":\"1\",\"qty\":\"1\",\"unit\":\"1\",\"unitm\":\"个\"},{\"id\":\"2\",\"img\":\"2\",\"pro_name\":\"2\",\"pro_id\":\"2\",\"spec\":\"2222\",\"price\":\"2\",\"qty\":\"2\",\"unit\":\"2\",\"unitm\":\"套\"}]","isMain":false,"limit":-1,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"is":{"define":"is","name":"is","relation":"is","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"qty":{"define":"qty","name":"qty","relation":"qty","type":"String"},"spec":{"define":"spec","name":"spec","relation":"spec","type":"String"},"story":{"define":"story","name":"story","relation":"story","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"unit\":\"1\",\"unitm\":\"个\",\"pro_name\":\"1\",\"pro_id\":\"1\",\"price\":\"1\",\"spec\":\"10\",\"story\":\"1\",\"is\":\"1\",\"qty\":\"0\"},{\"id\":\"2\",\"unit\":\"2\",\"unitm\":\"套\",\"pro_name\":\"2\",\"pro_id\":\"2\",\"price\":\"2\",\"spec\":\"20\",\"story\":\"2\",\"is\":\"0\",\"qty\":\"0\"}]","isMain":false,"limit":20,"xid":"specData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"},"url":{"define":"url","name":"url","relation":"url","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"cData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"img":{"define":"img","name":"img","relation":"img","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"qty":{"define":"qty","name":"qty","relation":"qty","type":"String"},"select":{"define":"select","name":"select","relation":"select","type":"String"},"spec":{"define":"spec","name":"spec","relation":"spec","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"}},"directDelete":false,"events":{},"idColumn":"pro_id","initData":"[{\"id\":\"1\",\"img\":\"1\",\"pro_name\":\"1\",\"pro_id\":\"1\",\"spec\":\"1111\",\"price\":\"1\",\"qty\":\"1\",\"unit\":\"1\",\"unitm\":\"个\"},{\"id\":\"2\",\"img\":\"2\",\"pro_name\":\"2\",\"pro_id\":\"2\",\"spec\":\"2222\",\"price\":\"2\",\"qty\":\"2\",\"unit\":\"2\",\"unitm\":\"套\"}]","isMain":false,"limit":-1,"xid":"hasBugGoods"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"is":{"define":"is","name":"is","relation":"is","type":"String"},"price":{"define":"price","name":"price","relation":"price","type":"String"},"pro_id":{"define":"pro_id","name":"pro_id","relation":"pro_id","type":"String"},"pro_name":{"define":"pro_name","name":"pro_name","relation":"pro_name","type":"String"},"qty":{"define":"qty","name":"qty","relation":"qty","type":"String"},"spec":{"define":"spec","name":"spec","relation":"spec","type":"String"},"story":{"define":"story","name":"story","relation":"story","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"},"unitm":{"define":"unitm","name":"unitm","relation":"unitm","type":"String"}},"directDelete":false,"events":{"onValueChanged":"hasBugSpecValueChanged"},"idColumn":"id","initData":"[{\"id\":\"1\",\"unit\":\"1\",\"unitm\":\"个\",\"pro_name\":\"1\",\"pro_id\":\"1\",\"price\":\"1\",\"spec\":\"10\",\"story\":\"1\",\"is\":\"1\",\"qty\":\"0\"},{\"id\":\"2\",\"unit\":\"2\",\"unitm\":\"套\",\"pro_name\":\"2\",\"pro_id\":\"2\",\"price\":\"2\",\"spec\":\"20\",\"story\":\"2\",\"is\":\"0\",\"qty\":\"0\"}]","isMain":false,"limit":20,"xid":"hasBugSpec"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"金蝶软件\"},{\"id\":\"2\",\"title\":\"用友软件\"},{\"id\":\"3\",\"title\":\"OA软件\"},{\"id\":\"4\",\"title\":\"CRM软件\"},{\"id\":\"5\",\"title\":\"其他\"}]","isMain":false,"limit":20,"xid":"TypeList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"打折促销\"},{\"id\":\"2\",\"title\":\"新品上架\"},{\"id\":\"3\",\"title\":\"清仓优惠\"}]","isMain":false,"limit":20,"xid":"labelList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"},"val":{"define":"val","name":"val","relation":"val","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"促销中\"},{\"id\":\"2\",\"title\":\"待促销\"}]","isMain":false,"limit":20,"xid":"salesList"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"label":{"define":"label","name":"label","relation":"label","type":"String"},"sales":{"define":"sales","name":"sales","relation":"sales","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","isMain":false,"limit":20,"xid":"selectData"});
}}); 
return __result;});