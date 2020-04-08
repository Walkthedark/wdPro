define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};
	// 请假申请
	Model.prototype.row1Click = function(event) {
		this.comp("AskForLeaveDialog").open();
	};
	// 出差申请
	Model.prototype.row3Click = function(event) {
		this.comp("businessTripDialog").open();
	};
	// 加班申请
	Model.prototype.row5Click = function(event) {
		this.comp("overtimeDialog").open();
	};
	// 销售订单
	Model.prototype.row7Click = function(event) {
		this.comp("salesOrderDialog").open();
	};
	// 网点订单
	Model.prototype.row9Click = function(event) {
		this.comp("branchesDialog").open();
	};
	// 万能申请单
	Model.prototype.row11Click = function(event) {
		this.comp("universalDialog").open();
	};
	// 日常费用报销
	Model.prototype.row16Click = function(event) {
		this.comp("dailyCostDialog").open();
	};
	// 退货
	Model.prototype.row17Click = function(event) {
		this.comp("salesReturnDialog").open();
	};

	return Model;
});