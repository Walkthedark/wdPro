define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
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

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/kqcx";
		var CData = this.comp("CData");
		var data = {};
		// 17.网点拜访列表 地址：http://61.129.51.183:9986/index/mobile/wdbflb
		asCore.kqcx(sendUrl, data, function(data) {
			debugger;
			CData.loadData(data);
		});
	};

	return Model;
});