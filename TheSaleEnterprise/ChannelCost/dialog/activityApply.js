define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var retdata;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.wReceiverReceive = function(event) {
		// 类型(0：非常规，1进场,2常规)
		this.initData(0);
		this.initData(1);
		this.initData(2);
	};

	Model.prototype.initData = function(type) {
		var self = this;
		if (type == 0) {
			var pData = this.comp("pData");
		} else if (type == 1) {
			var pData = this.comp("nData");
		} else if (type == 2) {
			var pData = this.comp("rData");
		}
		var sendUrl = "/index/mobile/schdsq";
		asCore.schdsq(sendUrl, type, function(data) {
			pData.loadData(data);
		});
	}
	Model.prototype.button6Click = function(event) {// 加载流程图
		var self = this;
		var id = event.bindingContext.$object.val("id");
		var type = "3";
		this.getMap(id, type);
	};
	Model.prototype.button7Click = function(event) {// 加载流程图
		var self = this;
		var id = event.bindingContext.$object.val("id");
		var type = "2";
		this.getMap(id, type);
	};
	Model.prototype.button8Click = function(event) {// 加载流程图
		var self = this;
		var id = event.bindingContext.$object.val("id");
		var type = "1";
		console.log(id)
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
				$("#iframeMap").attr("src", data.url);
				self.comp("popOver1").show();
			} else {
				justep.Util.hint("该申请单暂无流程图信息");
			}
		});
	}
	return Model;
});