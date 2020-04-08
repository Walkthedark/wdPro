define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var id = null;
	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.output21Render = function(event) {
		if (event.value == "0") {
			event.html = "提交申请";
		}
		if (event.value == "1") {
			event.html = "打回修改";
		}
		if (event.value == "2") {
			event.html = "提交";
		}
		if (event.value == "3") {
			event.html = "审批通过";
		}
		if (event.value == "4") {
			event.html = "抄送";
		}
	};

	Model.prototype.grid1Reload = function(event) {
		var orderData = this.comp("orderData");
		var option = {
			col4 : '合计：',
			col5 : parseFloat(orderData.sum('col5')).toFixed(2),
		};
		this.comp("grid1").setFooterData(option);
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/xsddxq";
		var spData = this.comp("spData");
		var CData = this.comp("CData");
		asCore.xsddxq(sendUrl, this.id, function(data) {
			debugger;
			CData.newData({
				"defaultValues" : [ {
					"id" : self.id,
					"sn" : asCore.isNull(data.sn),
					"bm" : asCore.isNull(data.bm),
					"sqr" : asCore.isNull(data.sqr),
					"zw" : asCore.isNull(data.zw),
					"fpType" : asCore.isNull(data.fpType),
					"yhPolicy" : asCore.isNull(data.yhPolicy),
					"sqrq" : asCore.isNull(data.sqrq)
				} ]
			});
			spData.loadData(data.log);
		});
	}
	return Model;
});