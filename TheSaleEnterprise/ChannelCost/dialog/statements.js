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

	Model.prototype.button2Click = function(event) {
		var infoData = this.comp("infoData");
		infoData.each(function(param) {
			var check = param.row.val('co20');
			var id = param.row.val('id');
			if (check == null || check == "" || check == undefined || check == "false") {
				infoData.setValueByID("co20", "true", id);
			}
			if (check == "true") {
				infoData.setValueByID("co20", "false", id);
			}
		});
	};

	Model.prototype.li2Click = function(event) {
//		var id = event.bindingContext.$object.val("id");
//		var self = this;
//		var sendUrl = "/index/mobile/jxsscfydzdmx";
//		// 99.经销商市场费用对账单明细
//		// 地址：http://61.129.51.183:9986/index/mobile/jxsscfydzdmx
//		asCore.jxsscfydzdmx(sendUrl, id, function(data) {
//			self.comp("infoDialog").open({
//				data : data
//			});
//		});
		// this.comp("infoDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var Page = "";
		var sendUrl = "/index/mobile/jxsscfydzd";
		var infoData = this.comp("infoData");
		// 98.经销商市场费用对账单 地址：http://61.129.51.183:9986/index/mobile/jxsscfydzd
		asCore.jxsscfydzd(sendUrl, Page, function(data) {
			infoData.loadData(data);
		});
	}
	return Model;
});