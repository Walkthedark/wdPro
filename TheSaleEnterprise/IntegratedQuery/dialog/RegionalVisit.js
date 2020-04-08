define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var cDate = this.comp("cDate");
		var startTime = asCore.isNull(cDate.getValue("startTime"));
		var endTime = asCore.isNull(cDate.getValue("endTime"));
		var type = asCore.isNull(cDate.getValue("type"));
		var sendUrl = "/index/mobile/xsqybf";
		var data1 = this.comp("pData");
		var data = {};
		if (startTime && endTime) {
			if (startTime <= endTime) {
				data.start = startTime;
				data.end = endTime;
			} else {
				justep.Util.hint("开始时间不能大于结束时间");
				return;
			}
		} else {
			if (startTime || endTime) {
				justep.Util.hint("请填写完整时间区间");
				return;
			}
		}
		if (type) {
			data.area_type = type;
		}
		asCore.xsqybf(sendUrl, data, function(data) {
			debugger;
			data1.loadData(data);
		});
	};

	Model.prototype.button5Click = function(event) {
		var cDate = this.comp("cDate");
		cDate.setValue("startTime", "");
		cDate.setValue("endTime", "");
		cDate.setValue("type", "");
	};

	return Model;
});