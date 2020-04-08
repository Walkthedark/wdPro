define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.col5Click = function(event){
		//addGongyingSInfo
		justep.Shell.showPage("addGongyingSInfo");
	};

	return Model;
});