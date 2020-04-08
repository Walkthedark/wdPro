define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var net_id = null;
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
		this.wdmc;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid,
				wdmc : this.wdmc
			}
		});
	};

	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
		this.wdmc = event.data.wdmc;
		this.initData();
	};
	Model.prototype.initData = function() {
		var sendUrl = "/index/mobile/ddhb";
		var orderData = this.comp("orderData");
		asCore.ddhb(sendUrl, this.id, function(data) {
			orderData.loadData(data.data);
		});
	}
	Model.prototype.button2Click = function(event) {
		var self = this;
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var sendUrl = "/index/mobile/scdd";
		// 44.删除订单 地址：http://61.129.51.183:9986/index/mobile/scdd
		var status = row.val("status");
		if (status == "未处理") {
			asCore.scdd(sendUrl, id, function(data) {
				if (data.success) {
					justep.Util.hint("删除成功！");
					self.initData();
				} else {
					justep.Util.hint(data.msg);
				}
			});
		} else {
			justep.Util.hint("只有未处理状态的可删除");
		}
	};

	Model.prototype.button3Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var status = row.val("status");
		if (status == "未处理") {
			this.comp("editDialog").open({
				data : {
					id : id,
					bf_id : this.id,
					wdid : this.wdid,
					wdmc : this.wdmc
				}
			});
		} else {
			justep.Util.hint("只有未处理状态的可修改");
		}
	};

	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});