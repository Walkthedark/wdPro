define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li1Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		var title = event.bindingContext.$object.val("title");
		this.comp("infoDialog").open({
			data : {
				id : id,
				title : title
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		/*
		 * debugger var data = event.data; var BData = this.comp("BData");
		 * BData.loadData(data.data);
		 */
	};

	Model.prototype.input2Blur = function(event) {
		this.initData();
	};

	Model.prototype.BDataCustomRefresh = function(event) {
		this.initData();
	};
	Model.prototype.initData = function() {
		var sendUrl = "/index/mobile/jxsbf";
		var keyword = this.comp("input2").val();
		var BData = this.comp("BData");
		asCore.sendJXSLB(sendUrl, keyword, function(data) {
			BData.loadData(data.data);
		});
	}
	Model.prototype.infoDialogClose = function(event) {
		this.initData();
	};
	return Model;
});