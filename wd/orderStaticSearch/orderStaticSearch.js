define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.staticSearchBtnClick = function(event){
		
		justep.Shell.showPage("StaticResult");
	};

	return Model;
});