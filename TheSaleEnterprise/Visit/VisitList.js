define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li1Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		var wdid = event.bindingContext.$object.val("wdid");
		var wdmc = event.bindingContext.$object.val("wdmc");
		var bfmb = event.bindingContext.$object.val("bfmb");
		if (!bfmb) {
			bfmb = "无";
		}
		this.comp("outDialog").open({
			data : {
				id : id,
				wdid : wdid,
				wdmc : wdmc,
				bfmb : bfmb
			}
		});
	};

	Model.prototype.button12Click = function(event) {
		this.comp("selectDialog").open();
	};
	//
	Model.prototype.button13Click = function(event) {
		this.comp("select2Dialog").open();
	};
	// 市场活动检查
	Model.prototype.a1Click = function(event) {
		this.comp("activityCheckDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event) {
	};

	Model.prototype.initInData = function(event) {
		var sendUrl = "/index/mobile/wdbflb";
		var type = 1;
		var InData = this.comp("InData");
		asCore.sendPostWDBFLB(sendUrl, type, function(data) {
			InData.loadData(data.data);
		});
	};

	Model.prototype.initOutData = function(event) {
		var sendUrl = "/index/mobile/wdbflb";
		var type = 2;
		var OutData = this.comp("OutData");
		asCore.sendPostWDBFLB(sendUrl, type, function(data) {
			OutData.loadData(data.data);
			var count = data.count;
			if (!count) {
				count = 0;
			}
			$("[xid=visitListTitle]").text("今日有" + count + "个网点正在做市场活动，请优先拜访核检。");
		});
	};

	Model.prototype.button5Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.newDialogClose = function(event) {
		this.initInData();
		this.initOutData();
	};

	Model.prototype.modelLoad = function(event) {
		this.initInData();
		this.initOutData();
	};

	return Model;
});