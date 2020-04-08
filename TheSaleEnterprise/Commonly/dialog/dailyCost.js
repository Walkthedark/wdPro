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
		var sendUrl = "/index/mobile/rcfybx";
		var self = this;
		var dailyCostData = this.comp("dailyCostData");
		var data = {};
		asCore.rcfybx(sendUrl, data, function(data) {
			dailyCostData.loadData(data);
		});
	}

	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});