define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.productInfoClick = function(event){
		justep.Shell.showPage("productList");
	};

	Model.prototype.toProductInfoClick = function(event){
		justep.Shell.showPage("productList");
	};

	Model.prototype.confirmOrderBtnClick = function(event){
		justep.Shell.showPage("returnOrderSuccess");
	};

	return Model;
});