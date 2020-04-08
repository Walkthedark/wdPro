define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.col15Click = function(event) {
		justep.Shell.showPage("myWorkReport");
	};
	// 抄送给我的
	Model.prototype.col16Click = function(event) {
		justep.Shell.showPage("giveMyWorkReport");
	};
	// 其他人汇报
	Model.prototype.col14Click = function(event) {
		justep.Shell.showPage("otherWorkReport");
	};
	// 新增行为
	Model.prototype.col5Click = function(event) {
		justep.Shell.showPage("addCommonPlan", {
			data : {
				flag : "行为"
			}
		});
	};

	Model.prototype.col4Click = function(event) {
		justep.Shell.showPage("addCommonPlan", {
			data : {
				flag : "计划"
			}
		});
	};

	Model.prototype.col6Click = function(event) {
		justep.Shell.showPage("addCommonPlan", {
			data : {
				flag : "待定"
			}
		});
	};

	return Model;
});