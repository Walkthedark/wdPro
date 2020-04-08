define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};
	// 经销商市场费用对账单
	Model.prototype.row7Click = function(event) {
		this.comp("statementsDialog").open();
	};
	// TI费用核销查询
	Model.prototype.row9Click = function(event) {
		this.comp("TIDialog").open();
	};

	return Model;
});