define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.oid;
		this.wdid;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var orderData = this.comp("orderData");
		var cp_id = orderData.getValue("cp_id");
		var ghj = orderData.getValue("ghj");
		var x = orderData.getValue("x");
		var g = orderData.getValue("g");
		var cpbz = orderData.getValue("cpbz");
		var sendUrl = "/index/mobile/tjddmx";
		var data = {};
		data.cp_id = cp_id;
		data.order_id = this.oid;
		data.ghj = ghj;
		data.x = x;
		data.g = g;
		data.cpbz = cpbz;
		// 43.添加订单明细 地址：http://61.129.51.183:9986/index/mobile/tjddmx
		asCore.tjddmx(sendUrl, data, function(data) {
			if (data.success == "1") {
				justep.Util.hint("添加成功！");
				self.comp("wReceiver").windowEnsure();
			} else {
				justep.Util.hint("添加失败！");
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.oid = event.data.oid;
		this.wdid = event.data.wdid;
	};

	Model.prototype.button5Click = function(event) {
		this.comp("windowDialog1").open({
			data : {
				wdid : this.wdid
			}
		});
	};

	Model.prototype.windowDialog1Receive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var price = event.data.data.price;
		var unit = event.data.data.unit;
		var cData = this.comp("orderData");
		cData.setValue("cp_id", id);
		cData.setValue("cp_title", title);
		cData.setValue("unit", unit);
		cData.setValue("ghj", price);
	};

	return Model;
});