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
var __parent0=require('$model/UI2/TheSaleEnterprise/Visit/VisitList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cruyeYb';
	this._flag_='583d5604ec03fce6605874079fcd6476';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/TheSaleEnterprise/css/style').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bfxl":{"define":"bfxl","name":"bfxl","relation":"bfxl","type":"String"},"cishu":{"define":"cishu","name":"cishu","relation":"cishu","type":"String"},"ddsj":{"define":"ddsj","name":"ddsj","relation":"ddsj","type":"String"},"dzsj":{"define":"dzsj","name":"dzsj","relation":"dzsj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"isdg":{"define":"isdg","name":"isdg","relation":"isdg","type":"String"},"iskey":{"define":"iskey","name":"iskey","relation":"iskey","type":"String"},"iszy":{"define":"iszy","name":"iszy","relation":"iszy","type":"String"},"jlpc":{"define":"jlpc","name":"jlpc","relation":"jlpc","type":"String"},"ldsj":{"define":"ldsj","name":"ldsj","relation":"ldsj","type":"String"},"ldtp":{"define":"ldtp","name":"ldtp","relation":"ldtp","type":"String"},"lx":{"define":"lx","name":"lx","relation":"lx","type":"String"},"netsn":{"define":"netsn","name":"netsn","relation":"netsn","type":"String"},"qddd":{"define":"qddd","name":"qddd","relation":"qddd","type":"String"},"qdtp":{"define":"qdtp","name":"qdtp","relation":"qdtp","type":"String"},"qtdd":{"define":"qtdd","name":"qtdd","relation":"qtdd","type":"String"},"rq":{"define":"rq","name":"rq","relation":"rq","type":"String"},"rwdzr":{"define":"rwdzr","name":"rwdzr","relation":"rwdzr","type":"String"},"rwdzr_name":{"define":"rwdzr_name","name":"rwdzr_name","relation":"rwdzr_name","type":"String"},"shangci":{"define":"shangci","name":"shangci","relation":"shangci","type":"String"},"syzjl":{"define":"syzjl","name":"syzjl","relation":"syzjl","type":"String"},"wddz":{"define":"wddz","name":"wddz","relation":"wddz","type":"String"},"wdid":{"define":"wdid","name":"wdid","relation":"wdid","type":"String"},"wdmc":{"define":"wdmc","name":"wdmc","relation":"wdmc","type":"String"},"yifang":{"define":"yifang","name":"yifang","relation":"yifang","type":"String"},"ys":{"define":"ys","name":"ys","relation":"ys","type":"String"},"zt":{"define":"zt","name":"zt","relation":"zt","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"OutData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"bfxl":{"define":"bfxl","name":"bfxl","relation":"bfxl","type":"String"},"cishu":{"define":"cishu","name":"cishu","relation":"cishu","type":"String"},"ddsj":{"define":"ddsj","name":"ddsj","relation":"ddsj","type":"String"},"dzsj":{"define":"dzsj","name":"dzsj","relation":"dzsj","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"isdg":{"define":"isdg","name":"isdg","relation":"isdg","type":"String"},"iskey":{"define":"iskey","name":"iskey","relation":"iskey","type":"String"},"iszy":{"define":"iszy","name":"iszy","relation":"iszy","type":"String"},"jlpc":{"define":"jlpc","name":"jlpc","relation":"jlpc","type":"String"},"ldsj":{"define":"ldsj","name":"ldsj","relation":"ldsj","type":"String"},"ldtp":{"define":"ldtp","name":"ldtp","relation":"ldtp","type":"String"},"lx":{"define":"lx","name":"lx","relation":"lx","type":"String"},"netsn":{"define":"netsn","name":"netsn","relation":"netsn","type":"String"},"qddd":{"define":"qddd","name":"qddd","relation":"qddd","type":"String"},"qdtp":{"define":"qdtp","name":"qdtp","relation":"qdtp","type":"String"},"qtdd":{"define":"qtdd","name":"qtdd","relation":"qtdd","type":"String"},"rq":{"define":"rq","name":"rq","relation":"rq","type":"String"},"rwdzr":{"define":"rwdzr","name":"rwdzr","relation":"rwdzr","type":"String"},"rwdzr_name":{"define":"rwdzr_name","name":"rwdzr_name","relation":"rwdzr_name","type":"String"},"shangci":{"define":"shangci","name":"shangci","relation":"shangci","type":"String"},"syzjl":{"define":"syzjl","name":"syzjl","relation":"syzjl","type":"String"},"wddz":{"define":"wddz","name":"wddz","relation":"wddz","type":"String"},"wdid":{"define":"wdid","name":"wdid","relation":"wdid","type":"String"},"wdmc":{"define":"wdmc","name":"wdmc","relation":"wdmc","type":"String"},"yifang":{"define":"yifang","name":"yifang","relation":"yifang","type":"String"},"ys":{"define":"ys","name":"ys","relation":"ys","type":"String"},"zt":{"define":"zt","name":"zt","relation":"zt","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"InData"});
}}); 
return __result;});