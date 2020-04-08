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

	Model.prototype.button5Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/wdzlgl";
		var CData = this.comp("CData");
		var data = "";
		asCore.wdzlgl(sendUrl, data, function(data) {
			CData.loadData(data);
		});
	};

	return Model;
});