define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xxtixing";
		var cDate = this.comp("cDate");
		var data = {};
		asCore.xxtixing(sendUrl, data, function(data) {
			cDate.setValue("set1", data.set1);
			cDate.setValue("set2", data.set2);
		});
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		var cDate = this.comp("cDate");
		var sendUrl = "/index/mobile/xxset";
		var set1 = cDate.getValue("set1");
		var set2 = cDate.getValue("set2");
		var data = {};
		data.set1 = set1;
		data.set2 = set2;
		asCore.xxset(sendUrl, data, function(data) {
			debugger;
			if (data.success) {
				justep.Util.hint("提交成功");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("提交失败");
			}
		});
	};

	return Model;
});