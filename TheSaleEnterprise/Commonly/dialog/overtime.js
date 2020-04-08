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
		return;
		var sendUrl = "/index/mobile/jbsqxq";
		var self = this;
		// 66.加班申请详情 地址：http://61.129.51.183:9986/index/mobile/jbsqxq
		asCore.jbsqxq(sendUrl, id, function(data) {
			self.comp("infoDialog").open({
				data : data
			});
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.initData();
	};
	Model.prototype.initData = function() {
		var sendUrl = "/index/mobile/jbsq";
		var self = this;
		var overtimeData = this.comp("overtimeData");
		var data = {};
		asCore.jbsq(sendUrl, data, function(data) {
			overtimeData.loadData(data.data);
		});
	}
	Model.prototype.output3Render = function(event) {
		var row = event.bindingContext.$object;
		var jbjssj = row.val("jbjssj");
		var jbkssj = event.value;
		event.html = jbkssj + "~" + jbjssj;
	};

	Model.prototype.output5Render = function(event) {
		var row = event.bindingContext.$object;
		var xs = row.val("xs");
		var t = event.value;
		if (!xs)
			xs = 0;
		if (!t)
			t = 0;
		event.html = t + "天" + xs + "小时";
	};

	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});