define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button1Click = function(event){
		justep.Shell.showPage("bumenJibenSet");
	};

	Model.prototype.button20Click = function(event){
		//
		justep.Shell.showPage("shengouSHangPin");
	};

	return Model;
});