define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var net_id = null;
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open({
			data : {
				"id" : this.id,
				"net_id" : this.wdid
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var infoData = this.comp("infoData");
		infoData.each(function(param) {
			var check = param.row.val('co20');
			var id = param.row.val('id');
			if (check == null || check == "" || check == undefined || check == "false") {
				infoData.setValueByID("co20", "true", id);
			}
			if (check == "true") {
				infoData.setValueByID("co20", "false", id);
			}
		});
	};

	Model.prototype.li2Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		this.comp("updateDialog").open({
			data : {
				id : id,
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
		var infoData = this.comp("infoData");
		var sendUrl = "/index/mobile/jphb";
		var data = {};
		data.id = this.wdid;
		data.bf_id = this.id;
		asCore.jphb(sendUrl, data, function(data) {
			infoData.loadData(data);
		});
	};
	Model.prototype.newDialogClose = function(event) {
		this.initData();
	};
	Model.prototype.output18Render = function(event) {
		if (event.value == "1")
			event.html = "是";
		else
			event.html = "否";
	};
	return Model;
});