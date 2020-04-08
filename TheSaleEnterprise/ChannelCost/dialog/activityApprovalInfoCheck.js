define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.product;
		this.start;
		this.end;
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
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.product = event.data.product;
		this.start = event.data.start;
		this.end = event.data.end;
		this.title = event.data.title;
		this.type = event.data.type;
		var cData = this.comp("cData");
		cData.setValue("net_name", this.title);
		cData.setValue("product", "活动产品：" + this.product);
		cData.setValue("time", "活动时间段：" + this.start + "~" + this.end);
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var infoData = this.comp("infoData");
		var sendUrl = "/index/mobile/hdzxshmxhblb";
		var para = {
			id : this.id,
			type : this.type
		};
		// 91.活动执行审核网点列表明细汇报列表
		// 地址：http://61.129.51.183:9986/index/mobile/hdzxshmxhblb
		asCore.hdzxshmxhblb(sendUrl, para, function(data) {
			infoData.loadData(data.data);
		});
	}
	return Model;
});