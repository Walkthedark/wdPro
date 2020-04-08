define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var jxs_id = null;
	var title = "";
	var bcpfmb = "";
	var Model = function() {
		this.callParent();
	};
	// 签到
	Model.prototype.row1Click = function(event) {
		this.comp("SignInDialog").open({
			data : {
				jxs_id : jxs_id
			}
		});
	};

	Model.prototype.modelLoad = function(event) {

	};
	// 签退
	Model.prototype.col15Click = function(event) {
		this.comp("SignBackDialog").open({
			data : {
				jxs_id : jxs_id
			}
		});
	};
	// 拜访小结
	Model.prototype.row3Click = function(event) {
		this.comp("SummaryDialog").open({
			data : {
				jxs_id : jxs_id
			}
		});
	};
	// 下次拜访计划
	Model.prototype.row5Click = function(event) {
		this.comp("TargetDialog").open({
			data : {
				jxs_id : jxs_id
			}
		});
	};
	// 协同拜访
	Model.prototype.row7Click = function(event) {
		this.comp("synergyVisitDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event) {
		jxs_id = event.data.jxs_id;
		title = event.data.title;
		var cData = this.comp("CData");
		cData.setValue("id", jxs_id);
		cData.setValue("title", title);
	};

	return Model;
});