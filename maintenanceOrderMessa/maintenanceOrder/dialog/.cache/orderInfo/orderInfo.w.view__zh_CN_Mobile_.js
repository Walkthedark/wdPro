window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_80c506b66b10432fb28ef6062d6edbd4l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_1d0fd2d546734d5eb5ea360f76be851cl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_eac86925ac8c42a4915b0709af203f4cl_zh_CNs_d_m/system/components/comp2.min.js','/v_d493e50e277e48448dadb6070dc28b88l_zh_CNs_d_m/system/core.min.js','/v_4ccf4e5e72c54d8a87a7ce11095ff5f7l_zh_CNs_d_m/system/common.min.js','/v_c32a10718fc34a7794be970c77b9a2fel_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/maintenanceOrderMessa/maintenanceOrder/dialog/orderInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cjqqaAv';
	this._flag_='4979759a48dfdc6e6a5910a766a152d1';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"extension":{"define":"extension","name":"extension","relation":"extension","type":"String"},"filename":{"define":"filename","name":"filename","relation":"filename","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"newName":{"define":"newName","name":"newName","relation":"newName","type":"String"},"newUrl":{"define":"newUrl","name":"newUrl","relation":"newUrl","type":"String"},"size":{"define":"size","name":"size","relation":"size","type":"String"},"uploadUser":{"define":"uploadUser","name":"uploadUser","relation":"uploadUser","type":"String"},"url":{"define":"url","name":"url","relation":"url","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"imageList"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"}},"directDelete":false,"events":{},"idColumn":"name","isMain":false,"limit":20,"xid":"quarterData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"name":{"define":"name","name":"name","relation":"name","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"}},"directDelete":false,"events":{},"idColumn":"name","isMain":false,"limit":20,"xid":"standard"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"length":{"define":"length","name":"length","relation":"length","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"Handraildata"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"createDate":{"define":"createDate","name":"createDate","relation":"createDate","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"isOptional":{"define":"isOptional","name":"isOptional","relation":"isOptional","type":"String"},"maintenancePart":{"define":"maintenancePart","name":"maintenancePart","relation":"maintenancePart","type":"String"},"maintenanceType":{"define":"maintenanceType","name":"maintenanceType","relation":"maintenanceType","type":"String"},"pId":{"define":"pId","name":"pId","relation":"pId","type":"String"},"projectName":{"define":"projectName","name":"projectName","relation":"projectName","type":"String"},"requirement":{"define":"requirement","name":"requirement","relation":"requirement","type":"String"},"state":{"define":"state","name":"state","relation":"state","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"modelData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","name":"address","relation":"address","type":"String"},"auditName":{"define":"auditName","name":"auditName","relation":"auditName","type":"String"},"auditStateName":{"define":"auditStateName","name":"auditStateName","relation":"auditStateName","type":"String"},"backStateName":{"define":"backStateName","name":"backStateName","relation":"backStateName","type":"String"},"beginDate":{"define":"beginDate","name":"beginDate","relation":"beginDate","type":"String"},"brakerDate":{"define":"brakerDate","name":"brakerDate","relation":"brakerDate","type":"String"},"branchMonthMoney":{"define":"branchMonthMoney","name":"branchMonthMoney","relation":"branchMonthMoney","type":"String"},"branchNo":{"define":"branchNo","name":"branchNo","relation":"branchNo","type":"String"},"branchSumMoney":{"define":"branchSumMoney","name":"branchSumMoney","relation":"branchSumMoney","type":"String"},"brand":{"define":"brand","name":"brand","relation":"brand","type":"String"},"buildingNo":{"define":"buildingNo","name":"buildingNo","relation":"buildingNo","type":"String"},"certNo":{"define":"certNo","name":"certNo","relation":"certNo","type":"String"},"checkTel":{"define":"checkTel","name":"checkTel","relation":"checkTel","type":"String"},"confirmUser":{"define":"confirmUser","name":"confirmUser","relation":"confirmUser","type":"String"},"confirmUser_id":{"define":"confirmUser_id","name":"confirmUser_id","relation":"confirmUser_id","type":"String"},"contractID":{"define":"contractID","name":"contractID","relation":"contractID","type":"String"},"contractNo":{"define":"contractNo","name":"contractNo","relation":"contractNo","type":"String"},"contractType":{"define":"contractType","name":"contractType","relation":"contractType","type":"String"},"controlMode":{"define":"controlMode","name":"controlMode","relation":"controlMode","type":"String"},"cooLevel":{"define":"cooLevel","name":"cooLevel","relation":"cooLevel","type":"String"},"core":{"define":"core","name":"core","relation":"core","type":"String"},"cpNo":{"define":"cpNo","name":"cpNo","relation":"cpNo","type":"String"},"createDate":{"define":"createDate","name":"createDate","relation":"createDate","type":"String"},"crontab":{"define":"crontab","name":"crontab","relation":"crontab","type":"String"},"cylinder":{"define":"cylinder","name":"cylinder","relation":"cylinder","type":"String"},"dayAllow":{"define":"dayAllow","name":"dayAllow","relation":"dayAllow","type":"String"},"delDate":{"define":"delDate","name":"delDate","relation":"delDate","type":"String"},"des":{"define":"des","name":"des","relation":"des","type":"String"},"desc":{"define":"desc","name":"desc","relation":"desc","type":"String"},"dizhi":{"define":"dizhi","name":"dizhi","relation":"dizhi","type":"String"},"door":{"define":"door","name":"door","relation":"door","type":"String"},"driveMode":{"define":"driveMode","name":"driveMode","relation":"driveMode","type":"String"},"duration":{"define":"duration","name":"duration","relation":"duration","type":"String"},"elevatorId":{"define":"elevatorId","name":"elevatorId","relation":"elevatorId","type":"String"},"endDate":{"define":"endDate","name":"endDate","relation":"endDate","type":"String"},"energyInfo":{"define":"energyInfo","name":"energyInfo","relation":"energyInfo","type":"String"},"entryMan":{"define":"entryMan","name":"entryMan","relation":"entryMan","type":"String"},"extOptions":{"define":"extOptions","name":"extOptions","relation":"extOptions","type":"String"},"fax":{"define":"fax","name":"fax","relation":"fax","type":"String"},"fileBoxNo":{"define":"fileBoxNo","name":"fileBoxNo","relation":"fileBoxNo","type":"String"},"fileUrls":{"define":"fileUrls","name":"fileUrls","relation":"fileUrls","type":"String"},"flatInfo":{"define":"flatInfo","name":"flatInfo","relation":"flatInfo","type":"String"},"floor":{"define":"floor","name":"floor","relation":"floor","type":"String"},"fpEvaluate1":{"define":"fpEvaluate1","name":"fpEvaluate1","relation":"fpEvaluate1","type":"String"},"fpStateName":{"define":"fpStateName","name":"fpStateName","relation":"fpStateName","type":"String"},"freepart":{"define":"freepart","name":"freepart","relation":"freepart","type":"String"},"garrison":{"define":"garrison","name":"garrison","relation":"garrison","type":"String"},"governorMakeDate":{"define":"governorMakeDate","name":"governorMakeDate","relation":"governorMakeDate","type":"String"},"governorModel":{"define":"governorModel","name":"governorModel","relation":"governorModel","type":"String"},"governorMoney":{"define":"governorMoney","name":"governorMoney","relation":"governorMoney","type":"String"},"governorYearCheck":{"define":"governorYearCheck","name":"governorYearCheck","relation":"governorYearCheck","type":"String"},"groupId":{"define":"groupId","name":"groupId","relation":"groupId","type":"String"},"halfmonthSNShow":{"define":"halfmonthSNShow","name":"halfmonthSNShow","relation":"halfmonthSNShow","type":"String"},"halfyearSNShow":{"define":"halfyearSNShow","name":"halfyearSNShow","relation":"halfyearSNShow","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"isLabel":{"define":"isLabel","name":"isLabel","relation":"isLabel","type":"String"},"is_qm":{"define":"is_qm","name":"is_qm","relation":"is_qm","type":"String"},"liftIDNo":{"define":"liftIDNo","name":"liftIDNo","relation":"liftIDNo","type":"String"},"liftModel":{"define":"liftModel","name":"liftModel","relation":"liftModel","type":"String"},"liftNo":{"define":"liftNo","name":"liftNo","relation":"liftNo","type":"String"},"liftType":{"define":"liftType","name":"liftType","relation":"liftType","type":"String"},"linkman":{"define":"linkman","name":"linkman","relation":"linkman","type":"String"},"maintainDate":{"define":"maintainDate","name":"maintainDate","relation":"maintainDate","type":"String"},"maintainDays":{"define":"maintainDays","name":"maintainDays","relation":"maintainDays","type":"String"},"maintainType":{"define":"maintainType","name":"maintainType","relation":"maintainType","type":"String"},"maintainUnit":{"define":"maintainUnit","name":"maintainUnit","relation":"maintainUnit","type":"String"},"makeDate":{"define":"makeDate","name":"makeDate","relation":"makeDate","type":"String"},"manageUnit":{"define":"manageUnit","name":"manageUnit","relation":"manageUnit","type":"String"},"needIC":{"define":"needIC","name":"needIC","relation":"needIC","type":"String"},"opSign":{"define":"opSign","name":"opSign","relation":"opSign","type":"String"},"opSign2":{"define":"opSign2","name":"opSign2","relation":"opSign2","type":"String"},"project":{"define":"project","name":"project","relation":"project","type":"String"},"projectType":{"define":"projectType","name":"projectType","relation":"projectType","type":"String"},"quarterSNShow":{"define":"quarterSNShow","name":"quarterSNShow","relation":"quarterSNShow","type":"String"},"region":{"define":"region","name":"region","relation":"region","type":"String"},"regulator":{"define":"regulator","name":"regulator","relation":"regulator","type":"String"},"signInAddr":{"define":"signInAddr","name":"signInAddr","relation":"signInAddr","type":"String"},"signInTime":{"define":"signInTime","name":"signInTime","relation":"signInTime","type":"String"},"signInUser":{"define":"signInUser","name":"signInUser","relation":"signInUser","type":"String"},"signOutAddr":{"define":"signOutAddr","name":"signOutAddr","relation":"signOutAddr","type":"String"},"signOutTime":{"define":"signOutTime","name":"signOutTime","relation":"signOutTime","type":"String"},"signOutUser":{"define":"signOutUser","name":"signOutUser","relation":"signOutUser","type":"String"},"teamName":{"define":"teamName","name":"teamName","relation":"teamName","type":"String"},"usingUnit":{"define":"usingUnit","name":"usingUnit","relation":"usingUnit","type":"String"},"yearCheck":{"define":"yearCheck","name":"yearCheck","relation":"yearCheck","type":"String"},"yearSNShow":{"define":"yearSNShow","name":"yearSNShow","relation":"yearSNShow","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"hithData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"accessories":{"define":"accessories","name":"accessories","relation":"accessories","type":"String"},"date":{"define":"date","name":"date","relation":"date","type":"String"},"des":{"define":"des","name":"des","relation":"des","type":"String"},"elevatorID":{"define":"elevatorID","name":"elevatorID","relation":"elevatorID","type":"String"},"hitchId":{"define":"hitchId","name":"hitchId","relation":"hitchId","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"model":{"define":"model","name":"model","relation":"model","type":"String"},"num":{"define":"num","name":"num","relation":"num","type":"String"},"unit":{"define":"unit","name":"unit","relation":"unit","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"accessData"});
}}); 
return __result;});
