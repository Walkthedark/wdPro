define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.div16Click = function(event){
		
		justep.Shell.showPage("initiateShengou");
	};

	return Model;
});