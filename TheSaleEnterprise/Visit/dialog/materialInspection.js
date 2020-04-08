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
		var sendUrl = "/index/mobile/wljc";
		var materialData = this.comp("materialData");
		// 24. 物料检查
		asCore.sendWljc(sendUrl, this.wdid, this.id, function(data) {
			materialData.loadData(data);
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
		var sendUrl = "/index/mobile/scwljc";
		var id = event.bindingContext.$object.val("id");
		// 27.删除物料检查 地址：http://61.129.51.183:9986/index/mobile/scwljc
		asCore.sendScwljc(sendUrl, id, function(data) {
			if (data.success) {
				justep.Util.hint("删除成功！");
				self.initData();
			} else {
				justep.Util.hint("删除失败！");
			}
		});
	};

	Model.prototype.materialDataCustomRefresh = function(event) {

	};

	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};

	return Model;
});