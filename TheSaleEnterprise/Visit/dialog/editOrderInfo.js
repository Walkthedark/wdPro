define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.did;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var orderData = this.comp("orderData");
		var cp_id = orderData.getValue("cp_id");
		var ghj = orderData.getValue("ghj");
		var x = orderData.getValue("xiang");
		var g = orderData.getValue("ge");
		var cpbz = orderData.getValue("cpbz");
		var sendUrl = "/index/mobile/xgddmx";
		var data = {};
		data.cp_id = cp_id;
		data.did = this.did;
		data.ghj = ghj;
		data.x = x;
		data.g = g;
		data.cpbz = cpbz;
		// 43.添加订单明细 地址：http://61.129.51.183:9986/index/mobile/tjddmx
		asCore.xgddmx(sendUrl, data, function(data) {
			if (data.success == "1") {
				justep.Util.hint("修改成功！");
				self.comp("wReceiver").windowEnsure();
			} else {
				justep.Util.hint("修改失败！");
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.did = event.data.did;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/ddmxdetail";
		var orderData = this.comp("orderData");
		var data = {};
		data.did = this.did;
		asCore.ddmxdetail(sendUrl, data, function(data) {
			debugger;
			orderData.newData({
				"defaultValues" : [ {
					"did" : asCore.isNull(data.did),
					"cp_id" : asCore.isNull(data.cp_id),
					"ghj" : asCore.isNull(data.ghj),
					"xiang" : asCore.isNull(data.box),
					"ge" : asCore.isNull(data.ge),
					"cpbz" : asCore.isNull(data.bz),
					"pro_name" : asCore.isNull(data.pro_name),
					"unit" : asCore.isNull(data.unit),
					"yhms" : asCore.isNull(data.yhms),
					"status" : asCore.isNull(data.status)
				} ]
			});
		});
	}
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
		var cData = this.comp("cDate");
		cData.setValue("cp_id", id);
		cData.setValue("cp_title", title);
		cData.setValue("unit", unit);
		cData.setValue("ghj", price);
	};

	return Model;
});