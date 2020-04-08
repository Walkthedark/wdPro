define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button10Click = function(event){
		//
		justep.Shell.showPage("addPlaceOrderInfo");
	};

	Model.prototype.faqiShenGouBtnClick = function(event){
		justep.Shell.showPage("editPlaceOrderInfo");
	};

	return Model;
});