define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var net_id = null;
	var Model = function() {
		this.callParent();
		this.net_id;
		this.id;
	};

	Model.prototype.button4Click = function(event) {
		var order_id = this.comp("orderData").getValue("id");
		this.comp("infoDialog").open({
			data : {
				order_id : this.id
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xzdd";
		var orderData = this.comp("orderData");
		var id = orderData.getValue("netId");
		var date = orderData.getValue("date");
		var target = orderData.getValue("target");
		var dz = orderData.getValue("dz");
		var bz = orderData.getValue("bz");
		asCore.xzdd(sendUrl, this.net_id, jxs, lxr, dh, dz, pslx, bz, function(data) {
			if (data.success) {
				justep.Util.hint("新增成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("新增失败！");
			}
		});
	};

	Model.prototype.infoDialogReceived = function(event) {
		var orderData = this.comp("orderData");
		orderData.setValue("netId", event.data.id);
		orderData.setValue("netName", event.data.name);
	};

	Model.prototype.button3Click = function(event) {

	};

	return Model;
});