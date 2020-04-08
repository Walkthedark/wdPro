define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.initData();
	};
	Model.prototype.initData = function() {
		var Page = "";
		var self = this;
		var pData = this.comp("pData");
		var sendUrl = "/index/mobile/tifyhxcx";
		// 100.Ti费用核销查询 地址：http://61.129.51.183:9986/index/mobile/tifyhxcx
		asCore.tifyhxcx(sendUrl, Page, function(data) {
			pData.loadData(data);
		});
	}
	Model.prototype.button6Click = function(event) {
		var self = this;
		var id = event.bindingContext.$object.val("id");
		var type = "18";
		this.getMap(id, type);
	};
	Model.prototype.getMap = function(id, type) {
		var self = this;
		var params = {};
		params.id = 250;
		params.type = 3;
		var sendUrl = "/index/mobile/workflowchart";
		asCore.workflowchart(sendUrl, params, function(data) {
			if (data.url) {
				$("#iframeMap1").attr("src", data.url);
				self.comp("popOver1").show();
			} else {
				justep.Util.hint("该申请单暂无流程图信息");
			}
		});
	}
	return Model;
});