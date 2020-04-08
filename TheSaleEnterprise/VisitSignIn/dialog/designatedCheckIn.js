define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		this.comp("indoDialog").open({
			data : {
				id : id
			}
		});
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.initMyData();
		this.initUnderData();
	};
	Model.prototype.initMyData = function() {
		var sendUrl = "/index/mobile/qdhb";
		var data = {};
		var self = this;
		asCore.qdhb(sendUrl, data, function(data) {
			self.comp("myData").loadData(data);
		});
	}
	Model.prototype.initUnderData = function() {
		var sendUrl = "/index/mobile/xsqdhb";
		var data = {};
		var self = this;
		asCore.xsqdhb(sendUrl, data, function(data) {
			self.comp("underData").loadData(data);
		});
	}
	Model.prototype.button3Click = function(event) {
	};

	Model.prototype.newDialogClose = function(event) {
		this.initMyData();
	};

	return Model;
});