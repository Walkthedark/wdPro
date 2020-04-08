define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.row5Click = function(event){
		justep.Shell.showPage("productListInfo");
	};

	Model.prototype.row7Click = function(event){
		
		justep.Shell.showPage("briefInfo");
	};
	
	Model.prototype.row10Click = function(event){
		justep.Shell.showPage("actionLog");
	};
	return Model;
});