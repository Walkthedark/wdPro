define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var id = null;
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open({
			data : {
				id : this.wdid,
				bf_id : this.id
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
		this.initData();
	};
	Model.prototype.initData = function() {
		var GoodsData = this.comp("GoodsData");
		var sendUrl = "/index/mobile/cpjc";
		var data = {};
		data.id = this.wdid;
		data.bf_id = this.id;
		asCore.sendCpjc(sendUrl, data, function(data) {
			GoodsData.loadData(data.data);
		});
	};

	Model.prototype.editDialogClose = function(event) {
		this.initData();
	};

	Model.prototype.button3Click = function(event) {
		var id = event.bindingContext.$object.val("cp_id");
		this.comp("editDialog").open({
			data : {
				id : id,
				bf_id : this.id
			}
		});
	};

	Model.prototype.output5Render = function(event) {
		event.html = event.value + "元/个";
	};

	Model.prototype.output6Render = function(event) {
		if (event.value == "1") {
			event.html = "正常";
		} else {
			event.html = "异常";
		}
	};

	return Model;
});