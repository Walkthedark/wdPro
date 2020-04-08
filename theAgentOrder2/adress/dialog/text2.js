define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button2Click = function(event){
		$(this.getElementByXid("tabItem4")).html("hhh")
		$(this.getElementByXid("tabItem5")).hide();
	};

	Model.prototype.modelParamsReceive = function(event){
		var par = {};
		var res = asCore.setGetFalse(inFace.getRegion, par);
		if (res.code === 200) {
			this.comp("regionData").loadData(res.data,false);
		} else {
			justep.Util.hint(res.message);
		}
	};

	return Model;
});