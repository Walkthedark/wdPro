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
		var sendUrl = "/index/mobile/qjsq";
		var self = this;
		var AskForLeaveData = this.comp("AskForLeaveData");
		var data = {};
		// 57.请假申请列表 地址：http://61.129.51.183:9986/index/mobile/qjsq
		asCore.qjsq(sendUrl, data, function(data) {
			AskForLeaveData.loadData(data.data);
		});
	}
	Model.prototype.output3Render = function(event) {
		var row = event.bindingContext.$object;
		var qsxs = row.val("qsxs");
		var qjts = event.value;
		if (!qsxs)
			qsxs = 0;
		if (!qjts)
			qjts = 0;
		event.html = qjts + "天" + qsxs + "小时";
	};
	return Model;
});