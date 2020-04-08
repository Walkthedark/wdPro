define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};
	// 市场活动申请
	Model.prototype.row1Click = function(event) {
		this.comp("activityDialog").open();
	};
	// 活动执行检查
	Model.prototype.row3Click = function(event) {
		this.comp("activityInspectionDialog").open();
	};
	// 活动执行审核
	Model.prototype.row5Click = function(event) {
		this.comp("activityApprovalDialog").open();
	};
	// 市场活动反馈
	Model.prototype.row7Click = function(event) {
		this.comp("activityFeedbackDialog").open();
	};
	// 市场活动核销
	Model.prototype.row9Click = function(event) {

		this.comp("cancelAfterVerificationDialog").open();
	};

	return Model;
});