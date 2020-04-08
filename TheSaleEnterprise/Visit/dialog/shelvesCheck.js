define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var data = {};
		data.id = this.wdid;
		data.bf_id = this.id;
		// 28. 货架陈列 ：http://61.129.51.183:9986/index/mobile/hjcl
		var sendUrl = "/index/mobile/hjcl";
		asCore.sendHjcl(sendUrl, data, function(data) {
			self.comp("shelvesData").loadData(data);
		});
	}
	Model.prototype.button3Click = function(event) {
		var id = event.bindingContext.$object.val("clid");
		this.comp("editDialog").open({
			data : {
				id : id,
				wdid : this.wdid
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		var id = event.bindingContext.$object.val("clid");
		var sendUrl = "/index/mobile/schjcl";
		// 32. 删除货架陈列 地址：http://61.129.51.183:9986/index/mobile/schjcl
		asCore.sendSchjcl(sendUrl, id, function(data) {
			if (data.success) {
				justep.Util.hint("删除成功！");
				self.initData();
			} else {
				justep.Util.hint("删除失败！");
			}
		});
	};

	Model.prototype.output5Render = function(event) {
		var clwz_p = event.value;
		var clwz_m = event.bindingContext.$object.val("clwz_m");
		event.html = clwz_p + "排，" + clwz_m + "面";
	};

	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});