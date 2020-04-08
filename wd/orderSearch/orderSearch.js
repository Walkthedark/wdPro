define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.orderSearchBtnClick = function(event){
		justep.Shell.showPage("orderSearchInfo");
	};

	return Model;
});