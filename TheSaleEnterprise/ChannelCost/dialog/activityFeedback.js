define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
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
		this.initData(0);
		this.initData(1);
	};
	Model.prototype.initData = function(type) {
		var self = this;
		var dataS;
		if (type == 1) {
			dataS = this.comp("yData");
		} else {
			dataS = this.comp("pData");
		}
		var sendUrl = "/index/mobile/schdfk";
		// 94.活动执行反馈网点列表 地址：http://61.129.51.183:9986/index/mobile/schdfk
		asCore.schdfk(sendUrl, type, function(data) {
			dataS.loadData(data);
		});
	}
	return Model;
});