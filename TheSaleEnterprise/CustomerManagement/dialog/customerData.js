define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 经销商资料管理
	Model.prototype.row1Click = function(event) {
		this.comp("myDealersDialog").open();
	};
	// 系统资料管理
	Model.prototype.row3Click = function(event) {
		this.comp("mySystemDialog").open();
	};
	// 网点资料管理
	Model.prototype.row5Click = function(event) {
		this.comp("myBranchesDialog").open();
	};

	return Model;
});