define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button4Click = function(event){
		this.comp("popOver1").show();
	};

	Model.prototype.div16Click = function(event){
		justep.Shell.showPage("purchaseIngo");
	};

	return Model;
});