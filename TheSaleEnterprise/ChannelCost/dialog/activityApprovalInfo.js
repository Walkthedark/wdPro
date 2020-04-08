define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.net_id;
		this.title;
		this.type;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
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
		var product = event.bindingContext.$object.val("product");
		var start = event.bindingContext.$object.val("start");
		var end = event.bindingContext.$object.val("end");
		this.comp("infoDialog").open({
			data : {
				id : id,
				product : product,
				start : start,
				end : end,
				title : this.title,
				type : this.type
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.net_id = event.data.net_id;
		this.title = event.data.title;
		this.type = event.data.type;
		$("#netName").text(this.title);
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var infoData = this.comp("infoData");
		var sendUrl = "/index/mobile/hdzxshmx";
		var para = {
			net_id : this.net_id,
			type : this.type
		}
		asCore.hdzxshmx(sendUrl, para, function(data) {
			infoData.loadData(data.data);
		});
	}
	Model.prototype.output18Render = function(event) {
		var start = event.value;
		var end = event.bindingContext.$object.val("end");
		event.html = start + "~" + end;
	};
	return Model;
});