define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.bf_id;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var cDate = this.comp("cDate");
		var cp_id = cDate.getValue("cp_id");
		var xiang = cDate.getValue("xiang");
		var zhi = cDate.getValue("zhi");
		var bz = cDate.getValue("bz");
		var data = {};
		data.bf_id = this.bf_id;
		data.cp_id = cp_id;
		data.a = xiang;
		data.g = zhi;
		data.bz = bz;
		if (asCore.isNull(this.UrlData)) {
			data.zp = this.UrlData;
		}
		var sendUrl = "/index/mobile/tjxlhb";
		asCore.tjxlhb(sendUrl, data, function(data) {
			debugger;
			if (data.success) {
				justep.Util.hint("修改成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("修改失败！");
			}
		});
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.id = event.data.id;
		this.bf_id = event.data.bf_id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/xlhbmx";
		var orderData = this.comp("cDate");
		var data = {};
		data.cp_id = this.id;
		data.bf_id = this.bf_id;
		asCore.xlhbmx(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"id" : this.id,
					"cp_id" : asCore.isNull(data.data.cp_id),
					"pro_name" : asCore.isNull(data.data.pro_name),
					"xiang" : asCore.isNull(data.data.xiang),
					"zhi" : asCore.isNull(data.data.zhi),
					"bz" : asCore.isNull(data.data.bz),
					"unit" : asCore.isNull(data.data.unit)
				} ]
			});
		});
	}
	Model.prototype.modelLoad = function(event) {
	}

	return Model;
});