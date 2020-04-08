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
		var sendUrl = "/index/mobile/jxszlgl";
		var orderData = this.comp("orderData");
		var data = "";
		asCore.jxszlgl(sendUrl, data, function(data) {
			debugger;
			orderData.loadData(data);
			self.data = data;
		});
	};

	return Model;
});