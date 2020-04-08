define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 导购入职申请
	Model.prototype.row1Click = function(event) {
		this.comp("shoppersInDialog").open();
	};
	// 导购异动申请
	Model.prototype.row3Click = function(event) {
		this.comp("shoppersMoveDialog").open();
	};
	// 导购离职申请
	Model.prototype.row5Click = function(event) {
		this.comp("shoppersDepartureDialog").open();
	};
	// 所属导购销量确认
	Model.prototype.row7Click = function(event) {
		this.comp("shoppersSalesDialog").open();
	};
	// 所属导购日报表
	Model.prototype.row9Click = function(event) {
		this.comp("shoppersReportFormsDialog").open();
	};
	// 所属导购日报表（韩后）
	Model.prototype.row11Click = function(event) {
		this.comp("shoppersReportFormsADialog").open();
	};
	// 所有导购日报表
	Model.prototype.row16Click = function(event) {
		this.comp("allDialog").open();
	};
	// 所属导购档案查询
	Model.prototype.row17Click = function(event) {
		this.comp("infoDialog").open();
	};
	// 所属导购排班查询
	Model.prototype.row13Click = function(event) {
		this.comp("shoppersSchedulingDialog").open();
	};
	// 所属导购月报表
	Model.prototype.row20Click = function(event) {
		this.comp("mDialog").open();
	};
	// 所属导购考勤记录查询
	Model.prototype.row23Click = function(event) {
		this.comp("shoppersClockingInDialog").open();
	};
	// 所属导购请假查询
	Model.prototype.row21Click = function(event) {
		this.comp("AskForLeaveDialog").open();
	};
	// 所属导购加班查询
	Model.prototype.row27Click = function(event) {
		this.comp("overtimeDialog").open();
	};

	return Model;
});