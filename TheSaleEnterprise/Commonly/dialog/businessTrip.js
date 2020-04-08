define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.li1Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.initData();
	};

	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/ccsq";
		var data = {};
		var businessTripData = this.comp("businessTripData");
		asCore.ccsq(sendUrl, data, function(data) {
			businessTripData.loadData(data.data);
		});
	}
	Model.prototype.button3Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/delccapply";
		var id = event.bindingContext.$object.val("id");
		var data = {};
		data.id = id;
		asCore.delccapply(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("删除成功！");
				self.initData();
			} else {
				justep.Util.hint(data.msg);
			}
		});
	};
	return Model;
});