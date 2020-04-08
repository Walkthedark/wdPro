define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 下属考勤查询
	Model.prototype.row1Click = function(event) {
		this.comp("underlingClockInDialog").open();
	};
	// 下属工作日报
	Model.prototype.row3Click = function(event) {
		this.comp("underlingWorkReportDialog").open();
	};
	// 下属经销商拜访
	Model.prototype.row5Click = function(event) {
		this.comp("underlingDealersVisitDialog").open();
	};
	// 下属网点拜访报表
	Model.prototype.row7Click = function(event) {
		this.comp("underlingBranchesDialog").open();
	};
	// 下属拜访轨迹
	Model.prototype.row9Click = function(event) {
		this.comp("underlingVisitDialog").open();
	};

	return Model;
});