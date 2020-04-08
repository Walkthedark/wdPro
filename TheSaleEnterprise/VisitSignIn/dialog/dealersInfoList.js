define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var jxs_id = null;
	var title = "";
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button4Click = function(event) {
		this.comp("detailsDialog").open({
			data : {
				jxs_id : jxs_id,
				title : title
			}
		});
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
		jxs_id = event.data.id;
		title = event.data.title;
		if (asCore.isNull(title != "")) {
			this.comp("output1").value = title + "经销商拜访"
		}
		this.BDataCustomRefresh();
	};

	Model.prototype.BDataCustomRefresh = function(event) {
		var sendUrl = "/index/mobile/jxsbfjl";
		var BData = this.comp("BData");
		asCore.sendPostJXSBFJLLB(sendUrl, jxs_id, function(data) {
			debugger;
			BData.loadData(data);
		});
	};

	Model.prototype.detailsDialogClose = function(event) {
		this.BDataCustomRefresh();
	};

	return Model;
});