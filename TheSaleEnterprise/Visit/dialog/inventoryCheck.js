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
		var inventoryData = this.comp("inventoryData");
		var sendUrl = "/index/mobile/kcjc";
		var data = {};
		data.id = this.wdid;
		data.bf_id = this.id;
		asCore.sendKcjc(sendUrl, data, function(data) {
			inventoryData.loadData(data.data);
		});
	}
	Model.prototype.button3Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		this.comp("editDialog").open({
			data : {
				id : id
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		var id = event.bindingContext.$object.val("id");
		var sendUrl = "/index/mobile/sckcjc";
		asCore.sendSckcjc(sendUrl, id, function(data) {
			if (data.success) {
				justep.Util.hint("删除成功！");
				self.initData();
			} else {
				justep.Util.hint("删除失败！");
			}
		});
	};

	Model.prototype.output3Render = function(event) {
		var kcqk_kcsl_x = event.value;
		var kcqk_kcsl_z = event.bindingContext.$object.val("kcqk_kcsl_z");
		event.html = kcqk_kcsl_x + "箱，" + kcqk_kcsl_z + "支";
	};

	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});