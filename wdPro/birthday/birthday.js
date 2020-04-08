define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelLoad = function(event){
		var params = {};
		var res = asCore.setGetFalse(interFace.brithContract, params);
		if(res.code ==200){
			this.comp("popData").loadData(res.data, false);
		}
	};

	Model.prototype.scrollView1PullUp = function(event){

	};

	return Model;
});