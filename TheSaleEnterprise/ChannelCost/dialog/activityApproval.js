define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		var net_id = event.bindingContext.$object.val("net_id");
		var title = event.bindingContext.$object.val("title");
		this.comp("infoDialog").open({
			data : {
				net_id : net_id,
				title : title,
				type : 0
			}
		});
	};
	Model.prototype.li1Click = function(event) {
		var net_id = event.bindingContext.$object.val("net_id");
		var title = event.bindingContext.$object.val("title");
		this.comp("infoDialog").open({
			data : {
				net_id : net_id,
				title : title,
				type : 1
			}
		});
	};
	Model.prototype.initData = function(type) {
		var self = this;
		var dataS;
		var params = {};
		if (type == "0") {
			dataS = this.comp("pData");
			params.type = 0;
		} else {
			dataS = this.comp("yData");
			params.type = 1;
		}
		var sendUrl = "/index/mobile/hdzxsh";
		// 87.活动执行检查列表 地址：http://61.129.51.183:9986/index/mobile/hdzxjclb
		asCore.hdzxsh(sendUrl, params, function(data) {
			dataS.loadData(data);
		});
	}
	Model.prototype.wReceiverReceive = function(event) {
		this.initData(0);
		this.initData(1);
	};

	return Model;
});