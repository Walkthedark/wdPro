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
		var sendUrl = "/index/mobile/wysqd";
		var self = this;
		var AskForLeaveData = this.comp("AskForLeaveData");
		var data = {};
		// 77.万用申请单详情 地址：http://61.129.51.183:9986/index/mobile/wysqdxq
		asCore.wysqd(sendUrl, data, function(data) {
			AskForLeaveData.loadData(data);
		});
	}
	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});