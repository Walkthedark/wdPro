define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
		this.initData();
	};
	Model.prototype.initData = function() {
		var salesData = this.comp("salesData");
		var sendUrl = "/index/mobile/xlhb";
		var data = {};
		data.id = this.wdid;
		data.bf_id = this.id;
		asCore.xlhb(sendUrl, data, function(data) {
			debugger;
			salesData.loadData(data.data);
		});
	}
	Model.prototype.button4Click = function(event) {
		var sendUrl = "/index/mobile/tjxlhb";
		var salesData = this.comp("salesData");
		var a = salesData.getValue("col2");
		var g = salesData.getValue("col3");
		var bz = "好方好方";
		// 40. 提交销量汇报 地址：http://61.129.51.183:9986/index/mobile/tjxlhb
		asCore.tjxlhb(sendUrl, id, a, g, bz, function(data) {
			debugger
		});
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
		var xiang = event.value;
		var zhi = event.bindingContext.$object.val("zhi");
		event.html = xiang + "箱，" + zhi + "支";
	};

	Model.prototype.editDialogClose = function(event) {
		this.initData();
	};

	return Model;
});